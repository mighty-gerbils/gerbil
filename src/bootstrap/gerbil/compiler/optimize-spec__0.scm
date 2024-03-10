(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710106263)
  (begin
    (define gxc#&generate-method-specializers::t
      (let ((__tmp136084 (list gxc#&identity::t))
            (__tmp136082
             (let ((__tmp136083
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136083 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&generate-method-specializers::t
         '&generate-method-specializers
         __tmp136084
         '()
         __tmp136082
         '#f)))
    (define gxc#&generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&generate-method-specializers::t)))
    (define gxc#make-&generate-method-specializers
      (lambda _$args134948_
        (apply make-instance
               gxc#&generate-method-specializers::t
               _$args134948_)))
    (define gxc#&generate-method-specializers-bind-methods!
      (let ((__tmp136085
             (lambda ()
               (force gxc#&identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-method-specializers::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-method-specializers::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-method-specializers::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-method-specializers::t
                  '%#define-values
                  gxc#generate-method-specializers-define-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&generate-method-specializers::t)))))
        (declare (not safe))
        (make-promise __tmp136085)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134940_)
        (force gxc#&generate-method-specializers-bind-methods!)
        (let* ((_self134943_
                (let ((__obj136077
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&generate-method-specializers::t))))
                  __obj136077))
               (__tmp136086
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self134943_ _stx134940_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp136086
           gxc#current-compile-method
           _self134943_))))
    (define gxc#&collect-object-refs::t
      (let ((__tmp136089 (list gxc#&void::t))
            (__tmp136087
             (let ((__tmp136088
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136088 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-object-refs::t
         '&collect-object-refs
         __tmp136089
         '(receiver methods slots)
         __tmp136087
         '#f)))
    (define gxc#&collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-object-refs::t)))
    (define gxc#make-&collect-object-refs
      (lambda _$args134937_
        (apply make-instance gxc#&collect-object-refs::t _$args134937_)))
    (define gxc#&collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&collect-object-refs::t 'receiver)))
    (define gxc#&collect-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&collect-object-refs::t 'methods)))
    (define gxc#&collect-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&collect-object-refs::t 'slots)))
    (define gxc#&collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&collect-object-refs::t 'receiver)))
    (define gxc#&collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&collect-object-refs::t 'methods)))
    (define gxc#&collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&collect-object-refs::t 'slots)))
    (define gxc#&&collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#&collect-object-refs::t
         'receiver)))
    (define gxc#&&collect-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#&collect-object-refs::t
         'methods)))
    (define gxc#&&collect-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#&collect-object-refs::t
         'slots)))
    (define gxc#&&collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#&collect-object-refs::t
         'receiver)))
    (define gxc#&&collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#&collect-object-refs::t
         'methods)))
    (define gxc#&&collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#&collect-object-refs::t
         'slots)))
    (define gxc#&collect-object-refs-bind-methods!
      (let ((__tmp136090
             (lambda ()
               (force gxc#&void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#begin-annotation
                  gxc#collect-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#lambda
                  gxc#collect-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#case-lambda
                  gxc#collect-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#let-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#letrec-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#letrec*-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#call
                  gxc#collect-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#if
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#set!
                  gxc#collect-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#struct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#struct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#struct-direct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#struct-direct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#struct-unchecked-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-object-refs::t
                  '%#struct-unchecked-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&collect-object-refs::t)))))
        (declare (not safe))
        (make-promise __tmp136090)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g136091_
               _receiver134898134903_
               _methods134899134905_
               _slots134900134907_
               _stx134909_)
        (let* ((_receiver134912_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134898134903_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134898134903_))
               (_methods134914_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134899134905_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134899134905_))
               (_slots134916_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134900134907_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134900134907_)))
          (force gxc#&collect-object-refs-bind-methods!)
          (let* ((_self134918_
                  (let ((__obj136079
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#&collect-object-refs::t
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136079
                       _receiver134912_
                       '1
                       gxc#&collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136079
                       _methods134914_
                       '2
                       gxc#&collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136079
                       _slots134916_
                       '3
                       gxc#&collect-object-refs::t
                       '#f))
                    __obj136079))
                 (__tmp136092
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134918_ _stx134909_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136092
             gxc#current-compile-method
             _self134918_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys134897134925_ . _args134927_)
        (apply gxc#apply-collect-object-refs__%
               _keys134897134925_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134897134925_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134897134925_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134897134925_ 'slots: absent-value))
               _args134927_)))
    (define gxc#apply-collect-object-refs
      (lambda _args134901134933_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args134901134933_)))
    (define gxc#&subst-object-refs::t
      (let ((__tmp136095 (list gxc#&basic-xform-expression::t))
            (__tmp136093
             (let ((__tmp136094
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136094 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&subst-object-refs::t
         '&subst-object-refs
         __tmp136095
         '(receiver klass methods slots)
         __tmp136093
         '#f)))
    (define gxc#&subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&subst-object-refs::t)))
    (define gxc#make-&subst-object-refs
      (lambda _$args134893_
        (apply make-instance gxc#&subst-object-refs::t _$args134893_)))
    (define gxc#&subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&subst-object-refs::t 'receiver)))
    (define gxc#&subst-object-refs-klass
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&subst-object-refs::t 'klass)))
    (define gxc#&subst-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&subst-object-refs::t 'methods)))
    (define gxc#&subst-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&subst-object-refs::t 'slots)))
    (define gxc#&subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&subst-object-refs::t 'receiver)))
    (define gxc#&subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&subst-object-refs::t 'klass)))
    (define gxc#&subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&subst-object-refs::t 'methods)))
    (define gxc#&subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&subst-object-refs::t 'slots)))
    (define gxc#&&subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#&subst-object-refs::t
         'receiver)))
    (define gxc#&&subst-object-refs-klass
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#&subst-object-refs::t 'klass)))
    (define gxc#&&subst-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#&subst-object-refs::t
         'methods)))
    (define gxc#&&subst-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#&subst-object-refs::t 'slots)))
    (define gxc#&&subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#&subst-object-refs::t
         'receiver)))
    (define gxc#&&subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#&subst-object-refs::t 'klass)))
    (define gxc#&&subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#&subst-object-refs::t
         'methods)))
    (define gxc#&&subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#&subst-object-refs::t 'slots)))
    (define gxc#&subst-object-refs-bind-methods!
      (let ((__tmp136096
             (lambda ()
               (force gxc#&basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&subst-object-refs::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&subst-object-refs::t
                  '%#call
                  gxc#subst-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&subst-object-refs::t)))))
        (declare (not safe))
        (make-promise __tmp136096)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g136097_
               _receiver134849134855_
               _klass134850134857_
               _methods134851134859_
               _slots134852134861_
               _stx134863_)
        (let* ((_receiver134866_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134849134855_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134849134855_))
               (_klass134868_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass134850134857_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass134850134857_))
               (_methods134870_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134851134859_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134851134859_))
               (_slots134872_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134852134861_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134852134861_)))
          (force gxc#&subst-object-refs-bind-methods!)
          (let* ((_self134874_
                  (let ((__obj136081
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#&subst-object-refs::t
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136081
                       _receiver134866_
                       '1
                       gxc#&subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136081
                       _klass134868_
                       '2
                       gxc#&subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136081
                       _methods134870_
                       '3
                       gxc#&subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136081
                       _slots134872_
                       '4
                       gxc#&subst-object-refs::t
                       '#f))
                    __obj136081))
                 (__tmp136098
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134874_ _stx134863_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136098
             gxc#current-compile-method
             _self134874_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys134848134881_ . _args134883_)
        (apply gxc#apply-subst-object-refs__%
               _keys134848134881_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134848134881_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134848134881_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134848134881_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134848134881_ 'slots: absent-value))
               _args134883_)))
    (define gxc#apply-subst-object-refs
      (lambda _args134853134889_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args134853134889_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self132058_ _stx132059_)
        (letrec ((_generate-method-bind132061_
                  (lambda (_$klass134840_
                           _$method-table134841_
                           _id134842_
                           _$id134843_)
                    (let ((_$tmp134845_
                           (let ((__tmp136099 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136099))))
                      (let ((__tmp136147
                             (let ()
                               (declare (not safe))
                               (cons _$id134843_ '())))
                            (__tmp136100
                             (let ((__tmp136101
                                    (let ((__tmp136102
                                           (let ((__tmp136145
                                                  (let ((__tmp136146
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136146)))
                                                 (__tmp136103
                                                  (let ((__tmp136104
                                                         (let ((__tmp136105
                                                                (let ((__tmp136106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136107
                                      (let ((__tmp136108
                                             (let ((__tmp136128
                                                    (let ((__tmp136129
                                                           (let ((__tmp136144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134845_ '())))
                         (__tmp136130
                          (let ((__tmp136131
                                 (let ((__tmp136132
                                        (let ((__tmp136142
                                               (let ((__tmp136143
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp136143)))
                                              (__tmp136133
                                               (let ((__tmp136140
                                                      (let ((__tmp136141
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134841_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp136141)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp136134
                                                      (let ((__tmp136138
                                                             (let ((__tmp136139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134842_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp136139)))
                    (__tmp136135
                     (let ((__tmp136136
                            (let ((__tmp136137
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136137))))
                       (declare (not safe))
                       (cons __tmp136136 '()))))
                (declare (not safe))
                (cons __tmp136138 __tmp136135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp136140
                                                       __tmp136134))))
                                          (declare (not safe))
                                          (cons __tmp136142 __tmp136133))))
                                   (declare (not safe))
                                   (cons '%#call __tmp136132))))
                            (declare (not safe))
                            (cons __tmp136131 '()))))
                     (declare (not safe))
                     (cons __tmp136144 __tmp136130))))
              (declare (not safe))
              (cons __tmp136129 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136109
                                                    (let ((__tmp136110
                                                           (let ((__tmp136111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136126
                                 (let ((__tmp136127
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134845_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp136127)))
                                (__tmp136112
                                 (let ((__tmp136124
                                        (let ((__tmp136125
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134845_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp136125)))
                                       (__tmp136113
                                        (let ((__tmp136114
                                               (let ((__tmp136115
                                                      (let ((__tmp136122
                                                             (let ((__tmp136123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp136123)))
                    (__tmp136116
                     (let ((__tmp136120
                            (let ((__tmp136121
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136121)))
                           (__tmp136117
                            (let ((__tmp136118
                                   (let ((__tmp136119
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134842_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp136119))))
                              (declare (not safe))
                              (cons __tmp136118 '()))))
                       (declare (not safe))
                       (cons __tmp136120 __tmp136117))))
                (declare (not safe))
                (cons __tmp136122 __tmp136116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp136115))))
                                          (declare (not safe))
                                          (cons __tmp136114 '()))))
                                   (declare (not safe))
                                   (cons __tmp136124 __tmp136113))))
                            (declare (not safe))
                            (cons __tmp136126 __tmp136112))))
                     (declare (not safe))
                     (cons '%#if __tmp136111))))
              (declare (not safe))
              (cons __tmp136110 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136128
                                                     __tmp136109))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp136108))))
                                 (declare (not safe))
                                 (cons __tmp136107 '()))))
                          (declare (not safe))
                          (cons '() __tmp136106))))
                   (declare (not safe))
                   (cons '%#lambda __tmp136105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136104 '()))))
                                             (declare (not safe))
                                             (cons __tmp136145 __tmp136103))))
                                      (declare (not safe))
                                      (cons '%#call __tmp136102))))
                               (declare (not safe))
                               (cons __tmp136101 '()))))
                        (declare (not safe))
                        (cons __tmp136147 __tmp136100)))))
                 (_generate-slot-bind132062_
                  (lambda (_$klass134834_ _id134835_ _$id134836_)
                    (let ((_$tmp134838_
                           (let ((__tmp136148 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136148))))
                      (let ((__tmp136185
                             (let ()
                               (declare (not safe))
                               (cons _$id134836_ '())))
                            (__tmp136149
                             (let ((__tmp136150
                                    (let ((__tmp136151
                                           (let ((__tmp136171
                                                  (let ((__tmp136172
                                                         (let ((__tmp136184
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134838_ '())))
                       (__tmp136173
                        (let ((__tmp136174
                               (let ((__tmp136175
                                      (let ((__tmp136182
                                             (let ((__tmp136183
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp136183)))
                                            (__tmp136176
                                             (let ((__tmp136180
                                                    (let ((__tmp136181
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp136181)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136177
                                                    (let ((__tmp136178
                                                           (let ((__tmp136179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134835_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp136179))))
              (declare (not safe))
              (cons __tmp136178 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136180
                                                     __tmp136177))))
                                        (declare (not safe))
                                        (cons __tmp136182 __tmp136176))))
                                 (declare (not safe))
                                 (cons '%#call __tmp136175))))
                          (declare (not safe))
                          (cons __tmp136174 '()))))
                   (declare (not safe))
                   (cons __tmp136184 __tmp136173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136172 '())))
                                                 (__tmp136152
                                                  (let ((__tmp136153
                                                         (let ((__tmp136154
                                                                (let ((__tmp136169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136170
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134838_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp136170)))
                              (__tmp136155
                               (let ((__tmp136167
                                      (let ((__tmp136168
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134838_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp136168)))
                                     (__tmp136156
                                      (let ((__tmp136157
                                             (let ((__tmp136158
                                                    (let ((__tmp136165
                                                           (let ((__tmp136166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp136166)))
                  (__tmp136159
                   (let ((__tmp136163
                          (let ((__tmp136164
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp136164)))
                         (__tmp136160
                          (let ((__tmp136161
                                 (let ((__tmp136162
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134835_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp136162))))
                            (declare (not safe))
                            (cons __tmp136161 '()))))
                     (declare (not safe))
                     (cons __tmp136163 __tmp136160))))
              (declare (not safe))
              (cons __tmp136165 __tmp136159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp136158))))
                                        (declare (not safe))
                                        (cons __tmp136157 '()))))
                                 (declare (not safe))
                                 (cons __tmp136167 __tmp136156))))
                          (declare (not safe))
                          (cons __tmp136169 __tmp136155))))
                   (declare (not safe))
                   (cons '%#if __tmp136154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136153 '()))))
                                             (declare (not safe))
                                             (cons __tmp136171 __tmp136152))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp136151))))
                               (declare (not safe))
                               (cons __tmp136150 '()))))
                        (declare (not safe))
                        (cons __tmp136185 __tmp136149)))))
                 (_generate-specializer-impl132063_
                  (lambda (_$klass134828_
                           _$method-table134829_
                           _methods-bind134830_
                           _slots-bind134831_
                           _specializer-impl134832_)
                    (let ((__tmp136186
                           (let ((__tmp136187
                                  (let ((__tmp136193
                                         (let ((__tmp136194
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134829_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134828_ __tmp136194)))
                                        (__tmp136188
                                         (let ((__tmp136189
                                                (let ((__tmp136190
                                                       (let ((__tmp136192
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134831_ _methods-bind134830_)))
                     (__tmp136191
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134832_ '()))))
                 (declare (not safe))
                 (cons __tmp136192 __tmp136191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp136190))))
                                           (declare (not safe))
                                           (cons __tmp136189 '()))))
                                    (declare (not safe))
                                    (cons __tmp136193 __tmp136188))))
                             (declare (not safe))
                             (cons '%#lambda __tmp136187))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp136186 _stx132059_))))
                 (_generate-specializer-def132064_
                  (lambda (_id134824_
                           _specializer-id134825_
                           _specializer-impl134826_)
                    (let ((__tmp136195
                           (let ((__tmp136196
                                  (let ((__tmp136197
                                         (let ((__tmp136210
                                                (let ((__tmp136211
                                                       (let ((__tmp136212
                                                              (let ((__tmp136214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134825_ '())))
                            (__tmp136213
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134826_ '()))))
                        (declare (not safe))
                        (cons __tmp136214 __tmp136213))))
                 (declare (not safe))
                 (cons '%#define-values __tmp136212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp136211
                                                   _stx132059_)))
                                               (__tmp136198
                                                (let ((__tmp136199
                                                       (let ((__tmp136200
                                                              (let ((__tmp136201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136208
                                    (let ((__tmp136209
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp136209)))
                                   (__tmp136202
                                    (let ((__tmp136206
                                           (let ((__tmp136207
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134824_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp136207)))
                                          (__tmp136203
                                           (let ((__tmp136204
                                                  (let ((__tmp136205
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp136205))))
                                             (declare (not safe))
                                             (cons __tmp136204 '()))))
                                      (declare (not safe))
                                      (cons __tmp136206 __tmp136203))))
                               (declare (not safe))
                               (cons __tmp136208 __tmp136202))))
                        (declare (not safe))
                        (cons '%#call __tmp136201))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp136200 _stx132059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136199 '()))))
                                           (declare (not safe))
                                           (cons __tmp136210 __tmp136198))))
                                    (declare (not safe))
                                    (cons _stx132059_ __tmp136197))))
                             (declare (not safe))
                             (cons '%#begin __tmp136196))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp136195 _stx132059_)))))
          (let* ((___stx135037135038_ _stx132059_)
                 (_g132067132087_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135037135038_)))))
            (let ((___kont135039135040_
                   (lambda (_L132131_ _L132132_)
                     (let ((_method-calls132151_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs132152_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty132153_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?132155_
                                 (lambda ()
                                   (if (let ((__tmp136216
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls132151_))))
                                         (declare (not safe))
                                         (fxzero? __tmp136216))
                                       (let ((__tmp136215
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs132152_))))
                                         (declare (not safe))
                                         (fxzero? __tmp136215))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L132131_))
                             (let* ((___stx134951134952_ _L132131_)
                                    (_g132542132560_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134951134952_)))))
                               (let ((___kont134953134954_
                                      (lambda (_L132596_ _L132597_ _L132598_)
                                        (for-each
                                         (lambda (_g132613132615_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g132613132615_
                                              'receiver:
                                              _L132598_
                                              'methods:
                                              _method-calls132151_
                                              'slots:
                                              _slot-refs132152_)))
                                         _L132596_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?132155_))
                                            _stx132059_
                                            (let* ((_specializer-id132624_
                                                    (let* ((_id132618_
                                                            (let ((__tmp136338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L132132_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp136338 '"::specialize")))
                   (_specializer-id132621_
                    (let ((__tmp136339
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx132059_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id132618_ __tmp136339))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id132621_))
              _specializer-id132621_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass132626_
                                                    (let ((__tmp136340
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp136340)))
                                                   (_$method-table132628_
                                                    (let ((__tmp136341
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp136341)))
                                                   (_methods132630_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls132151_)))
                                                   (_$methods132634_
                                                    (map (lambda (_id132632_)
                                                           (let ((__tmp136342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132632_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp136342)))
                 _methods132630_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g136343_
                                                    (for-each
                                                     (lambda (_g132635132638_
                                                              _g132636132640_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls132151_
                                                          _g132635132638_
                                                          _g132636132640_)))
                                                     _methods132630_
                                                     _$methods132634_))
                                                   (_methods-bind132651_
                                                    (map (lambda (_g132643132646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132644132648_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind132061_
                      _$klass132626_
                      _$method-table132628_
                      _g132643132646_
                      _g132644132648_)))
                 _methods132630_
                 _$methods132634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots132653_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs132152_)))
                                                   (_$slots132657_
                                                    (map (lambda (_id132655_)
                                                           (let ((__tmp136344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132655_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp136344)))
                 _slots132653_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g136345_
                                                    (for-each
                                                     (lambda (_g132658132661_
                                                              _g132659132663_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs132152_
                                                          _g132658132661_
                                                          _g132659132663_)))
                                                     _slots132653_
                                                     _$slots132657_))
                                                   (_slots-bind132674_
                                                    (map (lambda (_g132666132669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132667132671_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind132062_
                      _$klass132626_
                      _g132666132669_
                      _g132667132671_)))
                 _slots132653_
                 _$slots132657_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body132680_
                                                    (map (lambda (_g132675132677_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g132675132677_
                                                              'receiver:
                                                              _L132598_
                                                              'klass:
                                                              _$klass132626_
                                                              'methods:
                                                              _method-calls132151_
                                                              'slots:
                                                              _slot-refs132152_)))
                                                         _L132596_))
                                                   (_specializer-impl132682_
                                                    (let ((__tmp136346
                                                           (let ((__tmp136347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136348
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132598_ _L132597_))))
                            (declare (not safe))
                            (cons __tmp136348 _specializer-body132680_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp136347))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp136346 _stx132059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl132684_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl132063_
                                                       _$klass132626_
                                                       _$method-table132628_
                                                       _methods-bind132651_
                                                       _slots-bind132674_
                                                       _specializer-impl132682_))))
                                              (let ((__tmp136350
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L132132_)))
                                                    (__tmp136349
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id132624_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp136350
                                                 '" => "
                                                 __tmp136349))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def132064_
                                                 _L132132_
                                                 _specializer-id132624_
                                                 _specializer-impl132684_))))))
                                     (___kont134955134956_
                                      (lambda () _stx132059_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134951134952_))
                                     (let ((_e132549132572_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134951134952_))))
                                       (let ((_tl132547132577_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e132549132572_)))
                                             (_hd132548132575_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e132549132572_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl132547132577_))
                                             (let ((_e132552132580_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl132547132577_))))
                                               (let ((_tl132550132585_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e132552132580_)))
                                                     (_hd132551132583_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e132552132580_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd132551132583_))
                                                     (let ((_e132555132588_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd132551132583_))))
                                                       (let ((_tl132553132593_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e132555132588_)))
                     (_hd132554132591_
                      (let () (declare (not safe)) (##car _e132555132588_))))
                 (___kont134953134954_
                  _tl132550132585_
                  _tl132553132593_
                  _hd132554132591_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134955134956_))))
                                             (___kont134955134956_))))
                                     (___kont134955134956_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L132131_))
                                 (let* ((_g132690132709_
                                         (lambda (_g132691132706_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132691132706_))))
                                        (_g132689132992_
                                         (lambda (_g132691132712_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g132691132712_))
                                               (let ((_e132695132714_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g132691132712_))))
                                                 (let ((_hd132694132717_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132695132714_)))
                                                       (_tl132693132719_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132695132714_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl132693132719_))
                                                       (let ((_g136321_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl132693132719_ '0))))
                 (begin
                   (let ((_g136322_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g136321_)
                                (##vector-length _g136321_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g136322_ 2)))
                         (error "Context expects 2 values" _g136322_)))
                   (let ((_target132696132722_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g136321_ 0)))
                         (_tl132698132724_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g136321_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl132698132724_))
                         (letrec ((_loop132699132727_
                                   (lambda (_hd132697132730_
                                            _clause132703132732_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132697132730_))
                                         (let ((_e132700132735_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132697132730_))))
                                           (let ((_lp-hd132701132738_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132700132735_)))
                                                 (_lp-tl132702132740_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132700132735_))))
                                             (let ((__tmp136337
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd132701132738_
                                                            _clause132703132732_))))
                                               (declare (not safe))
                                               (_loop132699132727_
                                                _lp-tl132702132740_
                                                __tmp136337))))
                                         (let ((_clause132704132743_
                                                (reverse _clause132703132732_)))
                                           ((lambda (_L132746_)
                                              (for-each
                                               (lambda (_clause132759_)
                                                 (let* ((___stx134977134978_
                                                         _clause132759_)
                                                        (_g132762132777_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134977134978_)))))
                                                   (let ((___kont134979134980_
                                                          (lambda (_L132805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132806_
                           _L132807_)
                    (for-each
                     (lambda (_g132822132824_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132822132824_
                          'receiver:
                          _L132807_
                          'methods:
                          _method-calls132151_
                          'slots:
                          _slot-refs132152_)))
                     _L132805_)))
                 (___kont134981134982_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134977134978_))
                                                         (let ((_e132769132789_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134977134978_))))
                   (let ((_tl132767132794_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132769132789_)))
                         (_hd132768132792_
                          (let ()
                            (declare (not safe))
                            (##car _e132769132789_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132768132792_))
                         (let ((_e132772132797_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132768132792_))))
                           (let ((_tl132770132802_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132772132797_)))
                                 (_hd132771132800_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132772132797_))))
                             (___kont134979134980_
                              _tl132767132794_
                              _tl132770132802_
                              _hd132771132800_)))
                         (___kont134981134982_))))
                 (___kont134981134982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp136323
                                                      (lambda (_g132829132832_
                                                               _g132830132834_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132829132832_
                                                                _g132830132834_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp136323
                                                         '()
                                                         _L132746_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132155_))
                                                  _stx132059_
                                                  (let* ((_specializer-id132843_
                                                          (let* ((_id132837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136324
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132132_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp136324 '"::specialize")))
                         (_specializer-id132840_
                          (let ((__tmp136325
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132059_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132837_ __tmp136325))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132840_))
                    _specializer-id132840_))
                 (_$klass132845_
                  (let ((__tmp136326 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136326)))
                 (_$method-table132847_
                  (let ((__tmp136327 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136327)))
                 (_methods132849_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132151_)))
                 (_$methods132853_
                  (map (lambda (_id132851_)
                         (let ((__tmp136328 (gensym _id132851_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136328)))
                       _methods132849_))
                 (_g136329_
                  (for-each
                   (lambda (_g132854132857_ _g132855132859_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132151_
                        _g132854132857_
                        _g132855132859_)))
                   _methods132849_
                   _$methods132853_))
                 (_methods-bind132870_
                  (map (lambda (_g132862132865_ _g132863132867_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132061_
                            _$klass132845_
                            _$method-table132847_
                            _g132862132865_
                            _g132863132867_)))
                       _methods132849_
                       _$methods132853_))
                 (_slots132872_
                  (let () (declare (not safe)) (hash-keys _slot-refs132152_)))
                 (_$slots132876_
                  (map (lambda (_id132874_)
                         (let ((__tmp136330 (gensym _id132874_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136330)))
                       _slots132872_))
                 (_g136331_
                  (for-each
                   (lambda (_g132877132880_ _g132878132882_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132152_
                        _g132877132880_
                        _g132878132882_)))
                   _slots132872_
                   _$slots132876_))
                 (_slots-bind132893_
                  (map (lambda (_g132885132888_ _g132886132890_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132062_
                            _$klass132845_
                            _g132885132888_
                            _g132886132890_)))
                       _slots132872_
                       _$slots132876_))
                 (_specializer-clauses132985_
                  (map (lambda (_clause132895_)
                         (let* ((___stx134997134998_ _clause132895_)
                                (_g132898132913_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134997134998_)))))
                           (let ((___kont134999135000_
                                  (lambda (_L132941_ _L132942_ _L132943_)
                                    (let* ((_body132973_
                                            (map (lambda (_g132968132970_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132968132970_
                                                      'receiver:
                                                      _L132943_
                                                      'klass:
                                                      _$klass132845_
                                                      'methods:
                                                      _method-calls132151_
                                                      'slots:
                                                      _slot-refs132152_)))
                                                 _L132941_))
                                           (__tmp136332
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132943_ _L132942_))))
                                      (declare (not safe))
                                      (cons __tmp136332 _body132973_))))
                                 (___kont135001135002_
                                  (lambda () _clause132895_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134997134998_))
                                 (let ((_e132905132925_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134997134998_))))
                                   (let ((_tl132903132930_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132905132925_)))
                                         (_hd132904132928_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132905132925_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132904132928_))
                                         (let ((_e132908132933_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132904132928_))))
                                           (let ((_tl132906132938_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132908132933_)))
                                                 (_hd132907132936_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132908132933_))))
                                             (___kont134999135000_
                                              _tl132903132930_
                                              _tl132906132938_
                                              _hd132907132936_)))
                                         (___kont135001135002_))))
                                 (___kont135001135002_)))))
                       (let ((__tmp136333
                              (lambda (_g132977132980_ _g132978132982_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132977132980_ _g132978132982_)))))
                         (declare (not safe))
                         (foldr1 __tmp136333 '() _L132746_))))
                 (_specializer-impl132987_
                  (let ((__tmp136334
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132985_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp136334 _stx132059_)))
                 (_specializer-impl132989_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132063_
                     _$klass132845_
                     _$method-table132847_
                     _methods-bind132870_
                     _slots-bind132893_
                     _specializer-impl132987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp136336
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132132_)))
                                                          (__tmp136335
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132843_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp136336
                                                       '" => "
                                                       __tmp136335))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132064_
                                                       _L132132_
                                                       _specializer-id132843_
                                                       _specializer-impl132989_)))))
                                            _clause132704132743_))))))
                           (let ()
                             (declare (not safe))
                             (_loop132699132727_ _target132696132722_ '())))
                         (let ()
                           (declare (not safe))
                           (_g132690132709_ _g132691132712_))))))
               (let ()
                 (declare (not safe))
                 (_g132690132709_ _g132691132712_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132690132709_
                                                  _g132691132712_))))))
                                   (declare (not safe))
                                   (_g132689132992_ _L132131_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L132131_))
                                     (let* ((_g132995133025_
                                             (lambda (_g132996133022_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132996133022_))))
                                            (_g132994133630_
                                             (lambda (_g132996133028_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132996133028_))
                                                   (let ((_e133002133030_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132996133028_))))
                                                     (let ((_hd133001133033_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133002133030_)))
                                                           (_tl133000133035_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133002133030_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133000133035_))
                                                           (let ((_e133005133038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133000133035_))))
                     (let ((_hd133004133041_
                            (let ()
                              (declare (not safe))
                              (##car _e133005133038_)))
                           (_tl133003133043_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133005133038_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133004133041_))
                           (let ((_e133008133046_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133004133041_))))
                             (let ((_hd133007133049_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133008133046_)))
                                   (_tl133006133051_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133008133046_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133007133049_))
                                   (let ((_e133011133054_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133007133049_))))
                                     (let ((_hd133010133057_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133011133054_)))
                                           (_tl133009133059_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133011133054_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd133010133057_))
                                           (let ((_e133014133062_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd133010133057_))))
                                             (let ((_hd133013133065_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133014133062_)))
                                                   (_tl133012133067_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133014133062_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133012133067_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl133009133059_))
                                                       (let ((_e133017133070_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl133009133059_))))
                 (let ((_hd133016133073_
                        (let () (declare (not safe)) (##car _e133017133070_)))
                       (_tl133015133075_
                        (let () (declare (not safe)) (##cdr _e133017133070_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133015133075_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133006133051_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133003133043_))
                               (let ((_e133020133078_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133003133043_))))
                                 (let ((_hd133019133081_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133020133078_)))
                                       (_tl133018133083_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133020133078_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133018133083_))
                                       ((lambda (_L133086_ _L133087_ _L133088_)
                                          (let* ((_g133111133129_
                                                  (lambda (_g133112133126_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133112133126_))))
                                                 (_g133110133180_
                                                  (lambda (_g133112133132_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133112133132_))
                                                        (let ((_e133118133134_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133112133132_))))
                  (let ((_hd133117133137_
                         (let () (declare (not safe)) (##car _e133118133134_)))
                        (_tl133116133139_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133118133134_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl133116133139_))
                        (let ((_e133121133142_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl133116133139_))))
                          (let ((_hd133120133145_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e133121133142_)))
                                (_tl133119133147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e133121133142_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd133120133145_))
                                (let ((_e133124133150_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd133120133145_))))
                                  (let ((_hd133123133153_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133124133150_)))
                                        (_tl133122133155_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133124133150_))))
                                    ((lambda (_L133158_ _L133159_ _L133160_)
                                       (for-each
                                        (lambda (_g133175133177_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g133175133177_
                                             'receiver:
                                             _L133160_
                                             'methods:
                                             _method-calls132151_
                                             'slots:
                                             _slot-refs132152_)))
                                        _L133158_))
                                     _tl133119133147_
                                     _tl133122133155_
                                     _hd133123133153_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133111133129_ _g133112133132_)))))
                        (let ()
                          (declare (not safe))
                          (_g133111133129_ _g133112133132_)))))
                (let ()
                  (declare (not safe))
                  (_g133111133129_ _g133112133132_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133110133180_ _L133087_))
                                          (let* ((_g133183133202_
                                                  (lambda (_g133184133199_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133184133199_))))
                                                 (_g133182133321_
                                                  (lambda (_g133184133205_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133184133205_))
                                                        (let ((_e133188133207_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133184133205_))))
                  (let ((_hd133187133210_
                         (let () (declare (not safe)) (##car _e133188133207_)))
                        (_tl133186133212_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133188133207_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133186133212_))
                        (let ((_g136291_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl133186133212_
                                  '0))))
                          (begin
                            (let ((_g136292_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g136291_)
                                         (##vector-length _g136291_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g136292_ 2)))
                                  (error "Context expects 2 values"
                                         _g136292_)))
                            (let ((_target133189133215_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g136291_ 0)))
                                  (_tl133191133217_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g136291_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl133191133217_))
                                  (letrec ((_loop133192133220_
                                            (lambda (_hd133190133223_
                                                     _clause133196133225_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd133190133223_))
                                                  (let ((_e133193133228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd133190133223_))))
                                                    (let ((_lp-hd133194133231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133193133228_)))
                                                          (_lp-tl133195133233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133193133228_))))
                                                      (let ((__tmp136294
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd133194133231_ _clause133196133225_))))
                (declare (not safe))
                (_loop133192133220_ _lp-tl133195133233_ __tmp136294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause133197133236_
                                                         (reverse _clause133196133225_)))
                                                    ((lambda (_L133239_)
                                                       (for-each
                                                        (lambda (_clause133252_)
                                                          (let* ((_g133254133269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g133255133266_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133255133266_))))
                         (_g133253133311_
                          (lambda (_g133255133272_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133255133272_))
                                (let ((_e133261133274_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133255133272_))))
                                  (let ((_hd133260133277_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133261133274_)))
                                        (_tl133259133279_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133261133274_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133260133277_))
                                        (let ((_e133264133282_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133260133277_))))
                                          (let ((_hd133263133285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133264133282_)))
                                                (_tl133262133287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133264133282_))))
                                            ((lambda (_L133290_
                                                      _L133291_
                                                      _L133292_)
                                               (for-each
                                                (lambda (_g133306133308_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g133306133308_
                                                     'receiver:
                                                     _L133292_
                                                     'methods:
                                                     _method-calls132151_
                                                     'slots:
                                                     _slot-refs132152_)))
                                                _L133290_))
                                             _tl133259133279_
                                             _tl133262133287_
                                             _hd133263133285_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133254133269_ _g133255133272_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133254133269_ _g133255133272_))))))
                    (declare (not safe))
                    (_g133253133311_ _clause133252_)))
                (let ((__tmp136293
                       (lambda (_g133313133316_ _g133314133318_)
                         (let ()
                           (declare (not safe))
                           (cons _g133313133316_ _g133314133318_)))))
                  (declare (not safe))
                  (foldr1 __tmp136293 '() _L133239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause133197133236_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop133192133220_
                                       _target133189133215_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g133183133202_ _g133184133205_))))))
                        (let ()
                          (declare (not safe))
                          (_g133183133202_ _g133184133205_)))))
                (let ()
                  (declare (not safe))
                  (_g133183133202_ _g133184133205_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133182133321_ _L133086_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?132155_))
                                              _stx132059_
                                              (let* ((_specializer-id133330_
                                                      (let* ((_id133324_
                                                              (let ((__tmp136295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L132132_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp136295 '"::specialize")))
                     (_specializer-id133327_
                      (let ((__tmp136296
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx132059_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id133324_ __tmp136296))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id133327_))
                _specializer-id133327_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass133332_
                                                      (let ((__tmp136297
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp136297)))
                                                     (_$method-table133334_
                                                      (let ((__tmp136298
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp136298)))
                                                     (_methods133336_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls132151_)))
                                                     (_$methods133340_
                                                      (map (lambda (_id133338_)
                                                             (let ((__tmp136299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id133338_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp136299)))
                   _methods133336_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g136300_
                                                      (for-each
                                                       (lambda (_g133341133344_
                                                                _g133342133346_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls132151_
                                                            _g133341133344_
                                                            _g133342133346_)))
                                                       _methods133336_
                                                       _$methods133340_))
                                                     (_methods-bind133357_
                                                      (map (lambda (_g133349133352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g133350133354_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind132061_
                        _$klass133332_
                        _$method-table133334_
                        _g133349133352_
                        _g133350133354_)))
                   _methods133336_
                   _$methods133340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots133359_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs132152_)))
                                                     (_$slots133363_
                                                      (map (lambda (_id133361_)
                                                             (let ((__tmp136301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id133361_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp136301)))
                   _slots133359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g136302_
                                                      (for-each
                                                       (lambda (_g133364133367_
                                                                _g133365133369_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs132152_
                                                            _g133364133367_
                                                            _g133365133369_)))
                                                       _slots133359_
                                                       _$slots133363_))
                                                     (_slots-bind133380_
                                                      (map (lambda (_g133372133375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g133373133377_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind132062_
                        _$klass133332_
                        _g133372133375_
                        _g133373133377_)))
                   _slots133359_
                   _$slots133363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr133466_
                                                      (let* ((_g133382133400_
                                                              (lambda (_g133383133397_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133383133397_))))
                     (_g133381133463_
                      (lambda (_g133383133403_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133383133403_))
                            (let ((_e133389133405_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133383133403_))))
                              (let ((_hd133388133408_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133389133405_)))
                                    (_tl133387133410_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133389133405_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133387133410_))
                                    (let ((_e133392133413_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133387133410_))))
                                      (let ((_hd133391133416_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133392133413_)))
                                            (_tl133390133418_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133392133413_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133391133416_))
                                            (let ((_e133395133421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133391133416_))))
                                              (let ((_hd133394133424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133395133421_)))
                                                    (_tl133393133426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133395133421_))))
                                                ((lambda (_L133429_
                                                          _L133430_
                                                          _L133431_)
                                                   (let* ((_body133461_
                                                           (map (lambda (_g133456133458_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g133456133458_
                             'receiver:
                             _L133431_
                             'klass:
                             _$klass133332_
                             'methods:
                             _method-calls132151_
                             'slots:
                             _slot-refs132152_)))
                        _L133429_))
                  (__tmp136303
                   (let ((__tmp136304
                          (let ((__tmp136305
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133431_ _L133430_))))
                            (declare (not safe))
                            (cons __tmp136305 _body133461_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp136304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp136303
                                                      _L133087_)))
                                                 _tl133390133418_
                                                 _tl133393133426_
                                                 _hd133394133424_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133382133400_
                                               _g133383133403_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133382133400_ _g133383133403_)))))
                            (let ()
                              (declare (not safe))
                              (_g133382133400_ _g133383133403_))))))
                (declare (not safe))
                (_g133381133463_ _L133087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr133623_
                                                      (let* ((_g133468133487_
                                                              (lambda (_g133469133484_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133469133484_))))
                     (_g133467133620_
                      (lambda (_g133469133490_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133469133490_))
                            (let ((_e133473133492_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133469133490_))))
                              (let ((_hd133472133495_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133473133492_)))
                                    (_tl133471133497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133473133492_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl133471133497_))
                                    (let ((_g136306_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl133471133497_
                                              '0))))
                                      (begin
                                        (let ((_g136307_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g136306_)
                                                     (##vector-length
                                                      _g136306_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g136307_ 2)))
                                              (error "Context expects 2 values"
                                                     _g136307_)))
                                        (let ((_target133474133500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136306_ 0)))
                                              (_tl133476133502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136306_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133476133502_))
                                              (letrec ((_loop133477133505_
                                                        (lambda (_hd133475133508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause133481133510_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133475133508_))
                      (let ((_e133478133513_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133475133508_))))
                        (let ((_lp-hd133479133516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133478133513_)))
                              (_lp-tl133480133518_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133478133513_))))
                          (let ((__tmp136311
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133479133516_
                                         _clause133481133510_))))
                            (declare (not safe))
                            (_loop133477133505_
                             _lp-tl133480133518_
                             __tmp136311))))
                      (let ((_clause133482133521_
                             (reverse _clause133481133510_)))
                        ((lambda (_L133524_)
                           (let* ((_clauses133618_
                                   (map (lambda (_clause133538_)
                                          (let* ((___stx135017135018_
                                                  _clause133538_)
                                                 (_g133541133556_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135017135018_)))))
                                            (let ((___kont135019135020_
                                                   (lambda (_L133584_
                                                            _L133585_
                                                            _L133586_)
                                                     (let* ((_body133606_
                                                             (map (lambda (_g133601133603_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g133601133603_
                               'receiver:
                               _L133586_
                               'klass:
                               _$klass133332_
                               'methods:
                               _method-calls132151_
                               'slots:
                               _slot-refs132152_)))
                          _L133584_))
                    (__tmp136308
                     (let () (declare (not safe)) (cons _L133586_ _L133585_))))
               (declare (not safe))
               (cons __tmp136308 _body133606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135021135022_
                                                   (lambda () _clause133538_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx135017135018_))
                                                  (let ((_e133548133568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx135017135018_))))
                                                    (let ((_tl133546133573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133548133568_)))
                                                          (_hd133547133571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133548133568_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd133547133571_))
                                                          (let ((_e133551133576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd133547133571_))))
                    (let ((_tl133549133581_
                           (let ()
                             (declare (not safe))
                             (##cdr _e133551133576_)))
                          (_hd133550133579_
                           (let ()
                             (declare (not safe))
                             (##car _e133551133576_))))
                      (___kont135019135020_
                       _tl133546133573_
                       _tl133549133581_
                       _hd133550133579_)))
                  (___kont135021135022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135021135022_)))))
                                        (let ((__tmp136309
                                               (lambda (_g133610133613_
                                                        _g133611133615_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g133610133613_
                                                         _g133611133615_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp136309 '() _L133524_))))
                                  (__tmp136310
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses133618_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp136310 _L133086_)))
                         _clause133482133521_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133477133505_
                                                   _target133474133500_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133468133487_
                                                 _g133469133490_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133468133487_ _g133469133490_)))))
                            (let ()
                              (declare (not safe))
                              (_g133468133487_ _g133469133490_))))))
                (declare (not safe))
                (_g133467133620_ _L133086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133625_
                                                      (let ((__tmp136312
                                                             (let ((__tmp136313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp136315
                                   (let ((__tmp136316
                                          (let ((__tmp136318
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L133088_ '())))
                                                (__tmp136317
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr133466_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp136318 __tmp136317))))
                                     (declare (not safe))
                                     (cons __tmp136316 '())))
                                  (__tmp136314
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr133623_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp136315 __tmp136314))))
                       (declare (not safe))
                       (cons '%#let-values __tmp136313))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp136312 _stx132059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133627_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl132063_
                                                         _$klass133332_
                                                         _$method-table133334_
                                                         _methods-bind133357_
                                                         _slots-bind133380_
                                                         _specializer-impl133625_))))
                                                (let ((__tmp136320
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L132132_)))
                                                      (__tmp136319
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id133330_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp136320
                                                   '" => "
                                                   __tmp136319))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def132064_
                                                   _L132132_
                                                   _specializer-id133330_
                                                   _specializer-impl133627_)))))
                                        _hd133019133081_
                                        _hd133016133073_
                                        _hd133013133065_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132995133025_ _g132996133028_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132995133025_ _g132996133028_)))
                           (let ()
                             (declare (not safe))
                             (_g132995133025_ _g132996133028_)))
                       (let ()
                         (declare (not safe))
                         (_g132995133025_ _g132996133028_)))))
               (let () (declare (not safe)) (_g132995133025_ _g132996133028_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132995133025_
                                                      _g132996133028_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132995133025_
                                              _g132996133028_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132995133025_ _g132996133028_)))))
                           (let ()
                             (declare (not safe))
                             (_g132995133025_ _g132996133028_)))))
                   (let ()
                     (declare (not safe))
                     (_g132995133025_ _g132996133028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132995133025_
                                                      _g132996133028_))))))
                                       (declare (not safe))
                                       (_g132994133630_ _L132131_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L132131_))
                                         (let* ((_g133633133686_
                                                 (lambda (_g133634133683_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133634133683_))))
                                                (_g133632134817_
                                                 (lambda (_g133634133689_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133634133689_))
                                                       (let ((_e133642133691_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133634133689_))))
                 (let ((_hd133641133694_
                        (let () (declare (not safe)) (##car _e133642133691_)))
                       (_tl133640133696_
                        (let () (declare (not safe)) (##cdr _e133642133691_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd133641133694_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd133641133694_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133640133696_))
                               (let ((_e133645133699_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133640133696_))))
                                 (let ((_hd133644133702_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133645133699_)))
                                       (_tl133643133704_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133645133699_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133644133702_))
                                       (let ((_e133648133707_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133644133702_))))
                                         (let ((_hd133647133710_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133648133707_)))
                                               (_tl133646133712_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133648133707_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133647133710_))
                                               (let ((_e133651133715_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133647133710_))))
                                                 (let ((_hd133650133718_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133651133715_)))
                                                       (_tl133649133720_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133651133715_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd133650133718_))
                                                       (let ((_e133654133723_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd133650133718_))))
                 (let ((_hd133653133726_
                        (let () (declare (not safe)) (##car _e133654133723_)))
                       (_tl133652133728_
                        (let () (declare (not safe)) (##cdr _e133654133723_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133652133728_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl133649133720_))
                           (let ((_e133657133731_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl133649133720_))))
                             (let ((_hd133656133734_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133657133731_)))
                                   (_tl133655133736_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133657133731_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133656133734_))
                                   (let ((_e133660133739_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133656133734_))))
                                     (let ((_hd133659133742_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133660133739_)))
                                           (_tl133658133744_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133660133739_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd133659133742_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd133659133742_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl133658133744_))
                                                   (let ((_e133663133747_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl133658133744_))))
                                                     (let ((_hd133662133750_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133663133747_)))
                                                           (_tl133661133752_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133663133747_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd133662133750_))
                                                           (let ((_e133666133755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd133662133750_))))
                     (let ((_hd133665133758_
                            (let ()
                              (declare (not safe))
                              (##car _e133666133755_)))
                           (_tl133664133760_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133666133755_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133665133758_))
                           (let ((_e133669133763_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133665133758_))))
                             (let ((_hd133668133766_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133669133763_)))
                                   (_tl133667133768_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133669133763_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133668133766_))
                                   (let ((_e133672133771_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133668133766_))))
                                     (let ((_hd133671133774_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133672133771_)))
                                           (_tl133670133776_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133672133771_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133670133776_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl133667133768_))
                                               (let ((_e133675133779_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl133667133768_))))
                                                 (let ((_hd133674133782_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133675133779_)))
                                                       (_tl133673133784_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133675133779_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133673133784_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl133664133760_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl133661133752_))
                       (let ((_e133678133787_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133661133752_))))
                         (let ((_hd133677133790_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133678133787_)))
                               (_tl133676133792_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133678133787_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133676133792_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl133655133736_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133646133712_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl133643133704_))
                                           (let ((_e133681133795_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl133643133704_))))
                                             (let ((_hd133680133798_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133681133795_)))
                                                   (_tl133679133800_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133681133795_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133679133800_))
                                                   ((lambda (_L133803_
                                                             _L133804_
                                                             _L133805_
                                                             _L133806_
                                                             _L133807_)
                                                      (let* ((_g133846133908_
                                                              (lambda (_g133847133905_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133847133905_))))
                     (_g133845134814_
                      (lambda (_g133847133911_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133847133911_))
                            (let ((_e133855133913_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133847133911_))))
                              (let ((_hd133854133916_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133855133913_)))
                                    (_tl133853133918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133855133913_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133854133916_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133854133916_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133853133918_))
                                            (let ((_e133858133921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133853133918_))))
                                              (let ((_hd133857133924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133858133921_)))
                                                    (_tl133856133926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133858133921_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133856133926_))
                                                    (let ((_e133861133929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133856133926_))))
                                                      (let ((_hd133860133932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133861133929_)))
                    (_tl133859133934_
                     (let () (declare (not safe)) (##cdr _e133861133929_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133860133932_))
                    (let ((_e133864133937_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133860133932_))))
                      (let ((_hd133863133940_
                             (let ()
                               (declare (not safe))
                               (##car _e133864133937_)))
                            (_tl133862133942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133864133937_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133863133940_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133863133940_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133862133942_))
                                    (let ((_e133867133945_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133862133942_))))
                                      (let ((_hd133866133948_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133867133945_)))
                                            (_tl133865133950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133867133945_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133866133948_))
                                            (let ((_e133870133953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133866133948_))))
                                              (let ((_hd133869133956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133870133953_)))
                                                    (_tl133868133958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133870133953_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133869133956_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133869133956_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133868133958_))
                                                            (let ((_e133873133961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133868133958_))))
                      (let ((_hd133872133964_
                             (let ()
                               (declare (not safe))
                               (##car _e133873133961_)))
                            (_tl133871133966_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133873133961_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133871133966_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133865133950_))
                                (let ((_e133876133969_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133865133950_))))
                                  (let ((_hd133875133972_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133876133969_)))
                                        (_tl133874133974_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133876133969_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133875133972_))
                                        (let ((_e133879133977_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133875133972_))))
                                          (let ((_hd133878133980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133879133977_)))
                                                (_tl133877133982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133879133977_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133878133980_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133878133980_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133877133982_))
                                                        (let ((_e133882133985_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133877133982_))))
                  (let ((_hd133881133988_
                         (let () (declare (not safe)) (##car _e133882133985_)))
                        (_tl133880133990_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133882133985_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133880133990_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133874133974_))
                            (let ((_e133885133993_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133874133974_))))
                              (let ((_hd133884133996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133885133993_)))
                                    (_tl133883133998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133885133993_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133884133996_))
                                    (let ((_e133888134001_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133884133996_))))
                                      (let ((_hd133887134004_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133888134001_)))
                                            (_tl133886134006_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133888134001_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133887134004_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133887134004_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133886134006_))
                                                    (let ((_e133891134009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133886134006_))))
                                                      (let ((_hd133890134012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133891134009_)))
                    (_tl133889134014_
                     (let () (declare (not safe)) (##cdr _e133891134009_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133889134014_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133883133998_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133883133998_))
                                  '1)
                            (let ((_g136217_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133883133998_
                                      '1))))
                              (begin
                                (let ((_g136218_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g136217_)
                                             (##vector-length _g136217_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g136218_ 2)))
                                      (error "Context expects 2 values"
                                             _g136218_)))
                                (let ((_target133892134017_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136217_ 0)))
                                      (_tl133894134019_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136217_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133894134019_))
                                      (let ((_e133903134022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133894134019_))))
                                        (let ((_hd133902134025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133903134022_)))
                                              (_tl133901134027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133903134022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133901134027_))
                                              (letrec ((_loop133895134030_
                                                        (lambda (_hd133893134033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133899134035_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133893134033_))
                      (let ((_e133896134038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133893134033_))))
                        (let ((_lp-hd133897134041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133896134038_)))
                              (_lp-tl133898134043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133896134038_))))
                          (let ((__tmp136290
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133897134041_
                                         _kw-ref133899134035_))))
                            (declare (not safe))
                            (_loop133895134030_
                             _lp-tl133898134043_
                             __tmp136290))))
                      (let ((_kw-ref133900134046_
                             (reverse _kw-ref133899134035_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133859133934_))
                            ((lambda (_L134049_
                                      _L134050_
                                      _L134051_
                                      _L134052_
                                      _L134053_)
                               (let* ((_kw-count134104_
                                       (length (let ((__tmp136219
                                                      (lambda (_g134096134099_
                                                               _g134097134101_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g134096134099_
                                                                _g134097134101_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp136219
                                                         '()
                                                         _L134050_))))
                                      (_self-index134106_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count134104_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133805_))
                                     (let* ((_g134109134123_
                                             (lambda (_g134110134120_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134110134120_))))
                                            (_g134108134236_
                                             (lambda (_g134110134126_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134110134126_))
                                                   (let ((_e134115134128_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134110134126_))))
                                                     (let ((_hd134114134131_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134115134128_)))
                                                           (_tl134113134133_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134115134128_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134113134133_))
                                                           (let ((_e134118134136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134113134133_))))
                     (let ((_hd134117134139_
                            (let ()
                              (declare (not safe))
                              (##car _e134118134136_)))
                           (_tl134116134141_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134118134136_))))
                       ((lambda (_L134144_ _L134145_)
                          (let ((_self134161_
                                 (list-ref _L134145_ _self-index134106_)))
                            (for-each
                             (lambda (_g134162134164_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g134162134164_
                                  'receiver:
                                  _self134161_
                                  'methods:
                                  _method-calls132151_
                                  'slots:
                                  _slot-refs132152_)))
                             _L134144_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?132155_))
                                _stx132059_
                                (let* ((_specializer-id134173_
                                        (let* ((_id134167_
                                                (let ((__tmp136263
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L132132_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp136263
                                                   '"::specialize")))
                                               (_specializer-id134170_
                                                (let ((__tmp136264
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx132059_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id134167_
                                                   __tmp136264))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id134170_))
                                          _specializer-id134170_))
                                       (_$klass134175_
                                        (let ((__tmp136265 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp136265)))
                                       (_$method-table134177_
                                        (let ((__tmp136266
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp136266)))
                                       (_methods134179_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls132151_)))
                                       (_$methods134183_
                                        (map (lambda (_id134181_)
                                               (let ((__tmp136267
                                                      (gensym _id134181_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp136267)))
                                             _methods134179_))
                                       (_g136268_
                                        (for-each
                                         (lambda (_g134184134187_
                                                  _g134185134189_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls132151_
                                              _g134184134187_
                                              _g134185134189_)))
                                         _methods134179_
                                         _$methods134183_))
                                       (_methods-bind134200_
                                        (map (lambda (_g134192134195_
                                                      _g134193134197_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind132061_
                                                  _$klass134175_
                                                  _$method-table134177_
                                                  _g134192134195_
                                                  _g134193134197_)))
                                             _methods134179_
                                             _$methods134183_))
                                       (_slots134202_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs132152_)))
                                       (_$slots134206_
                                        (map (lambda (_id134204_)
                                               (let ((__tmp136269
                                                      (gensym _id134204_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp136269)))
                                             _slots134202_))
                                       (_g136270_
                                        (for-each
                                         (lambda (_g134207134210_
                                                  _g134208134212_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs132152_
                                              _g134207134210_
                                              _g134208134212_)))
                                         _slots134202_
                                         _$slots134206_))
                                       (_slots-bind134223_
                                        (map (lambda (_g134215134218_
                                                      _g134216134220_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind132062_
                                                  _$klass134175_
                                                  _g134215134218_
                                                  _g134216134220_)))
                                             _slots134202_
                                             _$slots134206_))
                                       (_specializer-impl134231_
                                        (let* ((_specializer-body134229_
                                                (map (lambda (_g134224134226_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g134224134226_
                                                          'receiver:
                                                          _self134161_
                                                          'klass:
                                                          _$klass134175_
                                                          'methods:
                                                          _method-calls132151_
                                                          'slots:
                                                          _slot-refs132152_)))
                                                     _L134144_))
                                               (__tmp136271
                                                (let ((__tmp136272
                                                       (let ((__tmp136274
                                                              (let ((__tmp136275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136287
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133807_ '())))
                                   (__tmp136276
                                    (let ((__tmp136277
                                           (let ((__tmp136278
                                                  (let ((__tmp136280
                                                         (let ((__tmp136281
                                                                (let ((__tmp136286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133806_ '())))
                              (__tmp136282
                               (let ((__tmp136283
                                      (let ((__tmp136284
                                             (let ((__tmp136285
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L134145_
                                                            _specializer-body134229_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp136285))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp136284
                                         _L133805_))))
                                 (declare (not safe))
                                 (cons __tmp136283 '()))))
                          (declare (not safe))
                          (cons __tmp136286 __tmp136282))))
                   (declare (not safe))
                   (cons __tmp136281 '())))
                (__tmp136279
                 (let () (declare (not safe)) (cons _L133804_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136280
                                                          __tmp136279))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp136278))))
                                      (declare (not safe))
                                      (cons __tmp136277 '()))))
                               (declare (not safe))
                               (cons __tmp136287 __tmp136276))))
                        (declare (not safe))
                        (cons __tmp136275 '())))
                     (__tmp136273
                      (let () (declare (not safe)) (cons _L133803_ '()))))
                 (declare (not safe))
                 (cons __tmp136274 __tmp136273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp136272))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp136271
                                           _stx132059_)))
                                       (_specializer-impl134233_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl132063_
                                           _$klass134175_
                                           _$method-table134177_
                                           _methods-bind134200_
                                           _slots-bind134223_
                                           _specializer-impl134231_))))
                                  (let ((__tmp136289
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L132132_)))
                                        (__tmp136288
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id134173_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp136289
                                     '" => "
                                     __tmp136288))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def132064_
                                     _L132132_
                                     _specializer-id134173_
                                     _specializer-impl134233_))))))
                        _tl134116134141_
                        _hd134117134139_)))
                   (let ()
                     (declare (not safe))
                     (_g134109134123_ _g134110134126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134109134123_
                                                      _g134110134126_))))))
                                       (declare (not safe))
                                       (_g134108134236_ _L133805_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133805_))
                                         (let* ((_g134239134269_
                                                 (lambda (_g134240134266_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134240134266_))))
                                                (_g134238134811_
                                                 (lambda (_g134240134272_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134240134272_))
                                                       (let ((_e134246134274_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134240134272_))))
                 (let ((_hd134245134277_
                        (let () (declare (not safe)) (##car _e134246134274_)))
                       (_tl134244134279_
                        (let () (declare (not safe)) (##cdr _e134246134274_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl134244134279_))
                       (let ((_e134249134282_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134244134279_))))
                         (let ((_hd134248134285_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134249134282_)))
                               (_tl134247134287_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134249134282_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd134248134285_))
                               (let ((_e134252134290_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd134248134285_))))
                                 (let ((_hd134251134293_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134252134290_)))
                                       (_tl134250134295_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134252134290_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134251134293_))
                                       (let ((_e134255134298_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134251134293_))))
                                         (let ((_hd134254134301_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134255134298_)))
                                               (_tl134253134303_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134255134298_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134254134301_))
                                               (let ((_e134258134306_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134254134301_))))
                                                 (let ((_hd134257134309_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134258134306_)))
                                                       (_tl134256134311_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134258134306_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134256134311_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134253134303_))
                                                           (let ((_e134261134314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134253134303_))))
                     (let ((_hd134260134317_
                            (let ()
                              (declare (not safe))
                              (##car _e134261134314_)))
                           (_tl134259134319_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134261134314_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134259134319_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134250134295_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl134247134287_))
                                   (let ((_e134264134322_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl134247134287_))))
                                     (let ((_hd134263134325_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134264134322_)))
                                           (_tl134262134327_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134264134322_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134262134327_))
                                           ((lambda (_L134330_
                                                     _L134331_
                                                     _L134332_)
                                              (let* ((_g134355134369_
                                                      (lambda (_g134356134366_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134356134366_))))
                                                     (_g134354134410_
                                                      (lambda (_g134356134372_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134356134372_))
                                                            (let ((_e134361134374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134356134372_))))
                      (let ((_hd134360134377_
                             (let ()
                               (declare (not safe))
                               (##car _e134361134374_)))
                            (_tl134359134379_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134361134374_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl134359134379_))
                            (let ((_e134364134382_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl134359134379_))))
                              (let ((_hd134363134385_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134364134382_)))
                                    (_tl134362134387_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134364134382_))))
                                ((lambda (_L134390_ _L134391_)
                                   (let ((_self134404_
                                          (list-ref
                                           _L134391_
                                           _self-index134106_)))
                                     (for-each
                                      (lambda (_g134405134407_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g134405134407_
                                           'receiver:
                                           _self134404_
                                           'methods:
                                           _method-calls132151_
                                           'slots:
                                           _slot-refs132152_)))
                                      _L134390_)))
                                 _tl134362134387_
                                 _hd134363134385_)))
                            (let ()
                              (declare (not safe))
                              (_g134355134369_ _g134356134372_)))))
                    (let ()
                      (declare (not safe))
                      (_g134355134369_ _g134356134372_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134354134410_ _L134331_))
                                              (let* ((_g134413134432_
                                                      (lambda (_g134414134429_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134414134429_))))
                                                     (_g134412134537_
                                                      (lambda (_g134414134435_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134414134435_))
                                                            (let ((_e134418134437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134414134435_))))
                      (let ((_hd134417134440_
                             (let ()
                               (declare (not safe))
                               (##car _e134418134437_)))
                            (_tl134416134442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134418134437_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl134416134442_))
                            (let ((_g136220_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl134416134442_
                                      '0))))
                              (begin
                                (let ((_g136221_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g136220_)
                                             (##vector-length _g136220_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g136221_ 2)))
                                      (error "Context expects 2 values"
                                             _g136221_)))
                                (let ((_target134419134445_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136220_ 0)))
                                      (_tl134421134447_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136220_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl134421134447_))
                                      (letrec ((_loop134422134450_
                                                (lambda (_hd134420134453_
                                                         _clause134426134455_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd134420134453_))
                                                      (let ((_e134423134458_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd134420134453_))))
                (let ((_lp-hd134424134461_
                       (let () (declare (not safe)) (##car _e134423134458_)))
                      (_lp-tl134425134463_
                       (let () (declare (not safe)) (##cdr _e134423134458_))))
                  (let ((__tmp136223
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd134424134461_ _clause134426134455_))))
                    (declare (not safe))
                    (_loop134422134450_ _lp-tl134425134463_ __tmp136223))))
              (let ((_clause134427134466_ (reverse _clause134426134455_)))
                ((lambda (_L134469_)
                   (for-each
                    (lambda (_clause134482_)
                      (let* ((_g134484134495_
                              (lambda (_g134485134492_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g134485134492_))))
                             (_g134483134527_
                              (lambda (_g134485134498_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g134485134498_))
                                    (let ((_e134490134500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g134485134498_))))
                                      (let ((_hd134489134503_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134490134500_)))
                                            (_tl134488134505_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134490134500_))))
                                        ((lambda (_L134508_ _L134509_)
                                           (let ((_self134521_
                                                  (list-ref
                                                   _L134509_
                                                   _self-index134106_)))
                                             (for-each
                                              (lambda (_g134522134524_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g134522134524_
                                                   'receiver:
                                                   _self134521_
                                                   'methods:
                                                   _method-calls132151_
                                                   'slots:
                                                   _slot-refs132152_)))
                                              _L134508_)))
                                         _tl134488134505_
                                         _hd134489134503_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134484134495_ _g134485134498_))))))
                        (declare (not safe))
                        (_g134483134527_ _clause134482_)))
                    (let ((__tmp136222
                           (lambda (_g134529134532_ _g134530134534_)
                             (let ()
                               (declare (not safe))
                               (cons _g134529134532_ _g134530134534_)))))
                      (declare (not safe))
                      (foldr1 __tmp136222 '() _L134469_))))
                 _clause134427134466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop134422134450_
                                           _target134419134445_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g134413134432_ _g134414134435_))))))
                            (let ()
                              (declare (not safe))
                              (_g134413134432_ _g134414134435_)))))
                    (let ()
                      (declare (not safe))
                      (_g134413134432_ _g134414134435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134412134537_ _L134330_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132155_))
                                                  _stx132059_
                                                  (let* ((_specializer-id134546_
                                                          (let* ((_id134540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136224
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132132_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp136224 '"::specialize")))
                         (_specializer-id134543_
                          (let ((__tmp136225
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132059_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id134540_ __tmp136225))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id134543_))
                    _specializer-id134543_))
                 (_$klass134548_
                  (let ((__tmp136226 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136226)))
                 (_$method-table134550_
                  (let ((__tmp136227 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136227)))
                 (_methods134552_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132151_)))
                 (_$methods134556_
                  (map (lambda (_id134554_)
                         (let ((__tmp136228 (gensym _id134554_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136228)))
                       _methods134552_))
                 (_g136229_
                  (for-each
                   (lambda (_g134557134560_ _g134558134562_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132151_
                        _g134557134560_
                        _g134558134562_)))
                   _methods134552_
                   _$methods134556_))
                 (_methods-bind134573_
                  (map (lambda (_g134565134568_ _g134566134570_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132061_
                            _$klass134548_
                            _$method-table134550_
                            _g134565134568_
                            _g134566134570_)))
                       _methods134552_
                       _$methods134556_))
                 (_slots134575_
                  (let () (declare (not safe)) (hash-keys _slot-refs132152_)))
                 (_$slots134579_
                  (map (lambda (_id134577_)
                         (let ((__tmp136230 (gensym _id134577_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136230)))
                       _slots134575_))
                 (_g136231_
                  (for-each
                   (lambda (_g134580134583_ _g134581134585_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132152_
                        _g134580134583_
                        _g134581134585_)))
                   _slots134575_
                   _$slots134579_))
                 (_slots-bind134596_
                  (map (lambda (_g134588134591_ _g134589134593_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132062_
                            _$klass134548_
                            _g134588134591_
                            _g134589134593_)))
                       _slots134575_
                       _$slots134579_))
                 (_specializer-lambda-expr134669_
                  (let* ((_g134598134612_
                          (lambda (_g134599134609_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134599134609_))))
                         (_g134597134666_
                          (lambda (_g134599134615_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134599134615_))
                                (let ((_e134604134617_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134599134615_))))
                                  (let ((_hd134603134620_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134604134617_)))
                                        (_tl134602134622_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134604134617_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl134602134622_))
                                        (let ((_e134607134625_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl134602134622_))))
                                          (let ((_hd134606134628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134607134625_)))
                                                (_tl134605134630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134607134625_))))
                                            ((lambda (_L134633_ _L134634_)
                                               (let* ((_self134657_
                                                       (list-ref
                                                        _L134634_
                                                        _self-index134106_))
                                                      (_body134663_
                                                       (map (lambda (_g134658134660_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g134658134660_
                         'receiver:
                         _self134657_
                         'klass:
                         _$klass134548_
                         'methods:
                         _method-calls132151_
                         'slots:
                         _slot-refs132152_)))
                    _L134633_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp136232
                                                        (let ((__tmp136233
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L134634_ _body134663_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp136233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp136232
                                                    _L134331_))))
                                             _tl134605134630_
                                             _hd134606134628_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134598134612_ _g134599134615_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134598134612_ _g134599134615_))))))
                    (declare (not safe))
                    (_g134597134666_ _L134331_)))
                 (_specializer-case-lambda-expr134804_
                  (let* ((_g134671134690_
                          (lambda (_g134672134687_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134672134687_))))
                         (_g134670134801_
                          (lambda (_g134672134693_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134672134693_))
                                (let ((_e134676134695_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134672134693_))))
                                  (let ((_hd134675134698_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134676134695_)))
                                        (_tl134674134700_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134676134695_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl134674134700_))
                                        (let ((_g136234_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl134674134700_
                                                  '0))))
                                          (begin
                                            (let ((_g136235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g136234_)
                                                         (##vector-length
                                                          _g136234_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g136235_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g136235_)))
                                            (let ((_target134677134703_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g136234_
                                                      0)))
                                                  (_tl134679134705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g136234_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl134679134705_))
                                                  (letrec ((_loop134680134708_
                                                            (lambda (_hd134678134711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause134684134713_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd134678134711_))
                          (let ((_e134681134716_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd134678134711_))))
                            (let ((_lp-hd134682134719_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e134681134716_)))
                                  (_lp-tl134683134721_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e134681134716_))))
                              (let ((__tmp136238
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd134682134719_
                                             _clause134684134713_))))
                                (declare (not safe))
                                (_loop134680134708_
                                 _lp-tl134683134721_
                                 __tmp136238))))
                          (let ((_clause134685134724_
                                 (reverse _clause134684134713_)))
                            ((lambda (_L134727_)
                               (let* ((_clauses134799_
                                       (map (lambda (_clause134741_)
                                              (let* ((_g134743134754_
                                                      (lambda (_g134744134751_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134744134751_))))
                                                     (_g134742134789_
                                                      (lambda (_g134744134757_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134744134757_))
                                                            (let ((_e134749134759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134744134757_))))
                      (let ((_hd134748134762_
                             (let ()
                               (declare (not safe))
                               (##car _e134749134759_)))
                            (_tl134747134764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134749134759_))))
                        ((lambda (_L134767_ _L134768_)
                           (let* ((_self134780_
                                   (list-ref _L134768_ _self-index134106_))
                                  (_body134786_
                                   (map (lambda (_g134781134783_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134781134783_
                                             'receiver:
                                             _self134780_
                                             'klass:
                                             _$klass134548_
                                             'methods:
                                             _method-calls132151_
                                             'slots:
                                             _slot-refs132152_)))
                                        _L134767_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134768_ _body134786_))))
                         _tl134747134764_
                         _hd134748134762_)))
                    (let ()
                      (declare (not safe))
                      (_g134743134754_ _g134744134757_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134742134789_
                                                 _clause134741_)))
                                            (let ((__tmp136236
                                                   (lambda (_g134791134794_
                                                            _g134792134796_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134791134794_
                                                             _g134792134796_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp136236
                                                      '()
                                                      _L134727_))))
                                      (__tmp136237
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134799_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp136237
                                  _L134330_)))
                             _clause134685134724_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop134680134708_
                                                       _target134677134703_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g134671134690_
                                                     _g134672134693_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134671134690_ _g134672134693_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134671134690_ _g134672134693_))))))
                    (declare (not safe))
                    (_g134670134801_ _L134330_)))
                 (_specializer-impl134806_
                  (let ((__tmp136239
                         (let ((__tmp136240
                                (let ((__tmp136242
                                       (let ((__tmp136243
                                              (let ((__tmp136260
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133807_ '())))
                                                    (__tmp136244
                                                     (let ((__tmp136245
                                                            (let ((__tmp136246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp136248
                                  (let ((__tmp136249
                                         (let ((__tmp136259
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133806_ '())))
                                               (__tmp136250
                                                (let ((__tmp136251
                                                       (let ((__tmp136252
                                                              (let ((__tmp136253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136255
                                    (let ((__tmp136256
                                           (let ((__tmp136258
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L134332_ '())))
                                                 (__tmp136257
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr134669_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp136258 __tmp136257))))
                                      (declare (not safe))
                                      (cons __tmp136256 '())))
                                   (__tmp136254
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134804_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp136255 __tmp136254))))
                        (declare (not safe))
                        (cons '%#let-values __tmp136253))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp136252 _stx132059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136251 '()))))
                                           (declare (not safe))
                                           (cons __tmp136259 __tmp136250))))
                                    (declare (not safe))
                                    (cons __tmp136249 '())))
                                 (__tmp136247
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133804_ '()))))
                             (declare (not safe))
                             (cons __tmp136248 __tmp136247))))
                      (declare (not safe))
                      (cons '%#let-values __tmp136246))))
               (declare (not safe))
               (cons __tmp136245 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp136260
                                                      __tmp136244))))
                                         (declare (not safe))
                                         (cons __tmp136243 '())))
                                      (__tmp136241
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133803_ '()))))
                                  (declare (not safe))
                                  (cons __tmp136242 __tmp136241))))
                           (declare (not safe))
                           (cons '%#let-values __tmp136240))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp136239 _stx132059_)))
                 (_specializer-impl134808_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132063_
                     _$klass134548_
                     _$method-table134550_
                     _methods-bind134573_
                     _slots-bind134596_
                     _specializer-impl134806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp136262
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132132_)))
                                                          (__tmp136261
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id134546_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp136262
                                                       '" => "
                                                       __tmp136261))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132064_
                                                       _L132132_
                                                       _specializer-id134546_
                                                       _specializer-impl134808_)))))
                                            _hd134263134325_
                                            _hd134260134317_
                                            _hd134257134309_)
                                           (let ()
                                             (declare (not safe))
                                             (_g134239134269_
                                              _g134240134272_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134239134269_ _g134240134272_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134239134269_ _g134240134272_)))
                           (let ()
                             (declare (not safe))
                             (_g134239134269_ _g134240134272_)))))
                   (let ()
                     (declare (not safe))
                     (_g134239134269_ _g134240134272_)))
               (let ()
                 (declare (not safe))
                 (_g134239134269_ _g134240134272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134239134269_
                                                  _g134240134272_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134239134269_ _g134240134272_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134239134269_ _g134240134272_)))))
                       (let ()
                         (declare (not safe))
                         (_g134239134269_ _g134240134272_)))))
               (let ()
                 (declare (not safe))
                 (_g134239134269_ _g134240134272_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134238134811_ _L133805_))
                                         _stx132059_))))
                             _hd133902134025_
                             _kw-ref133900134046_
                             _hd133890134012_
                             _hd133881133988_
                             _hd133872133964_)
                            (let ()
                              (declare (not safe))
                              (_g133846133908_ _g133847133911_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133895134030_
                                                   _target133892134017_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133846133908_
                                                 _g133847133911_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133846133908_ _g133847133911_))))))
                            (let ()
                              (declare (not safe))
                              (_g133846133908_ _g133847133911_)))
                        (let ()
                          (declare (not safe))
                          (_g133846133908_ _g133847133911_)))
                    (let ()
                      (declare (not safe))
                      (_g133846133908_ _g133847133911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133846133908_
                                                       _g133847133911_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133846133908_
                                                   _g133847133911_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133846133908_
                                               _g133847133911_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133846133908_ _g133847133911_)))))
                            (let ()
                              (declare (not safe))
                              (_g133846133908_ _g133847133911_)))
                        (let ()
                          (declare (not safe))
                          (_g133846133908_ _g133847133911_)))))
                (let ()
                  (declare (not safe))
                  (_g133846133908_ _g133847133911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133846133908_
                                                       _g133847133911_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133846133908_
                                                   _g133847133911_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133846133908_ _g133847133911_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133846133908_ _g133847133911_)))
                            (let ()
                              (declare (not safe))
                              (_g133846133908_ _g133847133911_)))))
                    (let ()
                      (declare (not safe))
                      (_g133846133908_ _g133847133911_)))
                (let ()
                  (declare (not safe))
                  (_g133846133908_ _g133847133911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133846133908_
                                                       _g133847133911_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133846133908_
                                               _g133847133911_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133846133908_ _g133847133911_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133846133908_ _g133847133911_)))
                            (let ()
                              (declare (not safe))
                              (_g133846133908_ _g133847133911_)))))
                    (let ()
                      (declare (not safe))
                      (_g133846133908_ _g133847133911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133846133908_
                                                       _g133847133911_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133846133908_
                                               _g133847133911_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133846133908_ _g133847133911_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133846133908_ _g133847133911_)))))
                            (let ()
                              (declare (not safe))
                              (_g133846133908_ _g133847133911_))))))
                (declare (not safe))
                (_g133845134814_ _L133804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd133680133798_
                                                    _hd133677133790_
                                                    _hd133674133782_
                                                    _hd133671133774_
                                                    _hd133653133726_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133633133686_
                                                      _g133634133689_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133633133686_
                                              _g133634133689_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g133633133686_ _g133634133689_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g133633133686_ _g133634133689_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133633133686_ _g133634133689_)))))
                       (let ()
                         (declare (not safe))
                         (_g133633133686_ _g133634133689_)))
                   (let ()
                     (declare (not safe))
                     (_g133633133686_ _g133634133689_)))
               (let ()
                 (declare (not safe))
                 (_g133633133686_ _g133634133689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133633133686_
                                                  _g133634133689_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133633133686_
                                              _g133634133689_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133633133686_ _g133634133689_)))))
                           (let ()
                             (declare (not safe))
                             (_g133633133686_ _g133634133689_)))))
                   (let ()
                     (declare (not safe))
                     (_g133633133686_ _g133634133689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133633133686_
                                                      _g133634133689_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133633133686_
                                                  _g133634133689_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133633133686_
                                              _g133634133689_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133633133686_ _g133634133689_)))))
                           (let ()
                             (declare (not safe))
                             (_g133633133686_ _g133634133689_)))
                       (let ()
                         (declare (not safe))
                         (_g133633133686_ _g133634133689_)))))
               (let ()
                 (declare (not safe))
                 (_g133633133686_ _g133634133689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133633133686_
                                                  _g133634133689_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133633133686_ _g133634133689_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133633133686_ _g133634133689_)))
                           (let ()
                             (declare (not safe))
                             (_g133633133686_ _g133634133689_)))
                       (let ()
                         (declare (not safe))
                         (_g133633133686_ _g133634133689_)))))
               (let ()
                 (declare (not safe))
                 (_g133633133686_ _g133634133689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133632134817_ _L132131_))
                                         _stx132059_))))))))
                  (___kont135041135042_ (lambda () _stx132059_)))
              (let ((___match135070135071_
                     (lambda (_e132073132099_
                              _hd132072132102_
                              _tl132071132104_
                              _e132076132107_
                              _hd132075132110_
                              _tl132074132112_
                              _e132079132115_
                              _hd132078132118_
                              _tl132077132120_
                              _e132082132123_
                              _hd132081132126_
                              _tl132080132128_)
                       (let ((_L132131_ _hd132081132126_)
                             (_L132132_ _hd132078132118_))
                         (if (let ((__tmp136351
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L132132_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp136351))
                             (___kont135039135040_ _L132131_ _L132132_)
                             (___kont135041135042_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135037135038_))
                    (let ((_e132073132099_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135037135038_))))
                      (let ((_tl132071132104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132073132099_)))
                            (_hd132072132102_
                             (let ()
                               (declare (not safe))
                               (##car _e132073132099_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132071132104_))
                            (let ((_e132076132107_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132071132104_))))
                              (let ((_tl132074132112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132076132107_)))
                                    (_hd132075132110_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132076132107_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132075132110_))
                                    (let ((_e132079132115_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132075132110_))))
                                      (let ((_tl132077132120_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132079132115_)))
                                            (_hd132078132118_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132079132115_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl132077132120_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl132074132112_))
                                                (let ((_e132082132123_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl132074132112_))))
                                                  (let ((_tl132080132128_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132082132123_)))
                                                        (_hd132081132126_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132082132123_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl132080132128_))
                                                        (___match135070135071_
                                                         _e132073132099_
                                                         _hd132072132102_
                                                         _tl132071132104_
                                                         _e132076132107_
                                                         _hd132075132110_
                                                         _tl132074132112_
                                                         _e132079132115_
                                                         _hd132078132118_
                                                         _tl132077132120_
                                                         _e132082132123_
                                                         _hd132081132126_
                                                         _tl132080132128_)
                                                        (___kont135041135042_))))
                                                (___kont135041135042_))
                                            (___kont135041135042_))))
                                    (___kont135041135042_))))
                            (___kont135041135042_))))
                    (___kont135041135042_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self131019_ _stx131020_)
        (let* ((___stx135073135074_ _stx131020_)
               (_g131028131250_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx135073135074_)))))
          (let ((___kont135075135076_
                 (lambda (_L132007_ _L132008_ _L132009_ _L132010_)
                   (let ((__tmp136353
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131019_ 'methods)))
                         (__tmp136352
                          (let () (declare (not safe)) (gx#stx-e _L132008_))))
                     (declare (not safe))
                     (hash-put! __tmp136353 __tmp136352 '#t))
                   (for-each
                    (lambda (_g132043132045_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131019_ _g132043132045_)))
                    (let ((__tmp136354
                           (lambda (_g132047132050_ _g132048132052_)
                             (let ()
                               (declare (not safe))
                               (cons _g132047132050_ _g132048132052_)))))
                      (declare (not safe))
                      (foldr1 __tmp136354 '() _L132007_)))))
                (___kont135079135080_
                 (lambda (_L131842_ _L131843_ _L131844_ _L131845_ _L131846_)
                   (let ((__tmp136356
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131019_ 'methods)))
                         (__tmp136355
                          (let () (declare (not safe)) (gx#stx-e _L131843_))))
                     (declare (not safe))
                     (hash-put! __tmp136356 __tmp136355 '#t))
                   (for-each
                    (lambda (_g131886131888_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131019_ _g131886131888_)))
                    (let ((__tmp136357
                           (lambda (_g131890131893_ _g131891131895_)
                             (let ()
                               (declare (not safe))
                               (cons _g131890131893_ _g131891131895_)))))
                      (declare (not safe))
                      (foldr1 __tmp136357 '() _L131842_)))))
                (___kont135083135084_
                 (lambda (_L131675_ _L131676_ _L131677_)
                   (let ((__tmp136359
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131019_ 'slots)))
                         (__tmp136358
                          (let () (declare (not safe)) (gx#stx-e _L131675_))))
                     (declare (not safe))
                     (hash-put! __tmp136359 __tmp136358 '#t))))
                (___kont135085135086_
                 (lambda (_L131552_ _L131553_ _L131554_ _L131555_)
                   (let ((__tmp136361
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131019_ 'slots)))
                         (__tmp136360
                          (let () (declare (not safe)) (gx#stx-e _L131553_))))
                     (declare (not safe))
                     (hash-put! __tmp136361 __tmp136360 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self131019_ _L131552_))))
                (___kont135087135088_
                 (lambda (_L131426_ _L131427_)
                   (let* ((_accessor131449_
                           (let ((__tmp136362
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L131427_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp136362)))
                          (_klass131451_
                           (let ((__tmp136363
                                  (##structure-ref
                                   _accessor131449_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131020_
                              __tmp136363)))
                          (_slot131453_
                           (##structure-ref
                            _accessor131449_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp136366
                                     (##structure-ref
                                      _accessor131449_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp136366))
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
                         '#!void
                         (let ((__tmp136365
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131019_ 'slots)))
                               (__tmp136364
                                (##structure-ref
                                 _accessor131449_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp136365 __tmp136364 '#t))))))
                (___kont135089135090_
                 (lambda (_L131326_ _L131327_ _L131328_)
                   (let* ((_mutator131355_
                           (let ((__tmp136367
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L131328_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp136367)))
                          (_klass131357_
                           (let ((__tmp136368
                                  (##structure-ref
                                   _mutator131355_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131020_
                              __tmp136368)))
                          (_slot131359_
                           (##structure-ref
                            _mutator131355_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp136370
                                     (##structure-ref
                                      _mutator131355_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp136370))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass131357_
                                     _slot131359_))
                                  (##structure-ref
                                   _klass131357_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp136369
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131019_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp136369 _slot131359_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self131019_ _L131326_)))))
                (___kont135091135092_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands _self131019_ _stx131020_)))))
            (let* ((___match135572135573_
                    (lambda (_e131224131262_
                             _hd131223131265_
                             _tl131222131267_
                             _e131227131270_
                             _hd131226131273_
                             _tl131225131275_
                             _e131230131278_
                             _hd131229131281_
                             _tl131228131283_
                             _e131233131286_
                             _hd131232131289_
                             _tl131231131291_
                             _e131236131294_
                             _hd131235131297_
                             _tl131234131299_
                             _e131239131302_
                             _hd131238131305_
                             _tl131237131307_
                             _e131242131310_
                             _hd131241131313_
                             _tl131240131315_
                             _e131245131318_
                             _hd131244131321_
                             _tl131243131323_)
                      (let ((_L131326_ _hd131244131321_)
                            (_L131327_ _hd131241131313_)
                            (_L131328_ _hd131232131289_))
                        (if (and (let ((__tmp136372
                                        (let ((__tmp136373
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L131328_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp136373))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp136372
                                    'gxc#!mutator::t))
                                 (let ((__tmp136371
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131019_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131327_
                                    __tmp136371)))
                            (___kont135089135090_
                             _L131326_
                             _L131327_
                             _L131328_)
                            (___kont135091135092_)))))
                   (___match135570135571_
                    (lambda (_e131224131262_
                             _hd131223131265_
                             _tl131222131267_
                             _e131227131270_
                             _hd131226131273_
                             _tl131225131275_
                             _e131230131278_
                             _hd131229131281_
                             _tl131228131283_
                             _e131233131286_
                             _hd131232131289_
                             _tl131231131291_
                             _e131236131294_
                             _hd131235131297_
                             _tl131234131299_
                             _e131239131302_
                             _hd131238131305_
                             _tl131237131307_
                             _e131242131310_
                             _hd131241131313_
                             _tl131240131315_
                             _e131245131318_
                             _hd131244131321_
                             _tl131243131323_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131243131323_))
                          (___match135572135573_
                           _e131224131262_
                           _hd131223131265_
                           _tl131222131267_
                           _e131227131270_
                           _hd131226131273_
                           _tl131225131275_
                           _e131230131278_
                           _hd131229131281_
                           _tl131228131283_
                           _e131233131286_
                           _hd131232131289_
                           _tl131231131291_
                           _e131236131294_
                           _hd131235131297_
                           _tl131234131299_
                           _e131239131302_
                           _hd131238131305_
                           _tl131237131307_
                           _e131242131310_
                           _hd131241131313_
                           _tl131240131315_
                           _e131245131318_
                           _hd131244131321_
                           _tl131243131323_)
                          (___kont135091135092_))))
                   (___match135564135565_
                    (lambda (_e131224131262_
                             _hd131223131265_
                             _tl131222131267_
                             _e131227131270_
                             _hd131226131273_
                             _tl131225131275_
                             _e131230131278_
                             _hd131229131281_
                             _tl131228131283_
                             _e131233131286_
                             _hd131232131289_
                             _tl131231131291_
                             _e131236131294_
                             _hd131235131297_
                             _tl131234131299_
                             _e131239131302_
                             _hd131238131305_
                             _tl131237131307_
                             _e131242131310_
                             _hd131241131313_
                             _tl131240131315_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131234131299_))
                          (let ((_e131245131318_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131234131299_))))
                            (let ((_tl131243131323_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131245131318_)))
                                  (_hd131244131321_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131245131318_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131243131323_))
                                  (___match135572135573_
                                   _e131224131262_
                                   _hd131223131265_
                                   _tl131222131267_
                                   _e131227131270_
                                   _hd131226131273_
                                   _tl131225131275_
                                   _e131230131278_
                                   _hd131229131281_
                                   _tl131228131283_
                                   _e131233131286_
                                   _hd131232131289_
                                   _tl131231131291_
                                   _e131236131294_
                                   _hd131235131297_
                                   _tl131234131299_
                                   _e131239131302_
                                   _hd131238131305_
                                   _tl131237131307_
                                   _e131242131310_
                                   _hd131241131313_
                                   _tl131240131315_
                                   _e131245131318_
                                   _hd131244131321_
                                   _tl131243131323_)
                                  (___kont135091135092_))))
                          (___kont135091135092_))))
                   (___match135510135511_
                    (lambda (_e131200131370_
                             _hd131199131373_
                             _tl131198131375_
                             _e131203131378_
                             _hd131202131381_
                             _tl131201131383_
                             _e131206131386_
                             _hd131205131389_
                             _tl131204131391_
                             _e131209131394_
                             _hd131208131397_
                             _tl131207131399_
                             _e131212131402_
                             _hd131211131405_
                             _tl131210131407_
                             _e131215131410_
                             _hd131214131413_
                             _tl131213131415_
                             _e131218131418_
                             _hd131217131421_
                             _tl131216131423_)
                      (let ((_L131426_ _hd131217131421_)
                            (_L131427_ _hd131208131397_))
                        (if (and (let ((__tmp136375
                                        (let ((__tmp136376
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L131427_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp136376))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp136375
                                    'gxc#!accessor::t))
                                 (let ((__tmp136374
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131019_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131426_
                                    __tmp136374)))
                            (___kont135087135088_ _L131426_ _L131427_)
                            (___kont135091135092_)))))
                   (___match135508135509_
                    (lambda (_e131200131370_
                             _hd131199131373_
                             _tl131198131375_
                             _e131203131378_
                             _hd131202131381_
                             _tl131201131383_
                             _e131206131386_
                             _hd131205131389_
                             _tl131204131391_
                             _e131209131394_
                             _hd131208131397_
                             _tl131207131399_
                             _e131212131402_
                             _hd131211131405_
                             _tl131210131407_
                             _e131215131410_
                             _hd131214131413_
                             _tl131213131415_
                             _e131218131418_
                             _hd131217131421_
                             _tl131216131423_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131210131407_))
                          (___match135510135511_
                           _e131200131370_
                           _hd131199131373_
                           _tl131198131375_
                           _e131203131378_
                           _hd131202131381_
                           _tl131201131383_
                           _e131206131386_
                           _hd131205131389_
                           _tl131204131391_
                           _e131209131394_
                           _hd131208131397_
                           _tl131207131399_
                           _e131212131402_
                           _hd131211131405_
                           _tl131210131407_
                           _e131215131410_
                           _hd131214131413_
                           _tl131213131415_
                           _e131218131418_
                           _hd131217131421_
                           _tl131216131423_)
                          (___match135564135565_
                           _e131200131370_
                           _hd131199131373_
                           _tl131198131375_
                           _e131203131378_
                           _hd131202131381_
                           _tl131201131383_
                           _e131206131386_
                           _hd131205131389_
                           _tl131204131391_
                           _e131209131394_
                           _hd131208131397_
                           _tl131207131399_
                           _e131212131402_
                           _hd131211131405_
                           _tl131210131407_
                           _e131215131410_
                           _hd131214131413_
                           _tl131213131415_
                           _e131218131418_
                           _hd131217131421_
                           _tl131216131423_))))
                   (___match135454135455_
                    (lambda (_e131165131464_
                             _hd131164131467_
                             _tl131163131469_
                             _e131168131472_
                             _hd131167131475_
                             _tl131166131477_
                             _e131171131480_
                             _hd131170131483_
                             _tl131169131485_
                             _e131174131488_
                             _hd131173131491_
                             _tl131172131493_
                             _e131177131496_
                             _hd131176131499_
                             _tl131175131501_
                             _e131180131504_
                             _hd131179131507_
                             _tl131178131509_
                             _e131183131512_
                             _hd131182131515_
                             _tl131181131517_
                             _e131186131520_
                             _hd131185131523_
                             _tl131184131525_
                             _e131189131528_
                             _hd131188131531_
                             _tl131187131533_
                             _e131192131536_
                             _hd131191131539_
                             _tl131190131541_
                             _e131195131544_
                             _hd131194131547_
                             _tl131193131549_)
                      (let ((_L131552_ _hd131194131547_)
                            (_L131553_ _hd131191131539_)
                            (_L131554_ _hd131182131515_)
                            (_L131555_ _hd131173131491_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131555_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131555_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp136377
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131019_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131554_
                                    __tmp136377)))
                            (___kont135085135086_
                             _L131552_
                             _L131553_
                             _L131554_
                             _L131555_)
                            (___kont135091135092_)))))
                   (___match135446135447_
                    (lambda (_e131165131464_
                             _hd131164131467_
                             _tl131163131469_
                             _e131168131472_
                             _hd131167131475_
                             _tl131166131477_
                             _e131171131480_
                             _hd131170131483_
                             _tl131169131485_
                             _e131174131488_
                             _hd131173131491_
                             _tl131172131493_
                             _e131177131496_
                             _hd131176131499_
                             _tl131175131501_
                             _e131180131504_
                             _hd131179131507_
                             _tl131178131509_
                             _e131183131512_
                             _hd131182131515_
                             _tl131181131517_
                             _e131186131520_
                             _hd131185131523_
                             _tl131184131525_
                             _e131189131528_
                             _hd131188131531_
                             _tl131187131533_
                             _e131192131536_
                             _hd131191131539_
                             _tl131190131541_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131184131525_))
                          (let ((_e131195131544_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131184131525_))))
                            (let ((_tl131193131549_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131195131544_)))
                                  (_hd131194131547_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131195131544_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131193131549_))
                                  (___match135454135455_
                                   _e131165131464_
                                   _hd131164131467_
                                   _tl131163131469_
                                   _e131168131472_
                                   _hd131167131475_
                                   _tl131166131477_
                                   _e131171131480_
                                   _hd131170131483_
                                   _tl131169131485_
                                   _e131174131488_
                                   _hd131173131491_
                                   _tl131172131493_
                                   _e131177131496_
                                   _hd131176131499_
                                   _tl131175131501_
                                   _e131180131504_
                                   _hd131179131507_
                                   _tl131178131509_
                                   _e131183131512_
                                   _hd131182131515_
                                   _tl131181131517_
                                   _e131186131520_
                                   _hd131185131523_
                                   _tl131184131525_
                                   _e131189131528_
                                   _hd131188131531_
                                   _tl131187131533_
                                   _e131192131536_
                                   _hd131191131539_
                                   _tl131190131541_
                                   _e131195131544_
                                   _hd131194131547_
                                   _tl131193131549_)
                                  (___kont135091135092_))))
                          (___match135570135571_
                           _e131165131464_
                           _hd131164131467_
                           _tl131163131469_
                           _e131168131472_
                           _hd131167131475_
                           _tl131166131477_
                           _e131171131480_
                           _hd131170131483_
                           _tl131169131485_
                           _e131174131488_
                           _hd131173131491_
                           _tl131172131493_
                           _e131177131496_
                           _hd131176131499_
                           _tl131175131501_
                           _e131180131504_
                           _hd131179131507_
                           _tl131178131509_
                           _e131183131512_
                           _hd131182131515_
                           _tl131181131517_
                           _e131186131520_
                           _hd131185131523_
                           _tl131184131525_))))
                   (___match135368135369_
                    (lambda (_e131131131595_
                             _hd131130131598_
                             _tl131129131600_
                             _e131134131603_
                             _hd131133131606_
                             _tl131132131608_
                             _e131137131611_
                             _hd131136131614_
                             _tl131135131616_
                             _e131140131619_
                             _hd131139131622_
                             _tl131138131624_
                             _e131143131627_
                             _hd131142131630_
                             _tl131141131632_
                             _e131146131635_
                             _hd131145131638_
                             _tl131144131640_
                             _e131149131643_
                             _hd131148131646_
                             _tl131147131648_
                             _e131152131651_
                             _hd131151131654_
                             _tl131150131656_
                             _e131155131659_
                             _hd131154131662_
                             _tl131153131664_
                             _e131158131667_
                             _hd131157131670_
                             _tl131156131672_)
                      (let ((_L131675_ _hd131157131670_)
                            (_L131676_ _hd131148131646_)
                            (_L131677_ _hd131139131622_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131677_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131677_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp136378
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131019_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131676_
                                    __tmp136378)))
                            (___kont135083135084_
                             _L131675_
                             _L131676_
                             _L131677_)
                            (___match135572135573_
                             _e131131131595_
                             _hd131130131598_
                             _tl131129131600_
                             _e131134131603_
                             _hd131133131606_
                             _tl131132131608_
                             _e131137131611_
                             _hd131136131614_
                             _tl131135131616_
                             _e131140131619_
                             _hd131139131622_
                             _tl131138131624_
                             _e131143131627_
                             _hd131142131630_
                             _tl131141131632_
                             _e131146131635_
                             _hd131145131638_
                             _tl131144131640_
                             _e131149131643_
                             _hd131148131646_
                             _tl131147131648_
                             _e131152131651_
                             _hd131151131654_
                             _tl131150131656_)))))
                   (___match135366135367_
                    (lambda (_e131131131595_
                             _hd131130131598_
                             _tl131129131600_
                             _e131134131603_
                             _hd131133131606_
                             _tl131132131608_
                             _e131137131611_
                             _hd131136131614_
                             _tl131135131616_
                             _e131140131619_
                             _hd131139131622_
                             _tl131138131624_
                             _e131143131627_
                             _hd131142131630_
                             _tl131141131632_
                             _e131146131635_
                             _hd131145131638_
                             _tl131144131640_
                             _e131149131643_
                             _hd131148131646_
                             _tl131147131648_
                             _e131152131651_
                             _hd131151131654_
                             _tl131150131656_
                             _e131155131659_
                             _hd131154131662_
                             _tl131153131664_
                             _e131158131667_
                             _hd131157131670_
                             _tl131156131672_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131150131656_))
                          (___match135368135369_
                           _e131131131595_
                           _hd131130131598_
                           _tl131129131600_
                           _e131134131603_
                           _hd131133131606_
                           _tl131132131608_
                           _e131137131611_
                           _hd131136131614_
                           _tl131135131616_
                           _e131140131619_
                           _hd131139131622_
                           _tl131138131624_
                           _e131143131627_
                           _hd131142131630_
                           _tl131141131632_
                           _e131146131635_
                           _hd131145131638_
                           _tl131144131640_
                           _e131149131643_
                           _hd131148131646_
                           _tl131147131648_
                           _e131152131651_
                           _hd131151131654_
                           _tl131150131656_
                           _e131155131659_
                           _hd131154131662_
                           _tl131153131664_
                           _e131158131667_
                           _hd131157131670_
                           _tl131156131672_)
                          (___match135446135447_
                           _e131131131595_
                           _hd131130131598_
                           _tl131129131600_
                           _e131134131603_
                           _hd131133131606_
                           _tl131132131608_
                           _e131137131611_
                           _hd131136131614_
                           _tl131135131616_
                           _e131140131619_
                           _hd131139131622_
                           _tl131138131624_
                           _e131143131627_
                           _hd131142131630_
                           _tl131141131632_
                           _e131146131635_
                           _hd131145131638_
                           _tl131144131640_
                           _e131149131643_
                           _hd131148131646_
                           _tl131147131648_
                           _e131152131651_
                           _hd131151131654_
                           _tl131150131656_
                           _e131155131659_
                           _hd131154131662_
                           _tl131153131664_
                           _e131158131667_
                           _hd131157131670_
                           _tl131156131672_))))
                   (___match135356135357_
                    (lambda (_e131131131595_
                             _hd131130131598_
                             _tl131129131600_
                             _e131134131603_
                             _hd131133131606_
                             _tl131132131608_
                             _e131137131611_
                             _hd131136131614_
                             _tl131135131616_
                             _e131140131619_
                             _hd131139131622_
                             _tl131138131624_
                             _e131143131627_
                             _hd131142131630_
                             _tl131141131632_
                             _e131146131635_
                             _hd131145131638_
                             _tl131144131640_
                             _e131149131643_
                             _hd131148131646_
                             _tl131147131648_
                             _e131152131651_
                             _hd131151131654_
                             _tl131150131656_
                             _e131155131659_
                             _hd131154131662_
                             _tl131153131664_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd131154131662_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131153131664_))
                              (let ((_e131158131667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131153131664_))))
                                (let ((_tl131156131672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131158131667_)))
                                      (_hd131157131670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131158131667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131156131672_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl131150131656_))
                                          (___match135368135369_
                                           _e131131131595_
                                           _hd131130131598_
                                           _tl131129131600_
                                           _e131134131603_
                                           _hd131133131606_
                                           _tl131132131608_
                                           _e131137131611_
                                           _hd131136131614_
                                           _tl131135131616_
                                           _e131140131619_
                                           _hd131139131622_
                                           _tl131138131624_
                                           _e131143131627_
                                           _hd131142131630_
                                           _tl131141131632_
                                           _e131146131635_
                                           _hd131145131638_
                                           _tl131144131640_
                                           _e131149131643_
                                           _hd131148131646_
                                           _tl131147131648_
                                           _e131152131651_
                                           _hd131151131654_
                                           _tl131150131656_
                                           _e131155131659_
                                           _hd131154131662_
                                           _tl131153131664_
                                           _e131158131667_
                                           _hd131157131670_
                                           _tl131156131672_)
                                          (___match135446135447_
                                           _e131131131595_
                                           _hd131130131598_
                                           _tl131129131600_
                                           _e131134131603_
                                           _hd131133131606_
                                           _tl131132131608_
                                           _e131137131611_
                                           _hd131136131614_
                                           _tl131135131616_
                                           _e131140131619_
                                           _hd131139131622_
                                           _tl131138131624_
                                           _e131143131627_
                                           _hd131142131630_
                                           _tl131141131632_
                                           _e131146131635_
                                           _hd131145131638_
                                           _tl131144131640_
                                           _e131149131643_
                                           _hd131148131646_
                                           _tl131147131648_
                                           _e131152131651_
                                           _hd131151131654_
                                           _tl131150131656_
                                           _e131155131659_
                                           _hd131154131662_
                                           _tl131153131664_
                                           _e131158131667_
                                           _hd131157131670_
                                           _tl131156131672_))
                                      (___match135570135571_
                                       _e131131131595_
                                       _hd131130131598_
                                       _tl131129131600_
                                       _e131134131603_
                                       _hd131133131606_
                                       _tl131132131608_
                                       _e131137131611_
                                       _hd131136131614_
                                       _tl131135131616_
                                       _e131140131619_
                                       _hd131139131622_
                                       _tl131138131624_
                                       _e131143131627_
                                       _hd131142131630_
                                       _tl131141131632_
                                       _e131146131635_
                                       _hd131145131638_
                                       _tl131144131640_
                                       _e131149131643_
                                       _hd131148131646_
                                       _tl131147131648_
                                       _e131152131651_
                                       _hd131151131654_
                                       _tl131150131656_))))
                              (___match135570135571_
                               _e131131131595_
                               _hd131130131598_
                               _tl131129131600_
                               _e131134131603_
                               _hd131133131606_
                               _tl131132131608_
                               _e131137131611_
                               _hd131136131614_
                               _tl131135131616_
                               _e131140131619_
                               _hd131139131622_
                               _tl131138131624_
                               _e131143131627_
                               _hd131142131630_
                               _tl131141131632_
                               _e131146131635_
                               _hd131145131638_
                               _tl131144131640_
                               _e131149131643_
                               _hd131148131646_
                               _tl131147131648_
                               _e131152131651_
                               _hd131151131654_
                               _tl131150131656_))
                          (___match135570135571_
                           _e131131131595_
                           _hd131130131598_
                           _tl131129131600_
                           _e131134131603_
                           _hd131133131606_
                           _tl131132131608_
                           _e131137131611_
                           _hd131136131614_
                           _tl131135131616_
                           _e131140131619_
                           _hd131139131622_
                           _tl131138131624_
                           _e131143131627_
                           _hd131142131630_
                           _tl131141131632_
                           _e131146131635_
                           _hd131145131638_
                           _tl131144131640_
                           _e131149131643_
                           _hd131148131646_
                           _tl131147131648_
                           _e131152131651_
                           _hd131151131654_
                           _tl131150131656_))))
                   (___match135288135289_
                    (lambda (_e131080131714_
                             _hd131079131717_
                             _tl131078131719_
                             _e131083131722_
                             _hd131082131725_
                             _tl131081131727_
                             _e131086131730_
                             _hd131085131733_
                             _tl131084131735_
                             _e131089131738_
                             _hd131088131741_
                             _tl131087131743_
                             _e131092131746_
                             _hd131091131749_
                             _tl131090131751_
                             _e131095131754_
                             _hd131094131757_
                             _tl131093131759_
                             _e131098131762_
                             _hd131097131765_
                             _tl131096131767_
                             _e131101131770_
                             _hd131100131773_
                             _tl131099131775_
                             _e131104131778_
                             _hd131103131781_
                             _tl131102131783_
                             _e131107131786_
                             _hd131106131789_
                             _tl131105131791_
                             _e131110131794_
                             _hd131109131797_
                             _tl131108131799_
                             _e131113131802_
                             _hd131112131805_
                             _tl131111131807_
                             _e131116131810_
                             _hd131115131813_
                             _tl131114131815_
                             ___splice135081135082_
                             _target131117131818_
                             _tl131119131820_)
                      (letrec ((_loop131120131823_
                                (lambda (_hd131118131826_ _args131124131828_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131118131826_))
                                      (let ((_e131121131831_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131118131826_))))
                                        (let ((_lp-tl131123131836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131121131831_)))
                                              (_lp-hd131122131834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131121131831_))))
                                          (let ((__tmp136380
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131122131834_
                                                         _args131124131828_))))
                                            (declare (not safe))
                                            (_loop131120131823_
                                             _lp-tl131123131836_
                                             __tmp136380))))
                                      (let ((_args131125131839_
                                             (reverse _args131124131828_)))
                                        (let ((_L131842_ _args131125131839_)
                                              (_L131843_ _hd131115131813_)
                                              (_L131844_ _hd131106131789_)
                                              (_L131845_ _hd131097131765_)
                                              (_L131846_ _hd131088131741_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131846_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131845_
                                                      'call-method))
                                                   (let ((__tmp136379
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131019_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131844_
                                                      __tmp136379)))
                                              (___kont135079135080_
                                               _L131842_
                                               _L131843_
                                               _L131844_
                                               _L131845_
                                               _L131846_)
                                              (___kont135091135092_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131120131823_ _target131117131818_ '())))))
                   (___match135246135247_
                    (lambda (_e131080131714_
                             _hd131079131717_
                             _tl131078131719_
                             _e131083131722_
                             _hd131082131725_
                             _tl131081131727_
                             _e131086131730_
                             _hd131085131733_
                             _tl131084131735_
                             _e131089131738_
                             _hd131088131741_
                             _tl131087131743_
                             _e131092131746_
                             _hd131091131749_
                             _tl131090131751_
                             _e131095131754_
                             _hd131094131757_
                             _tl131093131759_
                             _e131098131762_
                             _hd131097131765_
                             _tl131096131767_
                             _e131101131770_
                             _hd131100131773_
                             _tl131099131775_
                             _e131104131778_
                             _hd131103131781_
                             _tl131102131783_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd131103131781_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131102131783_))
                              (let ((_e131107131786_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131102131783_))))
                                (let ((_tl131105131791_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131107131786_)))
                                      (_hd131106131789_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131107131786_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131105131791_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131099131775_))
                                          (let ((_e131110131794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131099131775_))))
                                            (let ((_tl131108131799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131110131794_)))
                                                  (_hd131109131797_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131110131794_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131109131797_))
                                                  (let ((_e131113131802_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131109131797_))))
                                                    (let ((_tl131111131807_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131113131802_)))
                                                          (_hd131112131805_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131113131802_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd131112131805_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd131112131805_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131111131807_))
                          (let ((_e131116131810_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131111131807_))))
                            (let ((_tl131114131815_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131116131810_)))
                                  (_hd131115131813_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131116131810_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131114131815_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131108131799_))
                                      (let ((___splice135081135082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131108131799_
                                                '0))))
                                        (let ((_tl131119131820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135081135082_
                                                  '1)))
                                              (_target131117131818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135081135082_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131119131820_))
                                              (___match135288135289_
                                               _e131080131714_
                                               _hd131079131717_
                                               _tl131078131719_
                                               _e131083131722_
                                               _hd131082131725_
                                               _tl131081131727_
                                               _e131086131730_
                                               _hd131085131733_
                                               _tl131084131735_
                                               _e131089131738_
                                               _hd131088131741_
                                               _tl131087131743_
                                               _e131092131746_
                                               _hd131091131749_
                                               _tl131090131751_
                                               _e131095131754_
                                               _hd131094131757_
                                               _tl131093131759_
                                               _e131098131762_
                                               _hd131097131765_
                                               _tl131096131767_
                                               _e131101131770_
                                               _hd131100131773_
                                               _tl131099131775_
                                               _e131104131778_
                                               _hd131103131781_
                                               _tl131102131783_
                                               _e131107131786_
                                               _hd131106131789_
                                               _tl131105131791_
                                               _e131110131794_
                                               _hd131109131797_
                                               _tl131108131799_
                                               _e131113131802_
                                               _hd131112131805_
                                               _tl131111131807_
                                               _e131116131810_
                                               _hd131115131813_
                                               _tl131114131815_
                                               ___splice135081135082_
                                               _target131117131818_
                                               _tl131119131820_)
                                              (___kont135091135092_))))
                                      (___kont135091135092_))
                                  (___kont135091135092_))))
                          (___kont135091135092_))
                      (___kont135091135092_))
                  (___kont135091135092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135091135092_))))
                                          (___match135570135571_
                                           _e131080131714_
                                           _hd131079131717_
                                           _tl131078131719_
                                           _e131083131722_
                                           _hd131082131725_
                                           _tl131081131727_
                                           _e131086131730_
                                           _hd131085131733_
                                           _tl131084131735_
                                           _e131089131738_
                                           _hd131088131741_
                                           _tl131087131743_
                                           _e131092131746_
                                           _hd131091131749_
                                           _tl131090131751_
                                           _e131095131754_
                                           _hd131094131757_
                                           _tl131093131759_
                                           _e131098131762_
                                           _hd131097131765_
                                           _tl131096131767_
                                           _e131101131770_
                                           _hd131100131773_
                                           _tl131099131775_))
                                      (___match135570135571_
                                       _e131080131714_
                                       _hd131079131717_
                                       _tl131078131719_
                                       _e131083131722_
                                       _hd131082131725_
                                       _tl131081131727_
                                       _e131086131730_
                                       _hd131085131733_
                                       _tl131084131735_
                                       _e131089131738_
                                       _hd131088131741_
                                       _tl131087131743_
                                       _e131092131746_
                                       _hd131091131749_
                                       _tl131090131751_
                                       _e131095131754_
                                       _hd131094131757_
                                       _tl131093131759_
                                       _e131098131762_
                                       _hd131097131765_
                                       _tl131096131767_
                                       _e131101131770_
                                       _hd131100131773_
                                       _tl131099131775_))))
                              (___match135570135571_
                               _e131080131714_
                               _hd131079131717_
                               _tl131078131719_
                               _e131083131722_
                               _hd131082131725_
                               _tl131081131727_
                               _e131086131730_
                               _hd131085131733_
                               _tl131084131735_
                               _e131089131738_
                               _hd131088131741_
                               _tl131087131743_
                               _e131092131746_
                               _hd131091131749_
                               _tl131090131751_
                               _e131095131754_
                               _hd131094131757_
                               _tl131093131759_
                               _e131098131762_
                               _hd131097131765_
                               _tl131096131767_
                               _e131101131770_
                               _hd131100131773_
                               _tl131099131775_))
                          (___match135356135357_
                           _e131080131714_
                           _hd131079131717_
                           _tl131078131719_
                           _e131083131722_
                           _hd131082131725_
                           _tl131081131727_
                           _e131086131730_
                           _hd131085131733_
                           _tl131084131735_
                           _e131089131738_
                           _hd131088131741_
                           _tl131087131743_
                           _e131092131746_
                           _hd131091131749_
                           _tl131090131751_
                           _e131095131754_
                           _hd131094131757_
                           _tl131093131759_
                           _e131098131762_
                           _hd131097131765_
                           _tl131096131767_
                           _e131101131770_
                           _hd131100131773_
                           _tl131099131775_
                           _e131104131778_
                           _hd131103131781_
                           _tl131102131783_))))
                   (___match135178135179_
                    (lambda (_e131036131903_
                             _hd131035131906_
                             _tl131034131908_
                             _e131039131911_
                             _hd131038131914_
                             _tl131037131916_
                             _e131042131919_
                             _hd131041131922_
                             _tl131040131924_
                             _e131045131927_
                             _hd131044131930_
                             _tl131043131932_
                             _e131048131935_
                             _hd131047131938_
                             _tl131046131940_
                             _e131051131943_
                             _hd131050131946_
                             _tl131049131948_
                             _e131054131951_
                             _hd131053131954_
                             _tl131052131956_
                             _e131057131959_
                             _hd131056131962_
                             _tl131055131964_
                             _e131060131967_
                             _hd131059131970_
                             _tl131058131972_
                             _e131063131975_
                             _hd131062131978_
                             _tl131061131980_
                             ___splice135077135078_
                             _target131064131983_
                             _tl131066131985_)
                      (letrec ((_loop131067131988_
                                (lambda (_hd131065131991_ _args131071131993_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131065131991_))
                                      (let ((_e131068131996_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131065131991_))))
                                        (let ((_lp-tl131070132001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131068131996_)))
                                              (_lp-hd131069131999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131068131996_))))
                                          (let ((__tmp136382
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131069131999_
                                                         _args131071131993_))))
                                            (declare (not safe))
                                            (_loop131067131988_
                                             _lp-tl131070132001_
                                             __tmp136382))))
                                      (let ((_args131072132004_
                                             (reverse _args131071131993_)))
                                        (let ((_L132007_ _args131072132004_)
                                              (_L132008_ _hd131062131978_)
                                              (_L132009_ _hd131053131954_)
                                              (_L132010_ _hd131044131930_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132010_
                                                      'call-method))
                                                   (let ((__tmp136381
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131019_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132009_
                                                      __tmp136381)))
                                              (___kont135075135076_
                                               _L132007_
                                               _L132008_
                                               _L132009_
                                               _L132010_)
                                              (___match135366135367_
                                               _e131036131903_
                                               _hd131035131906_
                                               _tl131034131908_
                                               _e131039131911_
                                               _hd131038131914_
                                               _tl131037131916_
                                               _e131042131919_
                                               _hd131041131922_
                                               _tl131040131924_
                                               _e131045131927_
                                               _hd131044131930_
                                               _tl131043131932_
                                               _e131048131935_
                                               _hd131047131938_
                                               _tl131046131940_
                                               _e131051131943_
                                               _hd131050131946_
                                               _tl131049131948_
                                               _e131054131951_
                                               _hd131053131954_
                                               _tl131052131956_
                                               _e131057131959_
                                               _hd131056131962_
                                               _tl131055131964_
                                               _e131060131967_
                                               _hd131059131970_
                                               _tl131058131972_
                                               _e131063131975_
                                               _hd131062131978_
                                               _tl131061131980_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131067131988_ _target131064131983_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx135073135074_))
                  (let ((_e131036131903_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx135073135074_))))
                    (let ((_tl131034131908_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131036131903_)))
                          (_hd131035131906_
                           (let ()
                             (declare (not safe))
                             (##car _e131036131903_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131034131908_))
                          (let ((_e131039131911_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131034131908_))))
                            (let ((_tl131037131916_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131039131911_)))
                                  (_hd131038131914_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131039131911_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd131038131914_))
                                  (let ((_e131042131919_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd131038131914_))))
                                    (let ((_tl131040131924_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e131042131919_)))
                                          (_hd131041131922_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e131042131919_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd131041131922_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd131041131922_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl131040131924_))
                                                  (let ((_e131045131927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl131040131924_))))
                                                    (let ((_tl131043131932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131045131927_)))
                                                          (_hd131044131930_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131045131927_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl131043131932_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl131037131916_))
                      (let ((_e131048131935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl131037131916_))))
                        (let ((_tl131046131940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131048131935_)))
                              (_hd131047131938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131048131935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd131047131938_))
                              (let ((_e131051131943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd131047131938_))))
                                (let ((_tl131049131948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131051131943_)))
                                      (_hd131050131946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131051131943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd131050131946_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd131050131946_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl131049131948_))
                                              (let ((_e131054131951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl131049131948_))))
                                                (let ((_tl131052131956_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131054131951_)))
                                                      (_hd131053131954_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131054131951_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl131052131956_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl131046131940_))
                                                          (let ((_e131057131959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl131046131940_))))
                    (let ((_tl131055131964_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131057131959_)))
                          (_hd131056131962_
                           (let ()
                             (declare (not safe))
                             (##car _e131057131959_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd131056131962_))
                          (let ((_e131060131967_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd131056131962_))))
                            (let ((_tl131058131972_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131060131967_)))
                                  (_hd131059131970_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131060131967_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd131059131970_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd131059131970_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131058131972_))
                                          (let ((_e131063131975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131058131972_))))
                                            (let ((_tl131061131980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131063131975_)))
                                                  (_hd131062131978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131063131975_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl131061131980_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl131055131964_))
                                                      (let ((___splice135077135078_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl131055131964_ '0))))
                (let ((_tl131066131985_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135077135078_ '1)))
                      (_target131064131983_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135077135078_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl131066131985_))
                      (___match135178135179_
                       _e131036131903_
                       _hd131035131906_
                       _tl131034131908_
                       _e131039131911_
                       _hd131038131914_
                       _tl131037131916_
                       _e131042131919_
                       _hd131041131922_
                       _tl131040131924_
                       _e131045131927_
                       _hd131044131930_
                       _tl131043131932_
                       _e131048131935_
                       _hd131047131938_
                       _tl131046131940_
                       _e131051131943_
                       _hd131050131946_
                       _tl131049131948_
                       _e131054131951_
                       _hd131053131954_
                       _tl131052131956_
                       _e131057131959_
                       _hd131056131962_
                       _tl131055131964_
                       _e131060131967_
                       _hd131059131970_
                       _tl131058131972_
                       _e131063131975_
                       _hd131062131978_
                       _tl131061131980_
                       ___splice135077135078_
                       _target131064131983_
                       _tl131066131985_)
                      (___match135366135367_
                       _e131036131903_
                       _hd131035131906_
                       _tl131034131908_
                       _e131039131911_
                       _hd131038131914_
                       _tl131037131916_
                       _e131042131919_
                       _hd131041131922_
                       _tl131040131924_
                       _e131045131927_
                       _hd131044131930_
                       _tl131043131932_
                       _e131048131935_
                       _hd131047131938_
                       _tl131046131940_
                       _e131051131943_
                       _hd131050131946_
                       _tl131049131948_
                       _e131054131951_
                       _hd131053131954_
                       _tl131052131956_
                       _e131057131959_
                       _hd131056131962_
                       _tl131055131964_
                       _e131060131967_
                       _hd131059131970_
                       _tl131058131972_
                       _e131063131975_
                       _hd131062131978_
                       _tl131061131980_))))
              (___match135366135367_
               _e131036131903_
               _hd131035131906_
               _tl131034131908_
               _e131039131911_
               _hd131038131914_
               _tl131037131916_
               _e131042131919_
               _hd131041131922_
               _tl131040131924_
               _e131045131927_
               _hd131044131930_
               _tl131043131932_
               _e131048131935_
               _hd131047131938_
               _tl131046131940_
               _e131051131943_
               _hd131050131946_
               _tl131049131948_
               _e131054131951_
               _hd131053131954_
               _tl131052131956_
               _e131057131959_
               _hd131056131962_
               _tl131055131964_
               _e131060131967_
               _hd131059131970_
               _tl131058131972_
               _e131063131975_
               _hd131062131978_
               _tl131061131980_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match135570135571_
                                                   _e131036131903_
                                                   _hd131035131906_
                                                   _tl131034131908_
                                                   _e131039131911_
                                                   _hd131038131914_
                                                   _tl131037131916_
                                                   _e131042131919_
                                                   _hd131041131922_
                                                   _tl131040131924_
                                                   _e131045131927_
                                                   _hd131044131930_
                                                   _tl131043131932_
                                                   _e131048131935_
                                                   _hd131047131938_
                                                   _tl131046131940_
                                                   _e131051131943_
                                                   _hd131050131946_
                                                   _tl131049131948_
                                                   _e131054131951_
                                                   _hd131053131954_
                                                   _tl131052131956_
                                                   _e131057131959_
                                                   _hd131056131962_
                                                   _tl131055131964_))))
                                          (___match135570135571_
                                           _e131036131903_
                                           _hd131035131906_
                                           _tl131034131908_
                                           _e131039131911_
                                           _hd131038131914_
                                           _tl131037131916_
                                           _e131042131919_
                                           _hd131041131922_
                                           _tl131040131924_
                                           _e131045131927_
                                           _hd131044131930_
                                           _tl131043131932_
                                           _e131048131935_
                                           _hd131047131938_
                                           _tl131046131940_
                                           _e131051131943_
                                           _hd131050131946_
                                           _tl131049131948_
                                           _e131054131951_
                                           _hd131053131954_
                                           _tl131052131956_
                                           _e131057131959_
                                           _hd131056131962_
                                           _tl131055131964_))
                                      (___match135246135247_
                                       _e131036131903_
                                       _hd131035131906_
                                       _tl131034131908_
                                       _e131039131911_
                                       _hd131038131914_
                                       _tl131037131916_
                                       _e131042131919_
                                       _hd131041131922_
                                       _tl131040131924_
                                       _e131045131927_
                                       _hd131044131930_
                                       _tl131043131932_
                                       _e131048131935_
                                       _hd131047131938_
                                       _tl131046131940_
                                       _e131051131943_
                                       _hd131050131946_
                                       _tl131049131948_
                                       _e131054131951_
                                       _hd131053131954_
                                       _tl131052131956_
                                       _e131057131959_
                                       _hd131056131962_
                                       _tl131055131964_
                                       _e131060131967_
                                       _hd131059131970_
                                       _tl131058131972_))
                                  (___match135570135571_
                                   _e131036131903_
                                   _hd131035131906_
                                   _tl131034131908_
                                   _e131039131911_
                                   _hd131038131914_
                                   _tl131037131916_
                                   _e131042131919_
                                   _hd131041131922_
                                   _tl131040131924_
                                   _e131045131927_
                                   _hd131044131930_
                                   _tl131043131932_
                                   _e131048131935_
                                   _hd131047131938_
                                   _tl131046131940_
                                   _e131051131943_
                                   _hd131050131946_
                                   _tl131049131948_
                                   _e131054131951_
                                   _hd131053131954_
                                   _tl131052131956_
                                   _e131057131959_
                                   _hd131056131962_
                                   _tl131055131964_))))
                          (___match135570135571_
                           _e131036131903_
                           _hd131035131906_
                           _tl131034131908_
                           _e131039131911_
                           _hd131038131914_
                           _tl131037131916_
                           _e131042131919_
                           _hd131041131922_
                           _tl131040131924_
                           _e131045131927_
                           _hd131044131930_
                           _tl131043131932_
                           _e131048131935_
                           _hd131047131938_
                           _tl131046131940_
                           _e131051131943_
                           _hd131050131946_
                           _tl131049131948_
                           _e131054131951_
                           _hd131053131954_
                           _tl131052131956_
                           _e131057131959_
                           _hd131056131962_
                           _tl131055131964_))))
                  (___match135508135509_
                   _e131036131903_
                   _hd131035131906_
                   _tl131034131908_
                   _e131039131911_
                   _hd131038131914_
                   _tl131037131916_
                   _e131042131919_
                   _hd131041131922_
                   _tl131040131924_
                   _e131045131927_
                   _hd131044131930_
                   _tl131043131932_
                   _e131048131935_
                   _hd131047131938_
                   _tl131046131940_
                   _e131051131943_
                   _hd131050131946_
                   _tl131049131948_
                   _e131054131951_
                   _hd131053131954_
                   _tl131052131956_))
              (___kont135091135092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont135091135092_))
                                          (___kont135091135092_))
                                      (___kont135091135092_))))
                              (___kont135091135092_))))
                      (___kont135091135092_))
                  (___kont135091135092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135091135092_))
                                              (___kont135091135092_))
                                          (___kont135091135092_))))
                                  (___kont135091135092_))))
                          (___kont135091135092_))))
                  (___kont135091135092_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self129958_ _stx129959_)
        (letrec ((_force-e129961_
                  (lambda (_target131017_)
                    (let ((__tmp136383
                           (let ((__tmp136387
                                  (let ((__tmp136388
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp136388)))
                                 (__tmp136384
                                  (let ((__tmp136385
                                         (let ((__tmp136386
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target131017_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp136386))))
                                    (declare (not safe))
                                    (cons __tmp136385 '()))))
                             (declare (not safe))
                             (cons __tmp136387 __tmp136384))))
                      (declare (not safe))
                      (cons '%#call __tmp136383)))))
          (let* ((___stx135575135576_ _stx129959_)
                 (_g129969130191_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135575135576_)))))
            (let ((___kont135577135578_
                   (lambda (_L130963_ _L130964_ _L130965_ _L130966_)
                     (let ((_$method131011_
                            (let ((__tmp136390
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129958_ 'methods)))
                                  (__tmp136389
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130964_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136390 __tmp136389)))
                           (_args131012_
                            (map (lambda (_g130999131001_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129958_
                                      _g130999131001_)))
                                 (let ((__tmp136391
                                        (lambda (_g131003131006_
                                                 _g131004131008_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131003131006_
                                                  _g131004131008_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp136391 '() _L130963_)))))
                       (let ((__tmp136392
                              (let ((__tmp136393
                                     (let ((__tmp136398
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129961_
                                               _$method131011_)))
                                           (__tmp136394
                                            (let ((__tmp136395
                                                   (let ((__tmp136396
                                                          (let ((__tmp136397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self129958_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp136397 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp136396))))
                                              (declare (not safe))
                                              (cons __tmp136395
                                                    _args131012_))))
                                       (declare (not safe))
                                       (cons __tmp136398 __tmp136394))))
                                (declare (not safe))
                                (cons '%#call __tmp136393))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136392 _stx129959_)))))
                  (___kont135581135582_
                   (lambda (_L130795_ _L130796_ _L130797_ _L130798_ _L130799_)
                     (let ((_$method130851_
                            (let ((__tmp136400
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129958_ 'methods)))
                                  (__tmp136399
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130796_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136400 __tmp136399)))
                           (_args130852_
                            (map (lambda (_g130839130841_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129958_
                                      _g130839130841_)))
                                 (let ((__tmp136401
                                        (lambda (_g130843130846_
                                                 _g130844130848_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130843130846_
                                                  _g130844130848_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp136401 '() _L130795_)))))
                       (let ((__tmp136402
                              (let ((__tmp136403
                                     (let ((__tmp136410
                                            (let ((__tmp136411
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp136411)))
                                           (__tmp136404
                                            (let ((__tmp136409
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129961_
                                                      _$method130851_)))
                                                  (__tmp136405
                                                   (let ((__tmp136406
                                                          (let ((__tmp136407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp136408
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129958_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp136408 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp136407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp136406
                                                           _args130852_))))
                                              (declare (not safe))
                                              (cons __tmp136409 __tmp136405))))
                                       (declare (not safe))
                                       (cons __tmp136410 __tmp136404))))
                                (declare (not safe))
                                (cons '%#call __tmp136403))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136402 _stx129959_)))))
                  (___kont135585135586_
                   (lambda (_L130626_ _L130627_ _L130628_)
                     (let* ((_$field130660_
                             (let ((__tmp136413
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self129958_ 'slots)))
                                   (__tmp136412
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L130626_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp136413 __tmp136412)))
                            (__tmp136414
                             (let ((__tmp136415
                                    (let ((__tmp136423
                                           (let ((__tmp136424
                                                  (let ((__tmp136425
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self129958_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp136425 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp136424)))
                                          (__tmp136416
                                           (let ((__tmp136421
                                                  (let ((__tmp136422
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field130660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136422)))
                                                 (__tmp136417
                                                  (let ((__tmp136418
                                                         (let ((__tmp136419
                                                                (let ((__tmp136420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self129958_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp136420 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp136419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136418 '()))))
                                             (declare (not safe))
                                             (cons __tmp136421 __tmp136417))))
                                      (declare (not safe))
                                      (cons __tmp136423 __tmp136416))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp136415))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp136414 _stx129959_))))
                  (___kont135587135588_
                   (lambda (_L130500_ _L130501_ _L130502_ _L130503_)
                     (let ((_$field130538_
                            (let ((__tmp136427
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129958_ 'slots)))
                                  (__tmp136426
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130501_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136427 __tmp136426)))
                           (_expr130539_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self129958_ _L130500_))))
                       (let ((__tmp136428
                              (let ((__tmp136429
                                     (let ((__tmp136438
                                            (let ((__tmp136439
                                                   (let ((__tmp136440
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129958_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp136440 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp136439)))
                                           (__tmp136430
                                            (let ((__tmp136436
                                                   (let ((__tmp136437
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field130538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp136437)))
                                                  (__tmp136431
                                                   (let ((__tmp136433
                                                          (let ((__tmp136434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp136435
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129958_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp136435 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp136434)))
                 (__tmp136432
                  (let () (declare (not safe)) (cons _expr130539_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp136433
                                                           __tmp136432))))
                                              (declare (not safe))
                                              (cons __tmp136436 __tmp136431))))
                                       (declare (not safe))
                                       (cons __tmp136438 __tmp136430))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp136429))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136428 _stx129959_)))))
                  (___kont135589135590_
                   (lambda (_L130372_ _L130373_)
                     (let* ((_accessor130395_
                             (let ((__tmp136441
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130373_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp136441)))
                            (_klass130397_
                             (let ((__tmp136442
                                    (##structure-ref
                                     _accessor130395_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129959_
                                __tmp136442)))
                            (_slot130399_
                             (##structure-ref
                              _accessor130395_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp136456
                                       (##structure-ref
                                        _accessor130395_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp136456))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass130397_
                                       _slot130399_))
                                    (##structure-ref
                                     _klass130397_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129959_
                           (let* ((_$field130405_
                                   (let ((__tmp136443
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129958_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp136443 _slot130399_)))
                                  (__tmp136444
                                   (let ((__tmp136445
                                          (let ((__tmp136453
                                                 (let ((__tmp136454
                                                        (let ((__tmp136455
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129958_ 'klass))))
                  (declare (not safe))
                  (cons __tmp136455 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp136454)))
                                                (__tmp136446
                                                 (let ((__tmp136451
                                                        (let ((__tmp136452
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field130405_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp136452)))
               (__tmp136447
                (let ((__tmp136448
                       (let ((__tmp136449
                              (let ((__tmp136450
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129958_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp136450 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp136449))))
                  (declare (not safe))
                  (cons __tmp136448 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp136451
                                                         __tmp136447))))
                                            (declare (not safe))
                                            (cons __tmp136453 __tmp136446))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp136445))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp136444
                              _stx129959_))))))
                  (___kont135591135592_
                   (lambda (_L130267_ _L130268_ _L130269_)
                     (let* ((_mutator130297_
                             (let ((__tmp136457
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130269_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp136457)))
                            (_klass130299_
                             (let ((__tmp136458
                                    (##structure-ref
                                     _mutator130297_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129959_
                                __tmp136458)))
                            (_slot130301_
                             (##structure-ref
                              _mutator130297_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr130303_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self129958_ _L130267_))))
                       (if (and (let ((__tmp136483
                                       (##structure-ref
                                        _mutator130297_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp136483))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass130299_
                                       _slot130301_))
                                    (##structure-ref
                                     _klass130299_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp136473
                                  (let ((__tmp136474
                                         (let ((__tmp136480
                                                (let ((__tmp136482
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp136481
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L130269_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp136482
                                                        __tmp136481)))
                                               (__tmp136475
                                                (let ((__tmp136477
                                                       (let ((__tmp136479
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp136478
                      (let () (declare (not safe)) (cons _L130268_ '()))))
                 (declare (not safe))
                 (cons __tmp136479 __tmp136478)))
              (__tmp136476
               (let () (declare (not safe)) (cons _expr130303_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136477
                                                        __tmp136476))))
                                           (declare (not safe))
                                           (cons __tmp136480 __tmp136475))))
                                    (declare (not safe))
                                    (cons '%#call __tmp136474))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp136473 _stx129959_))
                           (let* ((_$field130309_
                                   (let ((__tmp136459
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129958_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp136459 _slot130301_)))
                                  (__tmp136460
                                   (let ((__tmp136461
                                          (let ((__tmp136470
                                                 (let ((__tmp136471
                                                        (let ((__tmp136472
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129958_ 'klass))))
                  (declare (not safe))
                  (cons __tmp136472 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp136471)))
                                                (__tmp136462
                                                 (let ((__tmp136468
                                                        (let ((__tmp136469
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field130309_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp136469)))
               (__tmp136463
                (let ((__tmp136465
                       (let ((__tmp136466
                              (let ((__tmp136467
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129958_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp136467 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp136466)))
                      (__tmp136464
                       (let () (declare (not safe)) (cons _expr130303_ '()))))
                  (declare (not safe))
                  (cons __tmp136465 __tmp136464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp136468
                                                         __tmp136463))))
                                            (declare (not safe))
                                            (cons __tmp136470 __tmp136462))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp136461))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp136460
                              _stx129959_))))))
                  (___kont135593135594_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self129958_ _stx129959_)))))
              (let* ((___match136074136075_
                      (lambda (_e130165130203_
                               _hd130164130206_
                               _tl130163130208_
                               _e130168130211_
                               _hd130167130214_
                               _tl130166130216_
                               _e130171130219_
                               _hd130170130222_
                               _tl130169130224_
                               _e130174130227_
                               _hd130173130230_
                               _tl130172130232_
                               _e130177130235_
                               _hd130176130238_
                               _tl130175130240_
                               _e130180130243_
                               _hd130179130246_
                               _tl130178130248_
                               _e130183130251_
                               _hd130182130254_
                               _tl130181130256_
                               _e130186130259_
                               _hd130185130262_
                               _tl130184130264_)
                        (let ((_L130267_ _hd130185130262_)
                              (_L130268_ _hd130182130254_)
                              (_L130269_ _hd130173130230_))
                          (if (and (let ((__tmp136486
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129958_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130268_
                                      __tmp136486))
                                   (let ((__tmp136484
                                          (let ((__tmp136485
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L130269_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp136485))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp136484
                                      'gxc#!mutator::t)))
                              (___kont135591135592_
                               _L130267_
                               _L130268_
                               _L130269_)
                              (___kont135593135594_)))))
                     (___match136072136073_
                      (lambda (_e130165130203_
                               _hd130164130206_
                               _tl130163130208_
                               _e130168130211_
                               _hd130167130214_
                               _tl130166130216_
                               _e130171130219_
                               _hd130170130222_
                               _tl130169130224_
                               _e130174130227_
                               _hd130173130230_
                               _tl130172130232_
                               _e130177130235_
                               _hd130176130238_
                               _tl130175130240_
                               _e130180130243_
                               _hd130179130246_
                               _tl130178130248_
                               _e130183130251_
                               _hd130182130254_
                               _tl130181130256_
                               _e130186130259_
                               _hd130185130262_
                               _tl130184130264_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130184130264_))
                            (___match136074136075_
                             _e130165130203_
                             _hd130164130206_
                             _tl130163130208_
                             _e130168130211_
                             _hd130167130214_
                             _tl130166130216_
                             _e130171130219_
                             _hd130170130222_
                             _tl130169130224_
                             _e130174130227_
                             _hd130173130230_
                             _tl130172130232_
                             _e130177130235_
                             _hd130176130238_
                             _tl130175130240_
                             _e130180130243_
                             _hd130179130246_
                             _tl130178130248_
                             _e130183130251_
                             _hd130182130254_
                             _tl130181130256_
                             _e130186130259_
                             _hd130185130262_
                             _tl130184130264_)
                            (___kont135593135594_))))
                     (___match136066136067_
                      (lambda (_e130165130203_
                               _hd130164130206_
                               _tl130163130208_
                               _e130168130211_
                               _hd130167130214_
                               _tl130166130216_
                               _e130171130219_
                               _hd130170130222_
                               _tl130169130224_
                               _e130174130227_
                               _hd130173130230_
                               _tl130172130232_
                               _e130177130235_
                               _hd130176130238_
                               _tl130175130240_
                               _e130180130243_
                               _hd130179130246_
                               _tl130178130248_
                               _e130183130251_
                               _hd130182130254_
                               _tl130181130256_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130175130240_))
                            (let ((_e130186130259_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130175130240_))))
                              (let ((_tl130184130264_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130186130259_)))
                                    (_hd130185130262_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130186130259_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130184130264_))
                                    (___match136074136075_
                                     _e130165130203_
                                     _hd130164130206_
                                     _tl130163130208_
                                     _e130168130211_
                                     _hd130167130214_
                                     _tl130166130216_
                                     _e130171130219_
                                     _hd130170130222_
                                     _tl130169130224_
                                     _e130174130227_
                                     _hd130173130230_
                                     _tl130172130232_
                                     _e130177130235_
                                     _hd130176130238_
                                     _tl130175130240_
                                     _e130180130243_
                                     _hd130179130246_
                                     _tl130178130248_
                                     _e130183130251_
                                     _hd130182130254_
                                     _tl130181130256_
                                     _e130186130259_
                                     _hd130185130262_
                                     _tl130184130264_)
                                    (___kont135593135594_))))
                            (___kont135593135594_))))
                     (___match136012136013_
                      (lambda (_e130141130316_
                               _hd130140130319_
                               _tl130139130321_
                               _e130144130324_
                               _hd130143130327_
                               _tl130142130329_
                               _e130147130332_
                               _hd130146130335_
                               _tl130145130337_
                               _e130150130340_
                               _hd130149130343_
                               _tl130148130345_
                               _e130153130348_
                               _hd130152130351_
                               _tl130151130353_
                               _e130156130356_
                               _hd130155130359_
                               _tl130154130361_
                               _e130159130364_
                               _hd130158130367_
                               _tl130157130369_)
                        (let ((_L130372_ _hd130158130367_)
                              (_L130373_ _hd130149130343_))
                          (if (and (let ((__tmp136489
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129958_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130372_
                                      __tmp136489))
                                   (let ((__tmp136487
                                          (let ((__tmp136488
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L130373_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp136488))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp136487
                                      'gxc#!accessor::t)))
                              (___kont135589135590_ _L130372_ _L130373_)
                              (___kont135593135594_)))))
                     (___match136010136011_
                      (lambda (_e130141130316_
                               _hd130140130319_
                               _tl130139130321_
                               _e130144130324_
                               _hd130143130327_
                               _tl130142130329_
                               _e130147130332_
                               _hd130146130335_
                               _tl130145130337_
                               _e130150130340_
                               _hd130149130343_
                               _tl130148130345_
                               _e130153130348_
                               _hd130152130351_
                               _tl130151130353_
                               _e130156130356_
                               _hd130155130359_
                               _tl130154130361_
                               _e130159130364_
                               _hd130158130367_
                               _tl130157130369_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130151130353_))
                            (___match136012136013_
                             _e130141130316_
                             _hd130140130319_
                             _tl130139130321_
                             _e130144130324_
                             _hd130143130327_
                             _tl130142130329_
                             _e130147130332_
                             _hd130146130335_
                             _tl130145130337_
                             _e130150130340_
                             _hd130149130343_
                             _tl130148130345_
                             _e130153130348_
                             _hd130152130351_
                             _tl130151130353_
                             _e130156130356_
                             _hd130155130359_
                             _tl130154130361_
                             _e130159130364_
                             _hd130158130367_
                             _tl130157130369_)
                            (___match136066136067_
                             _e130141130316_
                             _hd130140130319_
                             _tl130139130321_
                             _e130144130324_
                             _hd130143130327_
                             _tl130142130329_
                             _e130147130332_
                             _hd130146130335_
                             _tl130145130337_
                             _e130150130340_
                             _hd130149130343_
                             _tl130148130345_
                             _e130153130348_
                             _hd130152130351_
                             _tl130151130353_
                             _e130156130356_
                             _hd130155130359_
                             _tl130154130361_
                             _e130159130364_
                             _hd130158130367_
                             _tl130157130369_))))
                     (___match135956135957_
                      (lambda (_e130106130412_
                               _hd130105130415_
                               _tl130104130417_
                               _e130109130420_
                               _hd130108130423_
                               _tl130107130425_
                               _e130112130428_
                               _hd130111130431_
                               _tl130110130433_
                               _e130115130436_
                               _hd130114130439_
                               _tl130113130441_
                               _e130118130444_
                               _hd130117130447_
                               _tl130116130449_
                               _e130121130452_
                               _hd130120130455_
                               _tl130119130457_
                               _e130124130460_
                               _hd130123130463_
                               _tl130122130465_
                               _e130127130468_
                               _hd130126130471_
                               _tl130125130473_
                               _e130130130476_
                               _hd130129130479_
                               _tl130128130481_
                               _e130133130484_
                               _hd130132130487_
                               _tl130131130489_
                               _e130136130492_
                               _hd130135130495_
                               _tl130134130497_)
                        (let ((_L130500_ _hd130135130495_)
                              (_L130501_ _hd130132130487_)
                              (_L130502_ _hd130123130463_)
                              (_L130503_ _hd130114130439_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130503_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130503_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp136490
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129958_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130502_
                                      __tmp136490)))
                              (___kont135587135588_
                               _L130500_
                               _L130501_
                               _L130502_
                               _L130503_)
                              (___kont135593135594_)))))
                     (___match135948135949_
                      (lambda (_e130106130412_
                               _hd130105130415_
                               _tl130104130417_
                               _e130109130420_
                               _hd130108130423_
                               _tl130107130425_
                               _e130112130428_
                               _hd130111130431_
                               _tl130110130433_
                               _e130115130436_
                               _hd130114130439_
                               _tl130113130441_
                               _e130118130444_
                               _hd130117130447_
                               _tl130116130449_
                               _e130121130452_
                               _hd130120130455_
                               _tl130119130457_
                               _e130124130460_
                               _hd130123130463_
                               _tl130122130465_
                               _e130127130468_
                               _hd130126130471_
                               _tl130125130473_
                               _e130130130476_
                               _hd130129130479_
                               _tl130128130481_
                               _e130133130484_
                               _hd130132130487_
                               _tl130131130489_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130125130473_))
                            (let ((_e130136130492_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130125130473_))))
                              (let ((_tl130134130497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130136130492_)))
                                    (_hd130135130495_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130136130492_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130134130497_))
                                    (___match135956135957_
                                     _e130106130412_
                                     _hd130105130415_
                                     _tl130104130417_
                                     _e130109130420_
                                     _hd130108130423_
                                     _tl130107130425_
                                     _e130112130428_
                                     _hd130111130431_
                                     _tl130110130433_
                                     _e130115130436_
                                     _hd130114130439_
                                     _tl130113130441_
                                     _e130118130444_
                                     _hd130117130447_
                                     _tl130116130449_
                                     _e130121130452_
                                     _hd130120130455_
                                     _tl130119130457_
                                     _e130124130460_
                                     _hd130123130463_
                                     _tl130122130465_
                                     _e130127130468_
                                     _hd130126130471_
                                     _tl130125130473_
                                     _e130130130476_
                                     _hd130129130479_
                                     _tl130128130481_
                                     _e130133130484_
                                     _hd130132130487_
                                     _tl130131130489_
                                     _e130136130492_
                                     _hd130135130495_
                                     _tl130134130497_)
                                    (___kont135593135594_))))
                            (___match136072136073_
                             _e130106130412_
                             _hd130105130415_
                             _tl130104130417_
                             _e130109130420_
                             _hd130108130423_
                             _tl130107130425_
                             _e130112130428_
                             _hd130111130431_
                             _tl130110130433_
                             _e130115130436_
                             _hd130114130439_
                             _tl130113130441_
                             _e130118130444_
                             _hd130117130447_
                             _tl130116130449_
                             _e130121130452_
                             _hd130120130455_
                             _tl130119130457_
                             _e130124130460_
                             _hd130123130463_
                             _tl130122130465_
                             _e130127130468_
                             _hd130126130471_
                             _tl130125130473_))))
                     (___match135870135871_
                      (lambda (_e130072130546_
                               _hd130071130549_
                               _tl130070130551_
                               _e130075130554_
                               _hd130074130557_
                               _tl130073130559_
                               _e130078130562_
                               _hd130077130565_
                               _tl130076130567_
                               _e130081130570_
                               _hd130080130573_
                               _tl130079130575_
                               _e130084130578_
                               _hd130083130581_
                               _tl130082130583_
                               _e130087130586_
                               _hd130086130589_
                               _tl130085130591_
                               _e130090130594_
                               _hd130089130597_
                               _tl130088130599_
                               _e130093130602_
                               _hd130092130605_
                               _tl130091130607_
                               _e130096130610_
                               _hd130095130613_
                               _tl130094130615_
                               _e130099130618_
                               _hd130098130621_
                               _tl130097130623_)
                        (let ((_L130626_ _hd130098130621_)
                              (_L130627_ _hd130089130597_)
                              (_L130628_ _hd130080130573_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130628_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130628_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp136491
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129958_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130627_
                                      __tmp136491)))
                              (___kont135585135586_
                               _L130626_
                               _L130627_
                               _L130628_)
                              (___match136074136075_
                               _e130072130546_
                               _hd130071130549_
                               _tl130070130551_
                               _e130075130554_
                               _hd130074130557_
                               _tl130073130559_
                               _e130078130562_
                               _hd130077130565_
                               _tl130076130567_
                               _e130081130570_
                               _hd130080130573_
                               _tl130079130575_
                               _e130084130578_
                               _hd130083130581_
                               _tl130082130583_
                               _e130087130586_
                               _hd130086130589_
                               _tl130085130591_
                               _e130090130594_
                               _hd130089130597_
                               _tl130088130599_
                               _e130093130602_
                               _hd130092130605_
                               _tl130091130607_)))))
                     (___match135868135869_
                      (lambda (_e130072130546_
                               _hd130071130549_
                               _tl130070130551_
                               _e130075130554_
                               _hd130074130557_
                               _tl130073130559_
                               _e130078130562_
                               _hd130077130565_
                               _tl130076130567_
                               _e130081130570_
                               _hd130080130573_
                               _tl130079130575_
                               _e130084130578_
                               _hd130083130581_
                               _tl130082130583_
                               _e130087130586_
                               _hd130086130589_
                               _tl130085130591_
                               _e130090130594_
                               _hd130089130597_
                               _tl130088130599_
                               _e130093130602_
                               _hd130092130605_
                               _tl130091130607_
                               _e130096130610_
                               _hd130095130613_
                               _tl130094130615_
                               _e130099130618_
                               _hd130098130621_
                               _tl130097130623_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130091130607_))
                            (___match135870135871_
                             _e130072130546_
                             _hd130071130549_
                             _tl130070130551_
                             _e130075130554_
                             _hd130074130557_
                             _tl130073130559_
                             _e130078130562_
                             _hd130077130565_
                             _tl130076130567_
                             _e130081130570_
                             _hd130080130573_
                             _tl130079130575_
                             _e130084130578_
                             _hd130083130581_
                             _tl130082130583_
                             _e130087130586_
                             _hd130086130589_
                             _tl130085130591_
                             _e130090130594_
                             _hd130089130597_
                             _tl130088130599_
                             _e130093130602_
                             _hd130092130605_
                             _tl130091130607_
                             _e130096130610_
                             _hd130095130613_
                             _tl130094130615_
                             _e130099130618_
                             _hd130098130621_
                             _tl130097130623_)
                            (___match135948135949_
                             _e130072130546_
                             _hd130071130549_
                             _tl130070130551_
                             _e130075130554_
                             _hd130074130557_
                             _tl130073130559_
                             _e130078130562_
                             _hd130077130565_
                             _tl130076130567_
                             _e130081130570_
                             _hd130080130573_
                             _tl130079130575_
                             _e130084130578_
                             _hd130083130581_
                             _tl130082130583_
                             _e130087130586_
                             _hd130086130589_
                             _tl130085130591_
                             _e130090130594_
                             _hd130089130597_
                             _tl130088130599_
                             _e130093130602_
                             _hd130092130605_
                             _tl130091130607_
                             _e130096130610_
                             _hd130095130613_
                             _tl130094130615_
                             _e130099130618_
                             _hd130098130621_
                             _tl130097130623_))))
                     (___match135858135859_
                      (lambda (_e130072130546_
                               _hd130071130549_
                               _tl130070130551_
                               _e130075130554_
                               _hd130074130557_
                               _tl130073130559_
                               _e130078130562_
                               _hd130077130565_
                               _tl130076130567_
                               _e130081130570_
                               _hd130080130573_
                               _tl130079130575_
                               _e130084130578_
                               _hd130083130581_
                               _tl130082130583_
                               _e130087130586_
                               _hd130086130589_
                               _tl130085130591_
                               _e130090130594_
                               _hd130089130597_
                               _tl130088130599_
                               _e130093130602_
                               _hd130092130605_
                               _tl130091130607_
                               _e130096130610_
                               _hd130095130613_
                               _tl130094130615_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd130095130613_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130094130615_))
                                (let ((_e130099130618_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130094130615_))))
                                  (let ((_tl130097130623_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130099130618_)))
                                        (_hd130098130621_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130099130618_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130097130623_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130091130607_))
                                            (___match135870135871_
                                             _e130072130546_
                                             _hd130071130549_
                                             _tl130070130551_
                                             _e130075130554_
                                             _hd130074130557_
                                             _tl130073130559_
                                             _e130078130562_
                                             _hd130077130565_
                                             _tl130076130567_
                                             _e130081130570_
                                             _hd130080130573_
                                             _tl130079130575_
                                             _e130084130578_
                                             _hd130083130581_
                                             _tl130082130583_
                                             _e130087130586_
                                             _hd130086130589_
                                             _tl130085130591_
                                             _e130090130594_
                                             _hd130089130597_
                                             _tl130088130599_
                                             _e130093130602_
                                             _hd130092130605_
                                             _tl130091130607_
                                             _e130096130610_
                                             _hd130095130613_
                                             _tl130094130615_
                                             _e130099130618_
                                             _hd130098130621_
                                             _tl130097130623_)
                                            (___match135948135949_
                                             _e130072130546_
                                             _hd130071130549_
                                             _tl130070130551_
                                             _e130075130554_
                                             _hd130074130557_
                                             _tl130073130559_
                                             _e130078130562_
                                             _hd130077130565_
                                             _tl130076130567_
                                             _e130081130570_
                                             _hd130080130573_
                                             _tl130079130575_
                                             _e130084130578_
                                             _hd130083130581_
                                             _tl130082130583_
                                             _e130087130586_
                                             _hd130086130589_
                                             _tl130085130591_
                                             _e130090130594_
                                             _hd130089130597_
                                             _tl130088130599_
                                             _e130093130602_
                                             _hd130092130605_
                                             _tl130091130607_
                                             _e130096130610_
                                             _hd130095130613_
                                             _tl130094130615_
                                             _e130099130618_
                                             _hd130098130621_
                                             _tl130097130623_))
                                        (___match136072136073_
                                         _e130072130546_
                                         _hd130071130549_
                                         _tl130070130551_
                                         _e130075130554_
                                         _hd130074130557_
                                         _tl130073130559_
                                         _e130078130562_
                                         _hd130077130565_
                                         _tl130076130567_
                                         _e130081130570_
                                         _hd130080130573_
                                         _tl130079130575_
                                         _e130084130578_
                                         _hd130083130581_
                                         _tl130082130583_
                                         _e130087130586_
                                         _hd130086130589_
                                         _tl130085130591_
                                         _e130090130594_
                                         _hd130089130597_
                                         _tl130088130599_
                                         _e130093130602_
                                         _hd130092130605_
                                         _tl130091130607_))))
                                (___match136072136073_
                                 _e130072130546_
                                 _hd130071130549_
                                 _tl130070130551_
                                 _e130075130554_
                                 _hd130074130557_
                                 _tl130073130559_
                                 _e130078130562_
                                 _hd130077130565_
                                 _tl130076130567_
                                 _e130081130570_
                                 _hd130080130573_
                                 _tl130079130575_
                                 _e130084130578_
                                 _hd130083130581_
                                 _tl130082130583_
                                 _e130087130586_
                                 _hd130086130589_
                                 _tl130085130591_
                                 _e130090130594_
                                 _hd130089130597_
                                 _tl130088130599_
                                 _e130093130602_
                                 _hd130092130605_
                                 _tl130091130607_))
                            (___match136072136073_
                             _e130072130546_
                             _hd130071130549_
                             _tl130070130551_
                             _e130075130554_
                             _hd130074130557_
                             _tl130073130559_
                             _e130078130562_
                             _hd130077130565_
                             _tl130076130567_
                             _e130081130570_
                             _hd130080130573_
                             _tl130079130575_
                             _e130084130578_
                             _hd130083130581_
                             _tl130082130583_
                             _e130087130586_
                             _hd130086130589_
                             _tl130085130591_
                             _e130090130594_
                             _hd130089130597_
                             _tl130088130599_
                             _e130093130602_
                             _hd130092130605_
                             _tl130091130607_))))
                     (___match135790135791_
                      (lambda (_e130021130667_
                               _hd130020130670_
                               _tl130019130672_
                               _e130024130675_
                               _hd130023130678_
                               _tl130022130680_
                               _e130027130683_
                               _hd130026130686_
                               _tl130025130688_
                               _e130030130691_
                               _hd130029130694_
                               _tl130028130696_
                               _e130033130699_
                               _hd130032130702_
                               _tl130031130704_
                               _e130036130707_
                               _hd130035130710_
                               _tl130034130712_
                               _e130039130715_
                               _hd130038130718_
                               _tl130037130720_
                               _e130042130723_
                               _hd130041130726_
                               _tl130040130728_
                               _e130045130731_
                               _hd130044130734_
                               _tl130043130736_
                               _e130048130739_
                               _hd130047130742_
                               _tl130046130744_
                               _e130051130747_
                               _hd130050130750_
                               _tl130049130752_
                               _e130054130755_
                               _hd130053130758_
                               _tl130052130760_
                               _e130057130763_
                               _hd130056130766_
                               _tl130055130768_
                               ___splice135583135584_
                               _target130058130771_
                               _tl130060130773_)
                        (letrec ((_loop130061130776_
                                  (lambda (_hd130059130779_ _args130065130781_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130059130779_))
                                        (let ((_e130062130784_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130059130779_))))
                                          (let ((_lp-tl130064130789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130062130784_)))
                                                (_lp-hd130063130787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130062130784_))))
                                            (let ((__tmp136493
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130063130787_
                                                           _args130065130781_))))
                                              (declare (not safe))
                                              (_loop130061130776_
                                               _lp-tl130064130789_
                                               __tmp136493))))
                                        (let ((_args130066130792_
                                               (reverse _args130065130781_)))
                                          (let ((_L130795_ _args130066130792_)
                                                (_L130796_ _hd130056130766_)
                                                (_L130797_ _hd130047130742_)
                                                (_L130798_ _hd130038130718_)
                                                (_L130799_ _hd130029130694_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130799_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130798_
                                                        'call-method))
                                                     (let ((__tmp136492
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129958_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130797_
                                                        __tmp136492)))
                                                (___kont135581135582_
                                                 _L130795_
                                                 _L130796_
                                                 _L130797_
                                                 _L130798_
                                                 _L130799_)
                                                (___kont135593135594_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130061130776_ _target130058130771_ '())))))
                     (___match135748135749_
                      (lambda (_e130021130667_
                               _hd130020130670_
                               _tl130019130672_
                               _e130024130675_
                               _hd130023130678_
                               _tl130022130680_
                               _e130027130683_
                               _hd130026130686_
                               _tl130025130688_
                               _e130030130691_
                               _hd130029130694_
                               _tl130028130696_
                               _e130033130699_
                               _hd130032130702_
                               _tl130031130704_
                               _e130036130707_
                               _hd130035130710_
                               _tl130034130712_
                               _e130039130715_
                               _hd130038130718_
                               _tl130037130720_
                               _e130042130723_
                               _hd130041130726_
                               _tl130040130728_
                               _e130045130731_
                               _hd130044130734_
                               _tl130043130736_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd130044130734_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130043130736_))
                                (let ((_e130048130739_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130043130736_))))
                                  (let ((_tl130046130744_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130048130739_)))
                                        (_hd130047130742_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130048130739_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130046130744_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130040130728_))
                                            (let ((_e130051130747_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130040130728_))))
                                              (let ((_tl130049130752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130051130747_)))
                                                    (_hd130050130750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130051130747_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd130050130750_))
                                                    (let ((_e130054130755_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd130050130750_))))
                                                      (let ((_tl130052130760_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130054130755_)))
                    (_hd130053130758_
                     (let () (declare (not safe)) (##car _e130054130755_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd130053130758_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd130053130758_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130052130760_))
                            (let ((_e130057130763_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130052130760_))))
                              (let ((_tl130055130768_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130057130763_)))
                                    (_hd130056130766_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130057130763_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130055130768_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl130049130752_))
                                        (let ((___splice135583135584_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl130049130752_
                                                  '0))))
                                          (let ((_tl130060130773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135583135584_
                                                    '1)))
                                                (_target130058130771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135583135584_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl130060130773_))
                                                (___match135790135791_
                                                 _e130021130667_
                                                 _hd130020130670_
                                                 _tl130019130672_
                                                 _e130024130675_
                                                 _hd130023130678_
                                                 _tl130022130680_
                                                 _e130027130683_
                                                 _hd130026130686_
                                                 _tl130025130688_
                                                 _e130030130691_
                                                 _hd130029130694_
                                                 _tl130028130696_
                                                 _e130033130699_
                                                 _hd130032130702_
                                                 _tl130031130704_
                                                 _e130036130707_
                                                 _hd130035130710_
                                                 _tl130034130712_
                                                 _e130039130715_
                                                 _hd130038130718_
                                                 _tl130037130720_
                                                 _e130042130723_
                                                 _hd130041130726_
                                                 _tl130040130728_
                                                 _e130045130731_
                                                 _hd130044130734_
                                                 _tl130043130736_
                                                 _e130048130739_
                                                 _hd130047130742_
                                                 _tl130046130744_
                                                 _e130051130747_
                                                 _hd130050130750_
                                                 _tl130049130752_
                                                 _e130054130755_
                                                 _hd130053130758_
                                                 _tl130052130760_
                                                 _e130057130763_
                                                 _hd130056130766_
                                                 _tl130055130768_
                                                 ___splice135583135584_
                                                 _target130058130771_
                                                 _tl130060130773_)
                                                (___kont135593135594_))))
                                        (___kont135593135594_))
                                    (___kont135593135594_))))
                            (___kont135593135594_))
                        (___kont135593135594_))
                    (___kont135593135594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135593135594_))))
                                            (___match136072136073_
                                             _e130021130667_
                                             _hd130020130670_
                                             _tl130019130672_
                                             _e130024130675_
                                             _hd130023130678_
                                             _tl130022130680_
                                             _e130027130683_
                                             _hd130026130686_
                                             _tl130025130688_
                                             _e130030130691_
                                             _hd130029130694_
                                             _tl130028130696_
                                             _e130033130699_
                                             _hd130032130702_
                                             _tl130031130704_
                                             _e130036130707_
                                             _hd130035130710_
                                             _tl130034130712_
                                             _e130039130715_
                                             _hd130038130718_
                                             _tl130037130720_
                                             _e130042130723_
                                             _hd130041130726_
                                             _tl130040130728_))
                                        (___match136072136073_
                                         _e130021130667_
                                         _hd130020130670_
                                         _tl130019130672_
                                         _e130024130675_
                                         _hd130023130678_
                                         _tl130022130680_
                                         _e130027130683_
                                         _hd130026130686_
                                         _tl130025130688_
                                         _e130030130691_
                                         _hd130029130694_
                                         _tl130028130696_
                                         _e130033130699_
                                         _hd130032130702_
                                         _tl130031130704_
                                         _e130036130707_
                                         _hd130035130710_
                                         _tl130034130712_
                                         _e130039130715_
                                         _hd130038130718_
                                         _tl130037130720_
                                         _e130042130723_
                                         _hd130041130726_
                                         _tl130040130728_))))
                                (___match136072136073_
                                 _e130021130667_
                                 _hd130020130670_
                                 _tl130019130672_
                                 _e130024130675_
                                 _hd130023130678_
                                 _tl130022130680_
                                 _e130027130683_
                                 _hd130026130686_
                                 _tl130025130688_
                                 _e130030130691_
                                 _hd130029130694_
                                 _tl130028130696_
                                 _e130033130699_
                                 _hd130032130702_
                                 _tl130031130704_
                                 _e130036130707_
                                 _hd130035130710_
                                 _tl130034130712_
                                 _e130039130715_
                                 _hd130038130718_
                                 _tl130037130720_
                                 _e130042130723_
                                 _hd130041130726_
                                 _tl130040130728_))
                            (___match135858135859_
                             _e130021130667_
                             _hd130020130670_
                             _tl130019130672_
                             _e130024130675_
                             _hd130023130678_
                             _tl130022130680_
                             _e130027130683_
                             _hd130026130686_
                             _tl130025130688_
                             _e130030130691_
                             _hd130029130694_
                             _tl130028130696_
                             _e130033130699_
                             _hd130032130702_
                             _tl130031130704_
                             _e130036130707_
                             _hd130035130710_
                             _tl130034130712_
                             _e130039130715_
                             _hd130038130718_
                             _tl130037130720_
                             _e130042130723_
                             _hd130041130726_
                             _tl130040130728_
                             _e130045130731_
                             _hd130044130734_
                             _tl130043130736_))))
                     (___match135680135681_
                      (lambda (_e129977130859_
                               _hd129976130862_
                               _tl129975130864_
                               _e129980130867_
                               _hd129979130870_
                               _tl129978130872_
                               _e129983130875_
                               _hd129982130878_
                               _tl129981130880_
                               _e129986130883_
                               _hd129985130886_
                               _tl129984130888_
                               _e129989130891_
                               _hd129988130894_
                               _tl129987130896_
                               _e129992130899_
                               _hd129991130902_
                               _tl129990130904_
                               _e129995130907_
                               _hd129994130910_
                               _tl129993130912_
                               _e129998130915_
                               _hd129997130918_
                               _tl129996130920_
                               _e130001130923_
                               _hd130000130926_
                               _tl129999130928_
                               _e130004130931_
                               _hd130003130934_
                               _tl130002130936_
                               ___splice135579135580_
                               _target130005130939_
                               _tl130007130941_)
                        (letrec ((_loop130008130944_
                                  (lambda (_hd130006130947_ _args130012130949_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130006130947_))
                                        (let ((_e130009130952_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130006130947_))))
                                          (let ((_lp-tl130011130957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130009130952_)))
                                                (_lp-hd130010130955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130009130952_))))
                                            (let ((__tmp136495
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130010130955_
                                                           _args130012130949_))))
                                              (declare (not safe))
                                              (_loop130008130944_
                                               _lp-tl130011130957_
                                               __tmp136495))))
                                        (let ((_args130013130960_
                                               (reverse _args130012130949_)))
                                          (let ((_L130963_ _args130013130960_)
                                                (_L130964_ _hd130003130934_)
                                                (_L130965_ _hd129994130910_)
                                                (_L130966_ _hd129985130886_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130966_
                                                        'call-method))
                                                     (let ((__tmp136494
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129958_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130965_
                                                        __tmp136494)))
                                                (___kont135577135578_
                                                 _L130963_
                                                 _L130964_
                                                 _L130965_
                                                 _L130966_)
                                                (___match135868135869_
                                                 _e129977130859_
                                                 _hd129976130862_
                                                 _tl129975130864_
                                                 _e129980130867_
                                                 _hd129979130870_
                                                 _tl129978130872_
                                                 _e129983130875_
                                                 _hd129982130878_
                                                 _tl129981130880_
                                                 _e129986130883_
                                                 _hd129985130886_
                                                 _tl129984130888_
                                                 _e129989130891_
                                                 _hd129988130894_
                                                 _tl129987130896_
                                                 _e129992130899_
                                                 _hd129991130902_
                                                 _tl129990130904_
                                                 _e129995130907_
                                                 _hd129994130910_
                                                 _tl129993130912_
                                                 _e129998130915_
                                                 _hd129997130918_
                                                 _tl129996130920_
                                                 _e130001130923_
                                                 _hd130000130926_
                                                 _tl129999130928_
                                                 _e130004130931_
                                                 _hd130003130934_
                                                 _tl130002130936_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130008130944_ _target130005130939_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135575135576_))
                    (let ((_e129977130859_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135575135576_))))
                      (let ((_tl129975130864_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129977130859_)))
                            (_hd129976130862_
                             (let ()
                               (declare (not safe))
                               (##car _e129977130859_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129975130864_))
                            (let ((_e129980130867_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129975130864_))))
                              (let ((_tl129978130872_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129980130867_)))
                                    (_hd129979130870_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129980130867_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129979130870_))
                                    (let ((_e129983130875_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129979130870_))))
                                      (let ((_tl129981130880_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129983130875_)))
                                            (_hd129982130878_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129983130875_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129982130878_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129982130878_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129981130880_))
                                                    (let ((_e129986130883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129981130880_))))
                                                      (let ((_tl129984130888_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129986130883_)))
                    (_hd129985130886_
                     (let () (declare (not safe)) (##car _e129986130883_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129984130888_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129978130872_))
                        (let ((_e129989130891_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129978130872_))))
                          (let ((_tl129987130896_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129989130891_)))
                                (_hd129988130894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129989130891_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129988130894_))
                                (let ((_e129992130899_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129988130894_))))
                                  (let ((_tl129990130904_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129992130899_)))
                                        (_hd129991130902_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129992130899_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129991130902_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129991130902_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129990130904_))
                                                (let ((_e129995130907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129990130904_))))
                                                  (let ((_tl129993130912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129995130907_)))
                                                        (_hd129994130910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129995130907_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129993130912_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129987130896_))
                                                            (let ((_e129998130915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129987130896_))))
                      (let ((_tl129996130920_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129998130915_)))
                            (_hd129997130918_
                             (let ()
                               (declare (not safe))
                               (##car _e129998130915_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129997130918_))
                            (let ((_e130001130923_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129997130918_))))
                              (let ((_tl129999130928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130001130923_)))
                                    (_hd130000130926_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130001130923_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd130000130926_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd130000130926_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129999130928_))
                                            (let ((_e130004130931_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129999130928_))))
                                              (let ((_tl130002130936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130004130931_)))
                                                    (_hd130003130934_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130004130931_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl130002130936_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129996130920_))
                                                        (let ((___splice135579135580_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129996130920_ '0))))
                  (let ((_tl130007130941_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135579135580_ '1)))
                        (_target130005130939_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135579135580_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl130007130941_))
                        (___match135680135681_
                         _e129977130859_
                         _hd129976130862_
                         _tl129975130864_
                         _e129980130867_
                         _hd129979130870_
                         _tl129978130872_
                         _e129983130875_
                         _hd129982130878_
                         _tl129981130880_
                         _e129986130883_
                         _hd129985130886_
                         _tl129984130888_
                         _e129989130891_
                         _hd129988130894_
                         _tl129987130896_
                         _e129992130899_
                         _hd129991130902_
                         _tl129990130904_
                         _e129995130907_
                         _hd129994130910_
                         _tl129993130912_
                         _e129998130915_
                         _hd129997130918_
                         _tl129996130920_
                         _e130001130923_
                         _hd130000130926_
                         _tl129999130928_
                         _e130004130931_
                         _hd130003130934_
                         _tl130002130936_
                         ___splice135579135580_
                         _target130005130939_
                         _tl130007130941_)
                        (___match135868135869_
                         _e129977130859_
                         _hd129976130862_
                         _tl129975130864_
                         _e129980130867_
                         _hd129979130870_
                         _tl129978130872_
                         _e129983130875_
                         _hd129982130878_
                         _tl129981130880_
                         _e129986130883_
                         _hd129985130886_
                         _tl129984130888_
                         _e129989130891_
                         _hd129988130894_
                         _tl129987130896_
                         _e129992130899_
                         _hd129991130902_
                         _tl129990130904_
                         _e129995130907_
                         _hd129994130910_
                         _tl129993130912_
                         _e129998130915_
                         _hd129997130918_
                         _tl129996130920_
                         _e130001130923_
                         _hd130000130926_
                         _tl129999130928_
                         _e130004130931_
                         _hd130003130934_
                         _tl130002130936_))))
                (___match135868135869_
                 _e129977130859_
                 _hd129976130862_
                 _tl129975130864_
                 _e129980130867_
                 _hd129979130870_
                 _tl129978130872_
                 _e129983130875_
                 _hd129982130878_
                 _tl129981130880_
                 _e129986130883_
                 _hd129985130886_
                 _tl129984130888_
                 _e129989130891_
                 _hd129988130894_
                 _tl129987130896_
                 _e129992130899_
                 _hd129991130902_
                 _tl129990130904_
                 _e129995130907_
                 _hd129994130910_
                 _tl129993130912_
                 _e129998130915_
                 _hd129997130918_
                 _tl129996130920_
                 _e130001130923_
                 _hd130000130926_
                 _tl129999130928_
                 _e130004130931_
                 _hd130003130934_
                 _tl130002130936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match136072136073_
                                                     _e129977130859_
                                                     _hd129976130862_
                                                     _tl129975130864_
                                                     _e129980130867_
                                                     _hd129979130870_
                                                     _tl129978130872_
                                                     _e129983130875_
                                                     _hd129982130878_
                                                     _tl129981130880_
                                                     _e129986130883_
                                                     _hd129985130886_
                                                     _tl129984130888_
                                                     _e129989130891_
                                                     _hd129988130894_
                                                     _tl129987130896_
                                                     _e129992130899_
                                                     _hd129991130902_
                                                     _tl129990130904_
                                                     _e129995130907_
                                                     _hd129994130910_
                                                     _tl129993130912_
                                                     _e129998130915_
                                                     _hd129997130918_
                                                     _tl129996130920_))))
                                            (___match136072136073_
                                             _e129977130859_
                                             _hd129976130862_
                                             _tl129975130864_
                                             _e129980130867_
                                             _hd129979130870_
                                             _tl129978130872_
                                             _e129983130875_
                                             _hd129982130878_
                                             _tl129981130880_
                                             _e129986130883_
                                             _hd129985130886_
                                             _tl129984130888_
                                             _e129989130891_
                                             _hd129988130894_
                                             _tl129987130896_
                                             _e129992130899_
                                             _hd129991130902_
                                             _tl129990130904_
                                             _e129995130907_
                                             _hd129994130910_
                                             _tl129993130912_
                                             _e129998130915_
                                             _hd129997130918_
                                             _tl129996130920_))
                                        (___match135748135749_
                                         _e129977130859_
                                         _hd129976130862_
                                         _tl129975130864_
                                         _e129980130867_
                                         _hd129979130870_
                                         _tl129978130872_
                                         _e129983130875_
                                         _hd129982130878_
                                         _tl129981130880_
                                         _e129986130883_
                                         _hd129985130886_
                                         _tl129984130888_
                                         _e129989130891_
                                         _hd129988130894_
                                         _tl129987130896_
                                         _e129992130899_
                                         _hd129991130902_
                                         _tl129990130904_
                                         _e129995130907_
                                         _hd129994130910_
                                         _tl129993130912_
                                         _e129998130915_
                                         _hd129997130918_
                                         _tl129996130920_
                                         _e130001130923_
                                         _hd130000130926_
                                         _tl129999130928_))
                                    (___match136072136073_
                                     _e129977130859_
                                     _hd129976130862_
                                     _tl129975130864_
                                     _e129980130867_
                                     _hd129979130870_
                                     _tl129978130872_
                                     _e129983130875_
                                     _hd129982130878_
                                     _tl129981130880_
                                     _e129986130883_
                                     _hd129985130886_
                                     _tl129984130888_
                                     _e129989130891_
                                     _hd129988130894_
                                     _tl129987130896_
                                     _e129992130899_
                                     _hd129991130902_
                                     _tl129990130904_
                                     _e129995130907_
                                     _hd129994130910_
                                     _tl129993130912_
                                     _e129998130915_
                                     _hd129997130918_
                                     _tl129996130920_))))
                            (___match136072136073_
                             _e129977130859_
                             _hd129976130862_
                             _tl129975130864_
                             _e129980130867_
                             _hd129979130870_
                             _tl129978130872_
                             _e129983130875_
                             _hd129982130878_
                             _tl129981130880_
                             _e129986130883_
                             _hd129985130886_
                             _tl129984130888_
                             _e129989130891_
                             _hd129988130894_
                             _tl129987130896_
                             _e129992130899_
                             _hd129991130902_
                             _tl129990130904_
                             _e129995130907_
                             _hd129994130910_
                             _tl129993130912_
                             _e129998130915_
                             _hd129997130918_
                             _tl129996130920_))))
                    (___match136010136011_
                     _e129977130859_
                     _hd129976130862_
                     _tl129975130864_
                     _e129980130867_
                     _hd129979130870_
                     _tl129978130872_
                     _e129983130875_
                     _hd129982130878_
                     _tl129981130880_
                     _e129986130883_
                     _hd129985130886_
                     _tl129984130888_
                     _e129989130891_
                     _hd129988130894_
                     _tl129987130896_
                     _e129992130899_
                     _hd129991130902_
                     _tl129990130904_
                     _e129995130907_
                     _hd129994130910_
                     _tl129993130912_))
                (___kont135593135594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135593135594_))
                                            (___kont135593135594_))
                                        (___kont135593135594_))))
                                (___kont135593135594_))))
                        (___kont135593135594_))
                    (___kont135593135594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135593135594_))
                                                (___kont135593135594_))
                                            (___kont135593135594_))))
                                    (___kont135593135594_))))
                            (___kont135593135594_))))
                    (___kont135593135594_))))))))))
