(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710140931)
  (begin
    (define gxc#&generate-method-specializers::t
      (let ((__tmp136012 (list gxc#&identity::t))
            (__tmp136010
             (let ((__tmp136011
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136011 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&generate-method-specializers::t
         '&generate-method-specializers
         __tmp136012
         '()
         __tmp136010
         '#f)))
    (define gxc#&generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&generate-method-specializers::t)))
    (define gxc#make-&generate-method-specializers
      (lambda _$args134876_
        (apply make-instance
               gxc#&generate-method-specializers::t
               _$args134876_)))
    (define gxc#&generate-method-specializers-bind-methods!
      (let ((__tmp136013
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
        (make-promise __tmp136013)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134868_)
        (force gxc#&generate-method-specializers-bind-methods!)
        (let* ((_self134871_
                (let ((__obj136005
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&generate-method-specializers::t))))
                  __obj136005))
               (__tmp136014
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self134871_ _stx134868_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp136014
           gxc#current-compile-method
           _self134871_))))
    (define gxc#&collect-object-refs::t
      (let ((__tmp136017 (list gxc#&void::t))
            (__tmp136015
             (let ((__tmp136016
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136016 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-object-refs::t
         '&collect-object-refs
         __tmp136017
         '(receiver methods slots)
         __tmp136015
         '#f)))
    (define gxc#&collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-object-refs::t)))
    (define gxc#make-&collect-object-refs
      (lambda _$args134865_
        (apply make-instance gxc#&collect-object-refs::t _$args134865_)))
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
      (let ((__tmp136018
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
        (make-promise __tmp136018)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g136019_
               _receiver134826134831_
               _methods134827134833_
               _slots134828134835_
               _stx134837_)
        (let* ((_receiver134840_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134826134831_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134826134831_))
               (_methods134842_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134827134833_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134827134833_))
               (_slots134844_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134828134835_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134828134835_)))
          (force gxc#&collect-object-refs-bind-methods!)
          (let* ((_self134846_
                  (let ((__obj136007
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
                       __obj136007
                       _receiver134840_
                       '1
                       gxc#&collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136007
                       _methods134842_
                       '2
                       gxc#&collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136007
                       _slots134844_
                       '3
                       gxc#&collect-object-refs::t
                       '#f))
                    __obj136007))
                 (__tmp136020
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134846_ _stx134837_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136020
             gxc#current-compile-method
             _self134846_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys134825134853_ . _args134855_)
        (apply gxc#apply-collect-object-refs__%
               _keys134825134853_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134825134853_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134825134853_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134825134853_ 'slots: absent-value))
               _args134855_)))
    (define gxc#apply-collect-object-refs
      (lambda _args134829134861_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args134829134861_)))
    (define gxc#&subst-object-refs::t
      (let ((__tmp136023 (list gxc#&basic-xform-expression::t))
            (__tmp136021
             (let ((__tmp136022
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136022 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&subst-object-refs::t
         '&subst-object-refs
         __tmp136023
         '(receiver klass methods slots)
         __tmp136021
         '#f)))
    (define gxc#&subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&subst-object-refs::t)))
    (define gxc#make-&subst-object-refs
      (lambda _$args134821_
        (apply make-instance gxc#&subst-object-refs::t _$args134821_)))
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
      (let ((__tmp136024
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
        (make-promise __tmp136024)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g136025_
               _receiver134777134783_
               _klass134778134785_
               _methods134779134787_
               _slots134780134789_
               _stx134791_)
        (let* ((_receiver134794_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134777134783_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134777134783_))
               (_klass134796_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass134778134785_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass134778134785_))
               (_methods134798_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134779134787_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134779134787_))
               (_slots134800_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134780134789_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134780134789_)))
          (force gxc#&subst-object-refs-bind-methods!)
          (let* ((_self134802_
                  (let ((__obj136009
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
                       __obj136009
                       _receiver134794_
                       '1
                       gxc#&subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136009
                       _klass134796_
                       '2
                       gxc#&subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136009
                       _methods134798_
                       '3
                       gxc#&subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136009
                       _slots134800_
                       '4
                       gxc#&subst-object-refs::t
                       '#f))
                    __obj136009))
                 (__tmp136026
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134802_ _stx134791_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136026
             gxc#current-compile-method
             _self134802_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys134776134809_ . _args134811_)
        (apply gxc#apply-subst-object-refs__%
               _keys134776134809_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134776134809_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134776134809_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134776134809_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134776134809_ 'slots: absent-value))
               _args134811_)))
    (define gxc#apply-subst-object-refs
      (lambda _args134781134817_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args134781134817_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self131986_ _stx131987_)
        (letrec ((_generate-method-bind131989_
                  (lambda (_$klass134768_
                           _$method-table134769_
                           _id134770_
                           _$id134771_)
                    (let ((_$tmp134773_
                           (let ((__tmp136027 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136027))))
                      (let ((__tmp136075
                             (let ()
                               (declare (not safe))
                               (cons _$id134771_ '())))
                            (__tmp136028
                             (let ((__tmp136029
                                    (let ((__tmp136030
                                           (let ((__tmp136073
                                                  (let ((__tmp136074
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136074)))
                                                 (__tmp136031
                                                  (let ((__tmp136032
                                                         (let ((__tmp136033
                                                                (let ((__tmp136034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136035
                                      (let ((__tmp136036
                                             (let ((__tmp136056
                                                    (let ((__tmp136057
                                                           (let ((__tmp136072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134773_ '())))
                         (__tmp136058
                          (let ((__tmp136059
                                 (let ((__tmp136060
                                        (let ((__tmp136070
                                               (let ((__tmp136071
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp136071)))
                                              (__tmp136061
                                               (let ((__tmp136068
                                                      (let ((__tmp136069
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134769_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp136069)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp136062
                                                      (let ((__tmp136066
                                                             (let ((__tmp136067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134770_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp136067)))
                    (__tmp136063
                     (let ((__tmp136064
                            (let ((__tmp136065
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136065))))
                       (declare (not safe))
                       (cons __tmp136064 '()))))
                (declare (not safe))
                (cons __tmp136066 __tmp136063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp136068
                                                       __tmp136062))))
                                          (declare (not safe))
                                          (cons __tmp136070 __tmp136061))))
                                   (declare (not safe))
                                   (cons '%#call __tmp136060))))
                            (declare (not safe))
                            (cons __tmp136059 '()))))
                     (declare (not safe))
                     (cons __tmp136072 __tmp136058))))
              (declare (not safe))
              (cons __tmp136057 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136037
                                                    (let ((__tmp136038
                                                           (let ((__tmp136039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136054
                                 (let ((__tmp136055
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134773_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp136055)))
                                (__tmp136040
                                 (let ((__tmp136052
                                        (let ((__tmp136053
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134773_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp136053)))
                                       (__tmp136041
                                        (let ((__tmp136042
                                               (let ((__tmp136043
                                                      (let ((__tmp136050
                                                             (let ((__tmp136051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp136051)))
                    (__tmp136044
                     (let ((__tmp136048
                            (let ((__tmp136049
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136049)))
                           (__tmp136045
                            (let ((__tmp136046
                                   (let ((__tmp136047
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134770_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp136047))))
                              (declare (not safe))
                              (cons __tmp136046 '()))))
                       (declare (not safe))
                       (cons __tmp136048 __tmp136045))))
                (declare (not safe))
                (cons __tmp136050 __tmp136044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp136043))))
                                          (declare (not safe))
                                          (cons __tmp136042 '()))))
                                   (declare (not safe))
                                   (cons __tmp136052 __tmp136041))))
                            (declare (not safe))
                            (cons __tmp136054 __tmp136040))))
                     (declare (not safe))
                     (cons '%#if __tmp136039))))
              (declare (not safe))
              (cons __tmp136038 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136056
                                                     __tmp136037))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp136036))))
                                 (declare (not safe))
                                 (cons __tmp136035 '()))))
                          (declare (not safe))
                          (cons '() __tmp136034))))
                   (declare (not safe))
                   (cons '%#lambda __tmp136033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136032 '()))))
                                             (declare (not safe))
                                             (cons __tmp136073 __tmp136031))))
                                      (declare (not safe))
                                      (cons '%#call __tmp136030))))
                               (declare (not safe))
                               (cons __tmp136029 '()))))
                        (declare (not safe))
                        (cons __tmp136075 __tmp136028)))))
                 (_generate-slot-bind131990_
                  (lambda (_$klass134762_ _id134763_ _$id134764_)
                    (let ((_$tmp134766_
                           (let ((__tmp136076 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136076))))
                      (let ((__tmp136113
                             (let ()
                               (declare (not safe))
                               (cons _$id134764_ '())))
                            (__tmp136077
                             (let ((__tmp136078
                                    (let ((__tmp136079
                                           (let ((__tmp136099
                                                  (let ((__tmp136100
                                                         (let ((__tmp136112
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134766_ '())))
                       (__tmp136101
                        (let ((__tmp136102
                               (let ((__tmp136103
                                      (let ((__tmp136110
                                             (let ((__tmp136111
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp136111)))
                                            (__tmp136104
                                             (let ((__tmp136108
                                                    (let ((__tmp136109
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp136109)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136105
                                                    (let ((__tmp136106
                                                           (let ((__tmp136107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134763_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp136107))))
              (declare (not safe))
              (cons __tmp136106 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136108
                                                     __tmp136105))))
                                        (declare (not safe))
                                        (cons __tmp136110 __tmp136104))))
                                 (declare (not safe))
                                 (cons '%#call __tmp136103))))
                          (declare (not safe))
                          (cons __tmp136102 '()))))
                   (declare (not safe))
                   (cons __tmp136112 __tmp136101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136100 '())))
                                                 (__tmp136080
                                                  (let ((__tmp136081
                                                         (let ((__tmp136082
                                                                (let ((__tmp136097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136098
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134766_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp136098)))
                              (__tmp136083
                               (let ((__tmp136095
                                      (let ((__tmp136096
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134766_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp136096)))
                                     (__tmp136084
                                      (let ((__tmp136085
                                             (let ((__tmp136086
                                                    (let ((__tmp136093
                                                           (let ((__tmp136094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp136094)))
                  (__tmp136087
                   (let ((__tmp136091
                          (let ((__tmp136092
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp136092)))
                         (__tmp136088
                          (let ((__tmp136089
                                 (let ((__tmp136090
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134763_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp136090))))
                            (declare (not safe))
                            (cons __tmp136089 '()))))
                     (declare (not safe))
                     (cons __tmp136091 __tmp136088))))
              (declare (not safe))
              (cons __tmp136093 __tmp136087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp136086))))
                                        (declare (not safe))
                                        (cons __tmp136085 '()))))
                                 (declare (not safe))
                                 (cons __tmp136095 __tmp136084))))
                          (declare (not safe))
                          (cons __tmp136097 __tmp136083))))
                   (declare (not safe))
                   (cons '%#if __tmp136082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136081 '()))))
                                             (declare (not safe))
                                             (cons __tmp136099 __tmp136080))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp136079))))
                               (declare (not safe))
                               (cons __tmp136078 '()))))
                        (declare (not safe))
                        (cons __tmp136113 __tmp136077)))))
                 (_generate-specializer-impl131991_
                  (lambda (_$klass134756_
                           _$method-table134757_
                           _methods-bind134758_
                           _slots-bind134759_
                           _specializer-impl134760_)
                    (let ((__tmp136114
                           (let ((__tmp136115
                                  (let ((__tmp136121
                                         (let ((__tmp136122
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134757_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134756_ __tmp136122)))
                                        (__tmp136116
                                         (let ((__tmp136117
                                                (let ((__tmp136118
                                                       (let ((__tmp136120
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134759_ _methods-bind134758_)))
                     (__tmp136119
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134760_ '()))))
                 (declare (not safe))
                 (cons __tmp136120 __tmp136119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp136118))))
                                           (declare (not safe))
                                           (cons __tmp136117 '()))))
                                    (declare (not safe))
                                    (cons __tmp136121 __tmp136116))))
                             (declare (not safe))
                             (cons '%#lambda __tmp136115))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp136114 _stx131987_))))
                 (_generate-specializer-def131992_
                  (lambda (_id134752_
                           _specializer-id134753_
                           _specializer-impl134754_)
                    (let ((__tmp136123
                           (let ((__tmp136124
                                  (let ((__tmp136125
                                         (let ((__tmp136138
                                                (let ((__tmp136139
                                                       (let ((__tmp136140
                                                              (let ((__tmp136142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134753_ '())))
                            (__tmp136141
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134754_ '()))))
                        (declare (not safe))
                        (cons __tmp136142 __tmp136141))))
                 (declare (not safe))
                 (cons '%#define-values __tmp136140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp136139
                                                   _stx131987_)))
                                               (__tmp136126
                                                (let ((__tmp136127
                                                       (let ((__tmp136128
                                                              (let ((__tmp136129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136136
                                    (let ((__tmp136137
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp136137)))
                                   (__tmp136130
                                    (let ((__tmp136134
                                           (let ((__tmp136135
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134752_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp136135)))
                                          (__tmp136131
                                           (let ((__tmp136132
                                                  (let ((__tmp136133
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp136133))))
                                             (declare (not safe))
                                             (cons __tmp136132 '()))))
                                      (declare (not safe))
                                      (cons __tmp136134 __tmp136131))))
                               (declare (not safe))
                               (cons __tmp136136 __tmp136130))))
                        (declare (not safe))
                        (cons '%#call __tmp136129))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp136128 _stx131987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136127 '()))))
                                           (declare (not safe))
                                           (cons __tmp136138 __tmp136126))))
                                    (declare (not safe))
                                    (cons _stx131987_ __tmp136125))))
                             (declare (not safe))
                             (cons '%#begin __tmp136124))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp136123 _stx131987_)))))
          (let* ((___stx134965134966_ _stx131987_)
                 (_g131995132015_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134965134966_)))))
            (let ((___kont134967134968_
                   (lambda (_L132059_ _L132060_)
                     (let ((_method-calls132079_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs132080_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty132081_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?132083_
                                 (lambda ()
                                   (if (let ((__tmp136144
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls132079_))))
                                         (declare (not safe))
                                         (fxzero? __tmp136144))
                                       (let ((__tmp136143
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs132080_))))
                                         (declare (not safe))
                                         (fxzero? __tmp136143))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L132059_))
                             (let* ((___stx134879134880_ _L132059_)
                                    (_g132470132488_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134879134880_)))))
                               (let ((___kont134881134882_
                                      (lambda (_L132524_ _L132525_ _L132526_)
                                        (for-each
                                         (lambda (_g132541132543_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g132541132543_
                                              'receiver:
                                              _L132526_
                                              'methods:
                                              _method-calls132079_
                                              'slots:
                                              _slot-refs132080_)))
                                         _L132524_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?132083_))
                                            _stx131987_
                                            (let* ((_specializer-id132552_
                                                    (let* ((_id132546_
                                                            (let ((__tmp136266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L132060_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp136266 '"::specialize")))
                   (_specializer-id132549_
                    (let ((__tmp136267
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131987_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id132546_ __tmp136267))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id132549_))
              _specializer-id132549_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass132554_
                                                    (let ((__tmp136268
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp136268)))
                                                   (_$method-table132556_
                                                    (let ((__tmp136269
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp136269)))
                                                   (_methods132558_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls132079_)))
                                                   (_$methods132562_
                                                    (map (lambda (_id132560_)
                                                           (let ((__tmp136270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132560_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp136270)))
                 _methods132558_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g136271_
                                                    (for-each
                                                     (lambda (_g132563132566_
                                                              _g132564132568_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls132079_
                                                          _g132563132566_
                                                          _g132564132568_)))
                                                     _methods132558_
                                                     _$methods132562_))
                                                   (_methods-bind132579_
                                                    (map (lambda (_g132571132574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132572132576_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131989_
                      _$klass132554_
                      _$method-table132556_
                      _g132571132574_
                      _g132572132576_)))
                 _methods132558_
                 _$methods132562_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots132581_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs132080_)))
                                                   (_$slots132585_
                                                    (map (lambda (_id132583_)
                                                           (let ((__tmp136272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132583_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp136272)))
                 _slots132581_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g136273_
                                                    (for-each
                                                     (lambda (_g132586132589_
                                                              _g132587132591_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs132080_
                                                          _g132586132589_
                                                          _g132587132591_)))
                                                     _slots132581_
                                                     _$slots132585_))
                                                   (_slots-bind132602_
                                                    (map (lambda (_g132594132597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132595132599_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131990_
                      _$klass132554_
                      _g132594132597_
                      _g132595132599_)))
                 _slots132581_
                 _$slots132585_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body132608_
                                                    (map (lambda (_g132603132605_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g132603132605_
                                                              'receiver:
                                                              _L132526_
                                                              'klass:
                                                              _$klass132554_
                                                              'methods:
                                                              _method-calls132079_
                                                              'slots:
                                                              _slot-refs132080_)))
                                                         _L132524_))
                                                   (_specializer-impl132610_
                                                    (let ((__tmp136274
                                                           (let ((__tmp136275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136276
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132526_ _L132525_))))
                            (declare (not safe))
                            (cons __tmp136276 _specializer-body132608_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp136275))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp136274 _stx131987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl132612_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131991_
                                                       _$klass132554_
                                                       _$method-table132556_
                                                       _methods-bind132579_
                                                       _slots-bind132602_
                                                       _specializer-impl132610_))))
                                              (let ((__tmp136278
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L132060_)))
                                                    (__tmp136277
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id132552_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp136278
                                                 '" => "
                                                 __tmp136277))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131992_
                                                 _L132060_
                                                 _specializer-id132552_
                                                 _specializer-impl132612_))))))
                                     (___kont134883134884_
                                      (lambda () _stx131987_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134879134880_))
                                     (let ((_e132477132500_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134879134880_))))
                                       (let ((_tl132475132505_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e132477132500_)))
                                             (_hd132476132503_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e132477132500_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl132475132505_))
                                             (let ((_e132480132508_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl132475132505_))))
                                               (let ((_tl132478132513_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e132480132508_)))
                                                     (_hd132479132511_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e132480132508_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd132479132511_))
                                                     (let ((_e132483132516_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd132479132511_))))
                                                       (let ((_tl132481132521_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e132483132516_)))
                     (_hd132482132519_
                      (let () (declare (not safe)) (##car _e132483132516_))))
                 (___kont134881134882_
                  _tl132478132513_
                  _tl132481132521_
                  _hd132482132519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134883134884_))))
                                             (___kont134883134884_))))
                                     (___kont134883134884_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L132059_))
                                 (let* ((_g132618132637_
                                         (lambda (_g132619132634_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132619132634_))))
                                        (_g132617132920_
                                         (lambda (_g132619132640_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g132619132640_))
                                               (let ((_e132623132642_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g132619132640_))))
                                                 (let ((_hd132622132645_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132623132642_)))
                                                       (_tl132621132647_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132623132642_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl132621132647_))
                                                       (let ((_g136249_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl132621132647_ '0))))
                 (begin
                   (let ((_g136250_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g136249_)
                                (##vector-length _g136249_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g136250_ 2)))
                         (error "Context expects 2 values" _g136250_)))
                   (let ((_target132624132650_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g136249_ 0)))
                         (_tl132626132652_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g136249_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl132626132652_))
                         (letrec ((_loop132627132655_
                                   (lambda (_hd132625132658_
                                            _clause132631132660_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132625132658_))
                                         (let ((_e132628132663_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132625132658_))))
                                           (let ((_lp-hd132629132666_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132628132663_)))
                                                 (_lp-tl132630132668_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132628132663_))))
                                             (let ((__tmp136265
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd132629132666_
                                                            _clause132631132660_))))
                                               (declare (not safe))
                                               (_loop132627132655_
                                                _lp-tl132630132668_
                                                __tmp136265))))
                                         (let ((_clause132632132671_
                                                (reverse _clause132631132660_)))
                                           ((lambda (_L132674_)
                                              (for-each
                                               (lambda (_clause132687_)
                                                 (let* ((___stx134905134906_
                                                         _clause132687_)
                                                        (_g132690132705_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134905134906_)))))
                                                   (let ((___kont134907134908_
                                                          (lambda (_L132733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132734_
                           _L132735_)
                    (for-each
                     (lambda (_g132750132752_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132750132752_
                          'receiver:
                          _L132735_
                          'methods:
                          _method-calls132079_
                          'slots:
                          _slot-refs132080_)))
                     _L132733_)))
                 (___kont134909134910_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134905134906_))
                                                         (let ((_e132697132717_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134905134906_))))
                   (let ((_tl132695132722_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132697132717_)))
                         (_hd132696132720_
                          (let ()
                            (declare (not safe))
                            (##car _e132697132717_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132696132720_))
                         (let ((_e132700132725_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132696132720_))))
                           (let ((_tl132698132730_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132700132725_)))
                                 (_hd132699132728_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132700132725_))))
                             (___kont134907134908_
                              _tl132695132722_
                              _tl132698132730_
                              _hd132699132728_)))
                         (___kont134909134910_))))
                 (___kont134909134910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp136251
                                                      (lambda (_g132757132760_
                                                               _g132758132762_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132757132760_
                                                                _g132758132762_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp136251
                                                         '()
                                                         _L132674_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132083_))
                                                  _stx131987_
                                                  (let* ((_specializer-id132771_
                                                          (let* ((_id132765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136252
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132060_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp136252 '"::specialize")))
                         (_specializer-id132768_
                          (let ((__tmp136253
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131987_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132765_ __tmp136253))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132768_))
                    _specializer-id132768_))
                 (_$klass132773_
                  (let ((__tmp136254 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136254)))
                 (_$method-table132775_
                  (let ((__tmp136255 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136255)))
                 (_methods132777_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132079_)))
                 (_$methods132781_
                  (map (lambda (_id132779_)
                         (let ((__tmp136256 (gensym _id132779_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136256)))
                       _methods132777_))
                 (_g136257_
                  (for-each
                   (lambda (_g132782132785_ _g132783132787_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132079_
                        _g132782132785_
                        _g132783132787_)))
                   _methods132777_
                   _$methods132781_))
                 (_methods-bind132798_
                  (map (lambda (_g132790132793_ _g132791132795_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131989_
                            _$klass132773_
                            _$method-table132775_
                            _g132790132793_
                            _g132791132795_)))
                       _methods132777_
                       _$methods132781_))
                 (_slots132800_
                  (let () (declare (not safe)) (hash-keys _slot-refs132080_)))
                 (_$slots132804_
                  (map (lambda (_id132802_)
                         (let ((__tmp136258 (gensym _id132802_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136258)))
                       _slots132800_))
                 (_g136259_
                  (for-each
                   (lambda (_g132805132808_ _g132806132810_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132080_
                        _g132805132808_
                        _g132806132810_)))
                   _slots132800_
                   _$slots132804_))
                 (_slots-bind132821_
                  (map (lambda (_g132813132816_ _g132814132818_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131990_
                            _$klass132773_
                            _g132813132816_
                            _g132814132818_)))
                       _slots132800_
                       _$slots132804_))
                 (_specializer-clauses132913_
                  (map (lambda (_clause132823_)
                         (let* ((___stx134925134926_ _clause132823_)
                                (_g132826132841_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134925134926_)))))
                           (let ((___kont134927134928_
                                  (lambda (_L132869_ _L132870_ _L132871_)
                                    (let* ((_body132901_
                                            (map (lambda (_g132896132898_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132896132898_
                                                      'receiver:
                                                      _L132871_
                                                      'klass:
                                                      _$klass132773_
                                                      'methods:
                                                      _method-calls132079_
                                                      'slots:
                                                      _slot-refs132080_)))
                                                 _L132869_))
                                           (__tmp136260
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132871_ _L132870_))))
                                      (declare (not safe))
                                      (cons __tmp136260 _body132901_))))
                                 (___kont134929134930_
                                  (lambda () _clause132823_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134925134926_))
                                 (let ((_e132833132853_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134925134926_))))
                                   (let ((_tl132831132858_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132833132853_)))
                                         (_hd132832132856_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132833132853_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132832132856_))
                                         (let ((_e132836132861_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132832132856_))))
                                           (let ((_tl132834132866_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132836132861_)))
                                                 (_hd132835132864_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132836132861_))))
                                             (___kont134927134928_
                                              _tl132831132858_
                                              _tl132834132866_
                                              _hd132835132864_)))
                                         (___kont134929134930_))))
                                 (___kont134929134930_)))))
                       (let ((__tmp136261
                              (lambda (_g132905132908_ _g132906132910_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132905132908_ _g132906132910_)))))
                         (declare (not safe))
                         (foldr1 __tmp136261 '() _L132674_))))
                 (_specializer-impl132915_
                  (let ((__tmp136262
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132913_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp136262 _stx131987_)))
                 (_specializer-impl132917_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131991_
                     _$klass132773_
                     _$method-table132775_
                     _methods-bind132798_
                     _slots-bind132821_
                     _specializer-impl132915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp136264
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132060_)))
                                                          (__tmp136263
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132771_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp136264
                                                       '" => "
                                                       __tmp136263))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131992_
                                                       _L132060_
                                                       _specializer-id132771_
                                                       _specializer-impl132917_)))))
                                            _clause132632132671_))))))
                           (let ()
                             (declare (not safe))
                             (_loop132627132655_ _target132624132650_ '())))
                         (let ()
                           (declare (not safe))
                           (_g132618132637_ _g132619132640_))))))
               (let ()
                 (declare (not safe))
                 (_g132618132637_ _g132619132640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132618132637_
                                                  _g132619132640_))))))
                                   (declare (not safe))
                                   (_g132617132920_ _L132059_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L132059_))
                                     (let* ((_g132923132953_
                                             (lambda (_g132924132950_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132924132950_))))
                                            (_g132922133558_
                                             (lambda (_g132924132956_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132924132956_))
                                                   (let ((_e132930132958_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132924132956_))))
                                                     (let ((_hd132929132961_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132930132958_)))
                                                           (_tl132928132963_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132930132958_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132928132963_))
                                                           (let ((_e132933132966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132928132963_))))
                     (let ((_hd132932132969_
                            (let ()
                              (declare (not safe))
                              (##car _e132933132966_)))
                           (_tl132931132971_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132933132966_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132932132969_))
                           (let ((_e132936132974_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132932132969_))))
                             (let ((_hd132935132977_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132936132974_)))
                                   (_tl132934132979_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132936132974_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132935132977_))
                                   (let ((_e132939132982_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132935132977_))))
                                     (let ((_hd132938132985_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132939132982_)))
                                           (_tl132937132987_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132939132982_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132938132985_))
                                           (let ((_e132942132990_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132938132985_))))
                                             (let ((_hd132941132993_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132942132990_)))
                                                   (_tl132940132995_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132942132990_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132940132995_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132937132987_))
                                                       (let ((_e132945132998_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132937132987_))))
                 (let ((_hd132944133001_
                        (let () (declare (not safe)) (##car _e132945132998_)))
                       (_tl132943133003_
                        (let () (declare (not safe)) (##cdr _e132945132998_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132943133003_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132934132979_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132931132971_))
                               (let ((_e132948133006_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132931132971_))))
                                 (let ((_hd132947133009_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132948133006_)))
                                       (_tl132946133011_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132948133006_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132946133011_))
                                       ((lambda (_L133014_ _L133015_ _L133016_)
                                          (let* ((_g133039133057_
                                                  (lambda (_g133040133054_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133040133054_))))
                                                 (_g133038133108_
                                                  (lambda (_g133040133060_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133040133060_))
                                                        (let ((_e133046133062_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133040133060_))))
                  (let ((_hd133045133065_
                         (let () (declare (not safe)) (##car _e133046133062_)))
                        (_tl133044133067_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133046133062_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl133044133067_))
                        (let ((_e133049133070_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl133044133067_))))
                          (let ((_hd133048133073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e133049133070_)))
                                (_tl133047133075_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e133049133070_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd133048133073_))
                                (let ((_e133052133078_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd133048133073_))))
                                  (let ((_hd133051133081_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133052133078_)))
                                        (_tl133050133083_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133052133078_))))
                                    ((lambda (_L133086_ _L133087_ _L133088_)
                                       (for-each
                                        (lambda (_g133103133105_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g133103133105_
                                             'receiver:
                                             _L133088_
                                             'methods:
                                             _method-calls132079_
                                             'slots:
                                             _slot-refs132080_)))
                                        _L133086_))
                                     _tl133047133075_
                                     _tl133050133083_
                                     _hd133051133081_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133039133057_ _g133040133060_)))))
                        (let ()
                          (declare (not safe))
                          (_g133039133057_ _g133040133060_)))))
                (let ()
                  (declare (not safe))
                  (_g133039133057_ _g133040133060_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133038133108_ _L133015_))
                                          (let* ((_g133111133130_
                                                  (lambda (_g133112133127_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133112133127_))))
                                                 (_g133110133249_
                                                  (lambda (_g133112133133_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133112133133_))
                                                        (let ((_e133116133135_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133112133133_))))
                  (let ((_hd133115133138_
                         (let () (declare (not safe)) (##car _e133116133135_)))
                        (_tl133114133140_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133116133135_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133114133140_))
                        (let ((_g136219_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl133114133140_
                                  '0))))
                          (begin
                            (let ((_g136220_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g136219_)
                                         (##vector-length _g136219_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g136220_ 2)))
                                  (error "Context expects 2 values"
                                         _g136220_)))
                            (let ((_target133117133143_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g136219_ 0)))
                                  (_tl133119133145_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g136219_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl133119133145_))
                                  (letrec ((_loop133120133148_
                                            (lambda (_hd133118133151_
                                                     _clause133124133153_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd133118133151_))
                                                  (let ((_e133121133156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd133118133151_))))
                                                    (let ((_lp-hd133122133159_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133121133156_)))
                                                          (_lp-tl133123133161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133121133156_))))
                                                      (let ((__tmp136222
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd133122133159_ _clause133124133153_))))
                (declare (not safe))
                (_loop133120133148_ _lp-tl133123133161_ __tmp136222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause133125133164_
                                                         (reverse _clause133124133153_)))
                                                    ((lambda (_L133167_)
                                                       (for-each
                                                        (lambda (_clause133180_)
                                                          (let* ((_g133182133197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g133183133194_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133183133194_))))
                         (_g133181133239_
                          (lambda (_g133183133200_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133183133200_))
                                (let ((_e133189133202_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133183133200_))))
                                  (let ((_hd133188133205_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133189133202_)))
                                        (_tl133187133207_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133189133202_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133188133205_))
                                        (let ((_e133192133210_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133188133205_))))
                                          (let ((_hd133191133213_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133192133210_)))
                                                (_tl133190133215_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133192133210_))))
                                            ((lambda (_L133218_
                                                      _L133219_
                                                      _L133220_)
                                               (for-each
                                                (lambda (_g133234133236_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g133234133236_
                                                     'receiver:
                                                     _L133220_
                                                     'methods:
                                                     _method-calls132079_
                                                     'slots:
                                                     _slot-refs132080_)))
                                                _L133218_))
                                             _tl133187133207_
                                             _tl133190133215_
                                             _hd133191133213_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133182133197_ _g133183133200_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133182133197_ _g133183133200_))))))
                    (declare (not safe))
                    (_g133181133239_ _clause133180_)))
                (let ((__tmp136221
                       (lambda (_g133241133244_ _g133242133246_)
                         (let ()
                           (declare (not safe))
                           (cons _g133241133244_ _g133242133246_)))))
                  (declare (not safe))
                  (foldr1 __tmp136221 '() _L133167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause133125133164_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop133120133148_
                                       _target133117133143_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g133111133130_ _g133112133133_))))))
                        (let ()
                          (declare (not safe))
                          (_g133111133130_ _g133112133133_)))))
                (let ()
                  (declare (not safe))
                  (_g133111133130_ _g133112133133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133110133249_ _L133014_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?132083_))
                                              _stx131987_
                                              (let* ((_specializer-id133258_
                                                      (let* ((_id133252_
                                                              (let ((__tmp136223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L132060_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp136223 '"::specialize")))
                     (_specializer-id133255_
                      (let ((__tmp136224
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131987_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id133252_ __tmp136224))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id133255_))
                _specializer-id133255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass133260_
                                                      (let ((__tmp136225
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp136225)))
                                                     (_$method-table133262_
                                                      (let ((__tmp136226
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp136226)))
                                                     (_methods133264_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls132079_)))
                                                     (_$methods133268_
                                                      (map (lambda (_id133266_)
                                                             (let ((__tmp136227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id133266_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp136227)))
                   _methods133264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g136228_
                                                      (for-each
                                                       (lambda (_g133269133272_
                                                                _g133270133274_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls132079_
                                                            _g133269133272_
                                                            _g133270133274_)))
                                                       _methods133264_
                                                       _$methods133268_))
                                                     (_methods-bind133285_
                                                      (map (lambda (_g133277133280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g133278133282_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131989_
                        _$klass133260_
                        _$method-table133262_
                        _g133277133280_
                        _g133278133282_)))
                   _methods133264_
                   _$methods133268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots133287_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs132080_)))
                                                     (_$slots133291_
                                                      (map (lambda (_id133289_)
                                                             (let ((__tmp136229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id133289_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp136229)))
                   _slots133287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g136230_
                                                      (for-each
                                                       (lambda (_g133292133295_
                                                                _g133293133297_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs132080_
                                                            _g133292133295_
                                                            _g133293133297_)))
                                                       _slots133287_
                                                       _$slots133291_))
                                                     (_slots-bind133308_
                                                      (map (lambda (_g133300133303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g133301133305_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131990_
                        _$klass133260_
                        _g133300133303_
                        _g133301133305_)))
                   _slots133287_
                   _$slots133291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr133394_
                                                      (let* ((_g133310133328_
                                                              (lambda (_g133311133325_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133311133325_))))
                     (_g133309133391_
                      (lambda (_g133311133331_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133311133331_))
                            (let ((_e133317133333_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133311133331_))))
                              (let ((_hd133316133336_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133317133333_)))
                                    (_tl133315133338_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133317133333_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133315133338_))
                                    (let ((_e133320133341_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133315133338_))))
                                      (let ((_hd133319133344_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133320133341_)))
                                            (_tl133318133346_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133320133341_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133319133344_))
                                            (let ((_e133323133349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133319133344_))))
                                              (let ((_hd133322133352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133323133349_)))
                                                    (_tl133321133354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133323133349_))))
                                                ((lambda (_L133357_
                                                          _L133358_
                                                          _L133359_)
                                                   (let* ((_body133389_
                                                           (map (lambda (_g133384133386_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g133384133386_
                             'receiver:
                             _L133359_
                             'klass:
                             _$klass133260_
                             'methods:
                             _method-calls132079_
                             'slots:
                             _slot-refs132080_)))
                        _L133357_))
                  (__tmp136231
                   (let ((__tmp136232
                          (let ((__tmp136233
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133359_ _L133358_))))
                            (declare (not safe))
                            (cons __tmp136233 _body133389_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp136232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp136231
                                                      _L133015_)))
                                                 _tl133318133346_
                                                 _tl133321133354_
                                                 _hd133322133352_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133310133328_
                                               _g133311133331_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133310133328_ _g133311133331_)))))
                            (let ()
                              (declare (not safe))
                              (_g133310133328_ _g133311133331_))))))
                (declare (not safe))
                (_g133309133391_ _L133015_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr133551_
                                                      (let* ((_g133396133415_
                                                              (lambda (_g133397133412_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133397133412_))))
                     (_g133395133548_
                      (lambda (_g133397133418_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133397133418_))
                            (let ((_e133401133420_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133397133418_))))
                              (let ((_hd133400133423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133401133420_)))
                                    (_tl133399133425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133401133420_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl133399133425_))
                                    (let ((_g136234_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl133399133425_
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
                                        (let ((_target133402133428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136234_ 0)))
                                              (_tl133404133430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136234_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133404133430_))
                                              (letrec ((_loop133405133433_
                                                        (lambda (_hd133403133436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause133409133438_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133403133436_))
                      (let ((_e133406133441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133403133436_))))
                        (let ((_lp-hd133407133444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133406133441_)))
                              (_lp-tl133408133446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133406133441_))))
                          (let ((__tmp136239
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133407133444_
                                         _clause133409133438_))))
                            (declare (not safe))
                            (_loop133405133433_
                             _lp-tl133408133446_
                             __tmp136239))))
                      (let ((_clause133410133449_
                             (reverse _clause133409133438_)))
                        ((lambda (_L133452_)
                           (let* ((_clauses133546_
                                   (map (lambda (_clause133466_)
                                          (let* ((___stx134945134946_
                                                  _clause133466_)
                                                 (_g133469133484_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134945134946_)))))
                                            (let ((___kont134947134948_
                                                   (lambda (_L133512_
                                                            _L133513_
                                                            _L133514_)
                                                     (let* ((_body133534_
                                                             (map (lambda (_g133529133531_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g133529133531_
                               'receiver:
                               _L133514_
                               'klass:
                               _$klass133260_
                               'methods:
                               _method-calls132079_
                               'slots:
                               _slot-refs132080_)))
                          _L133512_))
                    (__tmp136236
                     (let () (declare (not safe)) (cons _L133514_ _L133513_))))
               (declare (not safe))
               (cons __tmp136236 _body133534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134949134950_
                                                   (lambda () _clause133466_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134945134946_))
                                                  (let ((_e133476133496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134945134946_))))
                                                    (let ((_tl133474133501_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133476133496_)))
                                                          (_hd133475133499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133476133496_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd133475133499_))
                                                          (let ((_e133479133504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd133475133499_))))
                    (let ((_tl133477133509_
                           (let ()
                             (declare (not safe))
                             (##cdr _e133479133504_)))
                          (_hd133478133507_
                           (let ()
                             (declare (not safe))
                             (##car _e133479133504_))))
                      (___kont134947134948_
                       _tl133474133501_
                       _tl133477133509_
                       _hd133478133507_)))
                  (___kont134949134950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134949134950_)))))
                                        (let ((__tmp136237
                                               (lambda (_g133538133541_
                                                        _g133539133543_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g133538133541_
                                                         _g133539133543_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp136237 '() _L133452_))))
                                  (__tmp136238
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses133546_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp136238 _L133014_)))
                         _clause133410133449_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133405133433_
                                                   _target133402133428_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133396133415_
                                                 _g133397133418_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133396133415_ _g133397133418_)))))
                            (let ()
                              (declare (not safe))
                              (_g133396133415_ _g133397133418_))))))
                (declare (not safe))
                (_g133395133548_ _L133014_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133553_
                                                      (let ((__tmp136240
                                                             (let ((__tmp136241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp136243
                                   (let ((__tmp136244
                                          (let ((__tmp136246
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L133016_ '())))
                                                (__tmp136245
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr133394_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp136246 __tmp136245))))
                                     (declare (not safe))
                                     (cons __tmp136244 '())))
                                  (__tmp136242
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr133551_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp136243 __tmp136242))))
                       (declare (not safe))
                       (cons '%#let-values __tmp136241))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp136240 _stx131987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133555_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131991_
                                                         _$klass133260_
                                                         _$method-table133262_
                                                         _methods-bind133285_
                                                         _slots-bind133308_
                                                         _specializer-impl133553_))))
                                                (let ((__tmp136248
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L132060_)))
                                                      (__tmp136247
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id133258_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp136248
                                                   '" => "
                                                   __tmp136247))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131992_
                                                   _L132060_
                                                   _specializer-id133258_
                                                   _specializer-impl133555_)))))
                                        _hd132947133009_
                                        _hd132944133001_
                                        _hd132941132993_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132923132953_ _g132924132956_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132923132953_ _g132924132956_)))
                           (let ()
                             (declare (not safe))
                             (_g132923132953_ _g132924132956_)))
                       (let ()
                         (declare (not safe))
                         (_g132923132953_ _g132924132956_)))))
               (let () (declare (not safe)) (_g132923132953_ _g132924132956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132923132953_
                                                      _g132924132956_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132923132953_
                                              _g132924132956_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132923132953_ _g132924132956_)))))
                           (let ()
                             (declare (not safe))
                             (_g132923132953_ _g132924132956_)))))
                   (let ()
                     (declare (not safe))
                     (_g132923132953_ _g132924132956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132923132953_
                                                      _g132924132956_))))))
                                       (declare (not safe))
                                       (_g132922133558_ _L132059_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L132059_))
                                         (let* ((_g133561133614_
                                                 (lambda (_g133562133611_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133562133611_))))
                                                (_g133560134745_
                                                 (lambda (_g133562133617_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133562133617_))
                                                       (let ((_e133570133619_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133562133617_))))
                 (let ((_hd133569133622_
                        (let () (declare (not safe)) (##car _e133570133619_)))
                       (_tl133568133624_
                        (let () (declare (not safe)) (##cdr _e133570133619_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd133569133622_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd133569133622_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133568133624_))
                               (let ((_e133573133627_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133568133624_))))
                                 (let ((_hd133572133630_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133573133627_)))
                                       (_tl133571133632_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133573133627_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133572133630_))
                                       (let ((_e133576133635_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133572133630_))))
                                         (let ((_hd133575133638_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133576133635_)))
                                               (_tl133574133640_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133576133635_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133575133638_))
                                               (let ((_e133579133643_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133575133638_))))
                                                 (let ((_hd133578133646_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133579133643_)))
                                                       (_tl133577133648_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133579133643_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd133578133646_))
                                                       (let ((_e133582133651_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd133578133646_))))
                 (let ((_hd133581133654_
                        (let () (declare (not safe)) (##car _e133582133651_)))
                       (_tl133580133656_
                        (let () (declare (not safe)) (##cdr _e133582133651_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133580133656_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl133577133648_))
                           (let ((_e133585133659_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl133577133648_))))
                             (let ((_hd133584133662_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133585133659_)))
                                   (_tl133583133664_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133585133659_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133584133662_))
                                   (let ((_e133588133667_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133584133662_))))
                                     (let ((_hd133587133670_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133588133667_)))
                                           (_tl133586133672_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133588133667_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd133587133670_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd133587133670_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl133586133672_))
                                                   (let ((_e133591133675_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl133586133672_))))
                                                     (let ((_hd133590133678_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133591133675_)))
                                                           (_tl133589133680_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133591133675_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd133590133678_))
                                                           (let ((_e133594133683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd133590133678_))))
                     (let ((_hd133593133686_
                            (let ()
                              (declare (not safe))
                              (##car _e133594133683_)))
                           (_tl133592133688_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133594133683_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133593133686_))
                           (let ((_e133597133691_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133593133686_))))
                             (let ((_hd133596133694_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133597133691_)))
                                   (_tl133595133696_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133597133691_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133596133694_))
                                   (let ((_e133600133699_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133596133694_))))
                                     (let ((_hd133599133702_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133600133699_)))
                                           (_tl133598133704_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133600133699_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133598133704_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl133595133696_))
                                               (let ((_e133603133707_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl133595133696_))))
                                                 (let ((_hd133602133710_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133603133707_)))
                                                       (_tl133601133712_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133603133707_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133601133712_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl133592133688_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl133589133680_))
                       (let ((_e133606133715_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133589133680_))))
                         (let ((_hd133605133718_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133606133715_)))
                               (_tl133604133720_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133606133715_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133604133720_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl133583133664_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133574133640_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl133571133632_))
                                           (let ((_e133609133723_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl133571133632_))))
                                             (let ((_hd133608133726_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133609133723_)))
                                                   (_tl133607133728_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133609133723_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133607133728_))
                                                   ((lambda (_L133731_
                                                             _L133732_
                                                             _L133733_
                                                             _L133734_
                                                             _L133735_)
                                                      (let* ((_g133774133836_
                                                              (lambda (_g133775133833_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133775133833_))))
                     (_g133773134742_
                      (lambda (_g133775133839_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133775133839_))
                            (let ((_e133783133841_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133775133839_))))
                              (let ((_hd133782133844_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133783133841_)))
                                    (_tl133781133846_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133783133841_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133782133844_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133782133844_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133781133846_))
                                            (let ((_e133786133849_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133781133846_))))
                                              (let ((_hd133785133852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133786133849_)))
                                                    (_tl133784133854_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133786133849_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133784133854_))
                                                    (let ((_e133789133857_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133784133854_))))
                                                      (let ((_hd133788133860_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133789133857_)))
                    (_tl133787133862_
                     (let () (declare (not safe)) (##cdr _e133789133857_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133788133860_))
                    (let ((_e133792133865_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133788133860_))))
                      (let ((_hd133791133868_
                             (let ()
                               (declare (not safe))
                               (##car _e133792133865_)))
                            (_tl133790133870_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133792133865_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133791133868_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133791133868_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133790133870_))
                                    (let ((_e133795133873_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133790133870_))))
                                      (let ((_hd133794133876_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133795133873_)))
                                            (_tl133793133878_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133795133873_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133794133876_))
                                            (let ((_e133798133881_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133794133876_))))
                                              (let ((_hd133797133884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133798133881_)))
                                                    (_tl133796133886_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133798133881_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133797133884_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133797133884_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133796133886_))
                                                            (let ((_e133801133889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133796133886_))))
                      (let ((_hd133800133892_
                             (let ()
                               (declare (not safe))
                               (##car _e133801133889_)))
                            (_tl133799133894_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133801133889_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133799133894_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133793133878_))
                                (let ((_e133804133897_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133793133878_))))
                                  (let ((_hd133803133900_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133804133897_)))
                                        (_tl133802133902_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133804133897_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133803133900_))
                                        (let ((_e133807133905_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133803133900_))))
                                          (let ((_hd133806133908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133807133905_)))
                                                (_tl133805133910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133807133905_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133806133908_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133806133908_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133805133910_))
                                                        (let ((_e133810133913_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133805133910_))))
                  (let ((_hd133809133916_
                         (let () (declare (not safe)) (##car _e133810133913_)))
                        (_tl133808133918_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133810133913_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133808133918_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133802133902_))
                            (let ((_e133813133921_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133802133902_))))
                              (let ((_hd133812133924_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133813133921_)))
                                    (_tl133811133926_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133813133921_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133812133924_))
                                    (let ((_e133816133929_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133812133924_))))
                                      (let ((_hd133815133932_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133816133929_)))
                                            (_tl133814133934_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133816133929_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133815133932_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133815133932_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133814133934_))
                                                    (let ((_e133819133937_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133814133934_))))
                                                      (let ((_hd133818133940_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133819133937_)))
                    (_tl133817133942_
                     (let () (declare (not safe)) (##cdr _e133819133937_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133817133942_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133811133926_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133811133926_))
                                  '1)
                            (let ((_g136145_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133811133926_
                                      '1))))
                              (begin
                                (let ((_g136146_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g136145_)
                                             (##vector-length _g136145_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g136146_ 2)))
                                      (error "Context expects 2 values"
                                             _g136146_)))
                                (let ((_target133820133945_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136145_ 0)))
                                      (_tl133822133947_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136145_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133822133947_))
                                      (let ((_e133831133950_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133822133947_))))
                                        (let ((_hd133830133953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133831133950_)))
                                              (_tl133829133955_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133831133950_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133829133955_))
                                              (letrec ((_loop133823133958_
                                                        (lambda (_hd133821133961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133827133963_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133821133961_))
                      (let ((_e133824133966_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133821133961_))))
                        (let ((_lp-hd133825133969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133824133966_)))
                              (_lp-tl133826133971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133824133966_))))
                          (let ((__tmp136218
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133825133969_
                                         _kw-ref133827133963_))))
                            (declare (not safe))
                            (_loop133823133958_
                             _lp-tl133826133971_
                             __tmp136218))))
                      (let ((_kw-ref133828133974_
                             (reverse _kw-ref133827133963_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133787133862_))
                            ((lambda (_L133977_
                                      _L133978_
                                      _L133979_
                                      _L133980_
                                      _L133981_)
                               (let* ((_kw-count134032_
                                       (length (let ((__tmp136147
                                                      (lambda (_g134024134027_
                                                               _g134025134029_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g134024134027_
                                                                _g134025134029_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp136147
                                                         '()
                                                         _L133978_))))
                                      (_self-index134034_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count134032_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133733_))
                                     (let* ((_g134037134051_
                                             (lambda (_g134038134048_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134038134048_))))
                                            (_g134036134164_
                                             (lambda (_g134038134054_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134038134054_))
                                                   (let ((_e134043134056_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134038134054_))))
                                                     (let ((_hd134042134059_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134043134056_)))
                                                           (_tl134041134061_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134043134056_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134041134061_))
                                                           (let ((_e134046134064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134041134061_))))
                     (let ((_hd134045134067_
                            (let ()
                              (declare (not safe))
                              (##car _e134046134064_)))
                           (_tl134044134069_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134046134064_))))
                       ((lambda (_L134072_ _L134073_)
                          (let ((_self134089_
                                 (list-ref _L134073_ _self-index134034_)))
                            (for-each
                             (lambda (_g134090134092_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g134090134092_
                                  'receiver:
                                  _self134089_
                                  'methods:
                                  _method-calls132079_
                                  'slots:
                                  _slot-refs132080_)))
                             _L134072_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?132083_))
                                _stx131987_
                                (let* ((_specializer-id134101_
                                        (let* ((_id134095_
                                                (let ((__tmp136191
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L132060_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp136191
                                                   '"::specialize")))
                                               (_specializer-id134098_
                                                (let ((__tmp136192
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131987_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id134095_
                                                   __tmp136192))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id134098_))
                                          _specializer-id134098_))
                                       (_$klass134103_
                                        (let ((__tmp136193 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp136193)))
                                       (_$method-table134105_
                                        (let ((__tmp136194
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp136194)))
                                       (_methods134107_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls132079_)))
                                       (_$methods134111_
                                        (map (lambda (_id134109_)
                                               (let ((__tmp136195
                                                      (gensym _id134109_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp136195)))
                                             _methods134107_))
                                       (_g136196_
                                        (for-each
                                         (lambda (_g134112134115_
                                                  _g134113134117_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls132079_
                                              _g134112134115_
                                              _g134113134117_)))
                                         _methods134107_
                                         _$methods134111_))
                                       (_methods-bind134128_
                                        (map (lambda (_g134120134123_
                                                      _g134121134125_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131989_
                                                  _$klass134103_
                                                  _$method-table134105_
                                                  _g134120134123_
                                                  _g134121134125_)))
                                             _methods134107_
                                             _$methods134111_))
                                       (_slots134130_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs132080_)))
                                       (_$slots134134_
                                        (map (lambda (_id134132_)
                                               (let ((__tmp136197
                                                      (gensym _id134132_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp136197)))
                                             _slots134130_))
                                       (_g136198_
                                        (for-each
                                         (lambda (_g134135134138_
                                                  _g134136134140_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs132080_
                                              _g134135134138_
                                              _g134136134140_)))
                                         _slots134130_
                                         _$slots134134_))
                                       (_slots-bind134151_
                                        (map (lambda (_g134143134146_
                                                      _g134144134148_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131990_
                                                  _$klass134103_
                                                  _g134143134146_
                                                  _g134144134148_)))
                                             _slots134130_
                                             _$slots134134_))
                                       (_specializer-impl134159_
                                        (let* ((_specializer-body134157_
                                                (map (lambda (_g134152134154_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g134152134154_
                                                          'receiver:
                                                          _self134089_
                                                          'klass:
                                                          _$klass134103_
                                                          'methods:
                                                          _method-calls132079_
                                                          'slots:
                                                          _slot-refs132080_)))
                                                     _L134072_))
                                               (__tmp136199
                                                (let ((__tmp136200
                                                       (let ((__tmp136202
                                                              (let ((__tmp136203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136215
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133735_ '())))
                                   (__tmp136204
                                    (let ((__tmp136205
                                           (let ((__tmp136206
                                                  (let ((__tmp136208
                                                         (let ((__tmp136209
                                                                (let ((__tmp136214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133734_ '())))
                              (__tmp136210
                               (let ((__tmp136211
                                      (let ((__tmp136212
                                             (let ((__tmp136213
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L134073_
                                                            _specializer-body134157_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp136213))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp136212
                                         _L133733_))))
                                 (declare (not safe))
                                 (cons __tmp136211 '()))))
                          (declare (not safe))
                          (cons __tmp136214 __tmp136210))))
                   (declare (not safe))
                   (cons __tmp136209 '())))
                (__tmp136207
                 (let () (declare (not safe)) (cons _L133732_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136208
                                                          __tmp136207))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp136206))))
                                      (declare (not safe))
                                      (cons __tmp136205 '()))))
                               (declare (not safe))
                               (cons __tmp136215 __tmp136204))))
                        (declare (not safe))
                        (cons __tmp136203 '())))
                     (__tmp136201
                      (let () (declare (not safe)) (cons _L133731_ '()))))
                 (declare (not safe))
                 (cons __tmp136202 __tmp136201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp136200))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp136199
                                           _stx131987_)))
                                       (_specializer-impl134161_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131991_
                                           _$klass134103_
                                           _$method-table134105_
                                           _methods-bind134128_
                                           _slots-bind134151_
                                           _specializer-impl134159_))))
                                  (let ((__tmp136217
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L132060_)))
                                        (__tmp136216
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id134101_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp136217
                                     '" => "
                                     __tmp136216))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131992_
                                     _L132060_
                                     _specializer-id134101_
                                     _specializer-impl134161_))))))
                        _tl134044134069_
                        _hd134045134067_)))
                   (let ()
                     (declare (not safe))
                     (_g134037134051_ _g134038134054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134037134051_
                                                      _g134038134054_))))))
                                       (declare (not safe))
                                       (_g134036134164_ _L133733_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133733_))
                                         (let* ((_g134167134197_
                                                 (lambda (_g134168134194_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134168134194_))))
                                                (_g134166134739_
                                                 (lambda (_g134168134200_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134168134200_))
                                                       (let ((_e134174134202_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134168134200_))))
                 (let ((_hd134173134205_
                        (let () (declare (not safe)) (##car _e134174134202_)))
                       (_tl134172134207_
                        (let () (declare (not safe)) (##cdr _e134174134202_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl134172134207_))
                       (let ((_e134177134210_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134172134207_))))
                         (let ((_hd134176134213_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134177134210_)))
                               (_tl134175134215_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134177134210_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd134176134213_))
                               (let ((_e134180134218_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd134176134213_))))
                                 (let ((_hd134179134221_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134180134218_)))
                                       (_tl134178134223_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134180134218_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134179134221_))
                                       (let ((_e134183134226_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134179134221_))))
                                         (let ((_hd134182134229_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134183134226_)))
                                               (_tl134181134231_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134183134226_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134182134229_))
                                               (let ((_e134186134234_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134182134229_))))
                                                 (let ((_hd134185134237_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134186134234_)))
                                                       (_tl134184134239_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134186134234_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134184134239_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134181134231_))
                                                           (let ((_e134189134242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134181134231_))))
                     (let ((_hd134188134245_
                            (let ()
                              (declare (not safe))
                              (##car _e134189134242_)))
                           (_tl134187134247_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134189134242_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134187134247_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134178134223_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl134175134215_))
                                   (let ((_e134192134250_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl134175134215_))))
                                     (let ((_hd134191134253_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134192134250_)))
                                           (_tl134190134255_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134192134250_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134190134255_))
                                           ((lambda (_L134258_
                                                     _L134259_
                                                     _L134260_)
                                              (let* ((_g134283134297_
                                                      (lambda (_g134284134294_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134284134294_))))
                                                     (_g134282134338_
                                                      (lambda (_g134284134300_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134284134300_))
                                                            (let ((_e134289134302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134284134300_))))
                      (let ((_hd134288134305_
                             (let ()
                               (declare (not safe))
                               (##car _e134289134302_)))
                            (_tl134287134307_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134289134302_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl134287134307_))
                            (let ((_e134292134310_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl134287134307_))))
                              (let ((_hd134291134313_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134292134310_)))
                                    (_tl134290134315_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134292134310_))))
                                ((lambda (_L134318_ _L134319_)
                                   (let ((_self134332_
                                          (list-ref
                                           _L134319_
                                           _self-index134034_)))
                                     (for-each
                                      (lambda (_g134333134335_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g134333134335_
                                           'receiver:
                                           _self134332_
                                           'methods:
                                           _method-calls132079_
                                           'slots:
                                           _slot-refs132080_)))
                                      _L134318_)))
                                 _tl134290134315_
                                 _hd134291134313_)))
                            (let ()
                              (declare (not safe))
                              (_g134283134297_ _g134284134300_)))))
                    (let ()
                      (declare (not safe))
                      (_g134283134297_ _g134284134300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134282134338_ _L134259_))
                                              (let* ((_g134341134360_
                                                      (lambda (_g134342134357_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134342134357_))))
                                                     (_g134340134465_
                                                      (lambda (_g134342134363_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134342134363_))
                                                            (let ((_e134346134365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134342134363_))))
                      (let ((_hd134345134368_
                             (let ()
                               (declare (not safe))
                               (##car _e134346134365_)))
                            (_tl134344134370_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134346134365_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl134344134370_))
                            (let ((_g136148_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl134344134370_
                                      '0))))
                              (begin
                                (let ((_g136149_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g136148_)
                                             (##vector-length _g136148_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g136149_ 2)))
                                      (error "Context expects 2 values"
                                             _g136149_)))
                                (let ((_target134347134373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136148_ 0)))
                                      (_tl134349134375_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136148_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl134349134375_))
                                      (letrec ((_loop134350134378_
                                                (lambda (_hd134348134381_
                                                         _clause134354134383_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd134348134381_))
                                                      (let ((_e134351134386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd134348134381_))))
                (let ((_lp-hd134352134389_
                       (let () (declare (not safe)) (##car _e134351134386_)))
                      (_lp-tl134353134391_
                       (let () (declare (not safe)) (##cdr _e134351134386_))))
                  (let ((__tmp136151
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd134352134389_ _clause134354134383_))))
                    (declare (not safe))
                    (_loop134350134378_ _lp-tl134353134391_ __tmp136151))))
              (let ((_clause134355134394_ (reverse _clause134354134383_)))
                ((lambda (_L134397_)
                   (for-each
                    (lambda (_clause134410_)
                      (let* ((_g134412134423_
                              (lambda (_g134413134420_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g134413134420_))))
                             (_g134411134455_
                              (lambda (_g134413134426_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g134413134426_))
                                    (let ((_e134418134428_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g134413134426_))))
                                      (let ((_hd134417134431_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134418134428_)))
                                            (_tl134416134433_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134418134428_))))
                                        ((lambda (_L134436_ _L134437_)
                                           (let ((_self134449_
                                                  (list-ref
                                                   _L134437_
                                                   _self-index134034_)))
                                             (for-each
                                              (lambda (_g134450134452_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g134450134452_
                                                   'receiver:
                                                   _self134449_
                                                   'methods:
                                                   _method-calls132079_
                                                   'slots:
                                                   _slot-refs132080_)))
                                              _L134436_)))
                                         _tl134416134433_
                                         _hd134417134431_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134412134423_ _g134413134426_))))))
                        (declare (not safe))
                        (_g134411134455_ _clause134410_)))
                    (let ((__tmp136150
                           (lambda (_g134457134460_ _g134458134462_)
                             (let ()
                               (declare (not safe))
                               (cons _g134457134460_ _g134458134462_)))))
                      (declare (not safe))
                      (foldr1 __tmp136150 '() _L134397_))))
                 _clause134355134394_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop134350134378_
                                           _target134347134373_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g134341134360_ _g134342134363_))))))
                            (let ()
                              (declare (not safe))
                              (_g134341134360_ _g134342134363_)))))
                    (let ()
                      (declare (not safe))
                      (_g134341134360_ _g134342134363_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134340134465_ _L134258_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132083_))
                                                  _stx131987_
                                                  (let* ((_specializer-id134474_
                                                          (let* ((_id134468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136152
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132060_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp136152 '"::specialize")))
                         (_specializer-id134471_
                          (let ((__tmp136153
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131987_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id134468_ __tmp136153))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id134471_))
                    _specializer-id134471_))
                 (_$klass134476_
                  (let ((__tmp136154 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136154)))
                 (_$method-table134478_
                  (let ((__tmp136155 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136155)))
                 (_methods134480_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132079_)))
                 (_$methods134484_
                  (map (lambda (_id134482_)
                         (let ((__tmp136156 (gensym _id134482_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136156)))
                       _methods134480_))
                 (_g136157_
                  (for-each
                   (lambda (_g134485134488_ _g134486134490_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132079_
                        _g134485134488_
                        _g134486134490_)))
                   _methods134480_
                   _$methods134484_))
                 (_methods-bind134501_
                  (map (lambda (_g134493134496_ _g134494134498_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131989_
                            _$klass134476_
                            _$method-table134478_
                            _g134493134496_
                            _g134494134498_)))
                       _methods134480_
                       _$methods134484_))
                 (_slots134503_
                  (let () (declare (not safe)) (hash-keys _slot-refs132080_)))
                 (_$slots134507_
                  (map (lambda (_id134505_)
                         (let ((__tmp136158 (gensym _id134505_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136158)))
                       _slots134503_))
                 (_g136159_
                  (for-each
                   (lambda (_g134508134511_ _g134509134513_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132080_
                        _g134508134511_
                        _g134509134513_)))
                   _slots134503_
                   _$slots134507_))
                 (_slots-bind134524_
                  (map (lambda (_g134516134519_ _g134517134521_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131990_
                            _$klass134476_
                            _g134516134519_
                            _g134517134521_)))
                       _slots134503_
                       _$slots134507_))
                 (_specializer-lambda-expr134597_
                  (let* ((_g134526134540_
                          (lambda (_g134527134537_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134527134537_))))
                         (_g134525134594_
                          (lambda (_g134527134543_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134527134543_))
                                (let ((_e134532134545_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134527134543_))))
                                  (let ((_hd134531134548_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134532134545_)))
                                        (_tl134530134550_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134532134545_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl134530134550_))
                                        (let ((_e134535134553_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl134530134550_))))
                                          (let ((_hd134534134556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134535134553_)))
                                                (_tl134533134558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134535134553_))))
                                            ((lambda (_L134561_ _L134562_)
                                               (let* ((_self134585_
                                                       (list-ref
                                                        _L134562_
                                                        _self-index134034_))
                                                      (_body134591_
                                                       (map (lambda (_g134586134588_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g134586134588_
                         'receiver:
                         _self134585_
                         'klass:
                         _$klass134476_
                         'methods:
                         _method-calls132079_
                         'slots:
                         _slot-refs132080_)))
                    _L134561_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp136160
                                                        (let ((__tmp136161
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L134562_ _body134591_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp136161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp136160
                                                    _L134259_))))
                                             _tl134533134558_
                                             _hd134534134556_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134526134540_ _g134527134543_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134526134540_ _g134527134543_))))))
                    (declare (not safe))
                    (_g134525134594_ _L134259_)))
                 (_specializer-case-lambda-expr134732_
                  (let* ((_g134599134618_
                          (lambda (_g134600134615_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134600134615_))))
                         (_g134598134729_
                          (lambda (_g134600134621_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134600134621_))
                                (let ((_e134604134623_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134600134621_))))
                                  (let ((_hd134603134626_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134604134623_)))
                                        (_tl134602134628_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134604134623_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl134602134628_))
                                        (let ((_g136162_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl134602134628_
                                                  '0))))
                                          (begin
                                            (let ((_g136163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g136162_)
                                                         (##vector-length
                                                          _g136162_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g136163_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g136163_)))
                                            (let ((_target134605134631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g136162_
                                                      0)))
                                                  (_tl134607134633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g136162_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl134607134633_))
                                                  (letrec ((_loop134608134636_
                                                            (lambda (_hd134606134639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause134612134641_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd134606134639_))
                          (let ((_e134609134644_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd134606134639_))))
                            (let ((_lp-hd134610134647_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e134609134644_)))
                                  (_lp-tl134611134649_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e134609134644_))))
                              (let ((__tmp136166
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd134610134647_
                                             _clause134612134641_))))
                                (declare (not safe))
                                (_loop134608134636_
                                 _lp-tl134611134649_
                                 __tmp136166))))
                          (let ((_clause134613134652_
                                 (reverse _clause134612134641_)))
                            ((lambda (_L134655_)
                               (let* ((_clauses134727_
                                       (map (lambda (_clause134669_)
                                              (let* ((_g134671134682_
                                                      (lambda (_g134672134679_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134672134679_))))
                                                     (_g134670134717_
                                                      (lambda (_g134672134685_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134672134685_))
                                                            (let ((_e134677134687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134672134685_))))
                      (let ((_hd134676134690_
                             (let ()
                               (declare (not safe))
                               (##car _e134677134687_)))
                            (_tl134675134692_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134677134687_))))
                        ((lambda (_L134695_ _L134696_)
                           (let* ((_self134708_
                                   (list-ref _L134696_ _self-index134034_))
                                  (_body134714_
                                   (map (lambda (_g134709134711_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134709134711_
                                             'receiver:
                                             _self134708_
                                             'klass:
                                             _$klass134476_
                                             'methods:
                                             _method-calls132079_
                                             'slots:
                                             _slot-refs132080_)))
                                        _L134695_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134696_ _body134714_))))
                         _tl134675134692_
                         _hd134676134690_)))
                    (let ()
                      (declare (not safe))
                      (_g134671134682_ _g134672134685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134670134717_
                                                 _clause134669_)))
                                            (let ((__tmp136164
                                                   (lambda (_g134719134722_
                                                            _g134720134724_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134719134722_
                                                             _g134720134724_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp136164
                                                      '()
                                                      _L134655_))))
                                      (__tmp136165
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134727_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp136165
                                  _L134258_)))
                             _clause134613134652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop134608134636_
                                                       _target134605134631_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g134599134618_
                                                     _g134600134621_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134599134618_ _g134600134621_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134599134618_ _g134600134621_))))))
                    (declare (not safe))
                    (_g134598134729_ _L134258_)))
                 (_specializer-impl134734_
                  (let ((__tmp136167
                         (let ((__tmp136168
                                (let ((__tmp136170
                                       (let ((__tmp136171
                                              (let ((__tmp136188
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133735_ '())))
                                                    (__tmp136172
                                                     (let ((__tmp136173
                                                            (let ((__tmp136174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp136176
                                  (let ((__tmp136177
                                         (let ((__tmp136187
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133734_ '())))
                                               (__tmp136178
                                                (let ((__tmp136179
                                                       (let ((__tmp136180
                                                              (let ((__tmp136181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136183
                                    (let ((__tmp136184
                                           (let ((__tmp136186
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L134260_ '())))
                                                 (__tmp136185
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr134597_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp136186 __tmp136185))))
                                      (declare (not safe))
                                      (cons __tmp136184 '())))
                                   (__tmp136182
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134732_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp136183 __tmp136182))))
                        (declare (not safe))
                        (cons '%#let-values __tmp136181))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp136180 _stx131987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136179 '()))))
                                           (declare (not safe))
                                           (cons __tmp136187 __tmp136178))))
                                    (declare (not safe))
                                    (cons __tmp136177 '())))
                                 (__tmp136175
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133732_ '()))))
                             (declare (not safe))
                             (cons __tmp136176 __tmp136175))))
                      (declare (not safe))
                      (cons '%#let-values __tmp136174))))
               (declare (not safe))
               (cons __tmp136173 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp136188
                                                      __tmp136172))))
                                         (declare (not safe))
                                         (cons __tmp136171 '())))
                                      (__tmp136169
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133731_ '()))))
                                  (declare (not safe))
                                  (cons __tmp136170 __tmp136169))))
                           (declare (not safe))
                           (cons '%#let-values __tmp136168))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp136167 _stx131987_)))
                 (_specializer-impl134736_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131991_
                     _$klass134476_
                     _$method-table134478_
                     _methods-bind134501_
                     _slots-bind134524_
                     _specializer-impl134734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp136190
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132060_)))
                                                          (__tmp136189
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id134474_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp136190
                                                       '" => "
                                                       __tmp136189))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131992_
                                                       _L132060_
                                                       _specializer-id134474_
                                                       _specializer-impl134736_)))))
                                            _hd134191134253_
                                            _hd134188134245_
                                            _hd134185134237_)
                                           (let ()
                                             (declare (not safe))
                                             (_g134167134197_
                                              _g134168134200_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134167134197_ _g134168134200_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134167134197_ _g134168134200_)))
                           (let ()
                             (declare (not safe))
                             (_g134167134197_ _g134168134200_)))))
                   (let ()
                     (declare (not safe))
                     (_g134167134197_ _g134168134200_)))
               (let ()
                 (declare (not safe))
                 (_g134167134197_ _g134168134200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134167134197_
                                                  _g134168134200_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134167134197_ _g134168134200_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134167134197_ _g134168134200_)))))
                       (let ()
                         (declare (not safe))
                         (_g134167134197_ _g134168134200_)))))
               (let ()
                 (declare (not safe))
                 (_g134167134197_ _g134168134200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134166134739_ _L133733_))
                                         _stx131987_))))
                             _hd133830133953_
                             _kw-ref133828133974_
                             _hd133818133940_
                             _hd133809133916_
                             _hd133800133892_)
                            (let ()
                              (declare (not safe))
                              (_g133774133836_ _g133775133839_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133823133958_
                                                   _target133820133945_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133774133836_
                                                 _g133775133839_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133774133836_ _g133775133839_))))))
                            (let ()
                              (declare (not safe))
                              (_g133774133836_ _g133775133839_)))
                        (let ()
                          (declare (not safe))
                          (_g133774133836_ _g133775133839_)))
                    (let ()
                      (declare (not safe))
                      (_g133774133836_ _g133775133839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133774133836_
                                                       _g133775133839_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133774133836_
                                                   _g133775133839_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133774133836_
                                               _g133775133839_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133774133836_ _g133775133839_)))))
                            (let ()
                              (declare (not safe))
                              (_g133774133836_ _g133775133839_)))
                        (let ()
                          (declare (not safe))
                          (_g133774133836_ _g133775133839_)))))
                (let ()
                  (declare (not safe))
                  (_g133774133836_ _g133775133839_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133774133836_
                                                       _g133775133839_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133774133836_
                                                   _g133775133839_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133774133836_ _g133775133839_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133774133836_ _g133775133839_)))
                            (let ()
                              (declare (not safe))
                              (_g133774133836_ _g133775133839_)))))
                    (let ()
                      (declare (not safe))
                      (_g133774133836_ _g133775133839_)))
                (let ()
                  (declare (not safe))
                  (_g133774133836_ _g133775133839_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133774133836_
                                                       _g133775133839_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133774133836_
                                               _g133775133839_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133774133836_ _g133775133839_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133774133836_ _g133775133839_)))
                            (let ()
                              (declare (not safe))
                              (_g133774133836_ _g133775133839_)))))
                    (let ()
                      (declare (not safe))
                      (_g133774133836_ _g133775133839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133774133836_
                                                       _g133775133839_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133774133836_
                                               _g133775133839_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133774133836_ _g133775133839_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133774133836_ _g133775133839_)))))
                            (let ()
                              (declare (not safe))
                              (_g133774133836_ _g133775133839_))))))
                (declare (not safe))
                (_g133773134742_ _L133732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd133608133726_
                                                    _hd133605133718_
                                                    _hd133602133710_
                                                    _hd133599133702_
                                                    _hd133581133654_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133561133614_
                                                      _g133562133617_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133561133614_
                                              _g133562133617_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g133561133614_ _g133562133617_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g133561133614_ _g133562133617_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133561133614_ _g133562133617_)))))
                       (let ()
                         (declare (not safe))
                         (_g133561133614_ _g133562133617_)))
                   (let ()
                     (declare (not safe))
                     (_g133561133614_ _g133562133617_)))
               (let ()
                 (declare (not safe))
                 (_g133561133614_ _g133562133617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133561133614_
                                                  _g133562133617_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133561133614_
                                              _g133562133617_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133561133614_ _g133562133617_)))))
                           (let ()
                             (declare (not safe))
                             (_g133561133614_ _g133562133617_)))))
                   (let ()
                     (declare (not safe))
                     (_g133561133614_ _g133562133617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133561133614_
                                                      _g133562133617_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133561133614_
                                                  _g133562133617_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133561133614_
                                              _g133562133617_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133561133614_ _g133562133617_)))))
                           (let ()
                             (declare (not safe))
                             (_g133561133614_ _g133562133617_)))
                       (let ()
                         (declare (not safe))
                         (_g133561133614_ _g133562133617_)))))
               (let ()
                 (declare (not safe))
                 (_g133561133614_ _g133562133617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133561133614_
                                                  _g133562133617_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133561133614_ _g133562133617_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133561133614_ _g133562133617_)))
                           (let ()
                             (declare (not safe))
                             (_g133561133614_ _g133562133617_)))
                       (let ()
                         (declare (not safe))
                         (_g133561133614_ _g133562133617_)))))
               (let ()
                 (declare (not safe))
                 (_g133561133614_ _g133562133617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133560134745_ _L132059_))
                                         _stx131987_))))))))
                  (___kont134969134970_ (lambda () _stx131987_)))
              (let ((___match134998134999_
                     (lambda (_e132001132027_
                              _hd132000132030_
                              _tl131999132032_
                              _e132004132035_
                              _hd132003132038_
                              _tl132002132040_
                              _e132007132043_
                              _hd132006132046_
                              _tl132005132048_
                              _e132010132051_
                              _hd132009132054_
                              _tl132008132056_)
                       (let ((_L132059_ _hd132009132054_)
                             (_L132060_ _hd132006132046_))
                         (if (let ((__tmp136279
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L132060_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp136279))
                             (___kont134967134968_ _L132059_ _L132060_)
                             (___kont134969134970_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134965134966_))
                    (let ((_e132001132027_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134965134966_))))
                      (let ((_tl131999132032_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132001132027_)))
                            (_hd132000132030_
                             (let ()
                               (declare (not safe))
                               (##car _e132001132027_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131999132032_))
                            (let ((_e132004132035_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131999132032_))))
                              (let ((_tl132002132040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132004132035_)))
                                    (_hd132003132038_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132004132035_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132003132038_))
                                    (let ((_e132007132043_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132003132038_))))
                                      (let ((_tl132005132048_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132007132043_)))
                                            (_hd132006132046_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132007132043_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl132005132048_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl132002132040_))
                                                (let ((_e132010132051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl132002132040_))))
                                                  (let ((_tl132008132056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132010132051_)))
                                                        (_hd132009132054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132010132051_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl132008132056_))
                                                        (___match134998134999_
                                                         _e132001132027_
                                                         _hd132000132030_
                                                         _tl131999132032_
                                                         _e132004132035_
                                                         _hd132003132038_
                                                         _tl132002132040_
                                                         _e132007132043_
                                                         _hd132006132046_
                                                         _tl132005132048_
                                                         _e132010132051_
                                                         _hd132009132054_
                                                         _tl132008132056_)
                                                        (___kont134969134970_))))
                                                (___kont134969134970_))
                                            (___kont134969134970_))))
                                    (___kont134969134970_))))
                            (___kont134969134970_))))
                    (___kont134969134970_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self130947_ _stx130948_)
        (let* ((___stx135001135002_ _stx130948_)
               (_g130956131178_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx135001135002_)))))
          (let ((___kont135003135004_
                 (lambda (_L131935_ _L131936_ _L131937_ _L131938_)
                   (let ((__tmp136281
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130947_ 'methods)))
                         (__tmp136280
                          (let () (declare (not safe)) (gx#stx-e _L131936_))))
                     (declare (not safe))
                     (hash-put! __tmp136281 __tmp136280 '#t))
                   (for-each
                    (lambda (_g131971131973_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130947_ _g131971131973_)))
                    (let ((__tmp136282
                           (lambda (_g131975131978_ _g131976131980_)
                             (let ()
                               (declare (not safe))
                               (cons _g131975131978_ _g131976131980_)))))
                      (declare (not safe))
                      (foldr1 __tmp136282 '() _L131935_)))))
                (___kont135007135008_
                 (lambda (_L131770_ _L131771_ _L131772_ _L131773_ _L131774_)
                   (let ((__tmp136284
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130947_ 'methods)))
                         (__tmp136283
                          (let () (declare (not safe)) (gx#stx-e _L131771_))))
                     (declare (not safe))
                     (hash-put! __tmp136284 __tmp136283 '#t))
                   (for-each
                    (lambda (_g131814131816_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130947_ _g131814131816_)))
                    (let ((__tmp136285
                           (lambda (_g131818131821_ _g131819131823_)
                             (let ()
                               (declare (not safe))
                               (cons _g131818131821_ _g131819131823_)))))
                      (declare (not safe))
                      (foldr1 __tmp136285 '() _L131770_)))))
                (___kont135011135012_
                 (lambda (_L131603_ _L131604_ _L131605_)
                   (let ((__tmp136287
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130947_ 'slots)))
                         (__tmp136286
                          (let () (declare (not safe)) (gx#stx-e _L131603_))))
                     (declare (not safe))
                     (hash-put! __tmp136287 __tmp136286 '#t))))
                (___kont135013135014_
                 (lambda (_L131480_ _L131481_ _L131482_ _L131483_)
                   (let ((__tmp136289
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130947_ 'slots)))
                         (__tmp136288
                          (let () (declare (not safe)) (gx#stx-e _L131481_))))
                     (declare (not safe))
                     (hash-put! __tmp136289 __tmp136288 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self130947_ _L131480_))))
                (___kont135015135016_
                 (lambda (_L131354_ _L131355_)
                   (let* ((_accessor131377_
                           (let ((__tmp136290
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L131355_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp136290)))
                          (_klass131379_
                           (let ((__tmp136291
                                  (##structure-ref
                                   _accessor131377_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130948_
                              __tmp136291)))
                          (_slot131381_
                           (##structure-ref
                            _accessor131377_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp136294
                                     (##structure-ref
                                      _accessor131377_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp136294))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass131379_
                                     _slot131381_))
                                  (##structure-ref
                                   _klass131379_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp136293
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130947_ 'slots)))
                               (__tmp136292
                                (##structure-ref
                                 _accessor131377_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp136293 __tmp136292 '#t))))))
                (___kont135017135018_
                 (lambda (_L131254_ _L131255_ _L131256_)
                   (let* ((_mutator131283_
                           (let ((__tmp136295
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L131256_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp136295)))
                          (_klass131285_
                           (let ((__tmp136296
                                  (##structure-ref
                                   _mutator131283_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130948_
                              __tmp136296)))
                          (_slot131287_
                           (##structure-ref
                            _mutator131283_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp136298
                                     (##structure-ref
                                      _mutator131283_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp136298))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass131285_
                                     _slot131287_))
                                  (##structure-ref
                                   _klass131285_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp136297
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130947_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp136297 _slot131287_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self130947_ _L131254_)))))
                (___kont135019135020_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands _self130947_ _stx130948_)))))
            (let* ((___match135500135501_
                    (lambda (_e131152131190_
                             _hd131151131193_
                             _tl131150131195_
                             _e131155131198_
                             _hd131154131201_
                             _tl131153131203_
                             _e131158131206_
                             _hd131157131209_
                             _tl131156131211_
                             _e131161131214_
                             _hd131160131217_
                             _tl131159131219_
                             _e131164131222_
                             _hd131163131225_
                             _tl131162131227_
                             _e131167131230_
                             _hd131166131233_
                             _tl131165131235_
                             _e131170131238_
                             _hd131169131241_
                             _tl131168131243_
                             _e131173131246_
                             _hd131172131249_
                             _tl131171131251_)
                      (let ((_L131254_ _hd131172131249_)
                            (_L131255_ _hd131169131241_)
                            (_L131256_ _hd131160131217_))
                        (if (and (let ((__tmp136300
                                        (let ((__tmp136301
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L131256_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp136301))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp136300
                                    'gxc#!mutator::t))
                                 (let ((__tmp136299
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130947_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131255_
                                    __tmp136299)))
                            (___kont135017135018_
                             _L131254_
                             _L131255_
                             _L131256_)
                            (___kont135019135020_)))))
                   (___match135498135499_
                    (lambda (_e131152131190_
                             _hd131151131193_
                             _tl131150131195_
                             _e131155131198_
                             _hd131154131201_
                             _tl131153131203_
                             _e131158131206_
                             _hd131157131209_
                             _tl131156131211_
                             _e131161131214_
                             _hd131160131217_
                             _tl131159131219_
                             _e131164131222_
                             _hd131163131225_
                             _tl131162131227_
                             _e131167131230_
                             _hd131166131233_
                             _tl131165131235_
                             _e131170131238_
                             _hd131169131241_
                             _tl131168131243_
                             _e131173131246_
                             _hd131172131249_
                             _tl131171131251_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131171131251_))
                          (___match135500135501_
                           _e131152131190_
                           _hd131151131193_
                           _tl131150131195_
                           _e131155131198_
                           _hd131154131201_
                           _tl131153131203_
                           _e131158131206_
                           _hd131157131209_
                           _tl131156131211_
                           _e131161131214_
                           _hd131160131217_
                           _tl131159131219_
                           _e131164131222_
                           _hd131163131225_
                           _tl131162131227_
                           _e131167131230_
                           _hd131166131233_
                           _tl131165131235_
                           _e131170131238_
                           _hd131169131241_
                           _tl131168131243_
                           _e131173131246_
                           _hd131172131249_
                           _tl131171131251_)
                          (___kont135019135020_))))
                   (___match135492135493_
                    (lambda (_e131152131190_
                             _hd131151131193_
                             _tl131150131195_
                             _e131155131198_
                             _hd131154131201_
                             _tl131153131203_
                             _e131158131206_
                             _hd131157131209_
                             _tl131156131211_
                             _e131161131214_
                             _hd131160131217_
                             _tl131159131219_
                             _e131164131222_
                             _hd131163131225_
                             _tl131162131227_
                             _e131167131230_
                             _hd131166131233_
                             _tl131165131235_
                             _e131170131238_
                             _hd131169131241_
                             _tl131168131243_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131162131227_))
                          (let ((_e131173131246_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131162131227_))))
                            (let ((_tl131171131251_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131173131246_)))
                                  (_hd131172131249_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131173131246_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131171131251_))
                                  (___match135500135501_
                                   _e131152131190_
                                   _hd131151131193_
                                   _tl131150131195_
                                   _e131155131198_
                                   _hd131154131201_
                                   _tl131153131203_
                                   _e131158131206_
                                   _hd131157131209_
                                   _tl131156131211_
                                   _e131161131214_
                                   _hd131160131217_
                                   _tl131159131219_
                                   _e131164131222_
                                   _hd131163131225_
                                   _tl131162131227_
                                   _e131167131230_
                                   _hd131166131233_
                                   _tl131165131235_
                                   _e131170131238_
                                   _hd131169131241_
                                   _tl131168131243_
                                   _e131173131246_
                                   _hd131172131249_
                                   _tl131171131251_)
                                  (___kont135019135020_))))
                          (___kont135019135020_))))
                   (___match135438135439_
                    (lambda (_e131128131298_
                             _hd131127131301_
                             _tl131126131303_
                             _e131131131306_
                             _hd131130131309_
                             _tl131129131311_
                             _e131134131314_
                             _hd131133131317_
                             _tl131132131319_
                             _e131137131322_
                             _hd131136131325_
                             _tl131135131327_
                             _e131140131330_
                             _hd131139131333_
                             _tl131138131335_
                             _e131143131338_
                             _hd131142131341_
                             _tl131141131343_
                             _e131146131346_
                             _hd131145131349_
                             _tl131144131351_)
                      (let ((_L131354_ _hd131145131349_)
                            (_L131355_ _hd131136131325_))
                        (if (and (let ((__tmp136303
                                        (let ((__tmp136304
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L131355_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp136304))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp136303
                                    'gxc#!accessor::t))
                                 (let ((__tmp136302
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130947_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131354_
                                    __tmp136302)))
                            (___kont135015135016_ _L131354_ _L131355_)
                            (___kont135019135020_)))))
                   (___match135436135437_
                    (lambda (_e131128131298_
                             _hd131127131301_
                             _tl131126131303_
                             _e131131131306_
                             _hd131130131309_
                             _tl131129131311_
                             _e131134131314_
                             _hd131133131317_
                             _tl131132131319_
                             _e131137131322_
                             _hd131136131325_
                             _tl131135131327_
                             _e131140131330_
                             _hd131139131333_
                             _tl131138131335_
                             _e131143131338_
                             _hd131142131341_
                             _tl131141131343_
                             _e131146131346_
                             _hd131145131349_
                             _tl131144131351_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131138131335_))
                          (___match135438135439_
                           _e131128131298_
                           _hd131127131301_
                           _tl131126131303_
                           _e131131131306_
                           _hd131130131309_
                           _tl131129131311_
                           _e131134131314_
                           _hd131133131317_
                           _tl131132131319_
                           _e131137131322_
                           _hd131136131325_
                           _tl131135131327_
                           _e131140131330_
                           _hd131139131333_
                           _tl131138131335_
                           _e131143131338_
                           _hd131142131341_
                           _tl131141131343_
                           _e131146131346_
                           _hd131145131349_
                           _tl131144131351_)
                          (___match135492135493_
                           _e131128131298_
                           _hd131127131301_
                           _tl131126131303_
                           _e131131131306_
                           _hd131130131309_
                           _tl131129131311_
                           _e131134131314_
                           _hd131133131317_
                           _tl131132131319_
                           _e131137131322_
                           _hd131136131325_
                           _tl131135131327_
                           _e131140131330_
                           _hd131139131333_
                           _tl131138131335_
                           _e131143131338_
                           _hd131142131341_
                           _tl131141131343_
                           _e131146131346_
                           _hd131145131349_
                           _tl131144131351_))))
                   (___match135382135383_
                    (lambda (_e131093131392_
                             _hd131092131395_
                             _tl131091131397_
                             _e131096131400_
                             _hd131095131403_
                             _tl131094131405_
                             _e131099131408_
                             _hd131098131411_
                             _tl131097131413_
                             _e131102131416_
                             _hd131101131419_
                             _tl131100131421_
                             _e131105131424_
                             _hd131104131427_
                             _tl131103131429_
                             _e131108131432_
                             _hd131107131435_
                             _tl131106131437_
                             _e131111131440_
                             _hd131110131443_
                             _tl131109131445_
                             _e131114131448_
                             _hd131113131451_
                             _tl131112131453_
                             _e131117131456_
                             _hd131116131459_
                             _tl131115131461_
                             _e131120131464_
                             _hd131119131467_
                             _tl131118131469_
                             _e131123131472_
                             _hd131122131475_
                             _tl131121131477_)
                      (let ((_L131480_ _hd131122131475_)
                            (_L131481_ _hd131119131467_)
                            (_L131482_ _hd131110131443_)
                            (_L131483_ _hd131101131419_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131483_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131483_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp136305
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130947_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131482_
                                    __tmp136305)))
                            (___kont135013135014_
                             _L131480_
                             _L131481_
                             _L131482_
                             _L131483_)
                            (___kont135019135020_)))))
                   (___match135374135375_
                    (lambda (_e131093131392_
                             _hd131092131395_
                             _tl131091131397_
                             _e131096131400_
                             _hd131095131403_
                             _tl131094131405_
                             _e131099131408_
                             _hd131098131411_
                             _tl131097131413_
                             _e131102131416_
                             _hd131101131419_
                             _tl131100131421_
                             _e131105131424_
                             _hd131104131427_
                             _tl131103131429_
                             _e131108131432_
                             _hd131107131435_
                             _tl131106131437_
                             _e131111131440_
                             _hd131110131443_
                             _tl131109131445_
                             _e131114131448_
                             _hd131113131451_
                             _tl131112131453_
                             _e131117131456_
                             _hd131116131459_
                             _tl131115131461_
                             _e131120131464_
                             _hd131119131467_
                             _tl131118131469_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131112131453_))
                          (let ((_e131123131472_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131112131453_))))
                            (let ((_tl131121131477_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131123131472_)))
                                  (_hd131122131475_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131123131472_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131121131477_))
                                  (___match135382135383_
                                   _e131093131392_
                                   _hd131092131395_
                                   _tl131091131397_
                                   _e131096131400_
                                   _hd131095131403_
                                   _tl131094131405_
                                   _e131099131408_
                                   _hd131098131411_
                                   _tl131097131413_
                                   _e131102131416_
                                   _hd131101131419_
                                   _tl131100131421_
                                   _e131105131424_
                                   _hd131104131427_
                                   _tl131103131429_
                                   _e131108131432_
                                   _hd131107131435_
                                   _tl131106131437_
                                   _e131111131440_
                                   _hd131110131443_
                                   _tl131109131445_
                                   _e131114131448_
                                   _hd131113131451_
                                   _tl131112131453_
                                   _e131117131456_
                                   _hd131116131459_
                                   _tl131115131461_
                                   _e131120131464_
                                   _hd131119131467_
                                   _tl131118131469_
                                   _e131123131472_
                                   _hd131122131475_
                                   _tl131121131477_)
                                  (___kont135019135020_))))
                          (___match135498135499_
                           _e131093131392_
                           _hd131092131395_
                           _tl131091131397_
                           _e131096131400_
                           _hd131095131403_
                           _tl131094131405_
                           _e131099131408_
                           _hd131098131411_
                           _tl131097131413_
                           _e131102131416_
                           _hd131101131419_
                           _tl131100131421_
                           _e131105131424_
                           _hd131104131427_
                           _tl131103131429_
                           _e131108131432_
                           _hd131107131435_
                           _tl131106131437_
                           _e131111131440_
                           _hd131110131443_
                           _tl131109131445_
                           _e131114131448_
                           _hd131113131451_
                           _tl131112131453_))))
                   (___match135296135297_
                    (lambda (_e131059131523_
                             _hd131058131526_
                             _tl131057131528_
                             _e131062131531_
                             _hd131061131534_
                             _tl131060131536_
                             _e131065131539_
                             _hd131064131542_
                             _tl131063131544_
                             _e131068131547_
                             _hd131067131550_
                             _tl131066131552_
                             _e131071131555_
                             _hd131070131558_
                             _tl131069131560_
                             _e131074131563_
                             _hd131073131566_
                             _tl131072131568_
                             _e131077131571_
                             _hd131076131574_
                             _tl131075131576_
                             _e131080131579_
                             _hd131079131582_
                             _tl131078131584_
                             _e131083131587_
                             _hd131082131590_
                             _tl131081131592_
                             _e131086131595_
                             _hd131085131598_
                             _tl131084131600_)
                      (let ((_L131603_ _hd131085131598_)
                            (_L131604_ _hd131076131574_)
                            (_L131605_ _hd131067131550_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131605_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131605_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp136306
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130947_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131604_
                                    __tmp136306)))
                            (___kont135011135012_
                             _L131603_
                             _L131604_
                             _L131605_)
                            (___match135500135501_
                             _e131059131523_
                             _hd131058131526_
                             _tl131057131528_
                             _e131062131531_
                             _hd131061131534_
                             _tl131060131536_
                             _e131065131539_
                             _hd131064131542_
                             _tl131063131544_
                             _e131068131547_
                             _hd131067131550_
                             _tl131066131552_
                             _e131071131555_
                             _hd131070131558_
                             _tl131069131560_
                             _e131074131563_
                             _hd131073131566_
                             _tl131072131568_
                             _e131077131571_
                             _hd131076131574_
                             _tl131075131576_
                             _e131080131579_
                             _hd131079131582_
                             _tl131078131584_)))))
                   (___match135294135295_
                    (lambda (_e131059131523_
                             _hd131058131526_
                             _tl131057131528_
                             _e131062131531_
                             _hd131061131534_
                             _tl131060131536_
                             _e131065131539_
                             _hd131064131542_
                             _tl131063131544_
                             _e131068131547_
                             _hd131067131550_
                             _tl131066131552_
                             _e131071131555_
                             _hd131070131558_
                             _tl131069131560_
                             _e131074131563_
                             _hd131073131566_
                             _tl131072131568_
                             _e131077131571_
                             _hd131076131574_
                             _tl131075131576_
                             _e131080131579_
                             _hd131079131582_
                             _tl131078131584_
                             _e131083131587_
                             _hd131082131590_
                             _tl131081131592_
                             _e131086131595_
                             _hd131085131598_
                             _tl131084131600_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131078131584_))
                          (___match135296135297_
                           _e131059131523_
                           _hd131058131526_
                           _tl131057131528_
                           _e131062131531_
                           _hd131061131534_
                           _tl131060131536_
                           _e131065131539_
                           _hd131064131542_
                           _tl131063131544_
                           _e131068131547_
                           _hd131067131550_
                           _tl131066131552_
                           _e131071131555_
                           _hd131070131558_
                           _tl131069131560_
                           _e131074131563_
                           _hd131073131566_
                           _tl131072131568_
                           _e131077131571_
                           _hd131076131574_
                           _tl131075131576_
                           _e131080131579_
                           _hd131079131582_
                           _tl131078131584_
                           _e131083131587_
                           _hd131082131590_
                           _tl131081131592_
                           _e131086131595_
                           _hd131085131598_
                           _tl131084131600_)
                          (___match135374135375_
                           _e131059131523_
                           _hd131058131526_
                           _tl131057131528_
                           _e131062131531_
                           _hd131061131534_
                           _tl131060131536_
                           _e131065131539_
                           _hd131064131542_
                           _tl131063131544_
                           _e131068131547_
                           _hd131067131550_
                           _tl131066131552_
                           _e131071131555_
                           _hd131070131558_
                           _tl131069131560_
                           _e131074131563_
                           _hd131073131566_
                           _tl131072131568_
                           _e131077131571_
                           _hd131076131574_
                           _tl131075131576_
                           _e131080131579_
                           _hd131079131582_
                           _tl131078131584_
                           _e131083131587_
                           _hd131082131590_
                           _tl131081131592_
                           _e131086131595_
                           _hd131085131598_
                           _tl131084131600_))))
                   (___match135284135285_
                    (lambda (_e131059131523_
                             _hd131058131526_
                             _tl131057131528_
                             _e131062131531_
                             _hd131061131534_
                             _tl131060131536_
                             _e131065131539_
                             _hd131064131542_
                             _tl131063131544_
                             _e131068131547_
                             _hd131067131550_
                             _tl131066131552_
                             _e131071131555_
                             _hd131070131558_
                             _tl131069131560_
                             _e131074131563_
                             _hd131073131566_
                             _tl131072131568_
                             _e131077131571_
                             _hd131076131574_
                             _tl131075131576_
                             _e131080131579_
                             _hd131079131582_
                             _tl131078131584_
                             _e131083131587_
                             _hd131082131590_
                             _tl131081131592_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd131082131590_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131081131592_))
                              (let ((_e131086131595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131081131592_))))
                                (let ((_tl131084131600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131086131595_)))
                                      (_hd131085131598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131086131595_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131084131600_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl131078131584_))
                                          (___match135296135297_
                                           _e131059131523_
                                           _hd131058131526_
                                           _tl131057131528_
                                           _e131062131531_
                                           _hd131061131534_
                                           _tl131060131536_
                                           _e131065131539_
                                           _hd131064131542_
                                           _tl131063131544_
                                           _e131068131547_
                                           _hd131067131550_
                                           _tl131066131552_
                                           _e131071131555_
                                           _hd131070131558_
                                           _tl131069131560_
                                           _e131074131563_
                                           _hd131073131566_
                                           _tl131072131568_
                                           _e131077131571_
                                           _hd131076131574_
                                           _tl131075131576_
                                           _e131080131579_
                                           _hd131079131582_
                                           _tl131078131584_
                                           _e131083131587_
                                           _hd131082131590_
                                           _tl131081131592_
                                           _e131086131595_
                                           _hd131085131598_
                                           _tl131084131600_)
                                          (___match135374135375_
                                           _e131059131523_
                                           _hd131058131526_
                                           _tl131057131528_
                                           _e131062131531_
                                           _hd131061131534_
                                           _tl131060131536_
                                           _e131065131539_
                                           _hd131064131542_
                                           _tl131063131544_
                                           _e131068131547_
                                           _hd131067131550_
                                           _tl131066131552_
                                           _e131071131555_
                                           _hd131070131558_
                                           _tl131069131560_
                                           _e131074131563_
                                           _hd131073131566_
                                           _tl131072131568_
                                           _e131077131571_
                                           _hd131076131574_
                                           _tl131075131576_
                                           _e131080131579_
                                           _hd131079131582_
                                           _tl131078131584_
                                           _e131083131587_
                                           _hd131082131590_
                                           _tl131081131592_
                                           _e131086131595_
                                           _hd131085131598_
                                           _tl131084131600_))
                                      (___match135498135499_
                                       _e131059131523_
                                       _hd131058131526_
                                       _tl131057131528_
                                       _e131062131531_
                                       _hd131061131534_
                                       _tl131060131536_
                                       _e131065131539_
                                       _hd131064131542_
                                       _tl131063131544_
                                       _e131068131547_
                                       _hd131067131550_
                                       _tl131066131552_
                                       _e131071131555_
                                       _hd131070131558_
                                       _tl131069131560_
                                       _e131074131563_
                                       _hd131073131566_
                                       _tl131072131568_
                                       _e131077131571_
                                       _hd131076131574_
                                       _tl131075131576_
                                       _e131080131579_
                                       _hd131079131582_
                                       _tl131078131584_))))
                              (___match135498135499_
                               _e131059131523_
                               _hd131058131526_
                               _tl131057131528_
                               _e131062131531_
                               _hd131061131534_
                               _tl131060131536_
                               _e131065131539_
                               _hd131064131542_
                               _tl131063131544_
                               _e131068131547_
                               _hd131067131550_
                               _tl131066131552_
                               _e131071131555_
                               _hd131070131558_
                               _tl131069131560_
                               _e131074131563_
                               _hd131073131566_
                               _tl131072131568_
                               _e131077131571_
                               _hd131076131574_
                               _tl131075131576_
                               _e131080131579_
                               _hd131079131582_
                               _tl131078131584_))
                          (___match135498135499_
                           _e131059131523_
                           _hd131058131526_
                           _tl131057131528_
                           _e131062131531_
                           _hd131061131534_
                           _tl131060131536_
                           _e131065131539_
                           _hd131064131542_
                           _tl131063131544_
                           _e131068131547_
                           _hd131067131550_
                           _tl131066131552_
                           _e131071131555_
                           _hd131070131558_
                           _tl131069131560_
                           _e131074131563_
                           _hd131073131566_
                           _tl131072131568_
                           _e131077131571_
                           _hd131076131574_
                           _tl131075131576_
                           _e131080131579_
                           _hd131079131582_
                           _tl131078131584_))))
                   (___match135216135217_
                    (lambda (_e131008131642_
                             _hd131007131645_
                             _tl131006131647_
                             _e131011131650_
                             _hd131010131653_
                             _tl131009131655_
                             _e131014131658_
                             _hd131013131661_
                             _tl131012131663_
                             _e131017131666_
                             _hd131016131669_
                             _tl131015131671_
                             _e131020131674_
                             _hd131019131677_
                             _tl131018131679_
                             _e131023131682_
                             _hd131022131685_
                             _tl131021131687_
                             _e131026131690_
                             _hd131025131693_
                             _tl131024131695_
                             _e131029131698_
                             _hd131028131701_
                             _tl131027131703_
                             _e131032131706_
                             _hd131031131709_
                             _tl131030131711_
                             _e131035131714_
                             _hd131034131717_
                             _tl131033131719_
                             _e131038131722_
                             _hd131037131725_
                             _tl131036131727_
                             _e131041131730_
                             _hd131040131733_
                             _tl131039131735_
                             _e131044131738_
                             _hd131043131741_
                             _tl131042131743_
                             ___splice135009135010_
                             _target131045131746_
                             _tl131047131748_)
                      (letrec ((_loop131048131751_
                                (lambda (_hd131046131754_ _args131052131756_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131046131754_))
                                      (let ((_e131049131759_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131046131754_))))
                                        (let ((_lp-tl131051131764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131049131759_)))
                                              (_lp-hd131050131762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131049131759_))))
                                          (let ((__tmp136308
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131050131762_
                                                         _args131052131756_))))
                                            (declare (not safe))
                                            (_loop131048131751_
                                             _lp-tl131051131764_
                                             __tmp136308))))
                                      (let ((_args131053131767_
                                             (reverse _args131052131756_)))
                                        (let ((_L131770_ _args131053131767_)
                                              (_L131771_ _hd131043131741_)
                                              (_L131772_ _hd131034131717_)
                                              (_L131773_ _hd131025131693_)
                                              (_L131774_ _hd131016131669_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131774_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131773_
                                                      'call-method))
                                                   (let ((__tmp136307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130947_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131772_
                                                      __tmp136307)))
                                              (___kont135007135008_
                                               _L131770_
                                               _L131771_
                                               _L131772_
                                               _L131773_
                                               _L131774_)
                                              (___kont135019135020_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131048131751_ _target131045131746_ '())))))
                   (___match135174135175_
                    (lambda (_e131008131642_
                             _hd131007131645_
                             _tl131006131647_
                             _e131011131650_
                             _hd131010131653_
                             _tl131009131655_
                             _e131014131658_
                             _hd131013131661_
                             _tl131012131663_
                             _e131017131666_
                             _hd131016131669_
                             _tl131015131671_
                             _e131020131674_
                             _hd131019131677_
                             _tl131018131679_
                             _e131023131682_
                             _hd131022131685_
                             _tl131021131687_
                             _e131026131690_
                             _hd131025131693_
                             _tl131024131695_
                             _e131029131698_
                             _hd131028131701_
                             _tl131027131703_
                             _e131032131706_
                             _hd131031131709_
                             _tl131030131711_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd131031131709_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131030131711_))
                              (let ((_e131035131714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131030131711_))))
                                (let ((_tl131033131719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131035131714_)))
                                      (_hd131034131717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131035131714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131033131719_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131027131703_))
                                          (let ((_e131038131722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131027131703_))))
                                            (let ((_tl131036131727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131038131722_)))
                                                  (_hd131037131725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131038131722_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131037131725_))
                                                  (let ((_e131041131730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131037131725_))))
                                                    (let ((_tl131039131735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131041131730_)))
                                                          (_hd131040131733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131041131730_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd131040131733_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd131040131733_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131039131735_))
                          (let ((_e131044131738_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131039131735_))))
                            (let ((_tl131042131743_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131044131738_)))
                                  (_hd131043131741_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131044131738_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131042131743_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131036131727_))
                                      (let ((___splice135009135010_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131036131727_
                                                '0))))
                                        (let ((_tl131047131748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135009135010_
                                                  '1)))
                                              (_target131045131746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135009135010_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131047131748_))
                                              (___match135216135217_
                                               _e131008131642_
                                               _hd131007131645_
                                               _tl131006131647_
                                               _e131011131650_
                                               _hd131010131653_
                                               _tl131009131655_
                                               _e131014131658_
                                               _hd131013131661_
                                               _tl131012131663_
                                               _e131017131666_
                                               _hd131016131669_
                                               _tl131015131671_
                                               _e131020131674_
                                               _hd131019131677_
                                               _tl131018131679_
                                               _e131023131682_
                                               _hd131022131685_
                                               _tl131021131687_
                                               _e131026131690_
                                               _hd131025131693_
                                               _tl131024131695_
                                               _e131029131698_
                                               _hd131028131701_
                                               _tl131027131703_
                                               _e131032131706_
                                               _hd131031131709_
                                               _tl131030131711_
                                               _e131035131714_
                                               _hd131034131717_
                                               _tl131033131719_
                                               _e131038131722_
                                               _hd131037131725_
                                               _tl131036131727_
                                               _e131041131730_
                                               _hd131040131733_
                                               _tl131039131735_
                                               _e131044131738_
                                               _hd131043131741_
                                               _tl131042131743_
                                               ___splice135009135010_
                                               _target131045131746_
                                               _tl131047131748_)
                                              (___kont135019135020_))))
                                      (___kont135019135020_))
                                  (___kont135019135020_))))
                          (___kont135019135020_))
                      (___kont135019135020_))
                  (___kont135019135020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135019135020_))))
                                          (___match135498135499_
                                           _e131008131642_
                                           _hd131007131645_
                                           _tl131006131647_
                                           _e131011131650_
                                           _hd131010131653_
                                           _tl131009131655_
                                           _e131014131658_
                                           _hd131013131661_
                                           _tl131012131663_
                                           _e131017131666_
                                           _hd131016131669_
                                           _tl131015131671_
                                           _e131020131674_
                                           _hd131019131677_
                                           _tl131018131679_
                                           _e131023131682_
                                           _hd131022131685_
                                           _tl131021131687_
                                           _e131026131690_
                                           _hd131025131693_
                                           _tl131024131695_
                                           _e131029131698_
                                           _hd131028131701_
                                           _tl131027131703_))
                                      (___match135498135499_
                                       _e131008131642_
                                       _hd131007131645_
                                       _tl131006131647_
                                       _e131011131650_
                                       _hd131010131653_
                                       _tl131009131655_
                                       _e131014131658_
                                       _hd131013131661_
                                       _tl131012131663_
                                       _e131017131666_
                                       _hd131016131669_
                                       _tl131015131671_
                                       _e131020131674_
                                       _hd131019131677_
                                       _tl131018131679_
                                       _e131023131682_
                                       _hd131022131685_
                                       _tl131021131687_
                                       _e131026131690_
                                       _hd131025131693_
                                       _tl131024131695_
                                       _e131029131698_
                                       _hd131028131701_
                                       _tl131027131703_))))
                              (___match135498135499_
                               _e131008131642_
                               _hd131007131645_
                               _tl131006131647_
                               _e131011131650_
                               _hd131010131653_
                               _tl131009131655_
                               _e131014131658_
                               _hd131013131661_
                               _tl131012131663_
                               _e131017131666_
                               _hd131016131669_
                               _tl131015131671_
                               _e131020131674_
                               _hd131019131677_
                               _tl131018131679_
                               _e131023131682_
                               _hd131022131685_
                               _tl131021131687_
                               _e131026131690_
                               _hd131025131693_
                               _tl131024131695_
                               _e131029131698_
                               _hd131028131701_
                               _tl131027131703_))
                          (___match135284135285_
                           _e131008131642_
                           _hd131007131645_
                           _tl131006131647_
                           _e131011131650_
                           _hd131010131653_
                           _tl131009131655_
                           _e131014131658_
                           _hd131013131661_
                           _tl131012131663_
                           _e131017131666_
                           _hd131016131669_
                           _tl131015131671_
                           _e131020131674_
                           _hd131019131677_
                           _tl131018131679_
                           _e131023131682_
                           _hd131022131685_
                           _tl131021131687_
                           _e131026131690_
                           _hd131025131693_
                           _tl131024131695_
                           _e131029131698_
                           _hd131028131701_
                           _tl131027131703_
                           _e131032131706_
                           _hd131031131709_
                           _tl131030131711_))))
                   (___match135106135107_
                    (lambda (_e130964131831_
                             _hd130963131834_
                             _tl130962131836_
                             _e130967131839_
                             _hd130966131842_
                             _tl130965131844_
                             _e130970131847_
                             _hd130969131850_
                             _tl130968131852_
                             _e130973131855_
                             _hd130972131858_
                             _tl130971131860_
                             _e130976131863_
                             _hd130975131866_
                             _tl130974131868_
                             _e130979131871_
                             _hd130978131874_
                             _tl130977131876_
                             _e130982131879_
                             _hd130981131882_
                             _tl130980131884_
                             _e130985131887_
                             _hd130984131890_
                             _tl130983131892_
                             _e130988131895_
                             _hd130987131898_
                             _tl130986131900_
                             _e130991131903_
                             _hd130990131906_
                             _tl130989131908_
                             ___splice135005135006_
                             _target130992131911_
                             _tl130994131913_)
                      (letrec ((_loop130995131916_
                                (lambda (_hd130993131919_ _args130999131921_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130993131919_))
                                      (let ((_e130996131924_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130993131919_))))
                                        (let ((_lp-tl130998131929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130996131924_)))
                                              (_lp-hd130997131927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130996131924_))))
                                          (let ((__tmp136310
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130997131927_
                                                         _args130999131921_))))
                                            (declare (not safe))
                                            (_loop130995131916_
                                             _lp-tl130998131929_
                                             __tmp136310))))
                                      (let ((_args131000131932_
                                             (reverse _args130999131921_)))
                                        (let ((_L131935_ _args131000131932_)
                                              (_L131936_ _hd130990131906_)
                                              (_L131937_ _hd130981131882_)
                                              (_L131938_ _hd130972131858_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131938_
                                                      'call-method))
                                                   (let ((__tmp136309
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130947_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131937_
                                                      __tmp136309)))
                                              (___kont135003135004_
                                               _L131935_
                                               _L131936_
                                               _L131937_
                                               _L131938_)
                                              (___match135294135295_
                                               _e130964131831_
                                               _hd130963131834_
                                               _tl130962131836_
                                               _e130967131839_
                                               _hd130966131842_
                                               _tl130965131844_
                                               _e130970131847_
                                               _hd130969131850_
                                               _tl130968131852_
                                               _e130973131855_
                                               _hd130972131858_
                                               _tl130971131860_
                                               _e130976131863_
                                               _hd130975131866_
                                               _tl130974131868_
                                               _e130979131871_
                                               _hd130978131874_
                                               _tl130977131876_
                                               _e130982131879_
                                               _hd130981131882_
                                               _tl130980131884_
                                               _e130985131887_
                                               _hd130984131890_
                                               _tl130983131892_
                                               _e130988131895_
                                               _hd130987131898_
                                               _tl130986131900_
                                               _e130991131903_
                                               _hd130990131906_
                                               _tl130989131908_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130995131916_ _target130992131911_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx135001135002_))
                  (let ((_e130964131831_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx135001135002_))))
                    (let ((_tl130962131836_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130964131831_)))
                          (_hd130963131834_
                           (let ()
                             (declare (not safe))
                             (##car _e130964131831_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130962131836_))
                          (let ((_e130967131839_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130962131836_))))
                            (let ((_tl130965131844_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130967131839_)))
                                  (_hd130966131842_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130967131839_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130966131842_))
                                  (let ((_e130970131847_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130966131842_))))
                                    (let ((_tl130968131852_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130970131847_)))
                                          (_hd130969131850_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130970131847_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130969131850_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130969131850_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130968131852_))
                                                  (let ((_e130973131855_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130968131852_))))
                                                    (let ((_tl130971131860_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130973131855_)))
                                                          (_hd130972131858_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130973131855_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130971131860_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130965131844_))
                      (let ((_e130976131863_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130965131844_))))
                        (let ((_tl130974131868_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130976131863_)))
                              (_hd130975131866_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130976131863_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130975131866_))
                              (let ((_e130979131871_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130975131866_))))
                                (let ((_tl130977131876_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130979131871_)))
                                      (_hd130978131874_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130979131871_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130978131874_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130978131874_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130977131876_))
                                              (let ((_e130982131879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130977131876_))))
                                                (let ((_tl130980131884_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130982131879_)))
                                                      (_hd130981131882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130982131879_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130980131884_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130974131868_))
                                                          (let ((_e130985131887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130974131868_))))
                    (let ((_tl130983131892_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130985131887_)))
                          (_hd130984131890_
                           (let ()
                             (declare (not safe))
                             (##car _e130985131887_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130984131890_))
                          (let ((_e130988131895_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130984131890_))))
                            (let ((_tl130986131900_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130988131895_)))
                                  (_hd130987131898_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130988131895_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130987131898_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130987131898_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130986131900_))
                                          (let ((_e130991131903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130986131900_))))
                                            (let ((_tl130989131908_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130991131903_)))
                                                  (_hd130990131906_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130991131903_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130989131908_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130983131892_))
                                                      (let ((___splice135005135006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130983131892_ '0))))
                (let ((_tl130994131913_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135005135006_ '1)))
                      (_target130992131911_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135005135006_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130994131913_))
                      (___match135106135107_
                       _e130964131831_
                       _hd130963131834_
                       _tl130962131836_
                       _e130967131839_
                       _hd130966131842_
                       _tl130965131844_
                       _e130970131847_
                       _hd130969131850_
                       _tl130968131852_
                       _e130973131855_
                       _hd130972131858_
                       _tl130971131860_
                       _e130976131863_
                       _hd130975131866_
                       _tl130974131868_
                       _e130979131871_
                       _hd130978131874_
                       _tl130977131876_
                       _e130982131879_
                       _hd130981131882_
                       _tl130980131884_
                       _e130985131887_
                       _hd130984131890_
                       _tl130983131892_
                       _e130988131895_
                       _hd130987131898_
                       _tl130986131900_
                       _e130991131903_
                       _hd130990131906_
                       _tl130989131908_
                       ___splice135005135006_
                       _target130992131911_
                       _tl130994131913_)
                      (___match135294135295_
                       _e130964131831_
                       _hd130963131834_
                       _tl130962131836_
                       _e130967131839_
                       _hd130966131842_
                       _tl130965131844_
                       _e130970131847_
                       _hd130969131850_
                       _tl130968131852_
                       _e130973131855_
                       _hd130972131858_
                       _tl130971131860_
                       _e130976131863_
                       _hd130975131866_
                       _tl130974131868_
                       _e130979131871_
                       _hd130978131874_
                       _tl130977131876_
                       _e130982131879_
                       _hd130981131882_
                       _tl130980131884_
                       _e130985131887_
                       _hd130984131890_
                       _tl130983131892_
                       _e130988131895_
                       _hd130987131898_
                       _tl130986131900_
                       _e130991131903_
                       _hd130990131906_
                       _tl130989131908_))))
              (___match135294135295_
               _e130964131831_
               _hd130963131834_
               _tl130962131836_
               _e130967131839_
               _hd130966131842_
               _tl130965131844_
               _e130970131847_
               _hd130969131850_
               _tl130968131852_
               _e130973131855_
               _hd130972131858_
               _tl130971131860_
               _e130976131863_
               _hd130975131866_
               _tl130974131868_
               _e130979131871_
               _hd130978131874_
               _tl130977131876_
               _e130982131879_
               _hd130981131882_
               _tl130980131884_
               _e130985131887_
               _hd130984131890_
               _tl130983131892_
               _e130988131895_
               _hd130987131898_
               _tl130986131900_
               _e130991131903_
               _hd130990131906_
               _tl130989131908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match135498135499_
                                                   _e130964131831_
                                                   _hd130963131834_
                                                   _tl130962131836_
                                                   _e130967131839_
                                                   _hd130966131842_
                                                   _tl130965131844_
                                                   _e130970131847_
                                                   _hd130969131850_
                                                   _tl130968131852_
                                                   _e130973131855_
                                                   _hd130972131858_
                                                   _tl130971131860_
                                                   _e130976131863_
                                                   _hd130975131866_
                                                   _tl130974131868_
                                                   _e130979131871_
                                                   _hd130978131874_
                                                   _tl130977131876_
                                                   _e130982131879_
                                                   _hd130981131882_
                                                   _tl130980131884_
                                                   _e130985131887_
                                                   _hd130984131890_
                                                   _tl130983131892_))))
                                          (___match135498135499_
                                           _e130964131831_
                                           _hd130963131834_
                                           _tl130962131836_
                                           _e130967131839_
                                           _hd130966131842_
                                           _tl130965131844_
                                           _e130970131847_
                                           _hd130969131850_
                                           _tl130968131852_
                                           _e130973131855_
                                           _hd130972131858_
                                           _tl130971131860_
                                           _e130976131863_
                                           _hd130975131866_
                                           _tl130974131868_
                                           _e130979131871_
                                           _hd130978131874_
                                           _tl130977131876_
                                           _e130982131879_
                                           _hd130981131882_
                                           _tl130980131884_
                                           _e130985131887_
                                           _hd130984131890_
                                           _tl130983131892_))
                                      (___match135174135175_
                                       _e130964131831_
                                       _hd130963131834_
                                       _tl130962131836_
                                       _e130967131839_
                                       _hd130966131842_
                                       _tl130965131844_
                                       _e130970131847_
                                       _hd130969131850_
                                       _tl130968131852_
                                       _e130973131855_
                                       _hd130972131858_
                                       _tl130971131860_
                                       _e130976131863_
                                       _hd130975131866_
                                       _tl130974131868_
                                       _e130979131871_
                                       _hd130978131874_
                                       _tl130977131876_
                                       _e130982131879_
                                       _hd130981131882_
                                       _tl130980131884_
                                       _e130985131887_
                                       _hd130984131890_
                                       _tl130983131892_
                                       _e130988131895_
                                       _hd130987131898_
                                       _tl130986131900_))
                                  (___match135498135499_
                                   _e130964131831_
                                   _hd130963131834_
                                   _tl130962131836_
                                   _e130967131839_
                                   _hd130966131842_
                                   _tl130965131844_
                                   _e130970131847_
                                   _hd130969131850_
                                   _tl130968131852_
                                   _e130973131855_
                                   _hd130972131858_
                                   _tl130971131860_
                                   _e130976131863_
                                   _hd130975131866_
                                   _tl130974131868_
                                   _e130979131871_
                                   _hd130978131874_
                                   _tl130977131876_
                                   _e130982131879_
                                   _hd130981131882_
                                   _tl130980131884_
                                   _e130985131887_
                                   _hd130984131890_
                                   _tl130983131892_))))
                          (___match135498135499_
                           _e130964131831_
                           _hd130963131834_
                           _tl130962131836_
                           _e130967131839_
                           _hd130966131842_
                           _tl130965131844_
                           _e130970131847_
                           _hd130969131850_
                           _tl130968131852_
                           _e130973131855_
                           _hd130972131858_
                           _tl130971131860_
                           _e130976131863_
                           _hd130975131866_
                           _tl130974131868_
                           _e130979131871_
                           _hd130978131874_
                           _tl130977131876_
                           _e130982131879_
                           _hd130981131882_
                           _tl130980131884_
                           _e130985131887_
                           _hd130984131890_
                           _tl130983131892_))))
                  (___match135436135437_
                   _e130964131831_
                   _hd130963131834_
                   _tl130962131836_
                   _e130967131839_
                   _hd130966131842_
                   _tl130965131844_
                   _e130970131847_
                   _hd130969131850_
                   _tl130968131852_
                   _e130973131855_
                   _hd130972131858_
                   _tl130971131860_
                   _e130976131863_
                   _hd130975131866_
                   _tl130974131868_
                   _e130979131871_
                   _hd130978131874_
                   _tl130977131876_
                   _e130982131879_
                   _hd130981131882_
                   _tl130980131884_))
              (___kont135019135020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont135019135020_))
                                          (___kont135019135020_))
                                      (___kont135019135020_))))
                              (___kont135019135020_))))
                      (___kont135019135020_))
                  (___kont135019135020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135019135020_))
                                              (___kont135019135020_))
                                          (___kont135019135020_))))
                                  (___kont135019135020_))))
                          (___kont135019135020_))))
                  (___kont135019135020_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self129886_ _stx129887_)
        (letrec ((_force-e129889_
                  (lambda (_target130945_)
                    (let ((__tmp136311
                           (let ((__tmp136315
                                  (let ((__tmp136316
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp136316)))
                                 (__tmp136312
                                  (let ((__tmp136313
                                         (let ((__tmp136314
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130945_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp136314))))
                                    (declare (not safe))
                                    (cons __tmp136313 '()))))
                             (declare (not safe))
                             (cons __tmp136315 __tmp136312))))
                      (declare (not safe))
                      (cons '%#call __tmp136311)))))
          (let* ((___stx135503135504_ _stx129887_)
                 (_g129897130119_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135503135504_)))))
            (let ((___kont135505135506_
                   (lambda (_L130891_ _L130892_ _L130893_ _L130894_)
                     (let ((_$method130939_
                            (let ((__tmp136318
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129886_ 'methods)))
                                  (__tmp136317
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130892_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136318 __tmp136317)))
                           (_args130940_
                            (map (lambda (_g130927130929_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129886_
                                      _g130927130929_)))
                                 (let ((__tmp136319
                                        (lambda (_g130931130934_
                                                 _g130932130936_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130931130934_
                                                  _g130932130936_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp136319 '() _L130891_)))))
                       (let ((__tmp136320
                              (let ((__tmp136321
                                     (let ((__tmp136326
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129889_
                                               _$method130939_)))
                                           (__tmp136322
                                            (let ((__tmp136323
                                                   (let ((__tmp136324
                                                          (let ((__tmp136325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self129886_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp136325 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp136324))))
                                              (declare (not safe))
                                              (cons __tmp136323
                                                    _args130940_))))
                                       (declare (not safe))
                                       (cons __tmp136326 __tmp136322))))
                                (declare (not safe))
                                (cons '%#call __tmp136321))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136320 _stx129887_)))))
                  (___kont135509135510_
                   (lambda (_L130723_ _L130724_ _L130725_ _L130726_ _L130727_)
                     (let ((_$method130779_
                            (let ((__tmp136328
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129886_ 'methods)))
                                  (__tmp136327
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130724_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136328 __tmp136327)))
                           (_args130780_
                            (map (lambda (_g130767130769_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129886_
                                      _g130767130769_)))
                                 (let ((__tmp136329
                                        (lambda (_g130771130774_
                                                 _g130772130776_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130771130774_
                                                  _g130772130776_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp136329 '() _L130723_)))))
                       (let ((__tmp136330
                              (let ((__tmp136331
                                     (let ((__tmp136338
                                            (let ((__tmp136339
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp136339)))
                                           (__tmp136332
                                            (let ((__tmp136337
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129889_
                                                      _$method130779_)))
                                                  (__tmp136333
                                                   (let ((__tmp136334
                                                          (let ((__tmp136335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp136336
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129886_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp136336 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp136335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp136334
                                                           _args130780_))))
                                              (declare (not safe))
                                              (cons __tmp136337 __tmp136333))))
                                       (declare (not safe))
                                       (cons __tmp136338 __tmp136332))))
                                (declare (not safe))
                                (cons '%#call __tmp136331))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136330 _stx129887_)))))
                  (___kont135513135514_
                   (lambda (_L130554_ _L130555_ _L130556_)
                     (let* ((_$field130588_
                             (let ((__tmp136341
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self129886_ 'slots)))
                                   (__tmp136340
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L130554_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp136341 __tmp136340)))
                            (__tmp136342
                             (let ((__tmp136343
                                    (let ((__tmp136351
                                           (let ((__tmp136352
                                                  (let ((__tmp136353
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self129886_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp136353 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp136352)))
                                          (__tmp136344
                                           (let ((__tmp136349
                                                  (let ((__tmp136350
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field130588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136350)))
                                                 (__tmp136345
                                                  (let ((__tmp136346
                                                         (let ((__tmp136347
                                                                (let ((__tmp136348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self129886_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp136348 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp136347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136346 '()))))
                                             (declare (not safe))
                                             (cons __tmp136349 __tmp136345))))
                                      (declare (not safe))
                                      (cons __tmp136351 __tmp136344))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp136343))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp136342 _stx129887_))))
                  (___kont135515135516_
                   (lambda (_L130428_ _L130429_ _L130430_ _L130431_)
                     (let ((_$field130466_
                            (let ((__tmp136355
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129886_ 'slots)))
                                  (__tmp136354
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130429_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136355 __tmp136354)))
                           (_expr130467_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self129886_ _L130428_))))
                       (let ((__tmp136356
                              (let ((__tmp136357
                                     (let ((__tmp136366
                                            (let ((__tmp136367
                                                   (let ((__tmp136368
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129886_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp136368 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp136367)))
                                           (__tmp136358
                                            (let ((__tmp136364
                                                   (let ((__tmp136365
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field130466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp136365)))
                                                  (__tmp136359
                                                   (let ((__tmp136361
                                                          (let ((__tmp136362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp136363
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129886_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp136363 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp136362)))
                 (__tmp136360
                  (let () (declare (not safe)) (cons _expr130467_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp136361
                                                           __tmp136360))))
                                              (declare (not safe))
                                              (cons __tmp136364 __tmp136359))))
                                       (declare (not safe))
                                       (cons __tmp136366 __tmp136358))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp136357))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136356 _stx129887_)))))
                  (___kont135517135518_
                   (lambda (_L130300_ _L130301_)
                     (let* ((_accessor130323_
                             (let ((__tmp136369
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130301_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp136369)))
                            (_klass130325_
                             (let ((__tmp136370
                                    (##structure-ref
                                     _accessor130323_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129887_
                                __tmp136370)))
                            (_slot130327_
                             (##structure-ref
                              _accessor130323_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp136384
                                       (##structure-ref
                                        _accessor130323_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp136384))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass130325_
                                       _slot130327_))
                                    (##structure-ref
                                     _klass130325_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129887_
                           (let* ((_$field130333_
                                   (let ((__tmp136371
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129886_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp136371 _slot130327_)))
                                  (__tmp136372
                                   (let ((__tmp136373
                                          (let ((__tmp136381
                                                 (let ((__tmp136382
                                                        (let ((__tmp136383
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129886_ 'klass))))
                  (declare (not safe))
                  (cons __tmp136383 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp136382)))
                                                (__tmp136374
                                                 (let ((__tmp136379
                                                        (let ((__tmp136380
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field130333_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp136380)))
               (__tmp136375
                (let ((__tmp136376
                       (let ((__tmp136377
                              (let ((__tmp136378
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129886_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp136378 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp136377))))
                  (declare (not safe))
                  (cons __tmp136376 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp136379
                                                         __tmp136375))))
                                            (declare (not safe))
                                            (cons __tmp136381 __tmp136374))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp136373))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp136372
                              _stx129887_))))))
                  (___kont135519135520_
                   (lambda (_L130195_ _L130196_ _L130197_)
                     (let* ((_mutator130225_
                             (let ((__tmp136385
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130197_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp136385)))
                            (_klass130227_
                             (let ((__tmp136386
                                    (##structure-ref
                                     _mutator130225_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129887_
                                __tmp136386)))
                            (_slot130229_
                             (##structure-ref
                              _mutator130225_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr130231_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self129886_ _L130195_))))
                       (if (and (let ((__tmp136411
                                       (##structure-ref
                                        _mutator130225_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp136411))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass130227_
                                       _slot130229_))
                                    (##structure-ref
                                     _klass130227_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp136401
                                  (let ((__tmp136402
                                         (let ((__tmp136408
                                                (let ((__tmp136410
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp136409
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L130197_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp136410
                                                        __tmp136409)))
                                               (__tmp136403
                                                (let ((__tmp136405
                                                       (let ((__tmp136407
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp136406
                      (let () (declare (not safe)) (cons _L130196_ '()))))
                 (declare (not safe))
                 (cons __tmp136407 __tmp136406)))
              (__tmp136404
               (let () (declare (not safe)) (cons _expr130231_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136405
                                                        __tmp136404))))
                                           (declare (not safe))
                                           (cons __tmp136408 __tmp136403))))
                                    (declare (not safe))
                                    (cons '%#call __tmp136402))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp136401 _stx129887_))
                           (let* ((_$field130237_
                                   (let ((__tmp136387
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129886_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp136387 _slot130229_)))
                                  (__tmp136388
                                   (let ((__tmp136389
                                          (let ((__tmp136398
                                                 (let ((__tmp136399
                                                        (let ((__tmp136400
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129886_ 'klass))))
                  (declare (not safe))
                  (cons __tmp136400 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp136399)))
                                                (__tmp136390
                                                 (let ((__tmp136396
                                                        (let ((__tmp136397
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field130237_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp136397)))
               (__tmp136391
                (let ((__tmp136393
                       (let ((__tmp136394
                              (let ((__tmp136395
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129886_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp136395 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp136394)))
                      (__tmp136392
                       (let () (declare (not safe)) (cons _expr130231_ '()))))
                  (declare (not safe))
                  (cons __tmp136393 __tmp136392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp136396
                                                         __tmp136391))))
                                            (declare (not safe))
                                            (cons __tmp136398 __tmp136390))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp136389))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp136388
                              _stx129887_))))))
                  (___kont135521135522_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self129886_ _stx129887_)))))
              (let* ((___match136002136003_
                      (lambda (_e130093130131_
                               _hd130092130134_
                               _tl130091130136_
                               _e130096130139_
                               _hd130095130142_
                               _tl130094130144_
                               _e130099130147_
                               _hd130098130150_
                               _tl130097130152_
                               _e130102130155_
                               _hd130101130158_
                               _tl130100130160_
                               _e130105130163_
                               _hd130104130166_
                               _tl130103130168_
                               _e130108130171_
                               _hd130107130174_
                               _tl130106130176_
                               _e130111130179_
                               _hd130110130182_
                               _tl130109130184_
                               _e130114130187_
                               _hd130113130190_
                               _tl130112130192_)
                        (let ((_L130195_ _hd130113130190_)
                              (_L130196_ _hd130110130182_)
                              (_L130197_ _hd130101130158_))
                          (if (and (let ((__tmp136414
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129886_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130196_
                                      __tmp136414))
                                   (let ((__tmp136412
                                          (let ((__tmp136413
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L130197_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp136413))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp136412
                                      'gxc#!mutator::t)))
                              (___kont135519135520_
                               _L130195_
                               _L130196_
                               _L130197_)
                              (___kont135521135522_)))))
                     (___match136000136001_
                      (lambda (_e130093130131_
                               _hd130092130134_
                               _tl130091130136_
                               _e130096130139_
                               _hd130095130142_
                               _tl130094130144_
                               _e130099130147_
                               _hd130098130150_
                               _tl130097130152_
                               _e130102130155_
                               _hd130101130158_
                               _tl130100130160_
                               _e130105130163_
                               _hd130104130166_
                               _tl130103130168_
                               _e130108130171_
                               _hd130107130174_
                               _tl130106130176_
                               _e130111130179_
                               _hd130110130182_
                               _tl130109130184_
                               _e130114130187_
                               _hd130113130190_
                               _tl130112130192_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130112130192_))
                            (___match136002136003_
                             _e130093130131_
                             _hd130092130134_
                             _tl130091130136_
                             _e130096130139_
                             _hd130095130142_
                             _tl130094130144_
                             _e130099130147_
                             _hd130098130150_
                             _tl130097130152_
                             _e130102130155_
                             _hd130101130158_
                             _tl130100130160_
                             _e130105130163_
                             _hd130104130166_
                             _tl130103130168_
                             _e130108130171_
                             _hd130107130174_
                             _tl130106130176_
                             _e130111130179_
                             _hd130110130182_
                             _tl130109130184_
                             _e130114130187_
                             _hd130113130190_
                             _tl130112130192_)
                            (___kont135521135522_))))
                     (___match135994135995_
                      (lambda (_e130093130131_
                               _hd130092130134_
                               _tl130091130136_
                               _e130096130139_
                               _hd130095130142_
                               _tl130094130144_
                               _e130099130147_
                               _hd130098130150_
                               _tl130097130152_
                               _e130102130155_
                               _hd130101130158_
                               _tl130100130160_
                               _e130105130163_
                               _hd130104130166_
                               _tl130103130168_
                               _e130108130171_
                               _hd130107130174_
                               _tl130106130176_
                               _e130111130179_
                               _hd130110130182_
                               _tl130109130184_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130103130168_))
                            (let ((_e130114130187_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130103130168_))))
                              (let ((_tl130112130192_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130114130187_)))
                                    (_hd130113130190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130114130187_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130112130192_))
                                    (___match136002136003_
                                     _e130093130131_
                                     _hd130092130134_
                                     _tl130091130136_
                                     _e130096130139_
                                     _hd130095130142_
                                     _tl130094130144_
                                     _e130099130147_
                                     _hd130098130150_
                                     _tl130097130152_
                                     _e130102130155_
                                     _hd130101130158_
                                     _tl130100130160_
                                     _e130105130163_
                                     _hd130104130166_
                                     _tl130103130168_
                                     _e130108130171_
                                     _hd130107130174_
                                     _tl130106130176_
                                     _e130111130179_
                                     _hd130110130182_
                                     _tl130109130184_
                                     _e130114130187_
                                     _hd130113130190_
                                     _tl130112130192_)
                                    (___kont135521135522_))))
                            (___kont135521135522_))))
                     (___match135940135941_
                      (lambda (_e130069130244_
                               _hd130068130247_
                               _tl130067130249_
                               _e130072130252_
                               _hd130071130255_
                               _tl130070130257_
                               _e130075130260_
                               _hd130074130263_
                               _tl130073130265_
                               _e130078130268_
                               _hd130077130271_
                               _tl130076130273_
                               _e130081130276_
                               _hd130080130279_
                               _tl130079130281_
                               _e130084130284_
                               _hd130083130287_
                               _tl130082130289_
                               _e130087130292_
                               _hd130086130295_
                               _tl130085130297_)
                        (let ((_L130300_ _hd130086130295_)
                              (_L130301_ _hd130077130271_))
                          (if (and (let ((__tmp136417
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129886_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130300_
                                      __tmp136417))
                                   (let ((__tmp136415
                                          (let ((__tmp136416
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L130301_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp136416))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp136415
                                      'gxc#!accessor::t)))
                              (___kont135517135518_ _L130300_ _L130301_)
                              (___kont135521135522_)))))
                     (___match135938135939_
                      (lambda (_e130069130244_
                               _hd130068130247_
                               _tl130067130249_
                               _e130072130252_
                               _hd130071130255_
                               _tl130070130257_
                               _e130075130260_
                               _hd130074130263_
                               _tl130073130265_
                               _e130078130268_
                               _hd130077130271_
                               _tl130076130273_
                               _e130081130276_
                               _hd130080130279_
                               _tl130079130281_
                               _e130084130284_
                               _hd130083130287_
                               _tl130082130289_
                               _e130087130292_
                               _hd130086130295_
                               _tl130085130297_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130079130281_))
                            (___match135940135941_
                             _e130069130244_
                             _hd130068130247_
                             _tl130067130249_
                             _e130072130252_
                             _hd130071130255_
                             _tl130070130257_
                             _e130075130260_
                             _hd130074130263_
                             _tl130073130265_
                             _e130078130268_
                             _hd130077130271_
                             _tl130076130273_
                             _e130081130276_
                             _hd130080130279_
                             _tl130079130281_
                             _e130084130284_
                             _hd130083130287_
                             _tl130082130289_
                             _e130087130292_
                             _hd130086130295_
                             _tl130085130297_)
                            (___match135994135995_
                             _e130069130244_
                             _hd130068130247_
                             _tl130067130249_
                             _e130072130252_
                             _hd130071130255_
                             _tl130070130257_
                             _e130075130260_
                             _hd130074130263_
                             _tl130073130265_
                             _e130078130268_
                             _hd130077130271_
                             _tl130076130273_
                             _e130081130276_
                             _hd130080130279_
                             _tl130079130281_
                             _e130084130284_
                             _hd130083130287_
                             _tl130082130289_
                             _e130087130292_
                             _hd130086130295_
                             _tl130085130297_))))
                     (___match135884135885_
                      (lambda (_e130034130340_
                               _hd130033130343_
                               _tl130032130345_
                               _e130037130348_
                               _hd130036130351_
                               _tl130035130353_
                               _e130040130356_
                               _hd130039130359_
                               _tl130038130361_
                               _e130043130364_
                               _hd130042130367_
                               _tl130041130369_
                               _e130046130372_
                               _hd130045130375_
                               _tl130044130377_
                               _e130049130380_
                               _hd130048130383_
                               _tl130047130385_
                               _e130052130388_
                               _hd130051130391_
                               _tl130050130393_
                               _e130055130396_
                               _hd130054130399_
                               _tl130053130401_
                               _e130058130404_
                               _hd130057130407_
                               _tl130056130409_
                               _e130061130412_
                               _hd130060130415_
                               _tl130059130417_
                               _e130064130420_
                               _hd130063130423_
                               _tl130062130425_)
                        (let ((_L130428_ _hd130063130423_)
                              (_L130429_ _hd130060130415_)
                              (_L130430_ _hd130051130391_)
                              (_L130431_ _hd130042130367_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130431_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130431_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp136418
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129886_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130430_
                                      __tmp136418)))
                              (___kont135515135516_
                               _L130428_
                               _L130429_
                               _L130430_
                               _L130431_)
                              (___kont135521135522_)))))
                     (___match135876135877_
                      (lambda (_e130034130340_
                               _hd130033130343_
                               _tl130032130345_
                               _e130037130348_
                               _hd130036130351_
                               _tl130035130353_
                               _e130040130356_
                               _hd130039130359_
                               _tl130038130361_
                               _e130043130364_
                               _hd130042130367_
                               _tl130041130369_
                               _e130046130372_
                               _hd130045130375_
                               _tl130044130377_
                               _e130049130380_
                               _hd130048130383_
                               _tl130047130385_
                               _e130052130388_
                               _hd130051130391_
                               _tl130050130393_
                               _e130055130396_
                               _hd130054130399_
                               _tl130053130401_
                               _e130058130404_
                               _hd130057130407_
                               _tl130056130409_
                               _e130061130412_
                               _hd130060130415_
                               _tl130059130417_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130053130401_))
                            (let ((_e130064130420_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130053130401_))))
                              (let ((_tl130062130425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130064130420_)))
                                    (_hd130063130423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130064130420_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130062130425_))
                                    (___match135884135885_
                                     _e130034130340_
                                     _hd130033130343_
                                     _tl130032130345_
                                     _e130037130348_
                                     _hd130036130351_
                                     _tl130035130353_
                                     _e130040130356_
                                     _hd130039130359_
                                     _tl130038130361_
                                     _e130043130364_
                                     _hd130042130367_
                                     _tl130041130369_
                                     _e130046130372_
                                     _hd130045130375_
                                     _tl130044130377_
                                     _e130049130380_
                                     _hd130048130383_
                                     _tl130047130385_
                                     _e130052130388_
                                     _hd130051130391_
                                     _tl130050130393_
                                     _e130055130396_
                                     _hd130054130399_
                                     _tl130053130401_
                                     _e130058130404_
                                     _hd130057130407_
                                     _tl130056130409_
                                     _e130061130412_
                                     _hd130060130415_
                                     _tl130059130417_
                                     _e130064130420_
                                     _hd130063130423_
                                     _tl130062130425_)
                                    (___kont135521135522_))))
                            (___match136000136001_
                             _e130034130340_
                             _hd130033130343_
                             _tl130032130345_
                             _e130037130348_
                             _hd130036130351_
                             _tl130035130353_
                             _e130040130356_
                             _hd130039130359_
                             _tl130038130361_
                             _e130043130364_
                             _hd130042130367_
                             _tl130041130369_
                             _e130046130372_
                             _hd130045130375_
                             _tl130044130377_
                             _e130049130380_
                             _hd130048130383_
                             _tl130047130385_
                             _e130052130388_
                             _hd130051130391_
                             _tl130050130393_
                             _e130055130396_
                             _hd130054130399_
                             _tl130053130401_))))
                     (___match135798135799_
                      (lambda (_e130000130474_
                               _hd129999130477_
                               _tl129998130479_
                               _e130003130482_
                               _hd130002130485_
                               _tl130001130487_
                               _e130006130490_
                               _hd130005130493_
                               _tl130004130495_
                               _e130009130498_
                               _hd130008130501_
                               _tl130007130503_
                               _e130012130506_
                               _hd130011130509_
                               _tl130010130511_
                               _e130015130514_
                               _hd130014130517_
                               _tl130013130519_
                               _e130018130522_
                               _hd130017130525_
                               _tl130016130527_
                               _e130021130530_
                               _hd130020130533_
                               _tl130019130535_
                               _e130024130538_
                               _hd130023130541_
                               _tl130022130543_
                               _e130027130546_
                               _hd130026130549_
                               _tl130025130551_)
                        (let ((_L130554_ _hd130026130549_)
                              (_L130555_ _hd130017130525_)
                              (_L130556_ _hd130008130501_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130556_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130556_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp136419
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129886_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130555_
                                      __tmp136419)))
                              (___kont135513135514_
                               _L130554_
                               _L130555_
                               _L130556_)
                              (___match136002136003_
                               _e130000130474_
                               _hd129999130477_
                               _tl129998130479_
                               _e130003130482_
                               _hd130002130485_
                               _tl130001130487_
                               _e130006130490_
                               _hd130005130493_
                               _tl130004130495_
                               _e130009130498_
                               _hd130008130501_
                               _tl130007130503_
                               _e130012130506_
                               _hd130011130509_
                               _tl130010130511_
                               _e130015130514_
                               _hd130014130517_
                               _tl130013130519_
                               _e130018130522_
                               _hd130017130525_
                               _tl130016130527_
                               _e130021130530_
                               _hd130020130533_
                               _tl130019130535_)))))
                     (___match135796135797_
                      (lambda (_e130000130474_
                               _hd129999130477_
                               _tl129998130479_
                               _e130003130482_
                               _hd130002130485_
                               _tl130001130487_
                               _e130006130490_
                               _hd130005130493_
                               _tl130004130495_
                               _e130009130498_
                               _hd130008130501_
                               _tl130007130503_
                               _e130012130506_
                               _hd130011130509_
                               _tl130010130511_
                               _e130015130514_
                               _hd130014130517_
                               _tl130013130519_
                               _e130018130522_
                               _hd130017130525_
                               _tl130016130527_
                               _e130021130530_
                               _hd130020130533_
                               _tl130019130535_
                               _e130024130538_
                               _hd130023130541_
                               _tl130022130543_
                               _e130027130546_
                               _hd130026130549_
                               _tl130025130551_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130019130535_))
                            (___match135798135799_
                             _e130000130474_
                             _hd129999130477_
                             _tl129998130479_
                             _e130003130482_
                             _hd130002130485_
                             _tl130001130487_
                             _e130006130490_
                             _hd130005130493_
                             _tl130004130495_
                             _e130009130498_
                             _hd130008130501_
                             _tl130007130503_
                             _e130012130506_
                             _hd130011130509_
                             _tl130010130511_
                             _e130015130514_
                             _hd130014130517_
                             _tl130013130519_
                             _e130018130522_
                             _hd130017130525_
                             _tl130016130527_
                             _e130021130530_
                             _hd130020130533_
                             _tl130019130535_
                             _e130024130538_
                             _hd130023130541_
                             _tl130022130543_
                             _e130027130546_
                             _hd130026130549_
                             _tl130025130551_)
                            (___match135876135877_
                             _e130000130474_
                             _hd129999130477_
                             _tl129998130479_
                             _e130003130482_
                             _hd130002130485_
                             _tl130001130487_
                             _e130006130490_
                             _hd130005130493_
                             _tl130004130495_
                             _e130009130498_
                             _hd130008130501_
                             _tl130007130503_
                             _e130012130506_
                             _hd130011130509_
                             _tl130010130511_
                             _e130015130514_
                             _hd130014130517_
                             _tl130013130519_
                             _e130018130522_
                             _hd130017130525_
                             _tl130016130527_
                             _e130021130530_
                             _hd130020130533_
                             _tl130019130535_
                             _e130024130538_
                             _hd130023130541_
                             _tl130022130543_
                             _e130027130546_
                             _hd130026130549_
                             _tl130025130551_))))
                     (___match135786135787_
                      (lambda (_e130000130474_
                               _hd129999130477_
                               _tl129998130479_
                               _e130003130482_
                               _hd130002130485_
                               _tl130001130487_
                               _e130006130490_
                               _hd130005130493_
                               _tl130004130495_
                               _e130009130498_
                               _hd130008130501_
                               _tl130007130503_
                               _e130012130506_
                               _hd130011130509_
                               _tl130010130511_
                               _e130015130514_
                               _hd130014130517_
                               _tl130013130519_
                               _e130018130522_
                               _hd130017130525_
                               _tl130016130527_
                               _e130021130530_
                               _hd130020130533_
                               _tl130019130535_
                               _e130024130538_
                               _hd130023130541_
                               _tl130022130543_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd130023130541_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130022130543_))
                                (let ((_e130027130546_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130022130543_))))
                                  (let ((_tl130025130551_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130027130546_)))
                                        (_hd130026130549_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130027130546_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130025130551_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130019130535_))
                                            (___match135798135799_
                                             _e130000130474_
                                             _hd129999130477_
                                             _tl129998130479_
                                             _e130003130482_
                                             _hd130002130485_
                                             _tl130001130487_
                                             _e130006130490_
                                             _hd130005130493_
                                             _tl130004130495_
                                             _e130009130498_
                                             _hd130008130501_
                                             _tl130007130503_
                                             _e130012130506_
                                             _hd130011130509_
                                             _tl130010130511_
                                             _e130015130514_
                                             _hd130014130517_
                                             _tl130013130519_
                                             _e130018130522_
                                             _hd130017130525_
                                             _tl130016130527_
                                             _e130021130530_
                                             _hd130020130533_
                                             _tl130019130535_
                                             _e130024130538_
                                             _hd130023130541_
                                             _tl130022130543_
                                             _e130027130546_
                                             _hd130026130549_
                                             _tl130025130551_)
                                            (___match135876135877_
                                             _e130000130474_
                                             _hd129999130477_
                                             _tl129998130479_
                                             _e130003130482_
                                             _hd130002130485_
                                             _tl130001130487_
                                             _e130006130490_
                                             _hd130005130493_
                                             _tl130004130495_
                                             _e130009130498_
                                             _hd130008130501_
                                             _tl130007130503_
                                             _e130012130506_
                                             _hd130011130509_
                                             _tl130010130511_
                                             _e130015130514_
                                             _hd130014130517_
                                             _tl130013130519_
                                             _e130018130522_
                                             _hd130017130525_
                                             _tl130016130527_
                                             _e130021130530_
                                             _hd130020130533_
                                             _tl130019130535_
                                             _e130024130538_
                                             _hd130023130541_
                                             _tl130022130543_
                                             _e130027130546_
                                             _hd130026130549_
                                             _tl130025130551_))
                                        (___match136000136001_
                                         _e130000130474_
                                         _hd129999130477_
                                         _tl129998130479_
                                         _e130003130482_
                                         _hd130002130485_
                                         _tl130001130487_
                                         _e130006130490_
                                         _hd130005130493_
                                         _tl130004130495_
                                         _e130009130498_
                                         _hd130008130501_
                                         _tl130007130503_
                                         _e130012130506_
                                         _hd130011130509_
                                         _tl130010130511_
                                         _e130015130514_
                                         _hd130014130517_
                                         _tl130013130519_
                                         _e130018130522_
                                         _hd130017130525_
                                         _tl130016130527_
                                         _e130021130530_
                                         _hd130020130533_
                                         _tl130019130535_))))
                                (___match136000136001_
                                 _e130000130474_
                                 _hd129999130477_
                                 _tl129998130479_
                                 _e130003130482_
                                 _hd130002130485_
                                 _tl130001130487_
                                 _e130006130490_
                                 _hd130005130493_
                                 _tl130004130495_
                                 _e130009130498_
                                 _hd130008130501_
                                 _tl130007130503_
                                 _e130012130506_
                                 _hd130011130509_
                                 _tl130010130511_
                                 _e130015130514_
                                 _hd130014130517_
                                 _tl130013130519_
                                 _e130018130522_
                                 _hd130017130525_
                                 _tl130016130527_
                                 _e130021130530_
                                 _hd130020130533_
                                 _tl130019130535_))
                            (___match136000136001_
                             _e130000130474_
                             _hd129999130477_
                             _tl129998130479_
                             _e130003130482_
                             _hd130002130485_
                             _tl130001130487_
                             _e130006130490_
                             _hd130005130493_
                             _tl130004130495_
                             _e130009130498_
                             _hd130008130501_
                             _tl130007130503_
                             _e130012130506_
                             _hd130011130509_
                             _tl130010130511_
                             _e130015130514_
                             _hd130014130517_
                             _tl130013130519_
                             _e130018130522_
                             _hd130017130525_
                             _tl130016130527_
                             _e130021130530_
                             _hd130020130533_
                             _tl130019130535_))))
                     (___match135718135719_
                      (lambda (_e129949130595_
                               _hd129948130598_
                               _tl129947130600_
                               _e129952130603_
                               _hd129951130606_
                               _tl129950130608_
                               _e129955130611_
                               _hd129954130614_
                               _tl129953130616_
                               _e129958130619_
                               _hd129957130622_
                               _tl129956130624_
                               _e129961130627_
                               _hd129960130630_
                               _tl129959130632_
                               _e129964130635_
                               _hd129963130638_
                               _tl129962130640_
                               _e129967130643_
                               _hd129966130646_
                               _tl129965130648_
                               _e129970130651_
                               _hd129969130654_
                               _tl129968130656_
                               _e129973130659_
                               _hd129972130662_
                               _tl129971130664_
                               _e129976130667_
                               _hd129975130670_
                               _tl129974130672_
                               _e129979130675_
                               _hd129978130678_
                               _tl129977130680_
                               _e129982130683_
                               _hd129981130686_
                               _tl129980130688_
                               _e129985130691_
                               _hd129984130694_
                               _tl129983130696_
                               ___splice135511135512_
                               _target129986130699_
                               _tl129988130701_)
                        (letrec ((_loop129989130704_
                                  (lambda (_hd129987130707_ _args129993130709_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129987130707_))
                                        (let ((_e129990130712_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129987130707_))))
                                          (let ((_lp-tl129992130717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129990130712_)))
                                                (_lp-hd129991130715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129990130712_))))
                                            (let ((__tmp136421
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129991130715_
                                                           _args129993130709_))))
                                              (declare (not safe))
                                              (_loop129989130704_
                                               _lp-tl129992130717_
                                               __tmp136421))))
                                        (let ((_args129994130720_
                                               (reverse _args129993130709_)))
                                          (let ((_L130723_ _args129994130720_)
                                                (_L130724_ _hd129984130694_)
                                                (_L130725_ _hd129975130670_)
                                                (_L130726_ _hd129966130646_)
                                                (_L130727_ _hd129957130622_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130727_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130726_
                                                        'call-method))
                                                     (let ((__tmp136420
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129886_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130725_
                                                        __tmp136420)))
                                                (___kont135509135510_
                                                 _L130723_
                                                 _L130724_
                                                 _L130725_
                                                 _L130726_
                                                 _L130727_)
                                                (___kont135521135522_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129989130704_ _target129986130699_ '())))))
                     (___match135676135677_
                      (lambda (_e129949130595_
                               _hd129948130598_
                               _tl129947130600_
                               _e129952130603_
                               _hd129951130606_
                               _tl129950130608_
                               _e129955130611_
                               _hd129954130614_
                               _tl129953130616_
                               _e129958130619_
                               _hd129957130622_
                               _tl129956130624_
                               _e129961130627_
                               _hd129960130630_
                               _tl129959130632_
                               _e129964130635_
                               _hd129963130638_
                               _tl129962130640_
                               _e129967130643_
                               _hd129966130646_
                               _tl129965130648_
                               _e129970130651_
                               _hd129969130654_
                               _tl129968130656_
                               _e129973130659_
                               _hd129972130662_
                               _tl129971130664_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129972130662_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129971130664_))
                                (let ((_e129976130667_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129971130664_))))
                                  (let ((_tl129974130672_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129976130667_)))
                                        (_hd129975130670_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129976130667_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129974130672_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129968130656_))
                                            (let ((_e129979130675_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129968130656_))))
                                              (let ((_tl129977130680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129979130675_)))
                                                    (_hd129978130678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129979130675_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129978130678_))
                                                    (let ((_e129982130683_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129978130678_))))
                                                      (let ((_tl129980130688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129982130683_)))
                    (_hd129981130686_
                     (let () (declare (not safe)) (##car _e129982130683_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129981130686_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129981130686_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129980130688_))
                            (let ((_e129985130691_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129980130688_))))
                              (let ((_tl129983130696_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129985130691_)))
                                    (_hd129984130694_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129985130691_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129983130696_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129977130680_))
                                        (let ((___splice135511135512_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129977130680_
                                                  '0))))
                                          (let ((_tl129988130701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135511135512_
                                                    '1)))
                                                (_target129986130699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135511135512_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129988130701_))
                                                (___match135718135719_
                                                 _e129949130595_
                                                 _hd129948130598_
                                                 _tl129947130600_
                                                 _e129952130603_
                                                 _hd129951130606_
                                                 _tl129950130608_
                                                 _e129955130611_
                                                 _hd129954130614_
                                                 _tl129953130616_
                                                 _e129958130619_
                                                 _hd129957130622_
                                                 _tl129956130624_
                                                 _e129961130627_
                                                 _hd129960130630_
                                                 _tl129959130632_
                                                 _e129964130635_
                                                 _hd129963130638_
                                                 _tl129962130640_
                                                 _e129967130643_
                                                 _hd129966130646_
                                                 _tl129965130648_
                                                 _e129970130651_
                                                 _hd129969130654_
                                                 _tl129968130656_
                                                 _e129973130659_
                                                 _hd129972130662_
                                                 _tl129971130664_
                                                 _e129976130667_
                                                 _hd129975130670_
                                                 _tl129974130672_
                                                 _e129979130675_
                                                 _hd129978130678_
                                                 _tl129977130680_
                                                 _e129982130683_
                                                 _hd129981130686_
                                                 _tl129980130688_
                                                 _e129985130691_
                                                 _hd129984130694_
                                                 _tl129983130696_
                                                 ___splice135511135512_
                                                 _target129986130699_
                                                 _tl129988130701_)
                                                (___kont135521135522_))))
                                        (___kont135521135522_))
                                    (___kont135521135522_))))
                            (___kont135521135522_))
                        (___kont135521135522_))
                    (___kont135521135522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135521135522_))))
                                            (___match136000136001_
                                             _e129949130595_
                                             _hd129948130598_
                                             _tl129947130600_
                                             _e129952130603_
                                             _hd129951130606_
                                             _tl129950130608_
                                             _e129955130611_
                                             _hd129954130614_
                                             _tl129953130616_
                                             _e129958130619_
                                             _hd129957130622_
                                             _tl129956130624_
                                             _e129961130627_
                                             _hd129960130630_
                                             _tl129959130632_
                                             _e129964130635_
                                             _hd129963130638_
                                             _tl129962130640_
                                             _e129967130643_
                                             _hd129966130646_
                                             _tl129965130648_
                                             _e129970130651_
                                             _hd129969130654_
                                             _tl129968130656_))
                                        (___match136000136001_
                                         _e129949130595_
                                         _hd129948130598_
                                         _tl129947130600_
                                         _e129952130603_
                                         _hd129951130606_
                                         _tl129950130608_
                                         _e129955130611_
                                         _hd129954130614_
                                         _tl129953130616_
                                         _e129958130619_
                                         _hd129957130622_
                                         _tl129956130624_
                                         _e129961130627_
                                         _hd129960130630_
                                         _tl129959130632_
                                         _e129964130635_
                                         _hd129963130638_
                                         _tl129962130640_
                                         _e129967130643_
                                         _hd129966130646_
                                         _tl129965130648_
                                         _e129970130651_
                                         _hd129969130654_
                                         _tl129968130656_))))
                                (___match136000136001_
                                 _e129949130595_
                                 _hd129948130598_
                                 _tl129947130600_
                                 _e129952130603_
                                 _hd129951130606_
                                 _tl129950130608_
                                 _e129955130611_
                                 _hd129954130614_
                                 _tl129953130616_
                                 _e129958130619_
                                 _hd129957130622_
                                 _tl129956130624_
                                 _e129961130627_
                                 _hd129960130630_
                                 _tl129959130632_
                                 _e129964130635_
                                 _hd129963130638_
                                 _tl129962130640_
                                 _e129967130643_
                                 _hd129966130646_
                                 _tl129965130648_
                                 _e129970130651_
                                 _hd129969130654_
                                 _tl129968130656_))
                            (___match135786135787_
                             _e129949130595_
                             _hd129948130598_
                             _tl129947130600_
                             _e129952130603_
                             _hd129951130606_
                             _tl129950130608_
                             _e129955130611_
                             _hd129954130614_
                             _tl129953130616_
                             _e129958130619_
                             _hd129957130622_
                             _tl129956130624_
                             _e129961130627_
                             _hd129960130630_
                             _tl129959130632_
                             _e129964130635_
                             _hd129963130638_
                             _tl129962130640_
                             _e129967130643_
                             _hd129966130646_
                             _tl129965130648_
                             _e129970130651_
                             _hd129969130654_
                             _tl129968130656_
                             _e129973130659_
                             _hd129972130662_
                             _tl129971130664_))))
                     (___match135608135609_
                      (lambda (_e129905130787_
                               _hd129904130790_
                               _tl129903130792_
                               _e129908130795_
                               _hd129907130798_
                               _tl129906130800_
                               _e129911130803_
                               _hd129910130806_
                               _tl129909130808_
                               _e129914130811_
                               _hd129913130814_
                               _tl129912130816_
                               _e129917130819_
                               _hd129916130822_
                               _tl129915130824_
                               _e129920130827_
                               _hd129919130830_
                               _tl129918130832_
                               _e129923130835_
                               _hd129922130838_
                               _tl129921130840_
                               _e129926130843_
                               _hd129925130846_
                               _tl129924130848_
                               _e129929130851_
                               _hd129928130854_
                               _tl129927130856_
                               _e129932130859_
                               _hd129931130862_
                               _tl129930130864_
                               ___splice135507135508_
                               _target129933130867_
                               _tl129935130869_)
                        (letrec ((_loop129936130872_
                                  (lambda (_hd129934130875_ _args129940130877_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129934130875_))
                                        (let ((_e129937130880_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129934130875_))))
                                          (let ((_lp-tl129939130885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129937130880_)))
                                                (_lp-hd129938130883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129937130880_))))
                                            (let ((__tmp136423
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129938130883_
                                                           _args129940130877_))))
                                              (declare (not safe))
                                              (_loop129936130872_
                                               _lp-tl129939130885_
                                               __tmp136423))))
                                        (let ((_args129941130888_
                                               (reverse _args129940130877_)))
                                          (let ((_L130891_ _args129941130888_)
                                                (_L130892_ _hd129931130862_)
                                                (_L130893_ _hd129922130838_)
                                                (_L130894_ _hd129913130814_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130894_
                                                        'call-method))
                                                     (let ((__tmp136422
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129886_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130893_
                                                        __tmp136422)))
                                                (___kont135505135506_
                                                 _L130891_
                                                 _L130892_
                                                 _L130893_
                                                 _L130894_)
                                                (___match135796135797_
                                                 _e129905130787_
                                                 _hd129904130790_
                                                 _tl129903130792_
                                                 _e129908130795_
                                                 _hd129907130798_
                                                 _tl129906130800_
                                                 _e129911130803_
                                                 _hd129910130806_
                                                 _tl129909130808_
                                                 _e129914130811_
                                                 _hd129913130814_
                                                 _tl129912130816_
                                                 _e129917130819_
                                                 _hd129916130822_
                                                 _tl129915130824_
                                                 _e129920130827_
                                                 _hd129919130830_
                                                 _tl129918130832_
                                                 _e129923130835_
                                                 _hd129922130838_
                                                 _tl129921130840_
                                                 _e129926130843_
                                                 _hd129925130846_
                                                 _tl129924130848_
                                                 _e129929130851_
                                                 _hd129928130854_
                                                 _tl129927130856_
                                                 _e129932130859_
                                                 _hd129931130862_
                                                 _tl129930130864_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129936130872_ _target129933130867_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135503135504_))
                    (let ((_e129905130787_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135503135504_))))
                      (let ((_tl129903130792_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129905130787_)))
                            (_hd129904130790_
                             (let ()
                               (declare (not safe))
                               (##car _e129905130787_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129903130792_))
                            (let ((_e129908130795_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129903130792_))))
                              (let ((_tl129906130800_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129908130795_)))
                                    (_hd129907130798_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129908130795_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129907130798_))
                                    (let ((_e129911130803_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129907130798_))))
                                      (let ((_tl129909130808_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129911130803_)))
                                            (_hd129910130806_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129911130803_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129910130806_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129910130806_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129909130808_))
                                                    (let ((_e129914130811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129909130808_))))
                                                      (let ((_tl129912130816_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129914130811_)))
                    (_hd129913130814_
                     (let () (declare (not safe)) (##car _e129914130811_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129912130816_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129906130800_))
                        (let ((_e129917130819_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129906130800_))))
                          (let ((_tl129915130824_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129917130819_)))
                                (_hd129916130822_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129917130819_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129916130822_))
                                (let ((_e129920130827_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129916130822_))))
                                  (let ((_tl129918130832_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129920130827_)))
                                        (_hd129919130830_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129920130827_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129919130830_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129919130830_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129918130832_))
                                                (let ((_e129923130835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129918130832_))))
                                                  (let ((_tl129921130840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129923130835_)))
                                                        (_hd129922130838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129923130835_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129921130840_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129915130824_))
                                                            (let ((_e129926130843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129915130824_))))
                      (let ((_tl129924130848_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129926130843_)))
                            (_hd129925130846_
                             (let ()
                               (declare (not safe))
                               (##car _e129926130843_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129925130846_))
                            (let ((_e129929130851_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129925130846_))))
                              (let ((_tl129927130856_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129929130851_)))
                                    (_hd129928130854_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129929130851_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129928130854_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129928130854_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129927130856_))
                                            (let ((_e129932130859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129927130856_))))
                                              (let ((_tl129930130864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129932130859_)))
                                                    (_hd129931130862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129932130859_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129930130864_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129924130848_))
                                                        (let ((___splice135507135508_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129924130848_ '0))))
                  (let ((_tl129935130869_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135507135508_ '1)))
                        (_target129933130867_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135507135508_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129935130869_))
                        (___match135608135609_
                         _e129905130787_
                         _hd129904130790_
                         _tl129903130792_
                         _e129908130795_
                         _hd129907130798_
                         _tl129906130800_
                         _e129911130803_
                         _hd129910130806_
                         _tl129909130808_
                         _e129914130811_
                         _hd129913130814_
                         _tl129912130816_
                         _e129917130819_
                         _hd129916130822_
                         _tl129915130824_
                         _e129920130827_
                         _hd129919130830_
                         _tl129918130832_
                         _e129923130835_
                         _hd129922130838_
                         _tl129921130840_
                         _e129926130843_
                         _hd129925130846_
                         _tl129924130848_
                         _e129929130851_
                         _hd129928130854_
                         _tl129927130856_
                         _e129932130859_
                         _hd129931130862_
                         _tl129930130864_
                         ___splice135507135508_
                         _target129933130867_
                         _tl129935130869_)
                        (___match135796135797_
                         _e129905130787_
                         _hd129904130790_
                         _tl129903130792_
                         _e129908130795_
                         _hd129907130798_
                         _tl129906130800_
                         _e129911130803_
                         _hd129910130806_
                         _tl129909130808_
                         _e129914130811_
                         _hd129913130814_
                         _tl129912130816_
                         _e129917130819_
                         _hd129916130822_
                         _tl129915130824_
                         _e129920130827_
                         _hd129919130830_
                         _tl129918130832_
                         _e129923130835_
                         _hd129922130838_
                         _tl129921130840_
                         _e129926130843_
                         _hd129925130846_
                         _tl129924130848_
                         _e129929130851_
                         _hd129928130854_
                         _tl129927130856_
                         _e129932130859_
                         _hd129931130862_
                         _tl129930130864_))))
                (___match135796135797_
                 _e129905130787_
                 _hd129904130790_
                 _tl129903130792_
                 _e129908130795_
                 _hd129907130798_
                 _tl129906130800_
                 _e129911130803_
                 _hd129910130806_
                 _tl129909130808_
                 _e129914130811_
                 _hd129913130814_
                 _tl129912130816_
                 _e129917130819_
                 _hd129916130822_
                 _tl129915130824_
                 _e129920130827_
                 _hd129919130830_
                 _tl129918130832_
                 _e129923130835_
                 _hd129922130838_
                 _tl129921130840_
                 _e129926130843_
                 _hd129925130846_
                 _tl129924130848_
                 _e129929130851_
                 _hd129928130854_
                 _tl129927130856_
                 _e129932130859_
                 _hd129931130862_
                 _tl129930130864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match136000136001_
                                                     _e129905130787_
                                                     _hd129904130790_
                                                     _tl129903130792_
                                                     _e129908130795_
                                                     _hd129907130798_
                                                     _tl129906130800_
                                                     _e129911130803_
                                                     _hd129910130806_
                                                     _tl129909130808_
                                                     _e129914130811_
                                                     _hd129913130814_
                                                     _tl129912130816_
                                                     _e129917130819_
                                                     _hd129916130822_
                                                     _tl129915130824_
                                                     _e129920130827_
                                                     _hd129919130830_
                                                     _tl129918130832_
                                                     _e129923130835_
                                                     _hd129922130838_
                                                     _tl129921130840_
                                                     _e129926130843_
                                                     _hd129925130846_
                                                     _tl129924130848_))))
                                            (___match136000136001_
                                             _e129905130787_
                                             _hd129904130790_
                                             _tl129903130792_
                                             _e129908130795_
                                             _hd129907130798_
                                             _tl129906130800_
                                             _e129911130803_
                                             _hd129910130806_
                                             _tl129909130808_
                                             _e129914130811_
                                             _hd129913130814_
                                             _tl129912130816_
                                             _e129917130819_
                                             _hd129916130822_
                                             _tl129915130824_
                                             _e129920130827_
                                             _hd129919130830_
                                             _tl129918130832_
                                             _e129923130835_
                                             _hd129922130838_
                                             _tl129921130840_
                                             _e129926130843_
                                             _hd129925130846_
                                             _tl129924130848_))
                                        (___match135676135677_
                                         _e129905130787_
                                         _hd129904130790_
                                         _tl129903130792_
                                         _e129908130795_
                                         _hd129907130798_
                                         _tl129906130800_
                                         _e129911130803_
                                         _hd129910130806_
                                         _tl129909130808_
                                         _e129914130811_
                                         _hd129913130814_
                                         _tl129912130816_
                                         _e129917130819_
                                         _hd129916130822_
                                         _tl129915130824_
                                         _e129920130827_
                                         _hd129919130830_
                                         _tl129918130832_
                                         _e129923130835_
                                         _hd129922130838_
                                         _tl129921130840_
                                         _e129926130843_
                                         _hd129925130846_
                                         _tl129924130848_
                                         _e129929130851_
                                         _hd129928130854_
                                         _tl129927130856_))
                                    (___match136000136001_
                                     _e129905130787_
                                     _hd129904130790_
                                     _tl129903130792_
                                     _e129908130795_
                                     _hd129907130798_
                                     _tl129906130800_
                                     _e129911130803_
                                     _hd129910130806_
                                     _tl129909130808_
                                     _e129914130811_
                                     _hd129913130814_
                                     _tl129912130816_
                                     _e129917130819_
                                     _hd129916130822_
                                     _tl129915130824_
                                     _e129920130827_
                                     _hd129919130830_
                                     _tl129918130832_
                                     _e129923130835_
                                     _hd129922130838_
                                     _tl129921130840_
                                     _e129926130843_
                                     _hd129925130846_
                                     _tl129924130848_))))
                            (___match136000136001_
                             _e129905130787_
                             _hd129904130790_
                             _tl129903130792_
                             _e129908130795_
                             _hd129907130798_
                             _tl129906130800_
                             _e129911130803_
                             _hd129910130806_
                             _tl129909130808_
                             _e129914130811_
                             _hd129913130814_
                             _tl129912130816_
                             _e129917130819_
                             _hd129916130822_
                             _tl129915130824_
                             _e129920130827_
                             _hd129919130830_
                             _tl129918130832_
                             _e129923130835_
                             _hd129922130838_
                             _tl129921130840_
                             _e129926130843_
                             _hd129925130846_
                             _tl129924130848_))))
                    (___match135938135939_
                     _e129905130787_
                     _hd129904130790_
                     _tl129903130792_
                     _e129908130795_
                     _hd129907130798_
                     _tl129906130800_
                     _e129911130803_
                     _hd129910130806_
                     _tl129909130808_
                     _e129914130811_
                     _hd129913130814_
                     _tl129912130816_
                     _e129917130819_
                     _hd129916130822_
                     _tl129915130824_
                     _e129920130827_
                     _hd129919130830_
                     _tl129918130832_
                     _e129923130835_
                     _hd129922130838_
                     _tl129921130840_))
                (___kont135521135522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135521135522_))
                                            (___kont135521135522_))
                                        (___kont135521135522_))))
                                (___kont135521135522_))))
                        (___kont135521135522_))
                    (___kont135521135522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135521135522_))
                                                (___kont135521135522_))
                                            (___kont135521135522_))))
                                    (___kont135521135522_))))
                            (___kont135521135522_))))
                    (___kont135521135522_))))))))))
