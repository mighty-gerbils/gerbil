(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710155060)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp136010 (list gxc#::identity::t))
            (__tmp136008
             (let ((__tmp136009
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136009 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp136010
         '()
         __tmp136008
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args134874_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args134874_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp136011
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
        (make-promise __tmp136011)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134866_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self134869_
                (let ((__obj136003
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj136003))
               (__tmp136012
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self134869_ _stx134866_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp136012
           gxc#current-compile-method
           _self134869_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp136015 (list gxc#::void::t))
            (__tmp136013
             (let ((__tmp136014
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136014 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp136015
         '(receiver methods slots)
         __tmp136013
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args134863_
        (apply make-instance gxc#::collect-object-refs::t _$args134863_)))
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
      (let ((__tmp136016
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin-annotation
                  gxc#collect-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#lambda
                  gxc#collect-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#case-lambda
                  gxc#collect-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#let-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec*-values
                  gxc#collect-body-let-values%))
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
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#set!
                  gxc#collect-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-object-refs::t)))))
        (declare (not safe))
        (make-promise __tmp136016)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g136017_
               _receiver134824134829_
               _methods134825134831_
               _slots134826134833_
               _stx134835_)
        (let* ((_receiver134838_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134824134829_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134824134829_))
               (_methods134840_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134825134831_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134825134831_))
               (_slots134842_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134826134833_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134826134833_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self134844_
                  (let ((__obj136005
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
                       __obj136005
                       _receiver134838_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136005
                       _methods134840_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136005
                       _slots134842_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj136005))
                 (__tmp136018
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134844_ _stx134835_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136018
             gxc#current-compile-method
             _self134844_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys134823134851_ . _args134853_)
        (apply gxc#apply-collect-object-refs__%
               _keys134823134851_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134823134851_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134823134851_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134823134851_ 'slots: absent-value))
               _args134853_)))
    (define gxc#apply-collect-object-refs
      (lambda _args134827134859_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args134827134859_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp136021 (list gxc#::basic-xform-expression::t))
            (__tmp136019
             (let ((__tmp136020
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136020 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp136021
         '(receiver klass methods slots)
         __tmp136019
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args134819_
        (apply make-instance gxc#::subst-object-refs::t _$args134819_)))
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
      (let ((__tmp136022
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
        (make-promise __tmp136022)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g136023_
               _receiver134775134781_
               _klass134776134783_
               _methods134777134785_
               _slots134778134787_
               _stx134789_)
        (let* ((_receiver134792_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134775134781_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134775134781_))
               (_klass134794_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass134776134783_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass134776134783_))
               (_methods134796_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134777134785_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134777134785_))
               (_slots134798_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134778134787_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134778134787_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self134800_
                  (let ((__obj136007
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
                       __obj136007
                       _receiver134792_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136007
                       _klass134794_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136007
                       _methods134796_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136007
                       _slots134798_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj136007))
                 (__tmp136024
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134800_ _stx134789_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136024
             gxc#current-compile-method
             _self134800_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys134774134807_ . _args134809_)
        (apply gxc#apply-subst-object-refs__%
               _keys134774134807_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134774134807_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134774134807_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134774134807_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134774134807_ 'slots: absent-value))
               _args134809_)))
    (define gxc#apply-subst-object-refs
      (lambda _args134779134815_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args134779134815_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self131984_ _stx131985_)
        (letrec ((_generate-method-bind131987_
                  (lambda (_$klass134766_
                           _$method-table134767_
                           _id134768_
                           _$id134769_)
                    (let ((_$tmp134771_
                           (let ((__tmp136025 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136025))))
                      (let ((__tmp136073
                             (let ()
                               (declare (not safe))
                               (cons _$id134769_ '())))
                            (__tmp136026
                             (let ((__tmp136027
                                    (let ((__tmp136028
                                           (let ((__tmp136071
                                                  (let ((__tmp136072
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136072)))
                                                 (__tmp136029
                                                  (let ((__tmp136030
                                                         (let ((__tmp136031
                                                                (let ((__tmp136032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136033
                                      (let ((__tmp136034
                                             (let ((__tmp136054
                                                    (let ((__tmp136055
                                                           (let ((__tmp136070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134771_ '())))
                         (__tmp136056
                          (let ((__tmp136057
                                 (let ((__tmp136058
                                        (let ((__tmp136068
                                               (let ((__tmp136069
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp136069)))
                                              (__tmp136059
                                               (let ((__tmp136066
                                                      (let ((__tmp136067
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134767_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp136067)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp136060
                                                      (let ((__tmp136064
                                                             (let ((__tmp136065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134768_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp136065)))
                    (__tmp136061
                     (let ((__tmp136062
                            (let ((__tmp136063
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136063))))
                       (declare (not safe))
                       (cons __tmp136062 '()))))
                (declare (not safe))
                (cons __tmp136064 __tmp136061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp136066
                                                       __tmp136060))))
                                          (declare (not safe))
                                          (cons __tmp136068 __tmp136059))))
                                   (declare (not safe))
                                   (cons '%#call __tmp136058))))
                            (declare (not safe))
                            (cons __tmp136057 '()))))
                     (declare (not safe))
                     (cons __tmp136070 __tmp136056))))
              (declare (not safe))
              (cons __tmp136055 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136035
                                                    (let ((__tmp136036
                                                           (let ((__tmp136037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136052
                                 (let ((__tmp136053
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134771_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp136053)))
                                (__tmp136038
                                 (let ((__tmp136050
                                        (let ((__tmp136051
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134771_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp136051)))
                                       (__tmp136039
                                        (let ((__tmp136040
                                               (let ((__tmp136041
                                                      (let ((__tmp136048
                                                             (let ((__tmp136049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp136049)))
                    (__tmp136042
                     (let ((__tmp136046
                            (let ((__tmp136047
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136047)))
                           (__tmp136043
                            (let ((__tmp136044
                                   (let ((__tmp136045
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134768_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp136045))))
                              (declare (not safe))
                              (cons __tmp136044 '()))))
                       (declare (not safe))
                       (cons __tmp136046 __tmp136043))))
                (declare (not safe))
                (cons __tmp136048 __tmp136042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp136041))))
                                          (declare (not safe))
                                          (cons __tmp136040 '()))))
                                   (declare (not safe))
                                   (cons __tmp136050 __tmp136039))))
                            (declare (not safe))
                            (cons __tmp136052 __tmp136038))))
                     (declare (not safe))
                     (cons '%#if __tmp136037))))
              (declare (not safe))
              (cons __tmp136036 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136054
                                                     __tmp136035))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp136034))))
                                 (declare (not safe))
                                 (cons __tmp136033 '()))))
                          (declare (not safe))
                          (cons '() __tmp136032))))
                   (declare (not safe))
                   (cons '%#lambda __tmp136031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136030 '()))))
                                             (declare (not safe))
                                             (cons __tmp136071 __tmp136029))))
                                      (declare (not safe))
                                      (cons '%#call __tmp136028))))
                               (declare (not safe))
                               (cons __tmp136027 '()))))
                        (declare (not safe))
                        (cons __tmp136073 __tmp136026)))))
                 (_generate-slot-bind131988_
                  (lambda (_$klass134760_ _id134761_ _$id134762_)
                    (let ((_$tmp134764_
                           (let ((__tmp136074 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136074))))
                      (let ((__tmp136111
                             (let ()
                               (declare (not safe))
                               (cons _$id134762_ '())))
                            (__tmp136075
                             (let ((__tmp136076
                                    (let ((__tmp136077
                                           (let ((__tmp136097
                                                  (let ((__tmp136098
                                                         (let ((__tmp136110
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134764_ '())))
                       (__tmp136099
                        (let ((__tmp136100
                               (let ((__tmp136101
                                      (let ((__tmp136108
                                             (let ((__tmp136109
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp136109)))
                                            (__tmp136102
                                             (let ((__tmp136106
                                                    (let ((__tmp136107
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp136107)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136103
                                                    (let ((__tmp136104
                                                           (let ((__tmp136105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134761_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp136105))))
              (declare (not safe))
              (cons __tmp136104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136106
                                                     __tmp136103))))
                                        (declare (not safe))
                                        (cons __tmp136108 __tmp136102))))
                                 (declare (not safe))
                                 (cons '%#call __tmp136101))))
                          (declare (not safe))
                          (cons __tmp136100 '()))))
                   (declare (not safe))
                   (cons __tmp136110 __tmp136099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136098 '())))
                                                 (__tmp136078
                                                  (let ((__tmp136079
                                                         (let ((__tmp136080
                                                                (let ((__tmp136095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136096
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134764_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp136096)))
                              (__tmp136081
                               (let ((__tmp136093
                                      (let ((__tmp136094
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134764_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp136094)))
                                     (__tmp136082
                                      (let ((__tmp136083
                                             (let ((__tmp136084
                                                    (let ((__tmp136091
                                                           (let ((__tmp136092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp136092)))
                  (__tmp136085
                   (let ((__tmp136089
                          (let ((__tmp136090
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp136090)))
                         (__tmp136086
                          (let ((__tmp136087
                                 (let ((__tmp136088
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134761_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp136088))))
                            (declare (not safe))
                            (cons __tmp136087 '()))))
                     (declare (not safe))
                     (cons __tmp136089 __tmp136086))))
              (declare (not safe))
              (cons __tmp136091 __tmp136085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp136084))))
                                        (declare (not safe))
                                        (cons __tmp136083 '()))))
                                 (declare (not safe))
                                 (cons __tmp136093 __tmp136082))))
                          (declare (not safe))
                          (cons __tmp136095 __tmp136081))))
                   (declare (not safe))
                   (cons '%#if __tmp136080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136079 '()))))
                                             (declare (not safe))
                                             (cons __tmp136097 __tmp136078))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp136077))))
                               (declare (not safe))
                               (cons __tmp136076 '()))))
                        (declare (not safe))
                        (cons __tmp136111 __tmp136075)))))
                 (_generate-specializer-impl131989_
                  (lambda (_$klass134754_
                           _$method-table134755_
                           _methods-bind134756_
                           _slots-bind134757_
                           _specializer-impl134758_)
                    (let ((__tmp136112
                           (let ((__tmp136113
                                  (let ((__tmp136119
                                         (let ((__tmp136120
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134755_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134754_ __tmp136120)))
                                        (__tmp136114
                                         (let ((__tmp136115
                                                (let ((__tmp136116
                                                       (let ((__tmp136118
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134757_ _methods-bind134756_)))
                     (__tmp136117
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134758_ '()))))
                 (declare (not safe))
                 (cons __tmp136118 __tmp136117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp136116))))
                                           (declare (not safe))
                                           (cons __tmp136115 '()))))
                                    (declare (not safe))
                                    (cons __tmp136119 __tmp136114))))
                             (declare (not safe))
                             (cons '%#lambda __tmp136113))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp136112 _stx131985_))))
                 (_generate-specializer-def131990_
                  (lambda (_id134750_
                           _specializer-id134751_
                           _specializer-impl134752_)
                    (let ((__tmp136121
                           (let ((__tmp136122
                                  (let ((__tmp136123
                                         (let ((__tmp136136
                                                (let ((__tmp136137
                                                       (let ((__tmp136138
                                                              (let ((__tmp136140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134751_ '())))
                            (__tmp136139
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134752_ '()))))
                        (declare (not safe))
                        (cons __tmp136140 __tmp136139))))
                 (declare (not safe))
                 (cons '%#define-values __tmp136138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp136137
                                                   _stx131985_)))
                                               (__tmp136124
                                                (let ((__tmp136125
                                                       (let ((__tmp136126
                                                              (let ((__tmp136127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136134
                                    (let ((__tmp136135
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp136135)))
                                   (__tmp136128
                                    (let ((__tmp136132
                                           (let ((__tmp136133
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134750_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp136133)))
                                          (__tmp136129
                                           (let ((__tmp136130
                                                  (let ((__tmp136131
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp136131))))
                                             (declare (not safe))
                                             (cons __tmp136130 '()))))
                                      (declare (not safe))
                                      (cons __tmp136132 __tmp136129))))
                               (declare (not safe))
                               (cons __tmp136134 __tmp136128))))
                        (declare (not safe))
                        (cons '%#call __tmp136127))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp136126 _stx131985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136125 '()))))
                                           (declare (not safe))
                                           (cons __tmp136136 __tmp136124))))
                                    (declare (not safe))
                                    (cons _stx131985_ __tmp136123))))
                             (declare (not safe))
                             (cons '%#begin __tmp136122))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp136121 _stx131985_)))))
          (let* ((___stx134963134964_ _stx131985_)
                 (_g131993132013_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134963134964_)))))
            (let ((___kont134965134966_
                   (lambda (_L132057_ _L132058_)
                     (let ((_method-calls132077_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs132078_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty132079_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?132081_
                                 (lambda ()
                                   (if (let ((__tmp136142
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls132077_))))
                                         (declare (not safe))
                                         (fxzero? __tmp136142))
                                       (let ((__tmp136141
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs132078_))))
                                         (declare (not safe))
                                         (fxzero? __tmp136141))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L132057_))
                             (let* ((___stx134877134878_ _L132057_)
                                    (_g132468132486_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134877134878_)))))
                               (let ((___kont134879134880_
                                      (lambda (_L132522_ _L132523_ _L132524_)
                                        (for-each
                                         (lambda (_g132539132541_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g132539132541_
                                              'receiver:
                                              _L132524_
                                              'methods:
                                              _method-calls132077_
                                              'slots:
                                              _slot-refs132078_)))
                                         _L132522_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?132081_))
                                            _stx131985_
                                            (let* ((_specializer-id132550_
                                                    (let* ((_id132544_
                                                            (let ((__tmp136264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L132058_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp136264 '"::specialize")))
                   (_specializer-id132547_
                    (let ((__tmp136265
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131985_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id132544_ __tmp136265))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id132547_))
              _specializer-id132547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass132552_
                                                    (let ((__tmp136266
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp136266)))
                                                   (_$method-table132554_
                                                    (let ((__tmp136267
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp136267)))
                                                   (_methods132556_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls132077_)))
                                                   (_$methods132560_
                                                    (map (lambda (_id132558_)
                                                           (let ((__tmp136268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132558_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp136268)))
                 _methods132556_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g136269_
                                                    (for-each
                                                     (lambda (_g132561132564_
                                                              _g132562132566_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls132077_
                                                          _g132561132564_
                                                          _g132562132566_)))
                                                     _methods132556_
                                                     _$methods132560_))
                                                   (_methods-bind132577_
                                                    (map (lambda (_g132569132572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132570132574_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131987_
                      _$klass132552_
                      _$method-table132554_
                      _g132569132572_
                      _g132570132574_)))
                 _methods132556_
                 _$methods132560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots132579_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs132078_)))
                                                   (_$slots132583_
                                                    (map (lambda (_id132581_)
                                                           (let ((__tmp136270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132581_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp136270)))
                 _slots132579_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g136271_
                                                    (for-each
                                                     (lambda (_g132584132587_
                                                              _g132585132589_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs132078_
                                                          _g132584132587_
                                                          _g132585132589_)))
                                                     _slots132579_
                                                     _$slots132583_))
                                                   (_slots-bind132600_
                                                    (map (lambda (_g132592132595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132593132597_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131988_
                      _$klass132552_
                      _g132592132595_
                      _g132593132597_)))
                 _slots132579_
                 _$slots132583_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body132606_
                                                    (map (lambda (_g132601132603_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g132601132603_
                                                              'receiver:
                                                              _L132524_
                                                              'klass:
                                                              _$klass132552_
                                                              'methods:
                                                              _method-calls132077_
                                                              'slots:
                                                              _slot-refs132078_)))
                                                         _L132522_))
                                                   (_specializer-impl132608_
                                                    (let ((__tmp136272
                                                           (let ((__tmp136273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136274
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132524_ _L132523_))))
                            (declare (not safe))
                            (cons __tmp136274 _specializer-body132606_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp136273))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp136272 _stx131985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl132610_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131989_
                                                       _$klass132552_
                                                       _$method-table132554_
                                                       _methods-bind132577_
                                                       _slots-bind132600_
                                                       _specializer-impl132608_))))
                                              (let ((__tmp136276
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L132058_)))
                                                    (__tmp136275
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id132550_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp136276
                                                 '" => "
                                                 __tmp136275))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131990_
                                                 _L132058_
                                                 _specializer-id132550_
                                                 _specializer-impl132610_))))))
                                     (___kont134881134882_
                                      (lambda () _stx131985_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134877134878_))
                                     (let ((_e132475132498_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134877134878_))))
                                       (let ((_tl132473132503_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e132475132498_)))
                                             (_hd132474132501_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e132475132498_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl132473132503_))
                                             (let ((_e132478132506_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl132473132503_))))
                                               (let ((_tl132476132511_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e132478132506_)))
                                                     (_hd132477132509_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e132478132506_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd132477132509_))
                                                     (let ((_e132481132514_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd132477132509_))))
                                                       (let ((_tl132479132519_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e132481132514_)))
                     (_hd132480132517_
                      (let () (declare (not safe)) (##car _e132481132514_))))
                 (___kont134879134880_
                  _tl132476132511_
                  _tl132479132519_
                  _hd132480132517_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134881134882_))))
                                             (___kont134881134882_))))
                                     (___kont134881134882_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L132057_))
                                 (let* ((_g132616132635_
                                         (lambda (_g132617132632_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132617132632_))))
                                        (_g132615132918_
                                         (lambda (_g132617132638_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g132617132638_))
                                               (let ((_e132621132640_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g132617132638_))))
                                                 (let ((_hd132620132643_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132621132640_)))
                                                       (_tl132619132645_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132621132640_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl132619132645_))
                                                       (let ((_g136247_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl132619132645_ '0))))
                 (begin
                   (let ((_g136248_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g136247_)
                                (##vector-length _g136247_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g136248_ 2)))
                         (error "Context expects 2 values" _g136248_)))
                   (let ((_target132622132648_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g136247_ 0)))
                         (_tl132624132650_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g136247_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl132624132650_))
                         (letrec ((_loop132625132653_
                                   (lambda (_hd132623132656_
                                            _clause132629132658_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132623132656_))
                                         (let ((_e132626132661_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132623132656_))))
                                           (let ((_lp-hd132627132664_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132626132661_)))
                                                 (_lp-tl132628132666_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132626132661_))))
                                             (let ((__tmp136263
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd132627132664_
                                                            _clause132629132658_))))
                                               (declare (not safe))
                                               (_loop132625132653_
                                                _lp-tl132628132666_
                                                __tmp136263))))
                                         (let ((_clause132630132669_
                                                (reverse _clause132629132658_)))
                                           ((lambda (_L132672_)
                                              (for-each
                                               (lambda (_clause132685_)
                                                 (let* ((___stx134903134904_
                                                         _clause132685_)
                                                        (_g132688132703_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134903134904_)))))
                                                   (let ((___kont134905134906_
                                                          (lambda (_L132731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132732_
                           _L132733_)
                    (for-each
                     (lambda (_g132748132750_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132748132750_
                          'receiver:
                          _L132733_
                          'methods:
                          _method-calls132077_
                          'slots:
                          _slot-refs132078_)))
                     _L132731_)))
                 (___kont134907134908_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134903134904_))
                                                         (let ((_e132695132715_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134903134904_))))
                   (let ((_tl132693132720_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132695132715_)))
                         (_hd132694132718_
                          (let ()
                            (declare (not safe))
                            (##car _e132695132715_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132694132718_))
                         (let ((_e132698132723_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132694132718_))))
                           (let ((_tl132696132728_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132698132723_)))
                                 (_hd132697132726_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132698132723_))))
                             (___kont134905134906_
                              _tl132693132720_
                              _tl132696132728_
                              _hd132697132726_)))
                         (___kont134907134908_))))
                 (___kont134907134908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp136249
                                                      (lambda (_g132755132758_
                                                               _g132756132760_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132755132758_
                                                                _g132756132760_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp136249
                                                         '()
                                                         _L132672_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132081_))
                                                  _stx131985_
                                                  (let* ((_specializer-id132769_
                                                          (let* ((_id132763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136250
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132058_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp136250 '"::specialize")))
                         (_specializer-id132766_
                          (let ((__tmp136251
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131985_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132763_ __tmp136251))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132766_))
                    _specializer-id132766_))
                 (_$klass132771_
                  (let ((__tmp136252 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136252)))
                 (_$method-table132773_
                  (let ((__tmp136253 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136253)))
                 (_methods132775_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132077_)))
                 (_$methods132779_
                  (map (lambda (_id132777_)
                         (let ((__tmp136254 (gensym _id132777_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136254)))
                       _methods132775_))
                 (_g136255_
                  (for-each
                   (lambda (_g132780132783_ _g132781132785_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132077_
                        _g132780132783_
                        _g132781132785_)))
                   _methods132775_
                   _$methods132779_))
                 (_methods-bind132796_
                  (map (lambda (_g132788132791_ _g132789132793_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131987_
                            _$klass132771_
                            _$method-table132773_
                            _g132788132791_
                            _g132789132793_)))
                       _methods132775_
                       _$methods132779_))
                 (_slots132798_
                  (let () (declare (not safe)) (hash-keys _slot-refs132078_)))
                 (_$slots132802_
                  (map (lambda (_id132800_)
                         (let ((__tmp136256 (gensym _id132800_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136256)))
                       _slots132798_))
                 (_g136257_
                  (for-each
                   (lambda (_g132803132806_ _g132804132808_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132078_
                        _g132803132806_
                        _g132804132808_)))
                   _slots132798_
                   _$slots132802_))
                 (_slots-bind132819_
                  (map (lambda (_g132811132814_ _g132812132816_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131988_
                            _$klass132771_
                            _g132811132814_
                            _g132812132816_)))
                       _slots132798_
                       _$slots132802_))
                 (_specializer-clauses132911_
                  (map (lambda (_clause132821_)
                         (let* ((___stx134923134924_ _clause132821_)
                                (_g132824132839_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134923134924_)))))
                           (let ((___kont134925134926_
                                  (lambda (_L132867_ _L132868_ _L132869_)
                                    (let* ((_body132899_
                                            (map (lambda (_g132894132896_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132894132896_
                                                      'receiver:
                                                      _L132869_
                                                      'klass:
                                                      _$klass132771_
                                                      'methods:
                                                      _method-calls132077_
                                                      'slots:
                                                      _slot-refs132078_)))
                                                 _L132867_))
                                           (__tmp136258
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132869_ _L132868_))))
                                      (declare (not safe))
                                      (cons __tmp136258 _body132899_))))
                                 (___kont134927134928_
                                  (lambda () _clause132821_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134923134924_))
                                 (let ((_e132831132851_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134923134924_))))
                                   (let ((_tl132829132856_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132831132851_)))
                                         (_hd132830132854_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132831132851_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132830132854_))
                                         (let ((_e132834132859_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132830132854_))))
                                           (let ((_tl132832132864_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132834132859_)))
                                                 (_hd132833132862_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132834132859_))))
                                             (___kont134925134926_
                                              _tl132829132856_
                                              _tl132832132864_
                                              _hd132833132862_)))
                                         (___kont134927134928_))))
                                 (___kont134927134928_)))))
                       (let ((__tmp136259
                              (lambda (_g132903132906_ _g132904132908_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132903132906_ _g132904132908_)))))
                         (declare (not safe))
                         (foldr1 __tmp136259 '() _L132672_))))
                 (_specializer-impl132913_
                  (let ((__tmp136260
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132911_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp136260 _stx131985_)))
                 (_specializer-impl132915_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131989_
                     _$klass132771_
                     _$method-table132773_
                     _methods-bind132796_
                     _slots-bind132819_
                     _specializer-impl132913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp136262
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132058_)))
                                                          (__tmp136261
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132769_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp136262
                                                       '" => "
                                                       __tmp136261))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131990_
                                                       _L132058_
                                                       _specializer-id132769_
                                                       _specializer-impl132915_)))))
                                            _clause132630132669_))))))
                           (let ()
                             (declare (not safe))
                             (_loop132625132653_ _target132622132648_ '())))
                         (let ()
                           (declare (not safe))
                           (_g132616132635_ _g132617132638_))))))
               (let ()
                 (declare (not safe))
                 (_g132616132635_ _g132617132638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132616132635_
                                                  _g132617132638_))))))
                                   (declare (not safe))
                                   (_g132615132918_ _L132057_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L132057_))
                                     (let* ((_g132921132951_
                                             (lambda (_g132922132948_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132922132948_))))
                                            (_g132920133556_
                                             (lambda (_g132922132954_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132922132954_))
                                                   (let ((_e132928132956_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132922132954_))))
                                                     (let ((_hd132927132959_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132928132956_)))
                                                           (_tl132926132961_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132928132956_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132926132961_))
                                                           (let ((_e132931132964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132926132961_))))
                     (let ((_hd132930132967_
                            (let ()
                              (declare (not safe))
                              (##car _e132931132964_)))
                           (_tl132929132969_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132931132964_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132930132967_))
                           (let ((_e132934132972_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132930132967_))))
                             (let ((_hd132933132975_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132934132972_)))
                                   (_tl132932132977_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132934132972_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132933132975_))
                                   (let ((_e132937132980_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132933132975_))))
                                     (let ((_hd132936132983_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132937132980_)))
                                           (_tl132935132985_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132937132980_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132936132983_))
                                           (let ((_e132940132988_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132936132983_))))
                                             (let ((_hd132939132991_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132940132988_)))
                                                   (_tl132938132993_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132940132988_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132938132993_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132935132985_))
                                                       (let ((_e132943132996_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132935132985_))))
                 (let ((_hd132942132999_
                        (let () (declare (not safe)) (##car _e132943132996_)))
                       (_tl132941133001_
                        (let () (declare (not safe)) (##cdr _e132943132996_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132941133001_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132932132977_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132929132969_))
                               (let ((_e132946133004_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132929132969_))))
                                 (let ((_hd132945133007_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132946133004_)))
                                       (_tl132944133009_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132946133004_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132944133009_))
                                       ((lambda (_L133012_ _L133013_ _L133014_)
                                          (let* ((_g133037133055_
                                                  (lambda (_g133038133052_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133038133052_))))
                                                 (_g133036133106_
                                                  (lambda (_g133038133058_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133038133058_))
                                                        (let ((_e133044133060_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133038133058_))))
                  (let ((_hd133043133063_
                         (let () (declare (not safe)) (##car _e133044133060_)))
                        (_tl133042133065_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133044133060_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl133042133065_))
                        (let ((_e133047133068_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl133042133065_))))
                          (let ((_hd133046133071_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e133047133068_)))
                                (_tl133045133073_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e133047133068_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd133046133071_))
                                (let ((_e133050133076_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd133046133071_))))
                                  (let ((_hd133049133079_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133050133076_)))
                                        (_tl133048133081_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133050133076_))))
                                    ((lambda (_L133084_ _L133085_ _L133086_)
                                       (for-each
                                        (lambda (_g133101133103_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g133101133103_
                                             'receiver:
                                             _L133086_
                                             'methods:
                                             _method-calls132077_
                                             'slots:
                                             _slot-refs132078_)))
                                        _L133084_))
                                     _tl133045133073_
                                     _tl133048133081_
                                     _hd133049133079_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133037133055_ _g133038133058_)))))
                        (let ()
                          (declare (not safe))
                          (_g133037133055_ _g133038133058_)))))
                (let ()
                  (declare (not safe))
                  (_g133037133055_ _g133038133058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133036133106_ _L133013_))
                                          (let* ((_g133109133128_
                                                  (lambda (_g133110133125_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133110133125_))))
                                                 (_g133108133247_
                                                  (lambda (_g133110133131_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133110133131_))
                                                        (let ((_e133114133133_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133110133131_))))
                  (let ((_hd133113133136_
                         (let () (declare (not safe)) (##car _e133114133133_)))
                        (_tl133112133138_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133114133133_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133112133138_))
                        (let ((_g136217_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl133112133138_
                                  '0))))
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
                            (let ((_target133115133141_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g136217_ 0)))
                                  (_tl133117133143_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g136217_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl133117133143_))
                                  (letrec ((_loop133118133146_
                                            (lambda (_hd133116133149_
                                                     _clause133122133151_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd133116133149_))
                                                  (let ((_e133119133154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd133116133149_))))
                                                    (let ((_lp-hd133120133157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133119133154_)))
                                                          (_lp-tl133121133159_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133119133154_))))
                                                      (let ((__tmp136220
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd133120133157_ _clause133122133151_))))
                (declare (not safe))
                (_loop133118133146_ _lp-tl133121133159_ __tmp136220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause133123133162_
                                                         (reverse _clause133122133151_)))
                                                    ((lambda (_L133165_)
                                                       (for-each
                                                        (lambda (_clause133178_)
                                                          (let* ((_g133180133195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g133181133192_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133181133192_))))
                         (_g133179133237_
                          (lambda (_g133181133198_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133181133198_))
                                (let ((_e133187133200_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133181133198_))))
                                  (let ((_hd133186133203_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133187133200_)))
                                        (_tl133185133205_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133187133200_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133186133203_))
                                        (let ((_e133190133208_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133186133203_))))
                                          (let ((_hd133189133211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133190133208_)))
                                                (_tl133188133213_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133190133208_))))
                                            ((lambda (_L133216_
                                                      _L133217_
                                                      _L133218_)
                                               (for-each
                                                (lambda (_g133232133234_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g133232133234_
                                                     'receiver:
                                                     _L133218_
                                                     'methods:
                                                     _method-calls132077_
                                                     'slots:
                                                     _slot-refs132078_)))
                                                _L133216_))
                                             _tl133185133205_
                                             _tl133188133213_
                                             _hd133189133211_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133180133195_ _g133181133198_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133180133195_ _g133181133198_))))))
                    (declare (not safe))
                    (_g133179133237_ _clause133178_)))
                (let ((__tmp136219
                       (lambda (_g133239133242_ _g133240133244_)
                         (let ()
                           (declare (not safe))
                           (cons _g133239133242_ _g133240133244_)))))
                  (declare (not safe))
                  (foldr1 __tmp136219 '() _L133165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause133123133162_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop133118133146_
                                       _target133115133141_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g133109133128_ _g133110133131_))))))
                        (let ()
                          (declare (not safe))
                          (_g133109133128_ _g133110133131_)))))
                (let ()
                  (declare (not safe))
                  (_g133109133128_ _g133110133131_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133108133247_ _L133012_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?132081_))
                                              _stx131985_
                                              (let* ((_specializer-id133256_
                                                      (let* ((_id133250_
                                                              (let ((__tmp136221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L132058_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp136221 '"::specialize")))
                     (_specializer-id133253_
                      (let ((__tmp136222
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131985_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id133250_ __tmp136222))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id133253_))
                _specializer-id133253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass133258_
                                                      (let ((__tmp136223
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp136223)))
                                                     (_$method-table133260_
                                                      (let ((__tmp136224
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp136224)))
                                                     (_methods133262_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls132077_)))
                                                     (_$methods133266_
                                                      (map (lambda (_id133264_)
                                                             (let ((__tmp136225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id133264_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp136225)))
                   _methods133262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g136226_
                                                      (for-each
                                                       (lambda (_g133267133270_
                                                                _g133268133272_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls132077_
                                                            _g133267133270_
                                                            _g133268133272_)))
                                                       _methods133262_
                                                       _$methods133266_))
                                                     (_methods-bind133283_
                                                      (map (lambda (_g133275133278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g133276133280_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131987_
                        _$klass133258_
                        _$method-table133260_
                        _g133275133278_
                        _g133276133280_)))
                   _methods133262_
                   _$methods133266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots133285_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs132078_)))
                                                     (_$slots133289_
                                                      (map (lambda (_id133287_)
                                                             (let ((__tmp136227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id133287_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp136227)))
                   _slots133285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g136228_
                                                      (for-each
                                                       (lambda (_g133290133293_
                                                                _g133291133295_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs132078_
                                                            _g133290133293_
                                                            _g133291133295_)))
                                                       _slots133285_
                                                       _$slots133289_))
                                                     (_slots-bind133306_
                                                      (map (lambda (_g133298133301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g133299133303_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131988_
                        _$klass133258_
                        _g133298133301_
                        _g133299133303_)))
                   _slots133285_
                   _$slots133289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr133392_
                                                      (let* ((_g133308133326_
                                                              (lambda (_g133309133323_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133309133323_))))
                     (_g133307133389_
                      (lambda (_g133309133329_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133309133329_))
                            (let ((_e133315133331_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133309133329_))))
                              (let ((_hd133314133334_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133315133331_)))
                                    (_tl133313133336_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133315133331_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133313133336_))
                                    (let ((_e133318133339_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133313133336_))))
                                      (let ((_hd133317133342_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133318133339_)))
                                            (_tl133316133344_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133318133339_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133317133342_))
                                            (let ((_e133321133347_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133317133342_))))
                                              (let ((_hd133320133350_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133321133347_)))
                                                    (_tl133319133352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133321133347_))))
                                                ((lambda (_L133355_
                                                          _L133356_
                                                          _L133357_)
                                                   (let* ((_body133387_
                                                           (map (lambda (_g133382133384_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g133382133384_
                             'receiver:
                             _L133357_
                             'klass:
                             _$klass133258_
                             'methods:
                             _method-calls132077_
                             'slots:
                             _slot-refs132078_)))
                        _L133355_))
                  (__tmp136229
                   (let ((__tmp136230
                          (let ((__tmp136231
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133357_ _L133356_))))
                            (declare (not safe))
                            (cons __tmp136231 _body133387_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp136230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp136229
                                                      _L133013_)))
                                                 _tl133316133344_
                                                 _tl133319133352_
                                                 _hd133320133350_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133308133326_
                                               _g133309133329_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133308133326_ _g133309133329_)))))
                            (let ()
                              (declare (not safe))
                              (_g133308133326_ _g133309133329_))))))
                (declare (not safe))
                (_g133307133389_ _L133013_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr133549_
                                                      (let* ((_g133394133413_
                                                              (lambda (_g133395133410_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133395133410_))))
                     (_g133393133546_
                      (lambda (_g133395133416_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133395133416_))
                            (let ((_e133399133418_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133395133416_))))
                              (let ((_hd133398133421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133399133418_)))
                                    (_tl133397133423_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133399133418_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl133397133423_))
                                    (let ((_g136232_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl133397133423_
                                              '0))))
                                      (begin
                                        (let ((_g136233_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g136232_)
                                                     (##vector-length
                                                      _g136232_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g136233_ 2)))
                                              (error "Context expects 2 values"
                                                     _g136233_)))
                                        (let ((_target133400133426_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136232_ 0)))
                                              (_tl133402133428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136232_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133402133428_))
                                              (letrec ((_loop133403133431_
                                                        (lambda (_hd133401133434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause133407133436_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133401133434_))
                      (let ((_e133404133439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133401133434_))))
                        (let ((_lp-hd133405133442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133404133439_)))
                              (_lp-tl133406133444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133404133439_))))
                          (let ((__tmp136237
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133405133442_
                                         _clause133407133436_))))
                            (declare (not safe))
                            (_loop133403133431_
                             _lp-tl133406133444_
                             __tmp136237))))
                      (let ((_clause133408133447_
                             (reverse _clause133407133436_)))
                        ((lambda (_L133450_)
                           (let* ((_clauses133544_
                                   (map (lambda (_clause133464_)
                                          (let* ((___stx134943134944_
                                                  _clause133464_)
                                                 (_g133467133482_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134943134944_)))))
                                            (let ((___kont134945134946_
                                                   (lambda (_L133510_
                                                            _L133511_
                                                            _L133512_)
                                                     (let* ((_body133532_
                                                             (map (lambda (_g133527133529_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g133527133529_
                               'receiver:
                               _L133512_
                               'klass:
                               _$klass133258_
                               'methods:
                               _method-calls132077_
                               'slots:
                               _slot-refs132078_)))
                          _L133510_))
                    (__tmp136234
                     (let () (declare (not safe)) (cons _L133512_ _L133511_))))
               (declare (not safe))
               (cons __tmp136234 _body133532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134947134948_
                                                   (lambda () _clause133464_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134943134944_))
                                                  (let ((_e133474133494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134943134944_))))
                                                    (let ((_tl133472133499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133474133494_)))
                                                          (_hd133473133497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133474133494_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd133473133497_))
                                                          (let ((_e133477133502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd133473133497_))))
                    (let ((_tl133475133507_
                           (let ()
                             (declare (not safe))
                             (##cdr _e133477133502_)))
                          (_hd133476133505_
                           (let ()
                             (declare (not safe))
                             (##car _e133477133502_))))
                      (___kont134945134946_
                       _tl133472133499_
                       _tl133475133507_
                       _hd133476133505_)))
                  (___kont134947134948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134947134948_)))))
                                        (let ((__tmp136235
                                               (lambda (_g133536133539_
                                                        _g133537133541_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g133536133539_
                                                         _g133537133541_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp136235 '() _L133450_))))
                                  (__tmp136236
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses133544_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp136236 _L133012_)))
                         _clause133408133447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133403133431_
                                                   _target133400133426_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133394133413_
                                                 _g133395133416_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133394133413_ _g133395133416_)))))
                            (let ()
                              (declare (not safe))
                              (_g133394133413_ _g133395133416_))))))
                (declare (not safe))
                (_g133393133546_ _L133012_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133551_
                                                      (let ((__tmp136238
                                                             (let ((__tmp136239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp136241
                                   (let ((__tmp136242
                                          (let ((__tmp136244
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L133014_ '())))
                                                (__tmp136243
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr133392_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp136244 __tmp136243))))
                                     (declare (not safe))
                                     (cons __tmp136242 '())))
                                  (__tmp136240
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr133549_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp136241 __tmp136240))))
                       (declare (not safe))
                       (cons '%#let-values __tmp136239))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp136238 _stx131985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133553_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131989_
                                                         _$klass133258_
                                                         _$method-table133260_
                                                         _methods-bind133283_
                                                         _slots-bind133306_
                                                         _specializer-impl133551_))))
                                                (let ((__tmp136246
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L132058_)))
                                                      (__tmp136245
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id133256_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp136246
                                                   '" => "
                                                   __tmp136245))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131990_
                                                   _L132058_
                                                   _specializer-id133256_
                                                   _specializer-impl133553_)))))
                                        _hd132945133007_
                                        _hd132942132999_
                                        _hd132939132991_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132921132951_ _g132922132954_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132921132951_ _g132922132954_)))
                           (let ()
                             (declare (not safe))
                             (_g132921132951_ _g132922132954_)))
                       (let ()
                         (declare (not safe))
                         (_g132921132951_ _g132922132954_)))))
               (let () (declare (not safe)) (_g132921132951_ _g132922132954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132921132951_
                                                      _g132922132954_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132921132951_
                                              _g132922132954_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132921132951_ _g132922132954_)))))
                           (let ()
                             (declare (not safe))
                             (_g132921132951_ _g132922132954_)))))
                   (let ()
                     (declare (not safe))
                     (_g132921132951_ _g132922132954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132921132951_
                                                      _g132922132954_))))))
                                       (declare (not safe))
                                       (_g132920133556_ _L132057_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L132057_))
                                         (let* ((_g133559133612_
                                                 (lambda (_g133560133609_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133560133609_))))
                                                (_g133558134743_
                                                 (lambda (_g133560133615_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133560133615_))
                                                       (let ((_e133568133617_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133560133615_))))
                 (let ((_hd133567133620_
                        (let () (declare (not safe)) (##car _e133568133617_)))
                       (_tl133566133622_
                        (let () (declare (not safe)) (##cdr _e133568133617_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd133567133620_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd133567133620_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133566133622_))
                               (let ((_e133571133625_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133566133622_))))
                                 (let ((_hd133570133628_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133571133625_)))
                                       (_tl133569133630_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133571133625_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133570133628_))
                                       (let ((_e133574133633_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133570133628_))))
                                         (let ((_hd133573133636_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133574133633_)))
                                               (_tl133572133638_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133574133633_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133573133636_))
                                               (let ((_e133577133641_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133573133636_))))
                                                 (let ((_hd133576133644_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133577133641_)))
                                                       (_tl133575133646_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133577133641_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd133576133644_))
                                                       (let ((_e133580133649_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd133576133644_))))
                 (let ((_hd133579133652_
                        (let () (declare (not safe)) (##car _e133580133649_)))
                       (_tl133578133654_
                        (let () (declare (not safe)) (##cdr _e133580133649_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133578133654_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl133575133646_))
                           (let ((_e133583133657_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl133575133646_))))
                             (let ((_hd133582133660_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133583133657_)))
                                   (_tl133581133662_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133583133657_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133582133660_))
                                   (let ((_e133586133665_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133582133660_))))
                                     (let ((_hd133585133668_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133586133665_)))
                                           (_tl133584133670_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133586133665_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd133585133668_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd133585133668_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl133584133670_))
                                                   (let ((_e133589133673_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl133584133670_))))
                                                     (let ((_hd133588133676_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133589133673_)))
                                                           (_tl133587133678_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133589133673_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd133588133676_))
                                                           (let ((_e133592133681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd133588133676_))))
                     (let ((_hd133591133684_
                            (let ()
                              (declare (not safe))
                              (##car _e133592133681_)))
                           (_tl133590133686_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133592133681_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133591133684_))
                           (let ((_e133595133689_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133591133684_))))
                             (let ((_hd133594133692_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133595133689_)))
                                   (_tl133593133694_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133595133689_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133594133692_))
                                   (let ((_e133598133697_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133594133692_))))
                                     (let ((_hd133597133700_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133598133697_)))
                                           (_tl133596133702_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133598133697_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133596133702_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl133593133694_))
                                               (let ((_e133601133705_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl133593133694_))))
                                                 (let ((_hd133600133708_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133601133705_)))
                                                       (_tl133599133710_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133601133705_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133599133710_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl133590133686_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl133587133678_))
                       (let ((_e133604133713_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133587133678_))))
                         (let ((_hd133603133716_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133604133713_)))
                               (_tl133602133718_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133604133713_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133602133718_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl133581133662_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133572133638_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl133569133630_))
                                           (let ((_e133607133721_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl133569133630_))))
                                             (let ((_hd133606133724_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133607133721_)))
                                                   (_tl133605133726_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133607133721_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133605133726_))
                                                   ((lambda (_L133729_
                                                             _L133730_
                                                             _L133731_
                                                             _L133732_
                                                             _L133733_)
                                                      (let* ((_g133772133834_
                                                              (lambda (_g133773133831_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133773133831_))))
                     (_g133771134740_
                      (lambda (_g133773133837_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133773133837_))
                            (let ((_e133781133839_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133773133837_))))
                              (let ((_hd133780133842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133781133839_)))
                                    (_tl133779133844_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133781133839_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133780133842_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133780133842_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133779133844_))
                                            (let ((_e133784133847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133779133844_))))
                                              (let ((_hd133783133850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133784133847_)))
                                                    (_tl133782133852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133784133847_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133782133852_))
                                                    (let ((_e133787133855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133782133852_))))
                                                      (let ((_hd133786133858_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133787133855_)))
                    (_tl133785133860_
                     (let () (declare (not safe)) (##cdr _e133787133855_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133786133858_))
                    (let ((_e133790133863_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133786133858_))))
                      (let ((_hd133789133866_
                             (let ()
                               (declare (not safe))
                               (##car _e133790133863_)))
                            (_tl133788133868_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133790133863_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133789133866_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133789133866_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133788133868_))
                                    (let ((_e133793133871_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133788133868_))))
                                      (let ((_hd133792133874_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133793133871_)))
                                            (_tl133791133876_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133793133871_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133792133874_))
                                            (let ((_e133796133879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133792133874_))))
                                              (let ((_hd133795133882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133796133879_)))
                                                    (_tl133794133884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133796133879_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133795133882_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133795133882_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133794133884_))
                                                            (let ((_e133799133887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133794133884_))))
                      (let ((_hd133798133890_
                             (let ()
                               (declare (not safe))
                               (##car _e133799133887_)))
                            (_tl133797133892_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133799133887_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133797133892_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133791133876_))
                                (let ((_e133802133895_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133791133876_))))
                                  (let ((_hd133801133898_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133802133895_)))
                                        (_tl133800133900_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133802133895_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133801133898_))
                                        (let ((_e133805133903_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133801133898_))))
                                          (let ((_hd133804133906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133805133903_)))
                                                (_tl133803133908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133805133903_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133804133906_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133804133906_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133803133908_))
                                                        (let ((_e133808133911_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133803133908_))))
                  (let ((_hd133807133914_
                         (let () (declare (not safe)) (##car _e133808133911_)))
                        (_tl133806133916_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133808133911_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133806133916_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133800133900_))
                            (let ((_e133811133919_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133800133900_))))
                              (let ((_hd133810133922_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133811133919_)))
                                    (_tl133809133924_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133811133919_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133810133922_))
                                    (let ((_e133814133927_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133810133922_))))
                                      (let ((_hd133813133930_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133814133927_)))
                                            (_tl133812133932_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133814133927_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133813133930_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133813133930_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133812133932_))
                                                    (let ((_e133817133935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133812133932_))))
                                                      (let ((_hd133816133938_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133817133935_)))
                    (_tl133815133940_
                     (let () (declare (not safe)) (##cdr _e133817133935_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133815133940_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133809133924_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133809133924_))
                                  '1)
                            (let ((_g136143_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133809133924_
                                      '1))))
                              (begin
                                (let ((_g136144_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g136143_)
                                             (##vector-length _g136143_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g136144_ 2)))
                                      (error "Context expects 2 values"
                                             _g136144_)))
                                (let ((_target133818133943_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136143_ 0)))
                                      (_tl133820133945_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136143_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133820133945_))
                                      (let ((_e133829133948_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133820133945_))))
                                        (let ((_hd133828133951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133829133948_)))
                                              (_tl133827133953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133829133948_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133827133953_))
                                              (letrec ((_loop133821133956_
                                                        (lambda (_hd133819133959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133825133961_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133819133959_))
                      (let ((_e133822133964_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133819133959_))))
                        (let ((_lp-hd133823133967_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133822133964_)))
                              (_lp-tl133824133969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133822133964_))))
                          (let ((__tmp136216
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133823133967_
                                         _kw-ref133825133961_))))
                            (declare (not safe))
                            (_loop133821133956_
                             _lp-tl133824133969_
                             __tmp136216))))
                      (let ((_kw-ref133826133972_
                             (reverse _kw-ref133825133961_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133785133860_))
                            ((lambda (_L133975_
                                      _L133976_
                                      _L133977_
                                      _L133978_
                                      _L133979_)
                               (let* ((_kw-count134030_
                                       (length (let ((__tmp136145
                                                      (lambda (_g134022134025_
                                                               _g134023134027_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g134022134025_
                                                                _g134023134027_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp136145
                                                         '()
                                                         _L133976_))))
                                      (_self-index134032_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count134030_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133731_))
                                     (let* ((_g134035134049_
                                             (lambda (_g134036134046_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134036134046_))))
                                            (_g134034134162_
                                             (lambda (_g134036134052_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134036134052_))
                                                   (let ((_e134041134054_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134036134052_))))
                                                     (let ((_hd134040134057_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134041134054_)))
                                                           (_tl134039134059_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134041134054_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134039134059_))
                                                           (let ((_e134044134062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134039134059_))))
                     (let ((_hd134043134065_
                            (let ()
                              (declare (not safe))
                              (##car _e134044134062_)))
                           (_tl134042134067_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134044134062_))))
                       ((lambda (_L134070_ _L134071_)
                          (let ((_self134087_
                                 (list-ref _L134071_ _self-index134032_)))
                            (for-each
                             (lambda (_g134088134090_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g134088134090_
                                  'receiver:
                                  _self134087_
                                  'methods:
                                  _method-calls132077_
                                  'slots:
                                  _slot-refs132078_)))
                             _L134070_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?132081_))
                                _stx131985_
                                (let* ((_specializer-id134099_
                                        (let* ((_id134093_
                                                (let ((__tmp136189
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L132058_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp136189
                                                   '"::specialize")))
                                               (_specializer-id134096_
                                                (let ((__tmp136190
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131985_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id134093_
                                                   __tmp136190))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id134096_))
                                          _specializer-id134096_))
                                       (_$klass134101_
                                        (let ((__tmp136191 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp136191)))
                                       (_$method-table134103_
                                        (let ((__tmp136192
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp136192)))
                                       (_methods134105_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls132077_)))
                                       (_$methods134109_
                                        (map (lambda (_id134107_)
                                               (let ((__tmp136193
                                                      (gensym _id134107_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp136193)))
                                             _methods134105_))
                                       (_g136194_
                                        (for-each
                                         (lambda (_g134110134113_
                                                  _g134111134115_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls132077_
                                              _g134110134113_
                                              _g134111134115_)))
                                         _methods134105_
                                         _$methods134109_))
                                       (_methods-bind134126_
                                        (map (lambda (_g134118134121_
                                                      _g134119134123_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131987_
                                                  _$klass134101_
                                                  _$method-table134103_
                                                  _g134118134121_
                                                  _g134119134123_)))
                                             _methods134105_
                                             _$methods134109_))
                                       (_slots134128_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs132078_)))
                                       (_$slots134132_
                                        (map (lambda (_id134130_)
                                               (let ((__tmp136195
                                                      (gensym _id134130_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp136195)))
                                             _slots134128_))
                                       (_g136196_
                                        (for-each
                                         (lambda (_g134133134136_
                                                  _g134134134138_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs132078_
                                              _g134133134136_
                                              _g134134134138_)))
                                         _slots134128_
                                         _$slots134132_))
                                       (_slots-bind134149_
                                        (map (lambda (_g134141134144_
                                                      _g134142134146_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131988_
                                                  _$klass134101_
                                                  _g134141134144_
                                                  _g134142134146_)))
                                             _slots134128_
                                             _$slots134132_))
                                       (_specializer-impl134157_
                                        (let* ((_specializer-body134155_
                                                (map (lambda (_g134150134152_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g134150134152_
                                                          'receiver:
                                                          _self134087_
                                                          'klass:
                                                          _$klass134101_
                                                          'methods:
                                                          _method-calls132077_
                                                          'slots:
                                                          _slot-refs132078_)))
                                                     _L134070_))
                                               (__tmp136197
                                                (let ((__tmp136198
                                                       (let ((__tmp136200
                                                              (let ((__tmp136201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136213
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133733_ '())))
                                   (__tmp136202
                                    (let ((__tmp136203
                                           (let ((__tmp136204
                                                  (let ((__tmp136206
                                                         (let ((__tmp136207
                                                                (let ((__tmp136212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133732_ '())))
                              (__tmp136208
                               (let ((__tmp136209
                                      (let ((__tmp136210
                                             (let ((__tmp136211
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L134071_
                                                            _specializer-body134155_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp136211))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp136210
                                         _L133731_))))
                                 (declare (not safe))
                                 (cons __tmp136209 '()))))
                          (declare (not safe))
                          (cons __tmp136212 __tmp136208))))
                   (declare (not safe))
                   (cons __tmp136207 '())))
                (__tmp136205
                 (let () (declare (not safe)) (cons _L133730_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136206
                                                          __tmp136205))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp136204))))
                                      (declare (not safe))
                                      (cons __tmp136203 '()))))
                               (declare (not safe))
                               (cons __tmp136213 __tmp136202))))
                        (declare (not safe))
                        (cons __tmp136201 '())))
                     (__tmp136199
                      (let () (declare (not safe)) (cons _L133729_ '()))))
                 (declare (not safe))
                 (cons __tmp136200 __tmp136199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp136198))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp136197
                                           _stx131985_)))
                                       (_specializer-impl134159_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131989_
                                           _$klass134101_
                                           _$method-table134103_
                                           _methods-bind134126_
                                           _slots-bind134149_
                                           _specializer-impl134157_))))
                                  (let ((__tmp136215
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L132058_)))
                                        (__tmp136214
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id134099_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp136215
                                     '" => "
                                     __tmp136214))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131990_
                                     _L132058_
                                     _specializer-id134099_
                                     _specializer-impl134159_))))))
                        _tl134042134067_
                        _hd134043134065_)))
                   (let ()
                     (declare (not safe))
                     (_g134035134049_ _g134036134052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134035134049_
                                                      _g134036134052_))))))
                                       (declare (not safe))
                                       (_g134034134162_ _L133731_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133731_))
                                         (let* ((_g134165134195_
                                                 (lambda (_g134166134192_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134166134192_))))
                                                (_g134164134737_
                                                 (lambda (_g134166134198_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134166134198_))
                                                       (let ((_e134172134200_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134166134198_))))
                 (let ((_hd134171134203_
                        (let () (declare (not safe)) (##car _e134172134200_)))
                       (_tl134170134205_
                        (let () (declare (not safe)) (##cdr _e134172134200_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl134170134205_))
                       (let ((_e134175134208_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134170134205_))))
                         (let ((_hd134174134211_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134175134208_)))
                               (_tl134173134213_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134175134208_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd134174134211_))
                               (let ((_e134178134216_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd134174134211_))))
                                 (let ((_hd134177134219_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134178134216_)))
                                       (_tl134176134221_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134178134216_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134177134219_))
                                       (let ((_e134181134224_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134177134219_))))
                                         (let ((_hd134180134227_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134181134224_)))
                                               (_tl134179134229_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134181134224_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134180134227_))
                                               (let ((_e134184134232_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134180134227_))))
                                                 (let ((_hd134183134235_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134184134232_)))
                                                       (_tl134182134237_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134184134232_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134182134237_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134179134229_))
                                                           (let ((_e134187134240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134179134229_))))
                     (let ((_hd134186134243_
                            (let ()
                              (declare (not safe))
                              (##car _e134187134240_)))
                           (_tl134185134245_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134187134240_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134185134245_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134176134221_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl134173134213_))
                                   (let ((_e134190134248_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl134173134213_))))
                                     (let ((_hd134189134251_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134190134248_)))
                                           (_tl134188134253_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134190134248_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134188134253_))
                                           ((lambda (_L134256_
                                                     _L134257_
                                                     _L134258_)
                                              (let* ((_g134281134295_
                                                      (lambda (_g134282134292_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134282134292_))))
                                                     (_g134280134336_
                                                      (lambda (_g134282134298_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134282134298_))
                                                            (let ((_e134287134300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134282134298_))))
                      (let ((_hd134286134303_
                             (let ()
                               (declare (not safe))
                               (##car _e134287134300_)))
                            (_tl134285134305_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134287134300_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl134285134305_))
                            (let ((_e134290134308_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl134285134305_))))
                              (let ((_hd134289134311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134290134308_)))
                                    (_tl134288134313_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134290134308_))))
                                ((lambda (_L134316_ _L134317_)
                                   (let ((_self134330_
                                          (list-ref
                                           _L134317_
                                           _self-index134032_)))
                                     (for-each
                                      (lambda (_g134331134333_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g134331134333_
                                           'receiver:
                                           _self134330_
                                           'methods:
                                           _method-calls132077_
                                           'slots:
                                           _slot-refs132078_)))
                                      _L134316_)))
                                 _tl134288134313_
                                 _hd134289134311_)))
                            (let ()
                              (declare (not safe))
                              (_g134281134295_ _g134282134298_)))))
                    (let ()
                      (declare (not safe))
                      (_g134281134295_ _g134282134298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134280134336_ _L134257_))
                                              (let* ((_g134339134358_
                                                      (lambda (_g134340134355_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134340134355_))))
                                                     (_g134338134463_
                                                      (lambda (_g134340134361_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134340134361_))
                                                            (let ((_e134344134363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134340134361_))))
                      (let ((_hd134343134366_
                             (let ()
                               (declare (not safe))
                               (##car _e134344134363_)))
                            (_tl134342134368_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134344134363_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl134342134368_))
                            (let ((_g136146_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl134342134368_
                                      '0))))
                              (begin
                                (let ((_g136147_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g136146_)
                                             (##vector-length _g136146_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g136147_ 2)))
                                      (error "Context expects 2 values"
                                             _g136147_)))
                                (let ((_target134345134371_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136146_ 0)))
                                      (_tl134347134373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g136146_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl134347134373_))
                                      (letrec ((_loop134348134376_
                                                (lambda (_hd134346134379_
                                                         _clause134352134381_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd134346134379_))
                                                      (let ((_e134349134384_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd134346134379_))))
                (let ((_lp-hd134350134387_
                       (let () (declare (not safe)) (##car _e134349134384_)))
                      (_lp-tl134351134389_
                       (let () (declare (not safe)) (##cdr _e134349134384_))))
                  (let ((__tmp136149
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd134350134387_ _clause134352134381_))))
                    (declare (not safe))
                    (_loop134348134376_ _lp-tl134351134389_ __tmp136149))))
              (let ((_clause134353134392_ (reverse _clause134352134381_)))
                ((lambda (_L134395_)
                   (for-each
                    (lambda (_clause134408_)
                      (let* ((_g134410134421_
                              (lambda (_g134411134418_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g134411134418_))))
                             (_g134409134453_
                              (lambda (_g134411134424_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g134411134424_))
                                    (let ((_e134416134426_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g134411134424_))))
                                      (let ((_hd134415134429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134416134426_)))
                                            (_tl134414134431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134416134426_))))
                                        ((lambda (_L134434_ _L134435_)
                                           (let ((_self134447_
                                                  (list-ref
                                                   _L134435_
                                                   _self-index134032_)))
                                             (for-each
                                              (lambda (_g134448134450_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g134448134450_
                                                   'receiver:
                                                   _self134447_
                                                   'methods:
                                                   _method-calls132077_
                                                   'slots:
                                                   _slot-refs132078_)))
                                              _L134434_)))
                                         _tl134414134431_
                                         _hd134415134429_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134410134421_ _g134411134424_))))))
                        (declare (not safe))
                        (_g134409134453_ _clause134408_)))
                    (let ((__tmp136148
                           (lambda (_g134455134458_ _g134456134460_)
                             (let ()
                               (declare (not safe))
                               (cons _g134455134458_ _g134456134460_)))))
                      (declare (not safe))
                      (foldr1 __tmp136148 '() _L134395_))))
                 _clause134353134392_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop134348134376_
                                           _target134345134371_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g134339134358_ _g134340134361_))))))
                            (let ()
                              (declare (not safe))
                              (_g134339134358_ _g134340134361_)))))
                    (let ()
                      (declare (not safe))
                      (_g134339134358_ _g134340134361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134338134463_ _L134256_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132081_))
                                                  _stx131985_
                                                  (let* ((_specializer-id134472_
                                                          (let* ((_id134466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136150
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132058_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp136150 '"::specialize")))
                         (_specializer-id134469_
                          (let ((__tmp136151
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131985_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id134466_ __tmp136151))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id134469_))
                    _specializer-id134469_))
                 (_$klass134474_
                  (let ((__tmp136152 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136152)))
                 (_$method-table134476_
                  (let ((__tmp136153 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp136153)))
                 (_methods134478_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132077_)))
                 (_$methods134482_
                  (map (lambda (_id134480_)
                         (let ((__tmp136154 (gensym _id134480_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136154)))
                       _methods134478_))
                 (_g136155_
                  (for-each
                   (lambda (_g134483134486_ _g134484134488_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132077_
                        _g134483134486_
                        _g134484134488_)))
                   _methods134478_
                   _$methods134482_))
                 (_methods-bind134499_
                  (map (lambda (_g134491134494_ _g134492134496_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131987_
                            _$klass134474_
                            _$method-table134476_
                            _g134491134494_
                            _g134492134496_)))
                       _methods134478_
                       _$methods134482_))
                 (_slots134501_
                  (let () (declare (not safe)) (hash-keys _slot-refs132078_)))
                 (_$slots134505_
                  (map (lambda (_id134503_)
                         (let ((__tmp136156 (gensym _id134503_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp136156)))
                       _slots134501_))
                 (_g136157_
                  (for-each
                   (lambda (_g134506134509_ _g134507134511_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132078_
                        _g134506134509_
                        _g134507134511_)))
                   _slots134501_
                   _$slots134505_))
                 (_slots-bind134522_
                  (map (lambda (_g134514134517_ _g134515134519_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131988_
                            _$klass134474_
                            _g134514134517_
                            _g134515134519_)))
                       _slots134501_
                       _$slots134505_))
                 (_specializer-lambda-expr134595_
                  (let* ((_g134524134538_
                          (lambda (_g134525134535_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134525134535_))))
                         (_g134523134592_
                          (lambda (_g134525134541_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134525134541_))
                                (let ((_e134530134543_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134525134541_))))
                                  (let ((_hd134529134546_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134530134543_)))
                                        (_tl134528134548_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134530134543_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl134528134548_))
                                        (let ((_e134533134551_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl134528134548_))))
                                          (let ((_hd134532134554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134533134551_)))
                                                (_tl134531134556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134533134551_))))
                                            ((lambda (_L134559_ _L134560_)
                                               (let* ((_self134583_
                                                       (list-ref
                                                        _L134560_
                                                        _self-index134032_))
                                                      (_body134589_
                                                       (map (lambda (_g134584134586_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g134584134586_
                         'receiver:
                         _self134583_
                         'klass:
                         _$klass134474_
                         'methods:
                         _method-calls132077_
                         'slots:
                         _slot-refs132078_)))
                    _L134559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp136158
                                                        (let ((__tmp136159
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L134560_ _body134589_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp136159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp136158
                                                    _L134257_))))
                                             _tl134531134556_
                                             _hd134532134554_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134524134538_ _g134525134541_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134524134538_ _g134525134541_))))))
                    (declare (not safe))
                    (_g134523134592_ _L134257_)))
                 (_specializer-case-lambda-expr134730_
                  (let* ((_g134597134616_
                          (lambda (_g134598134613_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134598134613_))))
                         (_g134596134727_
                          (lambda (_g134598134619_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134598134619_))
                                (let ((_e134602134621_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134598134619_))))
                                  (let ((_hd134601134624_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134602134621_)))
                                        (_tl134600134626_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134602134621_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl134600134626_))
                                        (let ((_g136160_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl134600134626_
                                                  '0))))
                                          (begin
                                            (let ((_g136161_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g136160_)
                                                         (##vector-length
                                                          _g136160_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g136161_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g136161_)))
                                            (let ((_target134603134629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g136160_
                                                      0)))
                                                  (_tl134605134631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g136160_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl134605134631_))
                                                  (letrec ((_loop134606134634_
                                                            (lambda (_hd134604134637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause134610134639_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd134604134637_))
                          (let ((_e134607134642_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd134604134637_))))
                            (let ((_lp-hd134608134645_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e134607134642_)))
                                  (_lp-tl134609134647_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e134607134642_))))
                              (let ((__tmp136164
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd134608134645_
                                             _clause134610134639_))))
                                (declare (not safe))
                                (_loop134606134634_
                                 _lp-tl134609134647_
                                 __tmp136164))))
                          (let ((_clause134611134650_
                                 (reverse _clause134610134639_)))
                            ((lambda (_L134653_)
                               (let* ((_clauses134725_
                                       (map (lambda (_clause134667_)
                                              (let* ((_g134669134680_
                                                      (lambda (_g134670134677_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134670134677_))))
                                                     (_g134668134715_
                                                      (lambda (_g134670134683_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134670134683_))
                                                            (let ((_e134675134685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134670134683_))))
                      (let ((_hd134674134688_
                             (let ()
                               (declare (not safe))
                               (##car _e134675134685_)))
                            (_tl134673134690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134675134685_))))
                        ((lambda (_L134693_ _L134694_)
                           (let* ((_self134706_
                                   (list-ref _L134694_ _self-index134032_))
                                  (_body134712_
                                   (map (lambda (_g134707134709_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134707134709_
                                             'receiver:
                                             _self134706_
                                             'klass:
                                             _$klass134474_
                                             'methods:
                                             _method-calls132077_
                                             'slots:
                                             _slot-refs132078_)))
                                        _L134693_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134694_ _body134712_))))
                         _tl134673134690_
                         _hd134674134688_)))
                    (let ()
                      (declare (not safe))
                      (_g134669134680_ _g134670134683_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134668134715_
                                                 _clause134667_)))
                                            (let ((__tmp136162
                                                   (lambda (_g134717134720_
                                                            _g134718134722_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134717134720_
                                                             _g134718134722_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp136162
                                                      '()
                                                      _L134653_))))
                                      (__tmp136163
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134725_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp136163
                                  _L134256_)))
                             _clause134611134650_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop134606134634_
                                                       _target134603134629_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g134597134616_
                                                     _g134598134619_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134597134616_ _g134598134619_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134597134616_ _g134598134619_))))))
                    (declare (not safe))
                    (_g134596134727_ _L134256_)))
                 (_specializer-impl134732_
                  (let ((__tmp136165
                         (let ((__tmp136166
                                (let ((__tmp136168
                                       (let ((__tmp136169
                                              (let ((__tmp136186
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133733_ '())))
                                                    (__tmp136170
                                                     (let ((__tmp136171
                                                            (let ((__tmp136172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp136174
                                  (let ((__tmp136175
                                         (let ((__tmp136185
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133732_ '())))
                                               (__tmp136176
                                                (let ((__tmp136177
                                                       (let ((__tmp136178
                                                              (let ((__tmp136179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136181
                                    (let ((__tmp136182
                                           (let ((__tmp136184
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L134258_ '())))
                                                 (__tmp136183
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr134595_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp136184 __tmp136183))))
                                      (declare (not safe))
                                      (cons __tmp136182 '())))
                                   (__tmp136180
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134730_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp136181 __tmp136180))))
                        (declare (not safe))
                        (cons '%#let-values __tmp136179))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp136178 _stx131985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136177 '()))))
                                           (declare (not safe))
                                           (cons __tmp136185 __tmp136176))))
                                    (declare (not safe))
                                    (cons __tmp136175 '())))
                                 (__tmp136173
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133730_ '()))))
                             (declare (not safe))
                             (cons __tmp136174 __tmp136173))))
                      (declare (not safe))
                      (cons '%#let-values __tmp136172))))
               (declare (not safe))
               (cons __tmp136171 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp136186
                                                      __tmp136170))))
                                         (declare (not safe))
                                         (cons __tmp136169 '())))
                                      (__tmp136167
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133729_ '()))))
                                  (declare (not safe))
                                  (cons __tmp136168 __tmp136167))))
                           (declare (not safe))
                           (cons '%#let-values __tmp136166))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp136165 _stx131985_)))
                 (_specializer-impl134734_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131989_
                     _$klass134474_
                     _$method-table134476_
                     _methods-bind134499_
                     _slots-bind134522_
                     _specializer-impl134732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp136188
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132058_)))
                                                          (__tmp136187
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id134472_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp136188
                                                       '" => "
                                                       __tmp136187))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131990_
                                                       _L132058_
                                                       _specializer-id134472_
                                                       _specializer-impl134734_)))))
                                            _hd134189134251_
                                            _hd134186134243_
                                            _hd134183134235_)
                                           (let ()
                                             (declare (not safe))
                                             (_g134165134195_
                                              _g134166134198_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134165134195_ _g134166134198_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134165134195_ _g134166134198_)))
                           (let ()
                             (declare (not safe))
                             (_g134165134195_ _g134166134198_)))))
                   (let ()
                     (declare (not safe))
                     (_g134165134195_ _g134166134198_)))
               (let ()
                 (declare (not safe))
                 (_g134165134195_ _g134166134198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134165134195_
                                                  _g134166134198_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134165134195_ _g134166134198_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134165134195_ _g134166134198_)))))
                       (let ()
                         (declare (not safe))
                         (_g134165134195_ _g134166134198_)))))
               (let ()
                 (declare (not safe))
                 (_g134165134195_ _g134166134198_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134164134737_ _L133731_))
                                         _stx131985_))))
                             _hd133828133951_
                             _kw-ref133826133972_
                             _hd133816133938_
                             _hd133807133914_
                             _hd133798133890_)
                            (let ()
                              (declare (not safe))
                              (_g133772133834_ _g133773133837_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133821133956_
                                                   _target133818133943_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133772133834_
                                                 _g133773133837_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133772133834_ _g133773133837_))))))
                            (let ()
                              (declare (not safe))
                              (_g133772133834_ _g133773133837_)))
                        (let ()
                          (declare (not safe))
                          (_g133772133834_ _g133773133837_)))
                    (let ()
                      (declare (not safe))
                      (_g133772133834_ _g133773133837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133772133834_
                                                       _g133773133837_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133772133834_
                                                   _g133773133837_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133772133834_
                                               _g133773133837_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133772133834_ _g133773133837_)))))
                            (let ()
                              (declare (not safe))
                              (_g133772133834_ _g133773133837_)))
                        (let ()
                          (declare (not safe))
                          (_g133772133834_ _g133773133837_)))))
                (let ()
                  (declare (not safe))
                  (_g133772133834_ _g133773133837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133772133834_
                                                       _g133773133837_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133772133834_
                                                   _g133773133837_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133772133834_ _g133773133837_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133772133834_ _g133773133837_)))
                            (let ()
                              (declare (not safe))
                              (_g133772133834_ _g133773133837_)))))
                    (let ()
                      (declare (not safe))
                      (_g133772133834_ _g133773133837_)))
                (let ()
                  (declare (not safe))
                  (_g133772133834_ _g133773133837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133772133834_
                                                       _g133773133837_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133772133834_
                                               _g133773133837_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133772133834_ _g133773133837_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133772133834_ _g133773133837_)))
                            (let ()
                              (declare (not safe))
                              (_g133772133834_ _g133773133837_)))))
                    (let ()
                      (declare (not safe))
                      (_g133772133834_ _g133773133837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133772133834_
                                                       _g133773133837_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133772133834_
                                               _g133773133837_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133772133834_ _g133773133837_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133772133834_ _g133773133837_)))))
                            (let ()
                              (declare (not safe))
                              (_g133772133834_ _g133773133837_))))))
                (declare (not safe))
                (_g133771134740_ _L133730_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd133606133724_
                                                    _hd133603133716_
                                                    _hd133600133708_
                                                    _hd133597133700_
                                                    _hd133579133652_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133559133612_
                                                      _g133560133615_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133559133612_
                                              _g133560133615_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g133559133612_ _g133560133615_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g133559133612_ _g133560133615_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133559133612_ _g133560133615_)))))
                       (let ()
                         (declare (not safe))
                         (_g133559133612_ _g133560133615_)))
                   (let ()
                     (declare (not safe))
                     (_g133559133612_ _g133560133615_)))
               (let ()
                 (declare (not safe))
                 (_g133559133612_ _g133560133615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133559133612_
                                                  _g133560133615_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133559133612_
                                              _g133560133615_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133559133612_ _g133560133615_)))))
                           (let ()
                             (declare (not safe))
                             (_g133559133612_ _g133560133615_)))))
                   (let ()
                     (declare (not safe))
                     (_g133559133612_ _g133560133615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133559133612_
                                                      _g133560133615_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133559133612_
                                                  _g133560133615_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133559133612_
                                              _g133560133615_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133559133612_ _g133560133615_)))))
                           (let ()
                             (declare (not safe))
                             (_g133559133612_ _g133560133615_)))
                       (let ()
                         (declare (not safe))
                         (_g133559133612_ _g133560133615_)))))
               (let ()
                 (declare (not safe))
                 (_g133559133612_ _g133560133615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133559133612_
                                                  _g133560133615_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133559133612_ _g133560133615_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133559133612_ _g133560133615_)))
                           (let ()
                             (declare (not safe))
                             (_g133559133612_ _g133560133615_)))
                       (let ()
                         (declare (not safe))
                         (_g133559133612_ _g133560133615_)))))
               (let ()
                 (declare (not safe))
                 (_g133559133612_ _g133560133615_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133558134743_ _L132057_))
                                         _stx131985_))))))))
                  (___kont134967134968_ (lambda () _stx131985_)))
              (let ((___match134996134997_
                     (lambda (_e131999132025_
                              _hd131998132028_
                              _tl131997132030_
                              _e132002132033_
                              _hd132001132036_
                              _tl132000132038_
                              _e132005132041_
                              _hd132004132044_
                              _tl132003132046_
                              _e132008132049_
                              _hd132007132052_
                              _tl132006132054_)
                       (let ((_L132057_ _hd132007132052_)
                             (_L132058_ _hd132004132044_))
                         (if (let ((__tmp136277
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L132058_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp136277))
                             (___kont134965134966_ _L132057_ _L132058_)
                             (___kont134967134968_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134963134964_))
                    (let ((_e131999132025_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134963134964_))))
                      (let ((_tl131997132030_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131999132025_)))
                            (_hd131998132028_
                             (let ()
                               (declare (not safe))
                               (##car _e131999132025_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131997132030_))
                            (let ((_e132002132033_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131997132030_))))
                              (let ((_tl132000132038_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132002132033_)))
                                    (_hd132001132036_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132002132033_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132001132036_))
                                    (let ((_e132005132041_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132001132036_))))
                                      (let ((_tl132003132046_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132005132041_)))
                                            (_hd132004132044_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132005132041_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl132003132046_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl132000132038_))
                                                (let ((_e132008132049_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl132000132038_))))
                                                  (let ((_tl132006132054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132008132049_)))
                                                        (_hd132007132052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132008132049_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl132006132054_))
                                                        (___match134996134997_
                                                         _e131999132025_
                                                         _hd131998132028_
                                                         _tl131997132030_
                                                         _e132002132033_
                                                         _hd132001132036_
                                                         _tl132000132038_
                                                         _e132005132041_
                                                         _hd132004132044_
                                                         _tl132003132046_
                                                         _e132008132049_
                                                         _hd132007132052_
                                                         _tl132006132054_)
                                                        (___kont134967134968_))))
                                                (___kont134967134968_))
                                            (___kont134967134968_))))
                                    (___kont134967134968_))))
                            (___kont134967134968_))))
                    (___kont134967134968_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self130945_ _stx130946_)
        (let* ((___stx134999135000_ _stx130946_)
               (_g130954131176_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134999135000_)))))
          (let ((___kont135001135002_
                 (lambda (_L131933_ _L131934_ _L131935_ _L131936_)
                   (let ((__tmp136279
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130945_ 'methods)))
                         (__tmp136278
                          (let () (declare (not safe)) (gx#stx-e _L131934_))))
                     (declare (not safe))
                     (hash-put! __tmp136279 __tmp136278 '#t))
                   (for-each
                    (lambda (_g131969131971_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130945_ _g131969131971_)))
                    (let ((__tmp136280
                           (lambda (_g131973131976_ _g131974131978_)
                             (let ()
                               (declare (not safe))
                               (cons _g131973131976_ _g131974131978_)))))
                      (declare (not safe))
                      (foldr1 __tmp136280 '() _L131933_)))))
                (___kont135005135006_
                 (lambda (_L131768_ _L131769_ _L131770_ _L131771_ _L131772_)
                   (let ((__tmp136282
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130945_ 'methods)))
                         (__tmp136281
                          (let () (declare (not safe)) (gx#stx-e _L131769_))))
                     (declare (not safe))
                     (hash-put! __tmp136282 __tmp136281 '#t))
                   (for-each
                    (lambda (_g131812131814_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130945_ _g131812131814_)))
                    (let ((__tmp136283
                           (lambda (_g131816131819_ _g131817131821_)
                             (let ()
                               (declare (not safe))
                               (cons _g131816131819_ _g131817131821_)))))
                      (declare (not safe))
                      (foldr1 __tmp136283 '() _L131768_)))))
                (___kont135009135010_
                 (lambda (_L131601_ _L131602_ _L131603_)
                   (let ((__tmp136285
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130945_ 'slots)))
                         (__tmp136284
                          (let () (declare (not safe)) (gx#stx-e _L131601_))))
                     (declare (not safe))
                     (hash-put! __tmp136285 __tmp136284 '#t))))
                (___kont135011135012_
                 (lambda (_L131478_ _L131479_ _L131480_ _L131481_)
                   (let ((__tmp136287
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130945_ 'slots)))
                         (__tmp136286
                          (let () (declare (not safe)) (gx#stx-e _L131479_))))
                     (declare (not safe))
                     (hash-put! __tmp136287 __tmp136286 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self130945_ _L131478_))))
                (___kont135013135014_
                 (lambda (_L131352_ _L131353_)
                   (let* ((_accessor131375_
                           (let ((__tmp136288
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L131353_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp136288)))
                          (_klass131377_
                           (let ((__tmp136289
                                  (##structure-ref
                                   _accessor131375_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130946_
                              __tmp136289)))
                          (_slot131379_
                           (##structure-ref
                            _accessor131375_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp136292
                                     (##structure-ref
                                      _accessor131375_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp136292))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass131377_
                                     _slot131379_))
                                  (##structure-ref
                                   _klass131377_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp136291
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130945_ 'slots)))
                               (__tmp136290
                                (##structure-ref
                                 _accessor131375_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp136291 __tmp136290 '#t))))))
                (___kont135015135016_
                 (lambda (_L131252_ _L131253_ _L131254_)
                   (let* ((_mutator131281_
                           (let ((__tmp136293
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L131254_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp136293)))
                          (_klass131283_
                           (let ((__tmp136294
                                  (##structure-ref
                                   _mutator131281_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130946_
                              __tmp136294)))
                          (_slot131285_
                           (##structure-ref
                            _mutator131281_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp136296
                                     (##structure-ref
                                      _mutator131281_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp136296))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass131283_
                                     _slot131285_))
                                  (##structure-ref
                                   _klass131283_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp136295
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130945_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp136295 _slot131285_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self130945_ _L131252_)))))
                (___kont135017135018_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands _self130945_ _stx130946_)))))
            (let* ((___match135498135499_
                    (lambda (_e131150131188_
                             _hd131149131191_
                             _tl131148131193_
                             _e131153131196_
                             _hd131152131199_
                             _tl131151131201_
                             _e131156131204_
                             _hd131155131207_
                             _tl131154131209_
                             _e131159131212_
                             _hd131158131215_
                             _tl131157131217_
                             _e131162131220_
                             _hd131161131223_
                             _tl131160131225_
                             _e131165131228_
                             _hd131164131231_
                             _tl131163131233_
                             _e131168131236_
                             _hd131167131239_
                             _tl131166131241_
                             _e131171131244_
                             _hd131170131247_
                             _tl131169131249_)
                      (let ((_L131252_ _hd131170131247_)
                            (_L131253_ _hd131167131239_)
                            (_L131254_ _hd131158131215_))
                        (if (and (let ((__tmp136298
                                        (let ((__tmp136299
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L131254_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp136299))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp136298
                                    'gxc#!mutator::t))
                                 (let ((__tmp136297
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130945_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131253_
                                    __tmp136297)))
                            (___kont135015135016_
                             _L131252_
                             _L131253_
                             _L131254_)
                            (___kont135017135018_)))))
                   (___match135496135497_
                    (lambda (_e131150131188_
                             _hd131149131191_
                             _tl131148131193_
                             _e131153131196_
                             _hd131152131199_
                             _tl131151131201_
                             _e131156131204_
                             _hd131155131207_
                             _tl131154131209_
                             _e131159131212_
                             _hd131158131215_
                             _tl131157131217_
                             _e131162131220_
                             _hd131161131223_
                             _tl131160131225_
                             _e131165131228_
                             _hd131164131231_
                             _tl131163131233_
                             _e131168131236_
                             _hd131167131239_
                             _tl131166131241_
                             _e131171131244_
                             _hd131170131247_
                             _tl131169131249_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131169131249_))
                          (___match135498135499_
                           _e131150131188_
                           _hd131149131191_
                           _tl131148131193_
                           _e131153131196_
                           _hd131152131199_
                           _tl131151131201_
                           _e131156131204_
                           _hd131155131207_
                           _tl131154131209_
                           _e131159131212_
                           _hd131158131215_
                           _tl131157131217_
                           _e131162131220_
                           _hd131161131223_
                           _tl131160131225_
                           _e131165131228_
                           _hd131164131231_
                           _tl131163131233_
                           _e131168131236_
                           _hd131167131239_
                           _tl131166131241_
                           _e131171131244_
                           _hd131170131247_
                           _tl131169131249_)
                          (___kont135017135018_))))
                   (___match135490135491_
                    (lambda (_e131150131188_
                             _hd131149131191_
                             _tl131148131193_
                             _e131153131196_
                             _hd131152131199_
                             _tl131151131201_
                             _e131156131204_
                             _hd131155131207_
                             _tl131154131209_
                             _e131159131212_
                             _hd131158131215_
                             _tl131157131217_
                             _e131162131220_
                             _hd131161131223_
                             _tl131160131225_
                             _e131165131228_
                             _hd131164131231_
                             _tl131163131233_
                             _e131168131236_
                             _hd131167131239_
                             _tl131166131241_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131160131225_))
                          (let ((_e131171131244_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131160131225_))))
                            (let ((_tl131169131249_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131171131244_)))
                                  (_hd131170131247_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131171131244_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131169131249_))
                                  (___match135498135499_
                                   _e131150131188_
                                   _hd131149131191_
                                   _tl131148131193_
                                   _e131153131196_
                                   _hd131152131199_
                                   _tl131151131201_
                                   _e131156131204_
                                   _hd131155131207_
                                   _tl131154131209_
                                   _e131159131212_
                                   _hd131158131215_
                                   _tl131157131217_
                                   _e131162131220_
                                   _hd131161131223_
                                   _tl131160131225_
                                   _e131165131228_
                                   _hd131164131231_
                                   _tl131163131233_
                                   _e131168131236_
                                   _hd131167131239_
                                   _tl131166131241_
                                   _e131171131244_
                                   _hd131170131247_
                                   _tl131169131249_)
                                  (___kont135017135018_))))
                          (___kont135017135018_))))
                   (___match135436135437_
                    (lambda (_e131126131296_
                             _hd131125131299_
                             _tl131124131301_
                             _e131129131304_
                             _hd131128131307_
                             _tl131127131309_
                             _e131132131312_
                             _hd131131131315_
                             _tl131130131317_
                             _e131135131320_
                             _hd131134131323_
                             _tl131133131325_
                             _e131138131328_
                             _hd131137131331_
                             _tl131136131333_
                             _e131141131336_
                             _hd131140131339_
                             _tl131139131341_
                             _e131144131344_
                             _hd131143131347_
                             _tl131142131349_)
                      (let ((_L131352_ _hd131143131347_)
                            (_L131353_ _hd131134131323_))
                        (if (and (let ((__tmp136301
                                        (let ((__tmp136302
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L131353_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp136302))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp136301
                                    'gxc#!accessor::t))
                                 (let ((__tmp136300
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130945_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131352_
                                    __tmp136300)))
                            (___kont135013135014_ _L131352_ _L131353_)
                            (___kont135017135018_)))))
                   (___match135434135435_
                    (lambda (_e131126131296_
                             _hd131125131299_
                             _tl131124131301_
                             _e131129131304_
                             _hd131128131307_
                             _tl131127131309_
                             _e131132131312_
                             _hd131131131315_
                             _tl131130131317_
                             _e131135131320_
                             _hd131134131323_
                             _tl131133131325_
                             _e131138131328_
                             _hd131137131331_
                             _tl131136131333_
                             _e131141131336_
                             _hd131140131339_
                             _tl131139131341_
                             _e131144131344_
                             _hd131143131347_
                             _tl131142131349_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131136131333_))
                          (___match135436135437_
                           _e131126131296_
                           _hd131125131299_
                           _tl131124131301_
                           _e131129131304_
                           _hd131128131307_
                           _tl131127131309_
                           _e131132131312_
                           _hd131131131315_
                           _tl131130131317_
                           _e131135131320_
                           _hd131134131323_
                           _tl131133131325_
                           _e131138131328_
                           _hd131137131331_
                           _tl131136131333_
                           _e131141131336_
                           _hd131140131339_
                           _tl131139131341_
                           _e131144131344_
                           _hd131143131347_
                           _tl131142131349_)
                          (___match135490135491_
                           _e131126131296_
                           _hd131125131299_
                           _tl131124131301_
                           _e131129131304_
                           _hd131128131307_
                           _tl131127131309_
                           _e131132131312_
                           _hd131131131315_
                           _tl131130131317_
                           _e131135131320_
                           _hd131134131323_
                           _tl131133131325_
                           _e131138131328_
                           _hd131137131331_
                           _tl131136131333_
                           _e131141131336_
                           _hd131140131339_
                           _tl131139131341_
                           _e131144131344_
                           _hd131143131347_
                           _tl131142131349_))))
                   (___match135380135381_
                    (lambda (_e131091131390_
                             _hd131090131393_
                             _tl131089131395_
                             _e131094131398_
                             _hd131093131401_
                             _tl131092131403_
                             _e131097131406_
                             _hd131096131409_
                             _tl131095131411_
                             _e131100131414_
                             _hd131099131417_
                             _tl131098131419_
                             _e131103131422_
                             _hd131102131425_
                             _tl131101131427_
                             _e131106131430_
                             _hd131105131433_
                             _tl131104131435_
                             _e131109131438_
                             _hd131108131441_
                             _tl131107131443_
                             _e131112131446_
                             _hd131111131449_
                             _tl131110131451_
                             _e131115131454_
                             _hd131114131457_
                             _tl131113131459_
                             _e131118131462_
                             _hd131117131465_
                             _tl131116131467_
                             _e131121131470_
                             _hd131120131473_
                             _tl131119131475_)
                      (let ((_L131478_ _hd131120131473_)
                            (_L131479_ _hd131117131465_)
                            (_L131480_ _hd131108131441_)
                            (_L131481_ _hd131099131417_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131481_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131481_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp136303
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130945_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131480_
                                    __tmp136303)))
                            (___kont135011135012_
                             _L131478_
                             _L131479_
                             _L131480_
                             _L131481_)
                            (___kont135017135018_)))))
                   (___match135372135373_
                    (lambda (_e131091131390_
                             _hd131090131393_
                             _tl131089131395_
                             _e131094131398_
                             _hd131093131401_
                             _tl131092131403_
                             _e131097131406_
                             _hd131096131409_
                             _tl131095131411_
                             _e131100131414_
                             _hd131099131417_
                             _tl131098131419_
                             _e131103131422_
                             _hd131102131425_
                             _tl131101131427_
                             _e131106131430_
                             _hd131105131433_
                             _tl131104131435_
                             _e131109131438_
                             _hd131108131441_
                             _tl131107131443_
                             _e131112131446_
                             _hd131111131449_
                             _tl131110131451_
                             _e131115131454_
                             _hd131114131457_
                             _tl131113131459_
                             _e131118131462_
                             _hd131117131465_
                             _tl131116131467_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131110131451_))
                          (let ((_e131121131470_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131110131451_))))
                            (let ((_tl131119131475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131121131470_)))
                                  (_hd131120131473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131121131470_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131119131475_))
                                  (___match135380135381_
                                   _e131091131390_
                                   _hd131090131393_
                                   _tl131089131395_
                                   _e131094131398_
                                   _hd131093131401_
                                   _tl131092131403_
                                   _e131097131406_
                                   _hd131096131409_
                                   _tl131095131411_
                                   _e131100131414_
                                   _hd131099131417_
                                   _tl131098131419_
                                   _e131103131422_
                                   _hd131102131425_
                                   _tl131101131427_
                                   _e131106131430_
                                   _hd131105131433_
                                   _tl131104131435_
                                   _e131109131438_
                                   _hd131108131441_
                                   _tl131107131443_
                                   _e131112131446_
                                   _hd131111131449_
                                   _tl131110131451_
                                   _e131115131454_
                                   _hd131114131457_
                                   _tl131113131459_
                                   _e131118131462_
                                   _hd131117131465_
                                   _tl131116131467_
                                   _e131121131470_
                                   _hd131120131473_
                                   _tl131119131475_)
                                  (___kont135017135018_))))
                          (___match135496135497_
                           _e131091131390_
                           _hd131090131393_
                           _tl131089131395_
                           _e131094131398_
                           _hd131093131401_
                           _tl131092131403_
                           _e131097131406_
                           _hd131096131409_
                           _tl131095131411_
                           _e131100131414_
                           _hd131099131417_
                           _tl131098131419_
                           _e131103131422_
                           _hd131102131425_
                           _tl131101131427_
                           _e131106131430_
                           _hd131105131433_
                           _tl131104131435_
                           _e131109131438_
                           _hd131108131441_
                           _tl131107131443_
                           _e131112131446_
                           _hd131111131449_
                           _tl131110131451_))))
                   (___match135294135295_
                    (lambda (_e131057131521_
                             _hd131056131524_
                             _tl131055131526_
                             _e131060131529_
                             _hd131059131532_
                             _tl131058131534_
                             _e131063131537_
                             _hd131062131540_
                             _tl131061131542_
                             _e131066131545_
                             _hd131065131548_
                             _tl131064131550_
                             _e131069131553_
                             _hd131068131556_
                             _tl131067131558_
                             _e131072131561_
                             _hd131071131564_
                             _tl131070131566_
                             _e131075131569_
                             _hd131074131572_
                             _tl131073131574_
                             _e131078131577_
                             _hd131077131580_
                             _tl131076131582_
                             _e131081131585_
                             _hd131080131588_
                             _tl131079131590_
                             _e131084131593_
                             _hd131083131596_
                             _tl131082131598_)
                      (let ((_L131601_ _hd131083131596_)
                            (_L131602_ _hd131074131572_)
                            (_L131603_ _hd131065131548_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131603_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131603_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp136304
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130945_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131602_
                                    __tmp136304)))
                            (___kont135009135010_
                             _L131601_
                             _L131602_
                             _L131603_)
                            (___match135498135499_
                             _e131057131521_
                             _hd131056131524_
                             _tl131055131526_
                             _e131060131529_
                             _hd131059131532_
                             _tl131058131534_
                             _e131063131537_
                             _hd131062131540_
                             _tl131061131542_
                             _e131066131545_
                             _hd131065131548_
                             _tl131064131550_
                             _e131069131553_
                             _hd131068131556_
                             _tl131067131558_
                             _e131072131561_
                             _hd131071131564_
                             _tl131070131566_
                             _e131075131569_
                             _hd131074131572_
                             _tl131073131574_
                             _e131078131577_
                             _hd131077131580_
                             _tl131076131582_)))))
                   (___match135292135293_
                    (lambda (_e131057131521_
                             _hd131056131524_
                             _tl131055131526_
                             _e131060131529_
                             _hd131059131532_
                             _tl131058131534_
                             _e131063131537_
                             _hd131062131540_
                             _tl131061131542_
                             _e131066131545_
                             _hd131065131548_
                             _tl131064131550_
                             _e131069131553_
                             _hd131068131556_
                             _tl131067131558_
                             _e131072131561_
                             _hd131071131564_
                             _tl131070131566_
                             _e131075131569_
                             _hd131074131572_
                             _tl131073131574_
                             _e131078131577_
                             _hd131077131580_
                             _tl131076131582_
                             _e131081131585_
                             _hd131080131588_
                             _tl131079131590_
                             _e131084131593_
                             _hd131083131596_
                             _tl131082131598_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131076131582_))
                          (___match135294135295_
                           _e131057131521_
                           _hd131056131524_
                           _tl131055131526_
                           _e131060131529_
                           _hd131059131532_
                           _tl131058131534_
                           _e131063131537_
                           _hd131062131540_
                           _tl131061131542_
                           _e131066131545_
                           _hd131065131548_
                           _tl131064131550_
                           _e131069131553_
                           _hd131068131556_
                           _tl131067131558_
                           _e131072131561_
                           _hd131071131564_
                           _tl131070131566_
                           _e131075131569_
                           _hd131074131572_
                           _tl131073131574_
                           _e131078131577_
                           _hd131077131580_
                           _tl131076131582_
                           _e131081131585_
                           _hd131080131588_
                           _tl131079131590_
                           _e131084131593_
                           _hd131083131596_
                           _tl131082131598_)
                          (___match135372135373_
                           _e131057131521_
                           _hd131056131524_
                           _tl131055131526_
                           _e131060131529_
                           _hd131059131532_
                           _tl131058131534_
                           _e131063131537_
                           _hd131062131540_
                           _tl131061131542_
                           _e131066131545_
                           _hd131065131548_
                           _tl131064131550_
                           _e131069131553_
                           _hd131068131556_
                           _tl131067131558_
                           _e131072131561_
                           _hd131071131564_
                           _tl131070131566_
                           _e131075131569_
                           _hd131074131572_
                           _tl131073131574_
                           _e131078131577_
                           _hd131077131580_
                           _tl131076131582_
                           _e131081131585_
                           _hd131080131588_
                           _tl131079131590_
                           _e131084131593_
                           _hd131083131596_
                           _tl131082131598_))))
                   (___match135282135283_
                    (lambda (_e131057131521_
                             _hd131056131524_
                             _tl131055131526_
                             _e131060131529_
                             _hd131059131532_
                             _tl131058131534_
                             _e131063131537_
                             _hd131062131540_
                             _tl131061131542_
                             _e131066131545_
                             _hd131065131548_
                             _tl131064131550_
                             _e131069131553_
                             _hd131068131556_
                             _tl131067131558_
                             _e131072131561_
                             _hd131071131564_
                             _tl131070131566_
                             _e131075131569_
                             _hd131074131572_
                             _tl131073131574_
                             _e131078131577_
                             _hd131077131580_
                             _tl131076131582_
                             _e131081131585_
                             _hd131080131588_
                             _tl131079131590_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd131080131588_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131079131590_))
                              (let ((_e131084131593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131079131590_))))
                                (let ((_tl131082131598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131084131593_)))
                                      (_hd131083131596_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131084131593_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131082131598_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl131076131582_))
                                          (___match135294135295_
                                           _e131057131521_
                                           _hd131056131524_
                                           _tl131055131526_
                                           _e131060131529_
                                           _hd131059131532_
                                           _tl131058131534_
                                           _e131063131537_
                                           _hd131062131540_
                                           _tl131061131542_
                                           _e131066131545_
                                           _hd131065131548_
                                           _tl131064131550_
                                           _e131069131553_
                                           _hd131068131556_
                                           _tl131067131558_
                                           _e131072131561_
                                           _hd131071131564_
                                           _tl131070131566_
                                           _e131075131569_
                                           _hd131074131572_
                                           _tl131073131574_
                                           _e131078131577_
                                           _hd131077131580_
                                           _tl131076131582_
                                           _e131081131585_
                                           _hd131080131588_
                                           _tl131079131590_
                                           _e131084131593_
                                           _hd131083131596_
                                           _tl131082131598_)
                                          (___match135372135373_
                                           _e131057131521_
                                           _hd131056131524_
                                           _tl131055131526_
                                           _e131060131529_
                                           _hd131059131532_
                                           _tl131058131534_
                                           _e131063131537_
                                           _hd131062131540_
                                           _tl131061131542_
                                           _e131066131545_
                                           _hd131065131548_
                                           _tl131064131550_
                                           _e131069131553_
                                           _hd131068131556_
                                           _tl131067131558_
                                           _e131072131561_
                                           _hd131071131564_
                                           _tl131070131566_
                                           _e131075131569_
                                           _hd131074131572_
                                           _tl131073131574_
                                           _e131078131577_
                                           _hd131077131580_
                                           _tl131076131582_
                                           _e131081131585_
                                           _hd131080131588_
                                           _tl131079131590_
                                           _e131084131593_
                                           _hd131083131596_
                                           _tl131082131598_))
                                      (___match135496135497_
                                       _e131057131521_
                                       _hd131056131524_
                                       _tl131055131526_
                                       _e131060131529_
                                       _hd131059131532_
                                       _tl131058131534_
                                       _e131063131537_
                                       _hd131062131540_
                                       _tl131061131542_
                                       _e131066131545_
                                       _hd131065131548_
                                       _tl131064131550_
                                       _e131069131553_
                                       _hd131068131556_
                                       _tl131067131558_
                                       _e131072131561_
                                       _hd131071131564_
                                       _tl131070131566_
                                       _e131075131569_
                                       _hd131074131572_
                                       _tl131073131574_
                                       _e131078131577_
                                       _hd131077131580_
                                       _tl131076131582_))))
                              (___match135496135497_
                               _e131057131521_
                               _hd131056131524_
                               _tl131055131526_
                               _e131060131529_
                               _hd131059131532_
                               _tl131058131534_
                               _e131063131537_
                               _hd131062131540_
                               _tl131061131542_
                               _e131066131545_
                               _hd131065131548_
                               _tl131064131550_
                               _e131069131553_
                               _hd131068131556_
                               _tl131067131558_
                               _e131072131561_
                               _hd131071131564_
                               _tl131070131566_
                               _e131075131569_
                               _hd131074131572_
                               _tl131073131574_
                               _e131078131577_
                               _hd131077131580_
                               _tl131076131582_))
                          (___match135496135497_
                           _e131057131521_
                           _hd131056131524_
                           _tl131055131526_
                           _e131060131529_
                           _hd131059131532_
                           _tl131058131534_
                           _e131063131537_
                           _hd131062131540_
                           _tl131061131542_
                           _e131066131545_
                           _hd131065131548_
                           _tl131064131550_
                           _e131069131553_
                           _hd131068131556_
                           _tl131067131558_
                           _e131072131561_
                           _hd131071131564_
                           _tl131070131566_
                           _e131075131569_
                           _hd131074131572_
                           _tl131073131574_
                           _e131078131577_
                           _hd131077131580_
                           _tl131076131582_))))
                   (___match135214135215_
                    (lambda (_e131006131640_
                             _hd131005131643_
                             _tl131004131645_
                             _e131009131648_
                             _hd131008131651_
                             _tl131007131653_
                             _e131012131656_
                             _hd131011131659_
                             _tl131010131661_
                             _e131015131664_
                             _hd131014131667_
                             _tl131013131669_
                             _e131018131672_
                             _hd131017131675_
                             _tl131016131677_
                             _e131021131680_
                             _hd131020131683_
                             _tl131019131685_
                             _e131024131688_
                             _hd131023131691_
                             _tl131022131693_
                             _e131027131696_
                             _hd131026131699_
                             _tl131025131701_
                             _e131030131704_
                             _hd131029131707_
                             _tl131028131709_
                             _e131033131712_
                             _hd131032131715_
                             _tl131031131717_
                             _e131036131720_
                             _hd131035131723_
                             _tl131034131725_
                             _e131039131728_
                             _hd131038131731_
                             _tl131037131733_
                             _e131042131736_
                             _hd131041131739_
                             _tl131040131741_
                             ___splice135007135008_
                             _target131043131744_
                             _tl131045131746_)
                      (letrec ((_loop131046131749_
                                (lambda (_hd131044131752_ _args131050131754_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131044131752_))
                                      (let ((_e131047131757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131044131752_))))
                                        (let ((_lp-tl131049131762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131047131757_)))
                                              (_lp-hd131048131760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131047131757_))))
                                          (let ((__tmp136306
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131048131760_
                                                         _args131050131754_))))
                                            (declare (not safe))
                                            (_loop131046131749_
                                             _lp-tl131049131762_
                                             __tmp136306))))
                                      (let ((_args131051131765_
                                             (reverse _args131050131754_)))
                                        (let ((_L131768_ _args131051131765_)
                                              (_L131769_ _hd131041131739_)
                                              (_L131770_ _hd131032131715_)
                                              (_L131771_ _hd131023131691_)
                                              (_L131772_ _hd131014131667_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131772_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131771_
                                                      'call-method))
                                                   (let ((__tmp136305
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130945_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131770_
                                                      __tmp136305)))
                                              (___kont135005135006_
                                               _L131768_
                                               _L131769_
                                               _L131770_
                                               _L131771_
                                               _L131772_)
                                              (___kont135017135018_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131046131749_ _target131043131744_ '())))))
                   (___match135172135173_
                    (lambda (_e131006131640_
                             _hd131005131643_
                             _tl131004131645_
                             _e131009131648_
                             _hd131008131651_
                             _tl131007131653_
                             _e131012131656_
                             _hd131011131659_
                             _tl131010131661_
                             _e131015131664_
                             _hd131014131667_
                             _tl131013131669_
                             _e131018131672_
                             _hd131017131675_
                             _tl131016131677_
                             _e131021131680_
                             _hd131020131683_
                             _tl131019131685_
                             _e131024131688_
                             _hd131023131691_
                             _tl131022131693_
                             _e131027131696_
                             _hd131026131699_
                             _tl131025131701_
                             _e131030131704_
                             _hd131029131707_
                             _tl131028131709_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd131029131707_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131028131709_))
                              (let ((_e131033131712_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131028131709_))))
                                (let ((_tl131031131717_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131033131712_)))
                                      (_hd131032131715_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131033131712_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131031131717_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131025131701_))
                                          (let ((_e131036131720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131025131701_))))
                                            (let ((_tl131034131725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131036131720_)))
                                                  (_hd131035131723_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131036131720_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131035131723_))
                                                  (let ((_e131039131728_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131035131723_))))
                                                    (let ((_tl131037131733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131039131728_)))
                                                          (_hd131038131731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131039131728_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd131038131731_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd131038131731_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131037131733_))
                          (let ((_e131042131736_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131037131733_))))
                            (let ((_tl131040131741_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131042131736_)))
                                  (_hd131041131739_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131042131736_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131040131741_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131034131725_))
                                      (let ((___splice135007135008_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131034131725_
                                                '0))))
                                        (let ((_tl131045131746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135007135008_
                                                  '1)))
                                              (_target131043131744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135007135008_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131045131746_))
                                              (___match135214135215_
                                               _e131006131640_
                                               _hd131005131643_
                                               _tl131004131645_
                                               _e131009131648_
                                               _hd131008131651_
                                               _tl131007131653_
                                               _e131012131656_
                                               _hd131011131659_
                                               _tl131010131661_
                                               _e131015131664_
                                               _hd131014131667_
                                               _tl131013131669_
                                               _e131018131672_
                                               _hd131017131675_
                                               _tl131016131677_
                                               _e131021131680_
                                               _hd131020131683_
                                               _tl131019131685_
                                               _e131024131688_
                                               _hd131023131691_
                                               _tl131022131693_
                                               _e131027131696_
                                               _hd131026131699_
                                               _tl131025131701_
                                               _e131030131704_
                                               _hd131029131707_
                                               _tl131028131709_
                                               _e131033131712_
                                               _hd131032131715_
                                               _tl131031131717_
                                               _e131036131720_
                                               _hd131035131723_
                                               _tl131034131725_
                                               _e131039131728_
                                               _hd131038131731_
                                               _tl131037131733_
                                               _e131042131736_
                                               _hd131041131739_
                                               _tl131040131741_
                                               ___splice135007135008_
                                               _target131043131744_
                                               _tl131045131746_)
                                              (___kont135017135018_))))
                                      (___kont135017135018_))
                                  (___kont135017135018_))))
                          (___kont135017135018_))
                      (___kont135017135018_))
                  (___kont135017135018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135017135018_))))
                                          (___match135496135497_
                                           _e131006131640_
                                           _hd131005131643_
                                           _tl131004131645_
                                           _e131009131648_
                                           _hd131008131651_
                                           _tl131007131653_
                                           _e131012131656_
                                           _hd131011131659_
                                           _tl131010131661_
                                           _e131015131664_
                                           _hd131014131667_
                                           _tl131013131669_
                                           _e131018131672_
                                           _hd131017131675_
                                           _tl131016131677_
                                           _e131021131680_
                                           _hd131020131683_
                                           _tl131019131685_
                                           _e131024131688_
                                           _hd131023131691_
                                           _tl131022131693_
                                           _e131027131696_
                                           _hd131026131699_
                                           _tl131025131701_))
                                      (___match135496135497_
                                       _e131006131640_
                                       _hd131005131643_
                                       _tl131004131645_
                                       _e131009131648_
                                       _hd131008131651_
                                       _tl131007131653_
                                       _e131012131656_
                                       _hd131011131659_
                                       _tl131010131661_
                                       _e131015131664_
                                       _hd131014131667_
                                       _tl131013131669_
                                       _e131018131672_
                                       _hd131017131675_
                                       _tl131016131677_
                                       _e131021131680_
                                       _hd131020131683_
                                       _tl131019131685_
                                       _e131024131688_
                                       _hd131023131691_
                                       _tl131022131693_
                                       _e131027131696_
                                       _hd131026131699_
                                       _tl131025131701_))))
                              (___match135496135497_
                               _e131006131640_
                               _hd131005131643_
                               _tl131004131645_
                               _e131009131648_
                               _hd131008131651_
                               _tl131007131653_
                               _e131012131656_
                               _hd131011131659_
                               _tl131010131661_
                               _e131015131664_
                               _hd131014131667_
                               _tl131013131669_
                               _e131018131672_
                               _hd131017131675_
                               _tl131016131677_
                               _e131021131680_
                               _hd131020131683_
                               _tl131019131685_
                               _e131024131688_
                               _hd131023131691_
                               _tl131022131693_
                               _e131027131696_
                               _hd131026131699_
                               _tl131025131701_))
                          (___match135282135283_
                           _e131006131640_
                           _hd131005131643_
                           _tl131004131645_
                           _e131009131648_
                           _hd131008131651_
                           _tl131007131653_
                           _e131012131656_
                           _hd131011131659_
                           _tl131010131661_
                           _e131015131664_
                           _hd131014131667_
                           _tl131013131669_
                           _e131018131672_
                           _hd131017131675_
                           _tl131016131677_
                           _e131021131680_
                           _hd131020131683_
                           _tl131019131685_
                           _e131024131688_
                           _hd131023131691_
                           _tl131022131693_
                           _e131027131696_
                           _hd131026131699_
                           _tl131025131701_
                           _e131030131704_
                           _hd131029131707_
                           _tl131028131709_))))
                   (___match135104135105_
                    (lambda (_e130962131829_
                             _hd130961131832_
                             _tl130960131834_
                             _e130965131837_
                             _hd130964131840_
                             _tl130963131842_
                             _e130968131845_
                             _hd130967131848_
                             _tl130966131850_
                             _e130971131853_
                             _hd130970131856_
                             _tl130969131858_
                             _e130974131861_
                             _hd130973131864_
                             _tl130972131866_
                             _e130977131869_
                             _hd130976131872_
                             _tl130975131874_
                             _e130980131877_
                             _hd130979131880_
                             _tl130978131882_
                             _e130983131885_
                             _hd130982131888_
                             _tl130981131890_
                             _e130986131893_
                             _hd130985131896_
                             _tl130984131898_
                             _e130989131901_
                             _hd130988131904_
                             _tl130987131906_
                             ___splice135003135004_
                             _target130990131909_
                             _tl130992131911_)
                      (letrec ((_loop130993131914_
                                (lambda (_hd130991131917_ _args130997131919_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130991131917_))
                                      (let ((_e130994131922_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130991131917_))))
                                        (let ((_lp-tl130996131927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130994131922_)))
                                              (_lp-hd130995131925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130994131922_))))
                                          (let ((__tmp136308
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130995131925_
                                                         _args130997131919_))))
                                            (declare (not safe))
                                            (_loop130993131914_
                                             _lp-tl130996131927_
                                             __tmp136308))))
                                      (let ((_args130998131930_
                                             (reverse _args130997131919_)))
                                        (let ((_L131933_ _args130998131930_)
                                              (_L131934_ _hd130988131904_)
                                              (_L131935_ _hd130979131880_)
                                              (_L131936_ _hd130970131856_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131936_
                                                      'call-method))
                                                   (let ((__tmp136307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130945_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131935_
                                                      __tmp136307)))
                                              (___kont135001135002_
                                               _L131933_
                                               _L131934_
                                               _L131935_
                                               _L131936_)
                                              (___match135292135293_
                                               _e130962131829_
                                               _hd130961131832_
                                               _tl130960131834_
                                               _e130965131837_
                                               _hd130964131840_
                                               _tl130963131842_
                                               _e130968131845_
                                               _hd130967131848_
                                               _tl130966131850_
                                               _e130971131853_
                                               _hd130970131856_
                                               _tl130969131858_
                                               _e130974131861_
                                               _hd130973131864_
                                               _tl130972131866_
                                               _e130977131869_
                                               _hd130976131872_
                                               _tl130975131874_
                                               _e130980131877_
                                               _hd130979131880_
                                               _tl130978131882_
                                               _e130983131885_
                                               _hd130982131888_
                                               _tl130981131890_
                                               _e130986131893_
                                               _hd130985131896_
                                               _tl130984131898_
                                               _e130989131901_
                                               _hd130988131904_
                                               _tl130987131906_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130993131914_ _target130990131909_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134999135000_))
                  (let ((_e130962131829_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134999135000_))))
                    (let ((_tl130960131834_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130962131829_)))
                          (_hd130961131832_
                           (let ()
                             (declare (not safe))
                             (##car _e130962131829_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130960131834_))
                          (let ((_e130965131837_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130960131834_))))
                            (let ((_tl130963131842_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130965131837_)))
                                  (_hd130964131840_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130965131837_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130964131840_))
                                  (let ((_e130968131845_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130964131840_))))
                                    (let ((_tl130966131850_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130968131845_)))
                                          (_hd130967131848_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130968131845_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130967131848_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130967131848_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130966131850_))
                                                  (let ((_e130971131853_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130966131850_))))
                                                    (let ((_tl130969131858_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130971131853_)))
                                                          (_hd130970131856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130971131853_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130969131858_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130963131842_))
                      (let ((_e130974131861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130963131842_))))
                        (let ((_tl130972131866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130974131861_)))
                              (_hd130973131864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130974131861_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130973131864_))
                              (let ((_e130977131869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130973131864_))))
                                (let ((_tl130975131874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130977131869_)))
                                      (_hd130976131872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130977131869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130976131872_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130976131872_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130975131874_))
                                              (let ((_e130980131877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130975131874_))))
                                                (let ((_tl130978131882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130980131877_)))
                                                      (_hd130979131880_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130980131877_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130978131882_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130972131866_))
                                                          (let ((_e130983131885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130972131866_))))
                    (let ((_tl130981131890_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130983131885_)))
                          (_hd130982131888_
                           (let ()
                             (declare (not safe))
                             (##car _e130983131885_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130982131888_))
                          (let ((_e130986131893_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130982131888_))))
                            (let ((_tl130984131898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130986131893_)))
                                  (_hd130985131896_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130986131893_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130985131896_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130985131896_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130984131898_))
                                          (let ((_e130989131901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130984131898_))))
                                            (let ((_tl130987131906_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130989131901_)))
                                                  (_hd130988131904_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130989131901_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130987131906_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130981131890_))
                                                      (let ((___splice135003135004_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130981131890_ '0))))
                (let ((_tl130992131911_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135003135004_ '1)))
                      (_target130990131909_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135003135004_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130992131911_))
                      (___match135104135105_
                       _e130962131829_
                       _hd130961131832_
                       _tl130960131834_
                       _e130965131837_
                       _hd130964131840_
                       _tl130963131842_
                       _e130968131845_
                       _hd130967131848_
                       _tl130966131850_
                       _e130971131853_
                       _hd130970131856_
                       _tl130969131858_
                       _e130974131861_
                       _hd130973131864_
                       _tl130972131866_
                       _e130977131869_
                       _hd130976131872_
                       _tl130975131874_
                       _e130980131877_
                       _hd130979131880_
                       _tl130978131882_
                       _e130983131885_
                       _hd130982131888_
                       _tl130981131890_
                       _e130986131893_
                       _hd130985131896_
                       _tl130984131898_
                       _e130989131901_
                       _hd130988131904_
                       _tl130987131906_
                       ___splice135003135004_
                       _target130990131909_
                       _tl130992131911_)
                      (___match135292135293_
                       _e130962131829_
                       _hd130961131832_
                       _tl130960131834_
                       _e130965131837_
                       _hd130964131840_
                       _tl130963131842_
                       _e130968131845_
                       _hd130967131848_
                       _tl130966131850_
                       _e130971131853_
                       _hd130970131856_
                       _tl130969131858_
                       _e130974131861_
                       _hd130973131864_
                       _tl130972131866_
                       _e130977131869_
                       _hd130976131872_
                       _tl130975131874_
                       _e130980131877_
                       _hd130979131880_
                       _tl130978131882_
                       _e130983131885_
                       _hd130982131888_
                       _tl130981131890_
                       _e130986131893_
                       _hd130985131896_
                       _tl130984131898_
                       _e130989131901_
                       _hd130988131904_
                       _tl130987131906_))))
              (___match135292135293_
               _e130962131829_
               _hd130961131832_
               _tl130960131834_
               _e130965131837_
               _hd130964131840_
               _tl130963131842_
               _e130968131845_
               _hd130967131848_
               _tl130966131850_
               _e130971131853_
               _hd130970131856_
               _tl130969131858_
               _e130974131861_
               _hd130973131864_
               _tl130972131866_
               _e130977131869_
               _hd130976131872_
               _tl130975131874_
               _e130980131877_
               _hd130979131880_
               _tl130978131882_
               _e130983131885_
               _hd130982131888_
               _tl130981131890_
               _e130986131893_
               _hd130985131896_
               _tl130984131898_
               _e130989131901_
               _hd130988131904_
               _tl130987131906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match135496135497_
                                                   _e130962131829_
                                                   _hd130961131832_
                                                   _tl130960131834_
                                                   _e130965131837_
                                                   _hd130964131840_
                                                   _tl130963131842_
                                                   _e130968131845_
                                                   _hd130967131848_
                                                   _tl130966131850_
                                                   _e130971131853_
                                                   _hd130970131856_
                                                   _tl130969131858_
                                                   _e130974131861_
                                                   _hd130973131864_
                                                   _tl130972131866_
                                                   _e130977131869_
                                                   _hd130976131872_
                                                   _tl130975131874_
                                                   _e130980131877_
                                                   _hd130979131880_
                                                   _tl130978131882_
                                                   _e130983131885_
                                                   _hd130982131888_
                                                   _tl130981131890_))))
                                          (___match135496135497_
                                           _e130962131829_
                                           _hd130961131832_
                                           _tl130960131834_
                                           _e130965131837_
                                           _hd130964131840_
                                           _tl130963131842_
                                           _e130968131845_
                                           _hd130967131848_
                                           _tl130966131850_
                                           _e130971131853_
                                           _hd130970131856_
                                           _tl130969131858_
                                           _e130974131861_
                                           _hd130973131864_
                                           _tl130972131866_
                                           _e130977131869_
                                           _hd130976131872_
                                           _tl130975131874_
                                           _e130980131877_
                                           _hd130979131880_
                                           _tl130978131882_
                                           _e130983131885_
                                           _hd130982131888_
                                           _tl130981131890_))
                                      (___match135172135173_
                                       _e130962131829_
                                       _hd130961131832_
                                       _tl130960131834_
                                       _e130965131837_
                                       _hd130964131840_
                                       _tl130963131842_
                                       _e130968131845_
                                       _hd130967131848_
                                       _tl130966131850_
                                       _e130971131853_
                                       _hd130970131856_
                                       _tl130969131858_
                                       _e130974131861_
                                       _hd130973131864_
                                       _tl130972131866_
                                       _e130977131869_
                                       _hd130976131872_
                                       _tl130975131874_
                                       _e130980131877_
                                       _hd130979131880_
                                       _tl130978131882_
                                       _e130983131885_
                                       _hd130982131888_
                                       _tl130981131890_
                                       _e130986131893_
                                       _hd130985131896_
                                       _tl130984131898_))
                                  (___match135496135497_
                                   _e130962131829_
                                   _hd130961131832_
                                   _tl130960131834_
                                   _e130965131837_
                                   _hd130964131840_
                                   _tl130963131842_
                                   _e130968131845_
                                   _hd130967131848_
                                   _tl130966131850_
                                   _e130971131853_
                                   _hd130970131856_
                                   _tl130969131858_
                                   _e130974131861_
                                   _hd130973131864_
                                   _tl130972131866_
                                   _e130977131869_
                                   _hd130976131872_
                                   _tl130975131874_
                                   _e130980131877_
                                   _hd130979131880_
                                   _tl130978131882_
                                   _e130983131885_
                                   _hd130982131888_
                                   _tl130981131890_))))
                          (___match135496135497_
                           _e130962131829_
                           _hd130961131832_
                           _tl130960131834_
                           _e130965131837_
                           _hd130964131840_
                           _tl130963131842_
                           _e130968131845_
                           _hd130967131848_
                           _tl130966131850_
                           _e130971131853_
                           _hd130970131856_
                           _tl130969131858_
                           _e130974131861_
                           _hd130973131864_
                           _tl130972131866_
                           _e130977131869_
                           _hd130976131872_
                           _tl130975131874_
                           _e130980131877_
                           _hd130979131880_
                           _tl130978131882_
                           _e130983131885_
                           _hd130982131888_
                           _tl130981131890_))))
                  (___match135434135435_
                   _e130962131829_
                   _hd130961131832_
                   _tl130960131834_
                   _e130965131837_
                   _hd130964131840_
                   _tl130963131842_
                   _e130968131845_
                   _hd130967131848_
                   _tl130966131850_
                   _e130971131853_
                   _hd130970131856_
                   _tl130969131858_
                   _e130974131861_
                   _hd130973131864_
                   _tl130972131866_
                   _e130977131869_
                   _hd130976131872_
                   _tl130975131874_
                   _e130980131877_
                   _hd130979131880_
                   _tl130978131882_))
              (___kont135017135018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont135017135018_))
                                          (___kont135017135018_))
                                      (___kont135017135018_))))
                              (___kont135017135018_))))
                      (___kont135017135018_))
                  (___kont135017135018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135017135018_))
                                              (___kont135017135018_))
                                          (___kont135017135018_))))
                                  (___kont135017135018_))))
                          (___kont135017135018_))))
                  (___kont135017135018_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self129884_ _stx129885_)
        (letrec ((_force-e129887_
                  (lambda (_target130943_)
                    (let ((__tmp136309
                           (let ((__tmp136313
                                  (let ((__tmp136314
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp136314)))
                                 (__tmp136310
                                  (let ((__tmp136311
                                         (let ((__tmp136312
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130943_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp136312))))
                                    (declare (not safe))
                                    (cons __tmp136311 '()))))
                             (declare (not safe))
                             (cons __tmp136313 __tmp136310))))
                      (declare (not safe))
                      (cons '%#call __tmp136309)))))
          (let* ((___stx135501135502_ _stx129885_)
                 (_g129895130117_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135501135502_)))))
            (let ((___kont135503135504_
                   (lambda (_L130889_ _L130890_ _L130891_ _L130892_)
                     (let ((_$method130937_
                            (let ((__tmp136316
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129884_ 'methods)))
                                  (__tmp136315
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130890_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136316 __tmp136315)))
                           (_args130938_
                            (map (lambda (_g130925130927_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129884_
                                      _g130925130927_)))
                                 (let ((__tmp136317
                                        (lambda (_g130929130932_
                                                 _g130930130934_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130929130932_
                                                  _g130930130934_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp136317 '() _L130889_)))))
                       (let ((__tmp136318
                              (let ((__tmp136319
                                     (let ((__tmp136324
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129887_
                                               _$method130937_)))
                                           (__tmp136320
                                            (let ((__tmp136321
                                                   (let ((__tmp136322
                                                          (let ((__tmp136323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self129884_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp136323 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp136322))))
                                              (declare (not safe))
                                              (cons __tmp136321
                                                    _args130938_))))
                                       (declare (not safe))
                                       (cons __tmp136324 __tmp136320))))
                                (declare (not safe))
                                (cons '%#call __tmp136319))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136318 _stx129885_)))))
                  (___kont135507135508_
                   (lambda (_L130721_ _L130722_ _L130723_ _L130724_ _L130725_)
                     (let ((_$method130777_
                            (let ((__tmp136326
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129884_ 'methods)))
                                  (__tmp136325
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130722_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136326 __tmp136325)))
                           (_args130778_
                            (map (lambda (_g130765130767_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129884_
                                      _g130765130767_)))
                                 (let ((__tmp136327
                                        (lambda (_g130769130772_
                                                 _g130770130774_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130769130772_
                                                  _g130770130774_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp136327 '() _L130721_)))))
                       (let ((__tmp136328
                              (let ((__tmp136329
                                     (let ((__tmp136336
                                            (let ((__tmp136337
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp136337)))
                                           (__tmp136330
                                            (let ((__tmp136335
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129887_
                                                      _$method130777_)))
                                                  (__tmp136331
                                                   (let ((__tmp136332
                                                          (let ((__tmp136333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp136334
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129884_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp136334 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp136333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp136332
                                                           _args130778_))))
                                              (declare (not safe))
                                              (cons __tmp136335 __tmp136331))))
                                       (declare (not safe))
                                       (cons __tmp136336 __tmp136330))))
                                (declare (not safe))
                                (cons '%#call __tmp136329))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136328 _stx129885_)))))
                  (___kont135511135512_
                   (lambda (_L130552_ _L130553_ _L130554_)
                     (let* ((_$field130586_
                             (let ((__tmp136339
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self129884_ 'slots)))
                                   (__tmp136338
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L130552_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp136339 __tmp136338)))
                            (__tmp136340
                             (let ((__tmp136341
                                    (let ((__tmp136349
                                           (let ((__tmp136350
                                                  (let ((__tmp136351
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self129884_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp136351 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp136350)))
                                          (__tmp136342
                                           (let ((__tmp136347
                                                  (let ((__tmp136348
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field130586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136348)))
                                                 (__tmp136343
                                                  (let ((__tmp136344
                                                         (let ((__tmp136345
                                                                (let ((__tmp136346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self129884_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp136346 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp136345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136344 '()))))
                                             (declare (not safe))
                                             (cons __tmp136347 __tmp136343))))
                                      (declare (not safe))
                                      (cons __tmp136349 __tmp136342))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp136341))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp136340 _stx129885_))))
                  (___kont135513135514_
                   (lambda (_L130426_ _L130427_ _L130428_ _L130429_)
                     (let ((_$field130464_
                            (let ((__tmp136353
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129884_ 'slots)))
                                  (__tmp136352
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130427_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp136353 __tmp136352)))
                           (_expr130465_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self129884_ _L130426_))))
                       (let ((__tmp136354
                              (let ((__tmp136355
                                     (let ((__tmp136364
                                            (let ((__tmp136365
                                                   (let ((__tmp136366
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129884_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp136366 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp136365)))
                                           (__tmp136356
                                            (let ((__tmp136362
                                                   (let ((__tmp136363
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field130464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp136363)))
                                                  (__tmp136357
                                                   (let ((__tmp136359
                                                          (let ((__tmp136360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp136361
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129884_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp136361 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp136360)))
                 (__tmp136358
                  (let () (declare (not safe)) (cons _expr130465_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp136359
                                                           __tmp136358))))
                                              (declare (not safe))
                                              (cons __tmp136362 __tmp136357))))
                                       (declare (not safe))
                                       (cons __tmp136364 __tmp136356))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp136355))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp136354 _stx129885_)))))
                  (___kont135515135516_
                   (lambda (_L130298_ _L130299_)
                     (let* ((_accessor130321_
                             (let ((__tmp136367
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130299_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp136367)))
                            (_klass130323_
                             (let ((__tmp136368
                                    (##structure-ref
                                     _accessor130321_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129885_
                                __tmp136368)))
                            (_slot130325_
                             (##structure-ref
                              _accessor130321_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp136382
                                       (##structure-ref
                                        _accessor130321_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp136382))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass130323_
                                       _slot130325_))
                                    (##structure-ref
                                     _klass130323_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129885_
                           (let* ((_$field130331_
                                   (let ((__tmp136369
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129884_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp136369 _slot130325_)))
                                  (__tmp136370
                                   (let ((__tmp136371
                                          (let ((__tmp136379
                                                 (let ((__tmp136380
                                                        (let ((__tmp136381
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129884_ 'klass))))
                  (declare (not safe))
                  (cons __tmp136381 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp136380)))
                                                (__tmp136372
                                                 (let ((__tmp136377
                                                        (let ((__tmp136378
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field130331_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp136378)))
               (__tmp136373
                (let ((__tmp136374
                       (let ((__tmp136375
                              (let ((__tmp136376
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129884_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp136376 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp136375))))
                  (declare (not safe))
                  (cons __tmp136374 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp136377
                                                         __tmp136373))))
                                            (declare (not safe))
                                            (cons __tmp136379 __tmp136372))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp136371))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp136370
                              _stx129885_))))))
                  (___kont135517135518_
                   (lambda (_L130193_ _L130194_ _L130195_)
                     (let* ((_mutator130223_
                             (let ((__tmp136383
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130195_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp136383)))
                            (_klass130225_
                             (let ((__tmp136384
                                    (##structure-ref
                                     _mutator130223_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129885_
                                __tmp136384)))
                            (_slot130227_
                             (##structure-ref
                              _mutator130223_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr130229_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self129884_ _L130193_))))
                       (if (and (let ((__tmp136409
                                       (##structure-ref
                                        _mutator130223_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp136409))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass130225_
                                       _slot130227_))
                                    (##structure-ref
                                     _klass130225_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp136399
                                  (let ((__tmp136400
                                         (let ((__tmp136406
                                                (let ((__tmp136408
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp136407
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L130195_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp136408
                                                        __tmp136407)))
                                               (__tmp136401
                                                (let ((__tmp136403
                                                       (let ((__tmp136405
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp136404
                      (let () (declare (not safe)) (cons _L130194_ '()))))
                 (declare (not safe))
                 (cons __tmp136405 __tmp136404)))
              (__tmp136402
               (let () (declare (not safe)) (cons _expr130229_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136403
                                                        __tmp136402))))
                                           (declare (not safe))
                                           (cons __tmp136406 __tmp136401))))
                                    (declare (not safe))
                                    (cons '%#call __tmp136400))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp136399 _stx129885_))
                           (let* ((_$field130235_
                                   (let ((__tmp136385
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129884_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp136385 _slot130227_)))
                                  (__tmp136386
                                   (let ((__tmp136387
                                          (let ((__tmp136396
                                                 (let ((__tmp136397
                                                        (let ((__tmp136398
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129884_ 'klass))))
                  (declare (not safe))
                  (cons __tmp136398 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp136397)))
                                                (__tmp136388
                                                 (let ((__tmp136394
                                                        (let ((__tmp136395
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field130235_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp136395)))
               (__tmp136389
                (let ((__tmp136391
                       (let ((__tmp136392
                              (let ((__tmp136393
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129884_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp136393 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp136392)))
                      (__tmp136390
                       (let () (declare (not safe)) (cons _expr130229_ '()))))
                  (declare (not safe))
                  (cons __tmp136391 __tmp136390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp136394
                                                         __tmp136389))))
                                            (declare (not safe))
                                            (cons __tmp136396 __tmp136388))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp136387))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp136386
                              _stx129885_))))))
                  (___kont135519135520_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self129884_ _stx129885_)))))
              (let* ((___match136000136001_
                      (lambda (_e130091130129_
                               _hd130090130132_
                               _tl130089130134_
                               _e130094130137_
                               _hd130093130140_
                               _tl130092130142_
                               _e130097130145_
                               _hd130096130148_
                               _tl130095130150_
                               _e130100130153_
                               _hd130099130156_
                               _tl130098130158_
                               _e130103130161_
                               _hd130102130164_
                               _tl130101130166_
                               _e130106130169_
                               _hd130105130172_
                               _tl130104130174_
                               _e130109130177_
                               _hd130108130180_
                               _tl130107130182_
                               _e130112130185_
                               _hd130111130188_
                               _tl130110130190_)
                        (let ((_L130193_ _hd130111130188_)
                              (_L130194_ _hd130108130180_)
                              (_L130195_ _hd130099130156_))
                          (if (and (let ((__tmp136412
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129884_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130194_
                                      __tmp136412))
                                   (let ((__tmp136410
                                          (let ((__tmp136411
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L130195_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp136411))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp136410
                                      'gxc#!mutator::t)))
                              (___kont135517135518_
                               _L130193_
                               _L130194_
                               _L130195_)
                              (___kont135519135520_)))))
                     (___match135998135999_
                      (lambda (_e130091130129_
                               _hd130090130132_
                               _tl130089130134_
                               _e130094130137_
                               _hd130093130140_
                               _tl130092130142_
                               _e130097130145_
                               _hd130096130148_
                               _tl130095130150_
                               _e130100130153_
                               _hd130099130156_
                               _tl130098130158_
                               _e130103130161_
                               _hd130102130164_
                               _tl130101130166_
                               _e130106130169_
                               _hd130105130172_
                               _tl130104130174_
                               _e130109130177_
                               _hd130108130180_
                               _tl130107130182_
                               _e130112130185_
                               _hd130111130188_
                               _tl130110130190_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130110130190_))
                            (___match136000136001_
                             _e130091130129_
                             _hd130090130132_
                             _tl130089130134_
                             _e130094130137_
                             _hd130093130140_
                             _tl130092130142_
                             _e130097130145_
                             _hd130096130148_
                             _tl130095130150_
                             _e130100130153_
                             _hd130099130156_
                             _tl130098130158_
                             _e130103130161_
                             _hd130102130164_
                             _tl130101130166_
                             _e130106130169_
                             _hd130105130172_
                             _tl130104130174_
                             _e130109130177_
                             _hd130108130180_
                             _tl130107130182_
                             _e130112130185_
                             _hd130111130188_
                             _tl130110130190_)
                            (___kont135519135520_))))
                     (___match135992135993_
                      (lambda (_e130091130129_
                               _hd130090130132_
                               _tl130089130134_
                               _e130094130137_
                               _hd130093130140_
                               _tl130092130142_
                               _e130097130145_
                               _hd130096130148_
                               _tl130095130150_
                               _e130100130153_
                               _hd130099130156_
                               _tl130098130158_
                               _e130103130161_
                               _hd130102130164_
                               _tl130101130166_
                               _e130106130169_
                               _hd130105130172_
                               _tl130104130174_
                               _e130109130177_
                               _hd130108130180_
                               _tl130107130182_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130101130166_))
                            (let ((_e130112130185_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130101130166_))))
                              (let ((_tl130110130190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130112130185_)))
                                    (_hd130111130188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130112130185_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130110130190_))
                                    (___match136000136001_
                                     _e130091130129_
                                     _hd130090130132_
                                     _tl130089130134_
                                     _e130094130137_
                                     _hd130093130140_
                                     _tl130092130142_
                                     _e130097130145_
                                     _hd130096130148_
                                     _tl130095130150_
                                     _e130100130153_
                                     _hd130099130156_
                                     _tl130098130158_
                                     _e130103130161_
                                     _hd130102130164_
                                     _tl130101130166_
                                     _e130106130169_
                                     _hd130105130172_
                                     _tl130104130174_
                                     _e130109130177_
                                     _hd130108130180_
                                     _tl130107130182_
                                     _e130112130185_
                                     _hd130111130188_
                                     _tl130110130190_)
                                    (___kont135519135520_))))
                            (___kont135519135520_))))
                     (___match135938135939_
                      (lambda (_e130067130242_
                               _hd130066130245_
                               _tl130065130247_
                               _e130070130250_
                               _hd130069130253_
                               _tl130068130255_
                               _e130073130258_
                               _hd130072130261_
                               _tl130071130263_
                               _e130076130266_
                               _hd130075130269_
                               _tl130074130271_
                               _e130079130274_
                               _hd130078130277_
                               _tl130077130279_
                               _e130082130282_
                               _hd130081130285_
                               _tl130080130287_
                               _e130085130290_
                               _hd130084130293_
                               _tl130083130295_)
                        (let ((_L130298_ _hd130084130293_)
                              (_L130299_ _hd130075130269_))
                          (if (and (let ((__tmp136415
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129884_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130298_
                                      __tmp136415))
                                   (let ((__tmp136413
                                          (let ((__tmp136414
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L130299_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp136414))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp136413
                                      'gxc#!accessor::t)))
                              (___kont135515135516_ _L130298_ _L130299_)
                              (___kont135519135520_)))))
                     (___match135936135937_
                      (lambda (_e130067130242_
                               _hd130066130245_
                               _tl130065130247_
                               _e130070130250_
                               _hd130069130253_
                               _tl130068130255_
                               _e130073130258_
                               _hd130072130261_
                               _tl130071130263_
                               _e130076130266_
                               _hd130075130269_
                               _tl130074130271_
                               _e130079130274_
                               _hd130078130277_
                               _tl130077130279_
                               _e130082130282_
                               _hd130081130285_
                               _tl130080130287_
                               _e130085130290_
                               _hd130084130293_
                               _tl130083130295_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130077130279_))
                            (___match135938135939_
                             _e130067130242_
                             _hd130066130245_
                             _tl130065130247_
                             _e130070130250_
                             _hd130069130253_
                             _tl130068130255_
                             _e130073130258_
                             _hd130072130261_
                             _tl130071130263_
                             _e130076130266_
                             _hd130075130269_
                             _tl130074130271_
                             _e130079130274_
                             _hd130078130277_
                             _tl130077130279_
                             _e130082130282_
                             _hd130081130285_
                             _tl130080130287_
                             _e130085130290_
                             _hd130084130293_
                             _tl130083130295_)
                            (___match135992135993_
                             _e130067130242_
                             _hd130066130245_
                             _tl130065130247_
                             _e130070130250_
                             _hd130069130253_
                             _tl130068130255_
                             _e130073130258_
                             _hd130072130261_
                             _tl130071130263_
                             _e130076130266_
                             _hd130075130269_
                             _tl130074130271_
                             _e130079130274_
                             _hd130078130277_
                             _tl130077130279_
                             _e130082130282_
                             _hd130081130285_
                             _tl130080130287_
                             _e130085130290_
                             _hd130084130293_
                             _tl130083130295_))))
                     (___match135882135883_
                      (lambda (_e130032130338_
                               _hd130031130341_
                               _tl130030130343_
                               _e130035130346_
                               _hd130034130349_
                               _tl130033130351_
                               _e130038130354_
                               _hd130037130357_
                               _tl130036130359_
                               _e130041130362_
                               _hd130040130365_
                               _tl130039130367_
                               _e130044130370_
                               _hd130043130373_
                               _tl130042130375_
                               _e130047130378_
                               _hd130046130381_
                               _tl130045130383_
                               _e130050130386_
                               _hd130049130389_
                               _tl130048130391_
                               _e130053130394_
                               _hd130052130397_
                               _tl130051130399_
                               _e130056130402_
                               _hd130055130405_
                               _tl130054130407_
                               _e130059130410_
                               _hd130058130413_
                               _tl130057130415_
                               _e130062130418_
                               _hd130061130421_
                               _tl130060130423_)
                        (let ((_L130426_ _hd130061130421_)
                              (_L130427_ _hd130058130413_)
                              (_L130428_ _hd130049130389_)
                              (_L130429_ _hd130040130365_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130429_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130429_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp136416
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129884_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130428_
                                      __tmp136416)))
                              (___kont135513135514_
                               _L130426_
                               _L130427_
                               _L130428_
                               _L130429_)
                              (___kont135519135520_)))))
                     (___match135874135875_
                      (lambda (_e130032130338_
                               _hd130031130341_
                               _tl130030130343_
                               _e130035130346_
                               _hd130034130349_
                               _tl130033130351_
                               _e130038130354_
                               _hd130037130357_
                               _tl130036130359_
                               _e130041130362_
                               _hd130040130365_
                               _tl130039130367_
                               _e130044130370_
                               _hd130043130373_
                               _tl130042130375_
                               _e130047130378_
                               _hd130046130381_
                               _tl130045130383_
                               _e130050130386_
                               _hd130049130389_
                               _tl130048130391_
                               _e130053130394_
                               _hd130052130397_
                               _tl130051130399_
                               _e130056130402_
                               _hd130055130405_
                               _tl130054130407_
                               _e130059130410_
                               _hd130058130413_
                               _tl130057130415_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130051130399_))
                            (let ((_e130062130418_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130051130399_))))
                              (let ((_tl130060130423_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130062130418_)))
                                    (_hd130061130421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130062130418_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130060130423_))
                                    (___match135882135883_
                                     _e130032130338_
                                     _hd130031130341_
                                     _tl130030130343_
                                     _e130035130346_
                                     _hd130034130349_
                                     _tl130033130351_
                                     _e130038130354_
                                     _hd130037130357_
                                     _tl130036130359_
                                     _e130041130362_
                                     _hd130040130365_
                                     _tl130039130367_
                                     _e130044130370_
                                     _hd130043130373_
                                     _tl130042130375_
                                     _e130047130378_
                                     _hd130046130381_
                                     _tl130045130383_
                                     _e130050130386_
                                     _hd130049130389_
                                     _tl130048130391_
                                     _e130053130394_
                                     _hd130052130397_
                                     _tl130051130399_
                                     _e130056130402_
                                     _hd130055130405_
                                     _tl130054130407_
                                     _e130059130410_
                                     _hd130058130413_
                                     _tl130057130415_
                                     _e130062130418_
                                     _hd130061130421_
                                     _tl130060130423_)
                                    (___kont135519135520_))))
                            (___match135998135999_
                             _e130032130338_
                             _hd130031130341_
                             _tl130030130343_
                             _e130035130346_
                             _hd130034130349_
                             _tl130033130351_
                             _e130038130354_
                             _hd130037130357_
                             _tl130036130359_
                             _e130041130362_
                             _hd130040130365_
                             _tl130039130367_
                             _e130044130370_
                             _hd130043130373_
                             _tl130042130375_
                             _e130047130378_
                             _hd130046130381_
                             _tl130045130383_
                             _e130050130386_
                             _hd130049130389_
                             _tl130048130391_
                             _e130053130394_
                             _hd130052130397_
                             _tl130051130399_))))
                     (___match135796135797_
                      (lambda (_e129998130472_
                               _hd129997130475_
                               _tl129996130477_
                               _e130001130480_
                               _hd130000130483_
                               _tl129999130485_
                               _e130004130488_
                               _hd130003130491_
                               _tl130002130493_
                               _e130007130496_
                               _hd130006130499_
                               _tl130005130501_
                               _e130010130504_
                               _hd130009130507_
                               _tl130008130509_
                               _e130013130512_
                               _hd130012130515_
                               _tl130011130517_
                               _e130016130520_
                               _hd130015130523_
                               _tl130014130525_
                               _e130019130528_
                               _hd130018130531_
                               _tl130017130533_
                               _e130022130536_
                               _hd130021130539_
                               _tl130020130541_
                               _e130025130544_
                               _hd130024130547_
                               _tl130023130549_)
                        (let ((_L130552_ _hd130024130547_)
                              (_L130553_ _hd130015130523_)
                              (_L130554_ _hd130006130499_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130554_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130554_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp136417
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129884_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130553_
                                      __tmp136417)))
                              (___kont135511135512_
                               _L130552_
                               _L130553_
                               _L130554_)
                              (___match136000136001_
                               _e129998130472_
                               _hd129997130475_
                               _tl129996130477_
                               _e130001130480_
                               _hd130000130483_
                               _tl129999130485_
                               _e130004130488_
                               _hd130003130491_
                               _tl130002130493_
                               _e130007130496_
                               _hd130006130499_
                               _tl130005130501_
                               _e130010130504_
                               _hd130009130507_
                               _tl130008130509_
                               _e130013130512_
                               _hd130012130515_
                               _tl130011130517_
                               _e130016130520_
                               _hd130015130523_
                               _tl130014130525_
                               _e130019130528_
                               _hd130018130531_
                               _tl130017130533_)))))
                     (___match135794135795_
                      (lambda (_e129998130472_
                               _hd129997130475_
                               _tl129996130477_
                               _e130001130480_
                               _hd130000130483_
                               _tl129999130485_
                               _e130004130488_
                               _hd130003130491_
                               _tl130002130493_
                               _e130007130496_
                               _hd130006130499_
                               _tl130005130501_
                               _e130010130504_
                               _hd130009130507_
                               _tl130008130509_
                               _e130013130512_
                               _hd130012130515_
                               _tl130011130517_
                               _e130016130520_
                               _hd130015130523_
                               _tl130014130525_
                               _e130019130528_
                               _hd130018130531_
                               _tl130017130533_
                               _e130022130536_
                               _hd130021130539_
                               _tl130020130541_
                               _e130025130544_
                               _hd130024130547_
                               _tl130023130549_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130017130533_))
                            (___match135796135797_
                             _e129998130472_
                             _hd129997130475_
                             _tl129996130477_
                             _e130001130480_
                             _hd130000130483_
                             _tl129999130485_
                             _e130004130488_
                             _hd130003130491_
                             _tl130002130493_
                             _e130007130496_
                             _hd130006130499_
                             _tl130005130501_
                             _e130010130504_
                             _hd130009130507_
                             _tl130008130509_
                             _e130013130512_
                             _hd130012130515_
                             _tl130011130517_
                             _e130016130520_
                             _hd130015130523_
                             _tl130014130525_
                             _e130019130528_
                             _hd130018130531_
                             _tl130017130533_
                             _e130022130536_
                             _hd130021130539_
                             _tl130020130541_
                             _e130025130544_
                             _hd130024130547_
                             _tl130023130549_)
                            (___match135874135875_
                             _e129998130472_
                             _hd129997130475_
                             _tl129996130477_
                             _e130001130480_
                             _hd130000130483_
                             _tl129999130485_
                             _e130004130488_
                             _hd130003130491_
                             _tl130002130493_
                             _e130007130496_
                             _hd130006130499_
                             _tl130005130501_
                             _e130010130504_
                             _hd130009130507_
                             _tl130008130509_
                             _e130013130512_
                             _hd130012130515_
                             _tl130011130517_
                             _e130016130520_
                             _hd130015130523_
                             _tl130014130525_
                             _e130019130528_
                             _hd130018130531_
                             _tl130017130533_
                             _e130022130536_
                             _hd130021130539_
                             _tl130020130541_
                             _e130025130544_
                             _hd130024130547_
                             _tl130023130549_))))
                     (___match135784135785_
                      (lambda (_e129998130472_
                               _hd129997130475_
                               _tl129996130477_
                               _e130001130480_
                               _hd130000130483_
                               _tl129999130485_
                               _e130004130488_
                               _hd130003130491_
                               _tl130002130493_
                               _e130007130496_
                               _hd130006130499_
                               _tl130005130501_
                               _e130010130504_
                               _hd130009130507_
                               _tl130008130509_
                               _e130013130512_
                               _hd130012130515_
                               _tl130011130517_
                               _e130016130520_
                               _hd130015130523_
                               _tl130014130525_
                               _e130019130528_
                               _hd130018130531_
                               _tl130017130533_
                               _e130022130536_
                               _hd130021130539_
                               _tl130020130541_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd130021130539_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130020130541_))
                                (let ((_e130025130544_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130020130541_))))
                                  (let ((_tl130023130549_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130025130544_)))
                                        (_hd130024130547_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130025130544_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130023130549_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130017130533_))
                                            (___match135796135797_
                                             _e129998130472_
                                             _hd129997130475_
                                             _tl129996130477_
                                             _e130001130480_
                                             _hd130000130483_
                                             _tl129999130485_
                                             _e130004130488_
                                             _hd130003130491_
                                             _tl130002130493_
                                             _e130007130496_
                                             _hd130006130499_
                                             _tl130005130501_
                                             _e130010130504_
                                             _hd130009130507_
                                             _tl130008130509_
                                             _e130013130512_
                                             _hd130012130515_
                                             _tl130011130517_
                                             _e130016130520_
                                             _hd130015130523_
                                             _tl130014130525_
                                             _e130019130528_
                                             _hd130018130531_
                                             _tl130017130533_
                                             _e130022130536_
                                             _hd130021130539_
                                             _tl130020130541_
                                             _e130025130544_
                                             _hd130024130547_
                                             _tl130023130549_)
                                            (___match135874135875_
                                             _e129998130472_
                                             _hd129997130475_
                                             _tl129996130477_
                                             _e130001130480_
                                             _hd130000130483_
                                             _tl129999130485_
                                             _e130004130488_
                                             _hd130003130491_
                                             _tl130002130493_
                                             _e130007130496_
                                             _hd130006130499_
                                             _tl130005130501_
                                             _e130010130504_
                                             _hd130009130507_
                                             _tl130008130509_
                                             _e130013130512_
                                             _hd130012130515_
                                             _tl130011130517_
                                             _e130016130520_
                                             _hd130015130523_
                                             _tl130014130525_
                                             _e130019130528_
                                             _hd130018130531_
                                             _tl130017130533_
                                             _e130022130536_
                                             _hd130021130539_
                                             _tl130020130541_
                                             _e130025130544_
                                             _hd130024130547_
                                             _tl130023130549_))
                                        (___match135998135999_
                                         _e129998130472_
                                         _hd129997130475_
                                         _tl129996130477_
                                         _e130001130480_
                                         _hd130000130483_
                                         _tl129999130485_
                                         _e130004130488_
                                         _hd130003130491_
                                         _tl130002130493_
                                         _e130007130496_
                                         _hd130006130499_
                                         _tl130005130501_
                                         _e130010130504_
                                         _hd130009130507_
                                         _tl130008130509_
                                         _e130013130512_
                                         _hd130012130515_
                                         _tl130011130517_
                                         _e130016130520_
                                         _hd130015130523_
                                         _tl130014130525_
                                         _e130019130528_
                                         _hd130018130531_
                                         _tl130017130533_))))
                                (___match135998135999_
                                 _e129998130472_
                                 _hd129997130475_
                                 _tl129996130477_
                                 _e130001130480_
                                 _hd130000130483_
                                 _tl129999130485_
                                 _e130004130488_
                                 _hd130003130491_
                                 _tl130002130493_
                                 _e130007130496_
                                 _hd130006130499_
                                 _tl130005130501_
                                 _e130010130504_
                                 _hd130009130507_
                                 _tl130008130509_
                                 _e130013130512_
                                 _hd130012130515_
                                 _tl130011130517_
                                 _e130016130520_
                                 _hd130015130523_
                                 _tl130014130525_
                                 _e130019130528_
                                 _hd130018130531_
                                 _tl130017130533_))
                            (___match135998135999_
                             _e129998130472_
                             _hd129997130475_
                             _tl129996130477_
                             _e130001130480_
                             _hd130000130483_
                             _tl129999130485_
                             _e130004130488_
                             _hd130003130491_
                             _tl130002130493_
                             _e130007130496_
                             _hd130006130499_
                             _tl130005130501_
                             _e130010130504_
                             _hd130009130507_
                             _tl130008130509_
                             _e130013130512_
                             _hd130012130515_
                             _tl130011130517_
                             _e130016130520_
                             _hd130015130523_
                             _tl130014130525_
                             _e130019130528_
                             _hd130018130531_
                             _tl130017130533_))))
                     (___match135716135717_
                      (lambda (_e129947130593_
                               _hd129946130596_
                               _tl129945130598_
                               _e129950130601_
                               _hd129949130604_
                               _tl129948130606_
                               _e129953130609_
                               _hd129952130612_
                               _tl129951130614_
                               _e129956130617_
                               _hd129955130620_
                               _tl129954130622_
                               _e129959130625_
                               _hd129958130628_
                               _tl129957130630_
                               _e129962130633_
                               _hd129961130636_
                               _tl129960130638_
                               _e129965130641_
                               _hd129964130644_
                               _tl129963130646_
                               _e129968130649_
                               _hd129967130652_
                               _tl129966130654_
                               _e129971130657_
                               _hd129970130660_
                               _tl129969130662_
                               _e129974130665_
                               _hd129973130668_
                               _tl129972130670_
                               _e129977130673_
                               _hd129976130676_
                               _tl129975130678_
                               _e129980130681_
                               _hd129979130684_
                               _tl129978130686_
                               _e129983130689_
                               _hd129982130692_
                               _tl129981130694_
                               ___splice135509135510_
                               _target129984130697_
                               _tl129986130699_)
                        (letrec ((_loop129987130702_
                                  (lambda (_hd129985130705_ _args129991130707_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129985130705_))
                                        (let ((_e129988130710_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129985130705_))))
                                          (let ((_lp-tl129990130715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129988130710_)))
                                                (_lp-hd129989130713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129988130710_))))
                                            (let ((__tmp136419
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129989130713_
                                                           _args129991130707_))))
                                              (declare (not safe))
                                              (_loop129987130702_
                                               _lp-tl129990130715_
                                               __tmp136419))))
                                        (let ((_args129992130718_
                                               (reverse _args129991130707_)))
                                          (let ((_L130721_ _args129992130718_)
                                                (_L130722_ _hd129982130692_)
                                                (_L130723_ _hd129973130668_)
                                                (_L130724_ _hd129964130644_)
                                                (_L130725_ _hd129955130620_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130725_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130724_
                                                        'call-method))
                                                     (let ((__tmp136418
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129884_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130723_
                                                        __tmp136418)))
                                                (___kont135507135508_
                                                 _L130721_
                                                 _L130722_
                                                 _L130723_
                                                 _L130724_
                                                 _L130725_)
                                                (___kont135519135520_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129987130702_ _target129984130697_ '())))))
                     (___match135674135675_
                      (lambda (_e129947130593_
                               _hd129946130596_
                               _tl129945130598_
                               _e129950130601_
                               _hd129949130604_
                               _tl129948130606_
                               _e129953130609_
                               _hd129952130612_
                               _tl129951130614_
                               _e129956130617_
                               _hd129955130620_
                               _tl129954130622_
                               _e129959130625_
                               _hd129958130628_
                               _tl129957130630_
                               _e129962130633_
                               _hd129961130636_
                               _tl129960130638_
                               _e129965130641_
                               _hd129964130644_
                               _tl129963130646_
                               _e129968130649_
                               _hd129967130652_
                               _tl129966130654_
                               _e129971130657_
                               _hd129970130660_
                               _tl129969130662_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129970130660_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129969130662_))
                                (let ((_e129974130665_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129969130662_))))
                                  (let ((_tl129972130670_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129974130665_)))
                                        (_hd129973130668_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129974130665_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129972130670_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129966130654_))
                                            (let ((_e129977130673_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129966130654_))))
                                              (let ((_tl129975130678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129977130673_)))
                                                    (_hd129976130676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129977130673_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129976130676_))
                                                    (let ((_e129980130681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129976130676_))))
                                                      (let ((_tl129978130686_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129980130681_)))
                    (_hd129979130684_
                     (let () (declare (not safe)) (##car _e129980130681_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129979130684_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129979130684_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129978130686_))
                            (let ((_e129983130689_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129978130686_))))
                              (let ((_tl129981130694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129983130689_)))
                                    (_hd129982130692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129983130689_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129981130694_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129975130678_))
                                        (let ((___splice135509135510_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129975130678_
                                                  '0))))
                                          (let ((_tl129986130699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135509135510_
                                                    '1)))
                                                (_target129984130697_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135509135510_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129986130699_))
                                                (___match135716135717_
                                                 _e129947130593_
                                                 _hd129946130596_
                                                 _tl129945130598_
                                                 _e129950130601_
                                                 _hd129949130604_
                                                 _tl129948130606_
                                                 _e129953130609_
                                                 _hd129952130612_
                                                 _tl129951130614_
                                                 _e129956130617_
                                                 _hd129955130620_
                                                 _tl129954130622_
                                                 _e129959130625_
                                                 _hd129958130628_
                                                 _tl129957130630_
                                                 _e129962130633_
                                                 _hd129961130636_
                                                 _tl129960130638_
                                                 _e129965130641_
                                                 _hd129964130644_
                                                 _tl129963130646_
                                                 _e129968130649_
                                                 _hd129967130652_
                                                 _tl129966130654_
                                                 _e129971130657_
                                                 _hd129970130660_
                                                 _tl129969130662_
                                                 _e129974130665_
                                                 _hd129973130668_
                                                 _tl129972130670_
                                                 _e129977130673_
                                                 _hd129976130676_
                                                 _tl129975130678_
                                                 _e129980130681_
                                                 _hd129979130684_
                                                 _tl129978130686_
                                                 _e129983130689_
                                                 _hd129982130692_
                                                 _tl129981130694_
                                                 ___splice135509135510_
                                                 _target129984130697_
                                                 _tl129986130699_)
                                                (___kont135519135520_))))
                                        (___kont135519135520_))
                                    (___kont135519135520_))))
                            (___kont135519135520_))
                        (___kont135519135520_))
                    (___kont135519135520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135519135520_))))
                                            (___match135998135999_
                                             _e129947130593_
                                             _hd129946130596_
                                             _tl129945130598_
                                             _e129950130601_
                                             _hd129949130604_
                                             _tl129948130606_
                                             _e129953130609_
                                             _hd129952130612_
                                             _tl129951130614_
                                             _e129956130617_
                                             _hd129955130620_
                                             _tl129954130622_
                                             _e129959130625_
                                             _hd129958130628_
                                             _tl129957130630_
                                             _e129962130633_
                                             _hd129961130636_
                                             _tl129960130638_
                                             _e129965130641_
                                             _hd129964130644_
                                             _tl129963130646_
                                             _e129968130649_
                                             _hd129967130652_
                                             _tl129966130654_))
                                        (___match135998135999_
                                         _e129947130593_
                                         _hd129946130596_
                                         _tl129945130598_
                                         _e129950130601_
                                         _hd129949130604_
                                         _tl129948130606_
                                         _e129953130609_
                                         _hd129952130612_
                                         _tl129951130614_
                                         _e129956130617_
                                         _hd129955130620_
                                         _tl129954130622_
                                         _e129959130625_
                                         _hd129958130628_
                                         _tl129957130630_
                                         _e129962130633_
                                         _hd129961130636_
                                         _tl129960130638_
                                         _e129965130641_
                                         _hd129964130644_
                                         _tl129963130646_
                                         _e129968130649_
                                         _hd129967130652_
                                         _tl129966130654_))))
                                (___match135998135999_
                                 _e129947130593_
                                 _hd129946130596_
                                 _tl129945130598_
                                 _e129950130601_
                                 _hd129949130604_
                                 _tl129948130606_
                                 _e129953130609_
                                 _hd129952130612_
                                 _tl129951130614_
                                 _e129956130617_
                                 _hd129955130620_
                                 _tl129954130622_
                                 _e129959130625_
                                 _hd129958130628_
                                 _tl129957130630_
                                 _e129962130633_
                                 _hd129961130636_
                                 _tl129960130638_
                                 _e129965130641_
                                 _hd129964130644_
                                 _tl129963130646_
                                 _e129968130649_
                                 _hd129967130652_
                                 _tl129966130654_))
                            (___match135784135785_
                             _e129947130593_
                             _hd129946130596_
                             _tl129945130598_
                             _e129950130601_
                             _hd129949130604_
                             _tl129948130606_
                             _e129953130609_
                             _hd129952130612_
                             _tl129951130614_
                             _e129956130617_
                             _hd129955130620_
                             _tl129954130622_
                             _e129959130625_
                             _hd129958130628_
                             _tl129957130630_
                             _e129962130633_
                             _hd129961130636_
                             _tl129960130638_
                             _e129965130641_
                             _hd129964130644_
                             _tl129963130646_
                             _e129968130649_
                             _hd129967130652_
                             _tl129966130654_
                             _e129971130657_
                             _hd129970130660_
                             _tl129969130662_))))
                     (___match135606135607_
                      (lambda (_e129903130785_
                               _hd129902130788_
                               _tl129901130790_
                               _e129906130793_
                               _hd129905130796_
                               _tl129904130798_
                               _e129909130801_
                               _hd129908130804_
                               _tl129907130806_
                               _e129912130809_
                               _hd129911130812_
                               _tl129910130814_
                               _e129915130817_
                               _hd129914130820_
                               _tl129913130822_
                               _e129918130825_
                               _hd129917130828_
                               _tl129916130830_
                               _e129921130833_
                               _hd129920130836_
                               _tl129919130838_
                               _e129924130841_
                               _hd129923130844_
                               _tl129922130846_
                               _e129927130849_
                               _hd129926130852_
                               _tl129925130854_
                               _e129930130857_
                               _hd129929130860_
                               _tl129928130862_
                               ___splice135505135506_
                               _target129931130865_
                               _tl129933130867_)
                        (letrec ((_loop129934130870_
                                  (lambda (_hd129932130873_ _args129938130875_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129932130873_))
                                        (let ((_e129935130878_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129932130873_))))
                                          (let ((_lp-tl129937130883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129935130878_)))
                                                (_lp-hd129936130881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129935130878_))))
                                            (let ((__tmp136421
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129936130881_
                                                           _args129938130875_))))
                                              (declare (not safe))
                                              (_loop129934130870_
                                               _lp-tl129937130883_
                                               __tmp136421))))
                                        (let ((_args129939130886_
                                               (reverse _args129938130875_)))
                                          (let ((_L130889_ _args129939130886_)
                                                (_L130890_ _hd129929130860_)
                                                (_L130891_ _hd129920130836_)
                                                (_L130892_ _hd129911130812_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130892_
                                                        'call-method))
                                                     (let ((__tmp136420
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129884_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130891_
                                                        __tmp136420)))
                                                (___kont135503135504_
                                                 _L130889_
                                                 _L130890_
                                                 _L130891_
                                                 _L130892_)
                                                (___match135794135795_
                                                 _e129903130785_
                                                 _hd129902130788_
                                                 _tl129901130790_
                                                 _e129906130793_
                                                 _hd129905130796_
                                                 _tl129904130798_
                                                 _e129909130801_
                                                 _hd129908130804_
                                                 _tl129907130806_
                                                 _e129912130809_
                                                 _hd129911130812_
                                                 _tl129910130814_
                                                 _e129915130817_
                                                 _hd129914130820_
                                                 _tl129913130822_
                                                 _e129918130825_
                                                 _hd129917130828_
                                                 _tl129916130830_
                                                 _e129921130833_
                                                 _hd129920130836_
                                                 _tl129919130838_
                                                 _e129924130841_
                                                 _hd129923130844_
                                                 _tl129922130846_
                                                 _e129927130849_
                                                 _hd129926130852_
                                                 _tl129925130854_
                                                 _e129930130857_
                                                 _hd129929130860_
                                                 _tl129928130862_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129934130870_ _target129931130865_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135501135502_))
                    (let ((_e129903130785_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135501135502_))))
                      (let ((_tl129901130790_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129903130785_)))
                            (_hd129902130788_
                             (let ()
                               (declare (not safe))
                               (##car _e129903130785_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129901130790_))
                            (let ((_e129906130793_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129901130790_))))
                              (let ((_tl129904130798_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129906130793_)))
                                    (_hd129905130796_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129906130793_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129905130796_))
                                    (let ((_e129909130801_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129905130796_))))
                                      (let ((_tl129907130806_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129909130801_)))
                                            (_hd129908130804_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129909130801_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129908130804_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129908130804_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129907130806_))
                                                    (let ((_e129912130809_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129907130806_))))
                                                      (let ((_tl129910130814_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129912130809_)))
                    (_hd129911130812_
                     (let () (declare (not safe)) (##car _e129912130809_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129910130814_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129904130798_))
                        (let ((_e129915130817_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129904130798_))))
                          (let ((_tl129913130822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129915130817_)))
                                (_hd129914130820_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129915130817_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129914130820_))
                                (let ((_e129918130825_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129914130820_))))
                                  (let ((_tl129916130830_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129918130825_)))
                                        (_hd129917130828_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129918130825_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129917130828_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129917130828_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129916130830_))
                                                (let ((_e129921130833_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129916130830_))))
                                                  (let ((_tl129919130838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129921130833_)))
                                                        (_hd129920130836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129921130833_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129919130838_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129913130822_))
                                                            (let ((_e129924130841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129913130822_))))
                      (let ((_tl129922130846_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129924130841_)))
                            (_hd129923130844_
                             (let ()
                               (declare (not safe))
                               (##car _e129924130841_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129923130844_))
                            (let ((_e129927130849_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129923130844_))))
                              (let ((_tl129925130854_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129927130849_)))
                                    (_hd129926130852_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129927130849_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129926130852_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129926130852_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129925130854_))
                                            (let ((_e129930130857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129925130854_))))
                                              (let ((_tl129928130862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129930130857_)))
                                                    (_hd129929130860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129930130857_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129928130862_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129922130846_))
                                                        (let ((___splice135505135506_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129922130846_ '0))))
                  (let ((_tl129933130867_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135505135506_ '1)))
                        (_target129931130865_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135505135506_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129933130867_))
                        (___match135606135607_
                         _e129903130785_
                         _hd129902130788_
                         _tl129901130790_
                         _e129906130793_
                         _hd129905130796_
                         _tl129904130798_
                         _e129909130801_
                         _hd129908130804_
                         _tl129907130806_
                         _e129912130809_
                         _hd129911130812_
                         _tl129910130814_
                         _e129915130817_
                         _hd129914130820_
                         _tl129913130822_
                         _e129918130825_
                         _hd129917130828_
                         _tl129916130830_
                         _e129921130833_
                         _hd129920130836_
                         _tl129919130838_
                         _e129924130841_
                         _hd129923130844_
                         _tl129922130846_
                         _e129927130849_
                         _hd129926130852_
                         _tl129925130854_
                         _e129930130857_
                         _hd129929130860_
                         _tl129928130862_
                         ___splice135505135506_
                         _target129931130865_
                         _tl129933130867_)
                        (___match135794135795_
                         _e129903130785_
                         _hd129902130788_
                         _tl129901130790_
                         _e129906130793_
                         _hd129905130796_
                         _tl129904130798_
                         _e129909130801_
                         _hd129908130804_
                         _tl129907130806_
                         _e129912130809_
                         _hd129911130812_
                         _tl129910130814_
                         _e129915130817_
                         _hd129914130820_
                         _tl129913130822_
                         _e129918130825_
                         _hd129917130828_
                         _tl129916130830_
                         _e129921130833_
                         _hd129920130836_
                         _tl129919130838_
                         _e129924130841_
                         _hd129923130844_
                         _tl129922130846_
                         _e129927130849_
                         _hd129926130852_
                         _tl129925130854_
                         _e129930130857_
                         _hd129929130860_
                         _tl129928130862_))))
                (___match135794135795_
                 _e129903130785_
                 _hd129902130788_
                 _tl129901130790_
                 _e129906130793_
                 _hd129905130796_
                 _tl129904130798_
                 _e129909130801_
                 _hd129908130804_
                 _tl129907130806_
                 _e129912130809_
                 _hd129911130812_
                 _tl129910130814_
                 _e129915130817_
                 _hd129914130820_
                 _tl129913130822_
                 _e129918130825_
                 _hd129917130828_
                 _tl129916130830_
                 _e129921130833_
                 _hd129920130836_
                 _tl129919130838_
                 _e129924130841_
                 _hd129923130844_
                 _tl129922130846_
                 _e129927130849_
                 _hd129926130852_
                 _tl129925130854_
                 _e129930130857_
                 _hd129929130860_
                 _tl129928130862_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135998135999_
                                                     _e129903130785_
                                                     _hd129902130788_
                                                     _tl129901130790_
                                                     _e129906130793_
                                                     _hd129905130796_
                                                     _tl129904130798_
                                                     _e129909130801_
                                                     _hd129908130804_
                                                     _tl129907130806_
                                                     _e129912130809_
                                                     _hd129911130812_
                                                     _tl129910130814_
                                                     _e129915130817_
                                                     _hd129914130820_
                                                     _tl129913130822_
                                                     _e129918130825_
                                                     _hd129917130828_
                                                     _tl129916130830_
                                                     _e129921130833_
                                                     _hd129920130836_
                                                     _tl129919130838_
                                                     _e129924130841_
                                                     _hd129923130844_
                                                     _tl129922130846_))))
                                            (___match135998135999_
                                             _e129903130785_
                                             _hd129902130788_
                                             _tl129901130790_
                                             _e129906130793_
                                             _hd129905130796_
                                             _tl129904130798_
                                             _e129909130801_
                                             _hd129908130804_
                                             _tl129907130806_
                                             _e129912130809_
                                             _hd129911130812_
                                             _tl129910130814_
                                             _e129915130817_
                                             _hd129914130820_
                                             _tl129913130822_
                                             _e129918130825_
                                             _hd129917130828_
                                             _tl129916130830_
                                             _e129921130833_
                                             _hd129920130836_
                                             _tl129919130838_
                                             _e129924130841_
                                             _hd129923130844_
                                             _tl129922130846_))
                                        (___match135674135675_
                                         _e129903130785_
                                         _hd129902130788_
                                         _tl129901130790_
                                         _e129906130793_
                                         _hd129905130796_
                                         _tl129904130798_
                                         _e129909130801_
                                         _hd129908130804_
                                         _tl129907130806_
                                         _e129912130809_
                                         _hd129911130812_
                                         _tl129910130814_
                                         _e129915130817_
                                         _hd129914130820_
                                         _tl129913130822_
                                         _e129918130825_
                                         _hd129917130828_
                                         _tl129916130830_
                                         _e129921130833_
                                         _hd129920130836_
                                         _tl129919130838_
                                         _e129924130841_
                                         _hd129923130844_
                                         _tl129922130846_
                                         _e129927130849_
                                         _hd129926130852_
                                         _tl129925130854_))
                                    (___match135998135999_
                                     _e129903130785_
                                     _hd129902130788_
                                     _tl129901130790_
                                     _e129906130793_
                                     _hd129905130796_
                                     _tl129904130798_
                                     _e129909130801_
                                     _hd129908130804_
                                     _tl129907130806_
                                     _e129912130809_
                                     _hd129911130812_
                                     _tl129910130814_
                                     _e129915130817_
                                     _hd129914130820_
                                     _tl129913130822_
                                     _e129918130825_
                                     _hd129917130828_
                                     _tl129916130830_
                                     _e129921130833_
                                     _hd129920130836_
                                     _tl129919130838_
                                     _e129924130841_
                                     _hd129923130844_
                                     _tl129922130846_))))
                            (___match135998135999_
                             _e129903130785_
                             _hd129902130788_
                             _tl129901130790_
                             _e129906130793_
                             _hd129905130796_
                             _tl129904130798_
                             _e129909130801_
                             _hd129908130804_
                             _tl129907130806_
                             _e129912130809_
                             _hd129911130812_
                             _tl129910130814_
                             _e129915130817_
                             _hd129914130820_
                             _tl129913130822_
                             _e129918130825_
                             _hd129917130828_
                             _tl129916130830_
                             _e129921130833_
                             _hd129920130836_
                             _tl129919130838_
                             _e129924130841_
                             _hd129923130844_
                             _tl129922130846_))))
                    (___match135936135937_
                     _e129903130785_
                     _hd129902130788_
                     _tl129901130790_
                     _e129906130793_
                     _hd129905130796_
                     _tl129904130798_
                     _e129909130801_
                     _hd129908130804_
                     _tl129907130806_
                     _e129912130809_
                     _hd129911130812_
                     _tl129910130814_
                     _e129915130817_
                     _hd129914130820_
                     _tl129913130822_
                     _e129918130825_
                     _hd129917130828_
                     _tl129916130830_
                     _e129921130833_
                     _hd129920130836_
                     _tl129919130838_))
                (___kont135519135520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135519135520_))
                                            (___kont135519135520_))
                                        (___kont135519135520_))))
                                (___kont135519135520_))))
                        (___kont135519135520_))
                    (___kont135519135520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135519135520_))
                                                (___kont135519135520_))
                                            (___kont135519135520_))))
                                    (___kont135519135520_))))
                            (___kont135519135520_))))
                    (___kont135519135520_))))))))))
