(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710687286)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp136969 (list gxc#::identity::t))
            (__tmp136967
             (let ((__tmp136968
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136968 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp136969
         '()
         __tmp136967
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args135833_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args135833_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp136970
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
        (make-promise __tmp136970)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx135825_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self135828_
                (let ((__obj136962
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj136962))
               (__tmp136971
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self135828_ _stx135825_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp136971
           gxc#current-compile-method
           _self135828_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp136974 (list gxc#::void::t))
            (__tmp136972
             (let ((__tmp136973
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136973 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp136974
         '(receiver methods slots)
         __tmp136972
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args135822_
        (apply make-instance gxc#::collect-object-refs::t _$args135822_)))
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
      (let ((__tmp136975
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
        (make-promise __tmp136975)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g136976_
               _receiver135783135788_
               _methods135784135790_
               _slots135785135792_
               _stx135794_)
        (let* ((_receiver135797_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135783135788_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135783135788_))
               (_methods135799_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135784135790_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135784135790_))
               (_slots135801_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135785135792_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135785135792_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self135803_
                  (let ((__obj136964
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
                       __obj136964
                       _receiver135797_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136964
                       _methods135799_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136964
                       _slots135801_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj136964))
                 (__tmp136977
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self135803_ _stx135794_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136977
             gxc#current-compile-method
             _self135803_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys135782135810_ . _args135812_)
        (apply gxc#apply-collect-object-refs__%
               _keys135782135810_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135782135810_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135782135810_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135782135810_ 'slots: absent-value))
               _args135812_)))
    (define gxc#apply-collect-object-refs
      (lambda _args135786135818_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args135786135818_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp136980 (list gxc#::basic-xform-expression::t))
            (__tmp136978
             (let ((__tmp136979
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136979 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp136980
         '(receiver klass methods slots)
         __tmp136978
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args135778_
        (apply make-instance gxc#::subst-object-refs::t _$args135778_)))
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
      (let ((__tmp136981
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
        (make-promise __tmp136981)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g136982_
               _receiver135734135740_
               _klass135735135742_
               _methods135736135744_
               _slots135737135746_
               _stx135748_)
        (let* ((_receiver135751_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135734135740_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135734135740_))
               (_klass135753_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass135735135742_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass135735135742_))
               (_methods135755_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135736135744_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135736135744_))
               (_slots135757_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135737135746_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135737135746_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self135759_
                  (let ((__obj136966
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
                       __obj136966
                       _receiver135751_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136966
                       _klass135753_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136966
                       _methods135755_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136966
                       _slots135757_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj136966))
                 (__tmp136983
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self135759_ _stx135748_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136983
             gxc#current-compile-method
             _self135759_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135733135766_ . _args135768_)
        (apply gxc#apply-subst-object-refs__%
               _keys135733135766_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135733135766_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135733135766_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135733135766_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135733135766_ 'slots: absent-value))
               _args135768_)))
    (define gxc#apply-subst-object-refs
      (lambda _args135738135774_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args135738135774_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self132943_ _stx132944_)
        (letrec ((_generate-method-bind132946_
                  (lambda (_$klass135725_
                           _$method-table135726_
                           _id135727_
                           _$id135728_)
                    (let ((_$tmp135730_
                           (let ((__tmp136984 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136984))))
                      (let ((__tmp137032
                             (let ()
                               (declare (not safe))
                               (cons _$id135728_ '())))
                            (__tmp136985
                             (let ((__tmp136986
                                    (let ((__tmp136987
                                           (let ((__tmp137030
                                                  (let ((__tmp137031
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137031)))
                                                 (__tmp136988
                                                  (let ((__tmp136989
                                                         (let ((__tmp136990
                                                                (let ((__tmp136991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136992
                                      (let ((__tmp136993
                                             (let ((__tmp137013
                                                    (let ((__tmp137014
                                                           (let ((__tmp137029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135730_ '())))
                         (__tmp137015
                          (let ((__tmp137016
                                 (let ((__tmp137017
                                        (let ((__tmp137027
                                               (let ((__tmp137028
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp137028)))
                                              (__tmp137018
                                               (let ((__tmp137025
                                                      (let ((__tmp137026
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135726_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp137026)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137019
                                                      (let ((__tmp137023
                                                             (let ((__tmp137024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135727_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp137024)))
                    (__tmp137020
                     (let ((__tmp137021
                            (let ((__tmp137022
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137022))))
                       (declare (not safe))
                       (cons __tmp137021 '()))))
                (declare (not safe))
                (cons __tmp137023 __tmp137020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp137025
                                                       __tmp137019))))
                                          (declare (not safe))
                                          (cons __tmp137027 __tmp137018))))
                                   (declare (not safe))
                                   (cons '%#call __tmp137017))))
                            (declare (not safe))
                            (cons __tmp137016 '()))))
                     (declare (not safe))
                     (cons __tmp137029 __tmp137015))))
              (declare (not safe))
              (cons __tmp137014 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136994
                                                    (let ((__tmp136995
                                                           (let ((__tmp136996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137011
                                 (let ((__tmp137012
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135730_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp137012)))
                                (__tmp136997
                                 (let ((__tmp137009
                                        (let ((__tmp137010
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135730_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp137010)))
                                       (__tmp136998
                                        (let ((__tmp136999
                                               (let ((__tmp137000
                                                      (let ((__tmp137007
                                                             (let ((__tmp137008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp137008)))
                    (__tmp137001
                     (let ((__tmp137005
                            (let ((__tmp137006
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137006)))
                           (__tmp137002
                            (let ((__tmp137003
                                   (let ((__tmp137004
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135727_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp137004))))
                              (declare (not safe))
                              (cons __tmp137003 '()))))
                       (declare (not safe))
                       (cons __tmp137005 __tmp137002))))
                (declare (not safe))
                (cons __tmp137007 __tmp137001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp137000))))
                                          (declare (not safe))
                                          (cons __tmp136999 '()))))
                                   (declare (not safe))
                                   (cons __tmp137009 __tmp136998))))
                            (declare (not safe))
                            (cons __tmp137011 __tmp136997))))
                     (declare (not safe))
                     (cons '%#if __tmp136996))))
              (declare (not safe))
              (cons __tmp136995 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137013
                                                     __tmp136994))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp136993))))
                                 (declare (not safe))
                                 (cons __tmp136992 '()))))
                          (declare (not safe))
                          (cons '() __tmp136991))))
                   (declare (not safe))
                   (cons '%#lambda __tmp136990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136989 '()))))
                                             (declare (not safe))
                                             (cons __tmp137030 __tmp136988))))
                                      (declare (not safe))
                                      (cons '%#call __tmp136987))))
                               (declare (not safe))
                               (cons __tmp136986 '()))))
                        (declare (not safe))
                        (cons __tmp137032 __tmp136985)))))
                 (_generate-slot-bind132947_
                  (lambda (_$klass135719_ _id135720_ _$id135721_)
                    (let ((_$tmp135723_
                           (let ((__tmp137033 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137033))))
                      (let ((__tmp137070
                             (let ()
                               (declare (not safe))
                               (cons _$id135721_ '())))
                            (__tmp137034
                             (let ((__tmp137035
                                    (let ((__tmp137036
                                           (let ((__tmp137056
                                                  (let ((__tmp137057
                                                         (let ((__tmp137069
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135723_ '())))
                       (__tmp137058
                        (let ((__tmp137059
                               (let ((__tmp137060
                                      (let ((__tmp137067
                                             (let ((__tmp137068
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp137068)))
                                            (__tmp137061
                                             (let ((__tmp137065
                                                    (let ((__tmp137066
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp137066)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137062
                                                    (let ((__tmp137063
                                                           (let ((__tmp137064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135720_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp137064))))
              (declare (not safe))
              (cons __tmp137063 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137065
                                                     __tmp137062))))
                                        (declare (not safe))
                                        (cons __tmp137067 __tmp137061))))
                                 (declare (not safe))
                                 (cons '%#call __tmp137060))))
                          (declare (not safe))
                          (cons __tmp137059 '()))))
                   (declare (not safe))
                   (cons __tmp137069 __tmp137058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137057 '())))
                                                 (__tmp137037
                                                  (let ((__tmp137038
                                                         (let ((__tmp137039
                                                                (let ((__tmp137054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137055
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135723_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp137055)))
                              (__tmp137040
                               (let ((__tmp137052
                                      (let ((__tmp137053
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135723_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp137053)))
                                     (__tmp137041
                                      (let ((__tmp137042
                                             (let ((__tmp137043
                                                    (let ((__tmp137050
                                                           (let ((__tmp137051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp137051)))
                  (__tmp137044
                   (let ((__tmp137048
                          (let ((__tmp137049
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp137049)))
                         (__tmp137045
                          (let ((__tmp137046
                                 (let ((__tmp137047
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135720_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp137047))))
                            (declare (not safe))
                            (cons __tmp137046 '()))))
                     (declare (not safe))
                     (cons __tmp137048 __tmp137045))))
              (declare (not safe))
              (cons __tmp137050 __tmp137044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp137043))))
                                        (declare (not safe))
                                        (cons __tmp137042 '()))))
                                 (declare (not safe))
                                 (cons __tmp137052 __tmp137041))))
                          (declare (not safe))
                          (cons __tmp137054 __tmp137040))))
                   (declare (not safe))
                   (cons '%#if __tmp137039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137038 '()))))
                                             (declare (not safe))
                                             (cons __tmp137056 __tmp137037))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp137036))))
                               (declare (not safe))
                               (cons __tmp137035 '()))))
                        (declare (not safe))
                        (cons __tmp137070 __tmp137034)))))
                 (_generate-specializer-impl132948_
                  (lambda (_$klass135713_
                           _$method-table135714_
                           _methods-bind135715_
                           _slots-bind135716_
                           _specializer-impl135717_)
                    (let ((__tmp137071
                           (let ((__tmp137072
                                  (let ((__tmp137078
                                         (let ((__tmp137079
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135714_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135713_ __tmp137079)))
                                        (__tmp137073
                                         (let ((__tmp137074
                                                (let ((__tmp137075
                                                       (let ((__tmp137077
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135716_ _methods-bind135715_)))
                     (__tmp137076
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135717_ '()))))
                 (declare (not safe))
                 (cons __tmp137077 __tmp137076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137075))))
                                           (declare (not safe))
                                           (cons __tmp137074 '()))))
                                    (declare (not safe))
                                    (cons __tmp137078 __tmp137073))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137072))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137071 _stx132944_))))
                 (_generate-specializer-def132949_
                  (lambda (_id135709_
                           _specializer-id135710_
                           _specializer-impl135711_)
                    (let ((__tmp137080
                           (let ((__tmp137081
                                  (let ((__tmp137082
                                         (let ((__tmp137095
                                                (let ((__tmp137096
                                                       (let ((__tmp137097
                                                              (let ((__tmp137099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135710_ '())))
                            (__tmp137098
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135711_ '()))))
                        (declare (not safe))
                        (cons __tmp137099 __tmp137098))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137096
                                                   _stx132944_)))
                                               (__tmp137083
                                                (let ((__tmp137084
                                                       (let ((__tmp137085
                                                              (let ((__tmp137086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137093
                                    (let ((__tmp137094
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137094)))
                                   (__tmp137087
                                    (let ((__tmp137091
                                           (let ((__tmp137092
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135709_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137092)))
                                          (__tmp137088
                                           (let ((__tmp137089
                                                  (let ((__tmp137090
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137090))))
                                             (declare (not safe))
                                             (cons __tmp137089 '()))))
                                      (declare (not safe))
                                      (cons __tmp137091 __tmp137088))))
                               (declare (not safe))
                               (cons __tmp137093 __tmp137087))))
                        (declare (not safe))
                        (cons '%#call __tmp137086))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137085 _stx132944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137084 '()))))
                                           (declare (not safe))
                                           (cons __tmp137095 __tmp137083))))
                                    (declare (not safe))
                                    (cons _stx132944_ __tmp137082))))
                             (declare (not safe))
                             (cons '%#begin __tmp137081))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137080 _stx132944_)))))
          (let* ((___stx135922135923_ _stx132944_)
                 (_g132952132972_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135922135923_)))))
            (let ((___kont135924135925_
                   (lambda (_L133016_ _L133017_)
                     (let ((_method-calls133036_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs133037_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty133038_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?133040_
                                 (lambda ()
                                   (if (let ((__tmp137101
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls133036_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137101))
                                       (let ((__tmp137100
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs133037_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137100))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L133016_))
                             (let* ((___stx135836135837_ _L133016_)
                                    (_g133427133445_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx135836135837_)))))
                               (let ((___kont135838135839_
                                      (lambda (_L133481_ _L133482_ _L133483_)
                                        (for-each
                                         (lambda (_g133498133500_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133498133500_
                                              'receiver:
                                              _L133483_
                                              'methods:
                                              _method-calls133036_
                                              'slots:
                                              _slot-refs133037_)))
                                         _L133481_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?133040_))
                                            _stx132944_
                                            (let* ((_specializer-id133509_
                                                    (let* ((_id133503_
                                                            (let ((__tmp137223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L133017_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137223 '"::specialize")))
                   (_specializer-id133506_
                    (let ((__tmp137224
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx132944_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133503_ __tmp137224))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133506_))
              _specializer-id133506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133511_
                                                    (let ((__tmp137225
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137225)))
                                                   (_$method-table133513_
                                                    (let ((__tmp137226
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137226)))
                                                   (_methods133515_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls133036_)))
                                                   (_$methods133519_
                                                    (map (lambda (_id133517_)
                                                           (let ((__tmp137227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133517_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137227)))
                 _methods133515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137228_
                                                    (for-each
                                                     (lambda (_g133520133523_
                                                              _g133521133525_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls133036_
                                                          _g133520133523_
                                                          _g133521133525_)))
                                                     _methods133515_
                                                     _$methods133519_))
                                                   (_methods-bind133536_
                                                    (map (lambda (_g133528133531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133529133533_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind132946_
                      _$klass133511_
                      _$method-table133513_
                      _g133528133531_
                      _g133529133533_)))
                 _methods133515_
                 _$methods133519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133538_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs133037_)))
                                                   (_$slots133542_
                                                    (map (lambda (_id133540_)
                                                           (let ((__tmp137229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133540_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137229)))
                 _slots133538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137230_
                                                    (for-each
                                                     (lambda (_g133543133546_
                                                              _g133544133548_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs133037_
                                                          _g133543133546_
                                                          _g133544133548_)))
                                                     _slots133538_
                                                     _$slots133542_))
                                                   (_slots-bind133559_
                                                    (map (lambda (_g133551133554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133552133556_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind132947_
                      _$klass133511_
                      _g133551133554_
                      _g133552133556_)))
                 _slots133538_
                 _$slots133542_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133565_
                                                    (map (lambda (_g133560133562_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133560133562_
                                                              'receiver:
                                                              _L133483_
                                                              'klass:
                                                              _$klass133511_
                                                              'methods:
                                                              _method-calls133036_
                                                              'slots:
                                                              _slot-refs133037_)))
                                                         _L133481_))
                                                   (_specializer-impl133567_
                                                    (let ((__tmp137231
                                                           (let ((__tmp137232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137233
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133483_ _L133482_))))
                            (declare (not safe))
                            (cons __tmp137233 _specializer-body133565_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137232))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137231 _stx132944_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133569_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl132948_
                                                       _$klass133511_
                                                       _$method-table133513_
                                                       _methods-bind133536_
                                                       _slots-bind133559_
                                                       _specializer-impl133567_))))
                                              (let ((__tmp137235
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L133017_)))
                                                    (__tmp137234
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133509_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137235
                                                 '" => "
                                                 __tmp137234))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def132949_
                                                 _L133017_
                                                 _specializer-id133509_
                                                 _specializer-impl133569_))))))
                                     (___kont135840135841_
                                      (lambda () _stx132944_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx135836135837_))
                                     (let ((_e133434133457_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx135836135837_))))
                                       (let ((_tl133432133462_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133434133457_)))
                                             (_hd133433133460_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133434133457_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133432133462_))
                                             (let ((_e133437133465_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133432133462_))))
                                               (let ((_tl133435133470_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133437133465_)))
                                                     (_hd133436133468_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133437133465_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133436133468_))
                                                     (let ((_e133440133473_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133436133468_))))
                                                       (let ((_tl133438133478_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133440133473_)))
                     (_hd133439133476_
                      (let () (declare (not safe)) (##car _e133440133473_))))
                 (___kont135838135839_
                  _tl133435133470_
                  _tl133438133478_
                  _hd133439133476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135840135841_))))
                                             (___kont135840135841_))))
                                     (___kont135840135841_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L133016_))
                                 (let* ((_g133575133594_
                                         (lambda (_g133576133591_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133576133591_))))
                                        (_g133574133877_
                                         (lambda (_g133576133597_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133576133597_))
                                               (let ((_e133580133599_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133576133597_))))
                                                 (let ((_hd133579133602_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133580133599_)))
                                                       (_tl133578133604_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133580133599_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133578133604_))
                                                       (let ((_g137206_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133578133604_ '0))))
                 (begin
                   (let ((_g137207_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137206_)
                                (##vector-length _g137206_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137207_ 2)))
                         (error "Context expects 2 values" _g137207_)))
                   (let ((_target133581133607_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137206_ 0)))
                         (_tl133583133609_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137206_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133583133609_))
                         (letrec ((_loop133584133612_
                                   (lambda (_hd133582133615_
                                            _clause133588133617_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133582133615_))
                                         (let ((_e133585133620_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133582133615_))))
                                           (let ((_lp-hd133586133623_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133585133620_)))
                                                 (_lp-tl133587133625_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133585133620_))))
                                             (let ((__tmp137222
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133586133623_
                                                            _clause133588133617_))))
                                               (declare (not safe))
                                               (_loop133584133612_
                                                _lp-tl133587133625_
                                                __tmp137222))))
                                         (let ((_clause133589133628_
                                                (reverse _clause133588133617_)))
                                           ((lambda (_L133631_)
                                              (for-each
                                               (lambda (_clause133644_)
                                                 (let* ((___stx135862135863_
                                                         _clause133644_)
                                                        (_g133647133662_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx135862135863_)))))
                                                   (let ((___kont135864135865_
                                                          (lambda (_L133690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133691_
                           _L133692_)
                    (for-each
                     (lambda (_g133707133709_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133707133709_
                          'receiver:
                          _L133692_
                          'methods:
                          _method-calls133036_
                          'slots:
                          _slot-refs133037_)))
                     _L133690_)))
                 (___kont135866135867_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx135862135863_))
                                                         (let ((_e133654133674_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx135862135863_))))
                   (let ((_tl133652133679_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133654133674_)))
                         (_hd133653133677_
                          (let ()
                            (declare (not safe))
                            (##car _e133654133674_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133653133677_))
                         (let ((_e133657133682_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133653133677_))))
                           (let ((_tl133655133687_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133657133682_)))
                                 (_hd133656133685_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133657133682_))))
                             (___kont135864135865_
                              _tl133652133679_
                              _tl133655133687_
                              _hd133656133685_)))
                         (___kont135866135867_))))
                 (___kont135866135867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137208
                                                      (lambda (_g133714133717_
                                                               _g133715133719_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133714133717_
                                                                _g133715133719_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137208
                                                         '()
                                                         _L133631_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133040_))
                                                  _stx132944_
                                                  (let* ((_specializer-id133728_
                                                          (let* ((_id133722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137209
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133017_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137209 '"::specialize")))
                         (_specializer-id133725_
                          (let ((__tmp137210
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132944_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133722_ __tmp137210))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133725_))
                    _specializer-id133725_))
                 (_$klass133730_
                  (let ((__tmp137211 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137211)))
                 (_$method-table133732_
                  (let ((__tmp137212 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137212)))
                 (_methods133734_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133036_)))
                 (_$methods133738_
                  (map (lambda (_id133736_)
                         (let ((__tmp137213 (gensym _id133736_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137213)))
                       _methods133734_))
                 (_g137214_
                  (for-each
                   (lambda (_g133739133742_ _g133740133744_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133036_
                        _g133739133742_
                        _g133740133744_)))
                   _methods133734_
                   _$methods133738_))
                 (_methods-bind133755_
                  (map (lambda (_g133747133750_ _g133748133752_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132946_
                            _$klass133730_
                            _$method-table133732_
                            _g133747133750_
                            _g133748133752_)))
                       _methods133734_
                       _$methods133738_))
                 (_slots133757_
                  (let () (declare (not safe)) (hash-keys _slot-refs133037_)))
                 (_$slots133761_
                  (map (lambda (_id133759_)
                         (let ((__tmp137215 (gensym _id133759_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137215)))
                       _slots133757_))
                 (_g137216_
                  (for-each
                   (lambda (_g133762133765_ _g133763133767_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133037_
                        _g133762133765_
                        _g133763133767_)))
                   _slots133757_
                   _$slots133761_))
                 (_slots-bind133778_
                  (map (lambda (_g133770133773_ _g133771133775_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132947_
                            _$klass133730_
                            _g133770133773_
                            _g133771133775_)))
                       _slots133757_
                       _$slots133761_))
                 (_specializer-clauses133870_
                  (map (lambda (_clause133780_)
                         (let* ((___stx135882135883_ _clause133780_)
                                (_g133783133798_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx135882135883_)))))
                           (let ((___kont135884135885_
                                  (lambda (_L133826_ _L133827_ _L133828_)
                                    (let* ((_body133858_
                                            (map (lambda (_g133853133855_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g133853133855_
                                                      'receiver:
                                                      _L133828_
                                                      'klass:
                                                      _$klass133730_
                                                      'methods:
                                                      _method-calls133036_
                                                      'slots:
                                                      _slot-refs133037_)))
                                                 _L133826_))
                                           (__tmp137217
                                            (let ()
                                              (declare (not safe))
                                              (cons _L133828_ _L133827_))))
                                      (declare (not safe))
                                      (cons __tmp137217 _body133858_))))
                                 (___kont135886135887_
                                  (lambda () _clause133780_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx135882135883_))
                                 (let ((_e133790133810_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx135882135883_))))
                                   (let ((_tl133788133815_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e133790133810_)))
                                         (_hd133789133813_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e133790133810_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133789133813_))
                                         (let ((_e133793133818_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133789133813_))))
                                           (let ((_tl133791133823_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133793133818_)))
                                                 (_hd133792133821_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133793133818_))))
                                             (___kont135884135885_
                                              _tl133788133815_
                                              _tl133791133823_
                                              _hd133792133821_)))
                                         (___kont135886135887_))))
                                 (___kont135886135887_)))))
                       (let ((__tmp137218
                              (lambda (_g133862133865_ _g133863133867_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g133862133865_ _g133863133867_)))))
                         (declare (not safe))
                         (foldr1 __tmp137218 '() _L133631_))))
                 (_specializer-impl133872_
                  (let ((__tmp137219
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses133870_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137219 _stx132944_)))
                 (_specializer-impl133874_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132948_
                     _$klass133730_
                     _$method-table133732_
                     _methods-bind133755_
                     _slots-bind133778_
                     _specializer-impl133872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137221
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133017_)))
                                                          (__tmp137220
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133728_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137221
                                                       '" => "
                                                       __tmp137220))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132949_
                                                       _L133017_
                                                       _specializer-id133728_
                                                       _specializer-impl133874_)))))
                                            _clause133589133628_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133584133612_ _target133581133607_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133575133594_ _g133576133597_))))))
               (let ()
                 (declare (not safe))
                 (_g133575133594_ _g133576133597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133575133594_
                                                  _g133576133597_))))))
                                   (declare (not safe))
                                   (_g133574133877_ _L133016_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L133016_))
                                     (let* ((_g133880133910_
                                             (lambda (_g133881133907_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133881133907_))))
                                            (_g133879134515_
                                             (lambda (_g133881133913_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133881133913_))
                                                   (let ((_e133887133915_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133881133913_))))
                                                     (let ((_hd133886133918_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133887133915_)))
                                                           (_tl133885133920_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133887133915_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133885133920_))
                                                           (let ((_e133890133923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133885133920_))))
                     (let ((_hd133889133926_
                            (let ()
                              (declare (not safe))
                              (##car _e133890133923_)))
                           (_tl133888133928_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133890133923_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133889133926_))
                           (let ((_e133893133931_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133889133926_))))
                             (let ((_hd133892133934_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133893133931_)))
                                   (_tl133891133936_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133893133931_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133892133934_))
                                   (let ((_e133896133939_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133892133934_))))
                                     (let ((_hd133895133942_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133896133939_)))
                                           (_tl133894133944_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133896133939_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd133895133942_))
                                           (let ((_e133899133947_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd133895133942_))))
                                             (let ((_hd133898133950_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133899133947_)))
                                                   (_tl133897133952_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133899133947_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133897133952_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl133894133944_))
                                                       (let ((_e133902133955_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl133894133944_))))
                 (let ((_hd133901133958_
                        (let () (declare (not safe)) (##car _e133902133955_)))
                       (_tl133900133960_
                        (let () (declare (not safe)) (##cdr _e133902133955_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133900133960_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133891133936_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133888133928_))
                               (let ((_e133905133963_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133888133928_))))
                                 (let ((_hd133904133966_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133905133963_)))
                                       (_tl133903133968_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133905133963_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133903133968_))
                                       ((lambda (_L133971_ _L133972_ _L133973_)
                                          (let* ((_g133996134014_
                                                  (lambda (_g133997134011_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133997134011_))))
                                                 (_g133995134065_
                                                  (lambda (_g133997134017_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133997134017_))
                                                        (let ((_e134003134019_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133997134017_))))
                  (let ((_hd134002134022_
                         (let () (declare (not safe)) (##car _e134003134019_)))
                        (_tl134001134024_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134003134019_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl134001134024_))
                        (let ((_e134006134027_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl134001134024_))))
                          (let ((_hd134005134030_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e134006134027_)))
                                (_tl134004134032_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e134006134027_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd134005134030_))
                                (let ((_e134009134035_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd134005134030_))))
                                  (let ((_hd134008134038_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134009134035_)))
                                        (_tl134007134040_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134009134035_))))
                                    ((lambda (_L134043_ _L134044_ _L134045_)
                                       (for-each
                                        (lambda (_g134060134062_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g134060134062_
                                             'receiver:
                                             _L134045_
                                             'methods:
                                             _method-calls133036_
                                             'slots:
                                             _slot-refs133037_)))
                                        _L134043_))
                                     _tl134004134032_
                                     _tl134007134040_
                                     _hd134008134038_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133996134014_ _g133997134017_)))))
                        (let ()
                          (declare (not safe))
                          (_g133996134014_ _g133997134017_)))))
                (let ()
                  (declare (not safe))
                  (_g133996134014_ _g133997134017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133995134065_ _L133972_))
                                          (let* ((_g134068134087_
                                                  (lambda (_g134069134084_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134069134084_))))
                                                 (_g134067134206_
                                                  (lambda (_g134069134090_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134069134090_))
                                                        (let ((_e134073134092_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134069134090_))))
                  (let ((_hd134072134095_
                         (let () (declare (not safe)) (##car _e134073134092_)))
                        (_tl134071134097_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134073134092_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134071134097_))
                        (let ((_g137176_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134071134097_
                                  '0))))
                          (begin
                            (let ((_g137177_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137176_)
                                         (##vector-length _g137176_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137177_ 2)))
                                  (error "Context expects 2 values"
                                         _g137177_)))
                            (let ((_target134074134100_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137176_ 0)))
                                  (_tl134076134102_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137176_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134076134102_))
                                  (letrec ((_loop134077134105_
                                            (lambda (_hd134075134108_
                                                     _clause134081134110_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134075134108_))
                                                  (let ((_e134078134113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134075134108_))))
                                                    (let ((_lp-hd134079134116_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134078134113_)))
                                                          (_lp-tl134080134118_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134078134113_))))
                                                      (let ((__tmp137179
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134079134116_ _clause134081134110_))))
                (declare (not safe))
                (_loop134077134105_ _lp-tl134080134118_ __tmp137179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134082134121_
                                                         (reverse _clause134081134110_)))
                                                    ((lambda (_L134124_)
                                                       (for-each
                                                        (lambda (_clause134137_)
                                                          (let* ((_g134139134154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134140134151_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134140134151_))))
                         (_g134138134196_
                          (lambda (_g134140134157_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134140134157_))
                                (let ((_e134146134159_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134140134157_))))
                                  (let ((_hd134145134162_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134146134159_)))
                                        (_tl134144134164_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134146134159_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134145134162_))
                                        (let ((_e134149134167_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134145134162_))))
                                          (let ((_hd134148134170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134149134167_)))
                                                (_tl134147134172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134149134167_))))
                                            ((lambda (_L134175_
                                                      _L134176_
                                                      _L134177_)
                                               (for-each
                                                (lambda (_g134191134193_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134191134193_
                                                     'receiver:
                                                     _L134177_
                                                     'methods:
                                                     _method-calls133036_
                                                     'slots:
                                                     _slot-refs133037_)))
                                                _L134175_))
                                             _tl134144134164_
                                             _tl134147134172_
                                             _hd134148134170_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134139134154_ _g134140134157_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134139134154_ _g134140134157_))))))
                    (declare (not safe))
                    (_g134138134196_ _clause134137_)))
                (let ((__tmp137178
                       (lambda (_g134198134201_ _g134199134203_)
                         (let ()
                           (declare (not safe))
                           (cons _g134198134201_ _g134199134203_)))))
                  (declare (not safe))
                  (foldr1 __tmp137178 '() _L134124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134082134121_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134077134105_
                                       _target134074134100_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g134068134087_ _g134069134090_))))))
                        (let ()
                          (declare (not safe))
                          (_g134068134087_ _g134069134090_)))))
                (let ()
                  (declare (not safe))
                  (_g134068134087_ _g134069134090_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134067134206_ _L133971_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?133040_))
                                              _stx132944_
                                              (let* ((_specializer-id134215_
                                                      (let* ((_id134209_
                                                              (let ((__tmp137180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L133017_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137180 '"::specialize")))
                     (_specializer-id134212_
                      (let ((__tmp137181
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx132944_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134209_ __tmp137181))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134212_))
                _specializer-id134212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134217_
                                                      (let ((__tmp137182
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137182)))
                                                     (_$method-table134219_
                                                      (let ((__tmp137183
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137183)))
                                                     (_methods134221_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls133036_)))
                                                     (_$methods134225_
                                                      (map (lambda (_id134223_)
                                                             (let ((__tmp137184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134223_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137184)))
                   _methods134221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137185_
                                                      (for-each
                                                       (lambda (_g134226134229_
                                                                _g134227134231_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls133036_
                                                            _g134226134229_
                                                            _g134227134231_)))
                                                       _methods134221_
                                                       _$methods134225_))
                                                     (_methods-bind134242_
                                                      (map (lambda (_g134234134237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134235134239_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind132946_
                        _$klass134217_
                        _$method-table134219_
                        _g134234134237_
                        _g134235134239_)))
                   _methods134221_
                   _$methods134225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134244_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs133037_)))
                                                     (_$slots134248_
                                                      (map (lambda (_id134246_)
                                                             (let ((__tmp137186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134246_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137186)))
                   _slots134244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137187_
                                                      (for-each
                                                       (lambda (_g134249134252_
                                                                _g134250134254_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs133037_
                                                            _g134249134252_
                                                            _g134250134254_)))
                                                       _slots134244_
                                                       _$slots134248_))
                                                     (_slots-bind134265_
                                                      (map (lambda (_g134257134260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134258134262_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind132947_
                        _$klass134217_
                        _g134257134260_
                        _g134258134262_)))
                   _slots134244_
                   _$slots134248_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134351_
                                                      (let* ((_g134267134285_
                                                              (lambda (_g134268134282_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134268134282_))))
                     (_g134266134348_
                      (lambda (_g134268134288_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134268134288_))
                            (let ((_e134274134290_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134268134288_))))
                              (let ((_hd134273134293_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134274134290_)))
                                    (_tl134272134295_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134274134290_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134272134295_))
                                    (let ((_e134277134298_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134272134295_))))
                                      (let ((_hd134276134301_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134277134298_)))
                                            (_tl134275134303_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134277134298_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134276134301_))
                                            (let ((_e134280134306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134276134301_))))
                                              (let ((_hd134279134309_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134280134306_)))
                                                    (_tl134278134311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134280134306_))))
                                                ((lambda (_L134314_
                                                          _L134315_
                                                          _L134316_)
                                                   (let* ((_body134346_
                                                           (map (lambda (_g134341134343_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134341134343_
                             'receiver:
                             _L134316_
                             'klass:
                             _$klass134217_
                             'methods:
                             _method-calls133036_
                             'slots:
                             _slot-refs133037_)))
                        _L134314_))
                  (__tmp137188
                   (let ((__tmp137189
                          (let ((__tmp137190
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134316_ _L134315_))))
                            (declare (not safe))
                            (cons __tmp137190 _body134346_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137188
                                                      _L133972_)))
                                                 _tl134275134303_
                                                 _tl134278134311_
                                                 _hd134279134309_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134267134285_
                                               _g134268134288_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134267134285_ _g134268134288_)))))
                            (let ()
                              (declare (not safe))
                              (_g134267134285_ _g134268134288_))))))
                (declare (not safe))
                (_g134266134348_ _L133972_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134508_
                                                      (let* ((_g134353134372_
                                                              (lambda (_g134354134369_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134354134369_))))
                     (_g134352134505_
                      (lambda (_g134354134375_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134354134375_))
                            (let ((_e134358134377_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134354134375_))))
                              (let ((_hd134357134380_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134358134377_)))
                                    (_tl134356134382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134358134377_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134356134382_))
                                    (let ((_g137191_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134356134382_
                                              '0))))
                                      (begin
                                        (let ((_g137192_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137191_)
                                                     (##vector-length
                                                      _g137191_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137192_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137192_)))
                                        (let ((_target134359134385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137191_ 0)))
                                              (_tl134361134387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137191_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134361134387_))
                                              (letrec ((_loop134362134390_
                                                        (lambda (_hd134360134393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134366134395_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134360134393_))
                      (let ((_e134363134398_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134360134393_))))
                        (let ((_lp-hd134364134401_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134363134398_)))
                              (_lp-tl134365134403_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134363134398_))))
                          (let ((__tmp137196
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134364134401_
                                         _clause134366134395_))))
                            (declare (not safe))
                            (_loop134362134390_
                             _lp-tl134365134403_
                             __tmp137196))))
                      (let ((_clause134367134406_
                             (reverse _clause134366134395_)))
                        ((lambda (_L134409_)
                           (let* ((_clauses134503_
                                   (map (lambda (_clause134423_)
                                          (let* ((___stx135902135903_
                                                  _clause134423_)
                                                 (_g134426134441_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135902135903_)))))
                                            (let ((___kont135904135905_
                                                   (lambda (_L134469_
                                                            _L134470_
                                                            _L134471_)
                                                     (let* ((_body134491_
                                                             (map (lambda (_g134486134488_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134486134488_
                               'receiver:
                               _L134471_
                               'klass:
                               _$klass134217_
                               'methods:
                               _method-calls133036_
                               'slots:
                               _slot-refs133037_)))
                          _L134469_))
                    (__tmp137193
                     (let () (declare (not safe)) (cons _L134471_ _L134470_))))
               (declare (not safe))
               (cons __tmp137193 _body134491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135906135907_
                                                   (lambda () _clause134423_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx135902135903_))
                                                  (let ((_e134433134453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx135902135903_))))
                                                    (let ((_tl134431134458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134433134453_)))
                                                          (_hd134432134456_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134433134453_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134432134456_))
                                                          (let ((_e134436134461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134432134456_))))
                    (let ((_tl134434134466_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134436134461_)))
                          (_hd134435134464_
                           (let ()
                             (declare (not safe))
                             (##car _e134436134461_))))
                      (___kont135904135905_
                       _tl134431134458_
                       _tl134434134466_
                       _hd134435134464_)))
                  (___kont135906135907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135906135907_)))))
                                        (let ((__tmp137194
                                               (lambda (_g134495134498_
                                                        _g134496134500_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134495134498_
                                                         _g134496134500_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137194 '() _L134409_))))
                                  (__tmp137195
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134503_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137195 _L133971_)))
                         _clause134367134406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134362134390_
                                                   _target134359134385_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134353134372_
                                                 _g134354134375_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134353134372_ _g134354134375_)))))
                            (let ()
                              (declare (not safe))
                              (_g134353134372_ _g134354134375_))))))
                (declare (not safe))
                (_g134352134505_ _L133971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134510_
                                                      (let ((__tmp137197
                                                             (let ((__tmp137198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137200
                                   (let ((__tmp137201
                                          (let ((__tmp137203
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L133973_ '())))
                                                (__tmp137202
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134351_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137203 __tmp137202))))
                                     (declare (not safe))
                                     (cons __tmp137201 '())))
                                  (__tmp137199
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134508_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137200 __tmp137199))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137198))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137197 _stx132944_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134512_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl132948_
                                                         _$klass134217_
                                                         _$method-table134219_
                                                         _methods-bind134242_
                                                         _slots-bind134265_
                                                         _specializer-impl134510_))))
                                                (let ((__tmp137205
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L133017_)))
                                                      (__tmp137204
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134215_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137205
                                                   '" => "
                                                   __tmp137204))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def132949_
                                                   _L133017_
                                                   _specializer-id134215_
                                                   _specializer-impl134512_)))))
                                        _hd133904133966_
                                        _hd133901133958_
                                        _hd133898133950_)
                                       (let ()
                                         (declare (not safe))
                                         (_g133880133910_ _g133881133913_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133880133910_ _g133881133913_)))
                           (let ()
                             (declare (not safe))
                             (_g133880133910_ _g133881133913_)))
                       (let ()
                         (declare (not safe))
                         (_g133880133910_ _g133881133913_)))))
               (let () (declare (not safe)) (_g133880133910_ _g133881133913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133880133910_
                                                      _g133881133913_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133880133910_
                                              _g133881133913_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133880133910_ _g133881133913_)))))
                           (let ()
                             (declare (not safe))
                             (_g133880133910_ _g133881133913_)))))
                   (let ()
                     (declare (not safe))
                     (_g133880133910_ _g133881133913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133880133910_
                                                      _g133881133913_))))))
                                       (declare (not safe))
                                       (_g133879134515_ _L133016_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L133016_))
                                         (let* ((_g134518134571_
                                                 (lambda (_g134519134568_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134519134568_))))
                                                (_g134517135702_
                                                 (lambda (_g134519134574_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134519134574_))
                                                       (let ((_e134527134576_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134519134574_))))
                 (let ((_hd134526134579_
                        (let () (declare (not safe)) (##car _e134527134576_)))
                       (_tl134525134581_
                        (let () (declare (not safe)) (##cdr _e134527134576_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134526134579_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134526134579_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134525134581_))
                               (let ((_e134530134584_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134525134581_))))
                                 (let ((_hd134529134587_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134530134584_)))
                                       (_tl134528134589_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134530134584_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134529134587_))
                                       (let ((_e134533134592_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134529134587_))))
                                         (let ((_hd134532134595_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134533134592_)))
                                               (_tl134531134597_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134533134592_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134532134595_))
                                               (let ((_e134536134600_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134532134595_))))
                                                 (let ((_hd134535134603_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134536134600_)))
                                                       (_tl134534134605_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134536134600_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134535134603_))
                                                       (let ((_e134539134608_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134535134603_))))
                 (let ((_hd134538134611_
                        (let () (declare (not safe)) (##car _e134539134608_)))
                       (_tl134537134613_
                        (let () (declare (not safe)) (##cdr _e134539134608_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134537134613_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134534134605_))
                           (let ((_e134542134616_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134534134605_))))
                             (let ((_hd134541134619_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134542134616_)))
                                   (_tl134540134621_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134542134616_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134541134619_))
                                   (let ((_e134545134624_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134541134619_))))
                                     (let ((_hd134544134627_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134545134624_)))
                                           (_tl134543134629_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134545134624_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134544134627_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134544134627_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134543134629_))
                                                   (let ((_e134548134632_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134543134629_))))
                                                     (let ((_hd134547134635_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134548134632_)))
                                                           (_tl134546134637_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134548134632_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134547134635_))
                                                           (let ((_e134551134640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134547134635_))))
                     (let ((_hd134550134643_
                            (let ()
                              (declare (not safe))
                              (##car _e134551134640_)))
                           (_tl134549134645_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134551134640_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134550134643_))
                           (let ((_e134554134648_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134550134643_))))
                             (let ((_hd134553134651_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134554134648_)))
                                   (_tl134552134653_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134554134648_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134553134651_))
                                   (let ((_e134557134656_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134553134651_))))
                                     (let ((_hd134556134659_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134557134656_)))
                                           (_tl134555134661_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134557134656_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134555134661_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134552134653_))
                                               (let ((_e134560134664_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134552134653_))))
                                                 (let ((_hd134559134667_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134560134664_)))
                                                       (_tl134558134669_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134560134664_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134558134669_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134549134645_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134546134637_))
                       (let ((_e134563134672_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134546134637_))))
                         (let ((_hd134562134675_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134563134672_)))
                               (_tl134561134677_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134563134672_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134561134677_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134540134621_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134531134597_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134528134589_))
                                           (let ((_e134566134680_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134528134589_))))
                                             (let ((_hd134565134683_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134566134680_)))
                                                   (_tl134564134685_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134566134680_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134564134685_))
                                                   ((lambda (_L134688_
                                                             _L134689_
                                                             _L134690_
                                                             _L134691_
                                                             _L134692_)
                                                      (let* ((_g134731134793_
                                                              (lambda (_g134732134790_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134732134790_))))
                     (_g134730135699_
                      (lambda (_g134732134796_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134732134796_))
                            (let ((_e134740134798_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134732134796_))))
                              (let ((_hd134739134801_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134740134798_)))
                                    (_tl134738134803_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134740134798_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd134739134801_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd134739134801_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl134738134803_))
                                            (let ((_e134743134806_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl134738134803_))))
                                              (let ((_hd134742134809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134743134806_)))
                                                    (_tl134741134811_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134743134806_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134741134811_))
                                                    (let ((_e134746134814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134741134811_))))
                                                      (let ((_hd134745134817_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134746134814_)))
                    (_tl134744134819_
                     (let () (declare (not safe)) (##cdr _e134746134814_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd134745134817_))
                    (let ((_e134749134822_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd134745134817_))))
                      (let ((_hd134748134825_
                             (let ()
                               (declare (not safe))
                               (##car _e134749134822_)))
                            (_tl134747134827_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134749134822_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd134748134825_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd134748134825_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134747134827_))
                                    (let ((_e134752134830_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134747134827_))))
                                      (let ((_hd134751134833_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134752134830_)))
                                            (_tl134750134835_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134752134830_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134751134833_))
                                            (let ((_e134755134838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134751134833_))))
                                              (let ((_hd134754134841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134755134838_)))
                                                    (_tl134753134843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134755134838_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd134754134841_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd134754134841_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl134753134843_))
                                                            (let ((_e134758134846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl134753134843_))))
                      (let ((_hd134757134849_
                             (let ()
                               (declare (not safe))
                               (##car _e134758134846_)))
                            (_tl134756134851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134758134846_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134756134851_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl134750134835_))
                                (let ((_e134761134854_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl134750134835_))))
                                  (let ((_hd134760134857_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134761134854_)))
                                        (_tl134759134859_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134761134854_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134760134857_))
                                        (let ((_e134764134862_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134760134857_))))
                                          (let ((_hd134763134865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134764134862_)))
                                                (_tl134762134867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134764134862_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd134763134865_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd134763134865_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl134762134867_))
                                                        (let ((_e134767134870_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl134762134867_))))
                  (let ((_hd134766134873_
                         (let () (declare (not safe)) (##car _e134767134870_)))
                        (_tl134765134875_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134767134870_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl134765134875_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl134759134859_))
                            (let ((_e134770134878_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl134759134859_))))
                              (let ((_hd134769134881_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134770134878_)))
                                    (_tl134768134883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134770134878_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd134769134881_))
                                    (let ((_e134773134886_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd134769134881_))))
                                      (let ((_hd134772134889_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134773134886_)))
                                            (_tl134771134891_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134773134886_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd134772134889_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd134772134889_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134771134891_))
                                                    (let ((_e134776134894_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134771134891_))))
                                                      (let ((_hd134775134897_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134776134894_)))
                    (_tl134774134899_
                     (let () (declare (not safe)) (##cdr _e134776134894_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl134774134899_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134768134883_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl134768134883_))
                                  '1)
                            (let ((_g137102_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl134768134883_
                                      '1))))
                              (begin
                                (let ((_g137103_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137102_)
                                             (##vector-length _g137102_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137103_ 2)))
                                      (error "Context expects 2 values"
                                             _g137103_)))
                                (let ((_target134777134902_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137102_ 0)))
                                      (_tl134779134904_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137102_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl134779134904_))
                                      (let ((_e134788134907_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl134779134904_))))
                                        (let ((_hd134787134910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e134788134907_)))
                                              (_tl134786134912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e134788134907_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134786134912_))
                                              (letrec ((_loop134780134915_
                                                        (lambda (_hd134778134918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref134784134920_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134778134918_))
                      (let ((_e134781134923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134778134918_))))
                        (let ((_lp-hd134782134926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134781134923_)))
                              (_lp-tl134783134928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134781134923_))))
                          (let ((__tmp137175
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134782134926_
                                         _kw-ref134784134920_))))
                            (declare (not safe))
                            (_loop134780134915_
                             _lp-tl134783134928_
                             __tmp137175))))
                      (let ((_kw-ref134785134931_
                             (reverse _kw-ref134784134920_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134744134819_))
                            ((lambda (_L134934_
                                      _L134935_
                                      _L134936_
                                      _L134937_
                                      _L134938_)
                               (let* ((_kw-count134989_
                                       (length (let ((__tmp137104
                                                      (lambda (_g134981134984_
                                                               _g134982134986_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g134981134984_
                                                                _g134982134986_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137104
                                                         '()
                                                         _L134935_))))
                                      (_self-index134991_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count134989_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134690_))
                                     (let* ((_g134994135008_
                                             (lambda (_g134995135005_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134995135005_))))
                                            (_g134993135121_
                                             (lambda (_g134995135011_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134995135011_))
                                                   (let ((_e135000135013_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134995135011_))))
                                                     (let ((_hd134999135016_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e135000135013_)))
                                                           (_tl134998135018_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e135000135013_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134998135018_))
                                                           (let ((_e135003135021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134998135018_))))
                     (let ((_hd135002135024_
                            (let ()
                              (declare (not safe))
                              (##car _e135003135021_)))
                           (_tl135001135026_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135003135021_))))
                       ((lambda (_L135029_ _L135030_)
                          (let ((_self135046_
                                 (list-ref _L135030_ _self-index134991_)))
                            (for-each
                             (lambda (_g135047135049_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g135047135049_
                                  'receiver:
                                  _self135046_
                                  'methods:
                                  _method-calls133036_
                                  'slots:
                                  _slot-refs133037_)))
                             _L135029_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?133040_))
                                _stx132944_
                                (let* ((_specializer-id135058_
                                        (let* ((_id135052_
                                                (let ((__tmp137148
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L133017_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137148
                                                   '"::specialize")))
                                               (_specializer-id135055_
                                                (let ((__tmp137149
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx132944_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id135052_
                                                   __tmp137149))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id135055_))
                                          _specializer-id135055_))
                                       (_$klass135060_
                                        (let ((__tmp137150 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137150)))
                                       (_$method-table135062_
                                        (let ((__tmp137151
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137151)))
                                       (_methods135064_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls133036_)))
                                       (_$methods135068_
                                        (map (lambda (_id135066_)
                                               (let ((__tmp137152
                                                      (gensym _id135066_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137152)))
                                             _methods135064_))
                                       (_g137153_
                                        (for-each
                                         (lambda (_g135069135072_
                                                  _g135070135074_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls133036_
                                              _g135069135072_
                                              _g135070135074_)))
                                         _methods135064_
                                         _$methods135068_))
                                       (_methods-bind135085_
                                        (map (lambda (_g135077135080_
                                                      _g135078135082_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind132946_
                                                  _$klass135060_
                                                  _$method-table135062_
                                                  _g135077135080_
                                                  _g135078135082_)))
                                             _methods135064_
                                             _$methods135068_))
                                       (_slots135087_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs133037_)))
                                       (_$slots135091_
                                        (map (lambda (_id135089_)
                                               (let ((__tmp137154
                                                      (gensym _id135089_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137154)))
                                             _slots135087_))
                                       (_g137155_
                                        (for-each
                                         (lambda (_g135092135095_
                                                  _g135093135097_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs133037_
                                              _g135092135095_
                                              _g135093135097_)))
                                         _slots135087_
                                         _$slots135091_))
                                       (_slots-bind135108_
                                        (map (lambda (_g135100135103_
                                                      _g135101135105_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind132947_
                                                  _$klass135060_
                                                  _g135100135103_
                                                  _g135101135105_)))
                                             _slots135087_
                                             _$slots135091_))
                                       (_specializer-impl135116_
                                        (let* ((_specializer-body135114_
                                                (map (lambda (_g135109135111_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135109135111_
                                                          'receiver:
                                                          _self135046_
                                                          'klass:
                                                          _$klass135060_
                                                          'methods:
                                                          _method-calls133036_
                                                          'slots:
                                                          _slot-refs133037_)))
                                                     _L135029_))
                                               (__tmp137156
                                                (let ((__tmp137157
                                                       (let ((__tmp137159
                                                              (let ((__tmp137160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137172
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134692_ '())))
                                   (__tmp137161
                                    (let ((__tmp137162
                                           (let ((__tmp137163
                                                  (let ((__tmp137165
                                                         (let ((__tmp137166
                                                                (let ((__tmp137171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134691_ '())))
                              (__tmp137167
                               (let ((__tmp137168
                                      (let ((__tmp137169
                                             (let ((__tmp137170
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L135030_
                                                            _specializer-body135114_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137170))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137169
                                         _L134690_))))
                                 (declare (not safe))
                                 (cons __tmp137168 '()))))
                          (declare (not safe))
                          (cons __tmp137171 __tmp137167))))
                   (declare (not safe))
                   (cons __tmp137166 '())))
                (__tmp137164
                 (let () (declare (not safe)) (cons _L134689_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137165
                                                          __tmp137164))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137163))))
                                      (declare (not safe))
                                      (cons __tmp137162 '()))))
                               (declare (not safe))
                               (cons __tmp137172 __tmp137161))))
                        (declare (not safe))
                        (cons __tmp137160 '())))
                     (__tmp137158
                      (let () (declare (not safe)) (cons _L134688_ '()))))
                 (declare (not safe))
                 (cons __tmp137159 __tmp137158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137157))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137156
                                           _stx132944_)))
                                       (_specializer-impl135118_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl132948_
                                           _$klass135060_
                                           _$method-table135062_
                                           _methods-bind135085_
                                           _slots-bind135108_
                                           _specializer-impl135116_))))
                                  (let ((__tmp137174
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L133017_)))
                                        (__tmp137173
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id135058_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137174
                                     '" => "
                                     __tmp137173))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def132949_
                                     _L133017_
                                     _specializer-id135058_
                                     _specializer-impl135118_))))))
                        _tl135001135026_
                        _hd135002135024_)))
                   (let ()
                     (declare (not safe))
                     (_g134994135008_ _g134995135011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134994135008_
                                                      _g134995135011_))))))
                                       (declare (not safe))
                                       (_g134993135121_ _L134690_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134690_))
                                         (let* ((_g135124135154_
                                                 (lambda (_g135125135151_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135125135151_))))
                                                (_g135123135696_
                                                 (lambda (_g135125135157_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135125135157_))
                                                       (let ((_e135131135159_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135125135157_))))
                 (let ((_hd135130135162_
                        (let () (declare (not safe)) (##car _e135131135159_)))
                       (_tl135129135164_
                        (let () (declare (not safe)) (##cdr _e135131135159_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135129135164_))
                       (let ((_e135134135167_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135129135164_))))
                         (let ((_hd135133135170_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135134135167_)))
                               (_tl135132135172_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135134135167_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135133135170_))
                               (let ((_e135137135175_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135133135170_))))
                                 (let ((_hd135136135178_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135137135175_)))
                                       (_tl135135135180_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135137135175_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135136135178_))
                                       (let ((_e135140135183_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135136135178_))))
                                         (let ((_hd135139135186_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135140135183_)))
                                               (_tl135138135188_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135140135183_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135139135186_))
                                               (let ((_e135143135191_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135139135186_))))
                                                 (let ((_hd135142135194_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135143135191_)))
                                                       (_tl135141135196_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135143135191_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135141135196_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135138135188_))
                                                           (let ((_e135146135199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135138135188_))))
                     (let ((_hd135145135202_
                            (let ()
                              (declare (not safe))
                              (##car _e135146135199_)))
                           (_tl135144135204_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135146135199_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135144135204_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135135135180_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135132135172_))
                                   (let ((_e135149135207_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135132135172_))))
                                     (let ((_hd135148135210_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135149135207_)))
                                           (_tl135147135212_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135149135207_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135147135212_))
                                           ((lambda (_L135215_
                                                     _L135216_
                                                     _L135217_)
                                              (let* ((_g135240135254_
                                                      (lambda (_g135241135251_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135241135251_))))
                                                     (_g135239135295_
                                                      (lambda (_g135241135257_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135241135257_))
                                                            (let ((_e135246135259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135241135257_))))
                      (let ((_hd135245135262_
                             (let ()
                               (declare (not safe))
                               (##car _e135246135259_)))
                            (_tl135244135264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135246135259_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135244135264_))
                            (let ((_e135249135267_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135244135264_))))
                              (let ((_hd135248135270_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135249135267_)))
                                    (_tl135247135272_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135249135267_))))
                                ((lambda (_L135275_ _L135276_)
                                   (let ((_self135289_
                                          (list-ref
                                           _L135276_
                                           _self-index134991_)))
                                     (for-each
                                      (lambda (_g135290135292_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135290135292_
                                           'receiver:
                                           _self135289_
                                           'methods:
                                           _method-calls133036_
                                           'slots:
                                           _slot-refs133037_)))
                                      _L135275_)))
                                 _tl135247135272_
                                 _hd135248135270_)))
                            (let ()
                              (declare (not safe))
                              (_g135240135254_ _g135241135257_)))))
                    (let ()
                      (declare (not safe))
                      (_g135240135254_ _g135241135257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135239135295_ _L135216_))
                                              (let* ((_g135298135317_
                                                      (lambda (_g135299135314_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135299135314_))))
                                                     (_g135297135422_
                                                      (lambda (_g135299135320_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135299135320_))
                                                            (let ((_e135303135322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135299135320_))))
                      (let ((_hd135302135325_
                             (let ()
                               (declare (not safe))
                               (##car _e135303135322_)))
                            (_tl135301135327_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135303135322_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135301135327_))
                            (let ((_g137105_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135301135327_
                                      '0))))
                              (begin
                                (let ((_g137106_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137105_)
                                             (##vector-length _g137105_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137106_ 2)))
                                      (error "Context expects 2 values"
                                             _g137106_)))
                                (let ((_target135304135330_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137105_ 0)))
                                      (_tl135306135332_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137105_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135306135332_))
                                      (letrec ((_loop135307135335_
                                                (lambda (_hd135305135338_
                                                         _clause135311135340_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135305135338_))
                                                      (let ((_e135308135343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135305135338_))))
                (let ((_lp-hd135309135346_
                       (let () (declare (not safe)) (##car _e135308135343_)))
                      (_lp-tl135310135348_
                       (let () (declare (not safe)) (##cdr _e135308135343_))))
                  (let ((__tmp137108
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135309135346_ _clause135311135340_))))
                    (declare (not safe))
                    (_loop135307135335_ _lp-tl135310135348_ __tmp137108))))
              (let ((_clause135312135351_ (reverse _clause135311135340_)))
                ((lambda (_L135354_)
                   (for-each
                    (lambda (_clause135367_)
                      (let* ((_g135369135380_
                              (lambda (_g135370135377_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135370135377_))))
                             (_g135368135412_
                              (lambda (_g135370135383_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135370135383_))
                                    (let ((_e135375135385_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135370135383_))))
                                      (let ((_hd135374135388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135375135385_)))
                                            (_tl135373135390_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135375135385_))))
                                        ((lambda (_L135393_ _L135394_)
                                           (let ((_self135406_
                                                  (list-ref
                                                   _L135394_
                                                   _self-index134991_)))
                                             (for-each
                                              (lambda (_g135407135409_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135407135409_
                                                   'receiver:
                                                   _self135406_
                                                   'methods:
                                                   _method-calls133036_
                                                   'slots:
                                                   _slot-refs133037_)))
                                              _L135393_)))
                                         _tl135373135390_
                                         _hd135374135388_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135369135380_ _g135370135383_))))))
                        (declare (not safe))
                        (_g135368135412_ _clause135367_)))
                    (let ((__tmp137107
                           (lambda (_g135414135417_ _g135415135419_)
                             (let ()
                               (declare (not safe))
                               (cons _g135414135417_ _g135415135419_)))))
                      (declare (not safe))
                      (foldr1 __tmp137107 '() _L135354_))))
                 _clause135312135351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135307135335_
                                           _target135304135330_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135298135317_ _g135299135320_))))))
                            (let ()
                              (declare (not safe))
                              (_g135298135317_ _g135299135320_)))))
                    (let ()
                      (declare (not safe))
                      (_g135298135317_ _g135299135320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135297135422_ _L135215_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133040_))
                                                  _stx132944_
                                                  (let* ((_specializer-id135431_
                                                          (let* ((_id135425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137109
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133017_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137109 '"::specialize")))
                         (_specializer-id135428_
                          (let ((__tmp137110
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132944_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135425_ __tmp137110))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135428_))
                    _specializer-id135428_))
                 (_$klass135433_
                  (let ((__tmp137111 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137111)))
                 (_$method-table135435_
                  (let ((__tmp137112 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137112)))
                 (_methods135437_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133036_)))
                 (_$methods135441_
                  (map (lambda (_id135439_)
                         (let ((__tmp137113 (gensym _id135439_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137113)))
                       _methods135437_))
                 (_g137114_
                  (for-each
                   (lambda (_g135442135445_ _g135443135447_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133036_
                        _g135442135445_
                        _g135443135447_)))
                   _methods135437_
                   _$methods135441_))
                 (_methods-bind135458_
                  (map (lambda (_g135450135453_ _g135451135455_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132946_
                            _$klass135433_
                            _$method-table135435_
                            _g135450135453_
                            _g135451135455_)))
                       _methods135437_
                       _$methods135441_))
                 (_slots135460_
                  (let () (declare (not safe)) (hash-keys _slot-refs133037_)))
                 (_$slots135464_
                  (map (lambda (_id135462_)
                         (let ((__tmp137115 (gensym _id135462_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137115)))
                       _slots135460_))
                 (_g137116_
                  (for-each
                   (lambda (_g135465135468_ _g135466135470_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133037_
                        _g135465135468_
                        _g135466135470_)))
                   _slots135460_
                   _$slots135464_))
                 (_slots-bind135481_
                  (map (lambda (_g135473135476_ _g135474135478_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132947_
                            _$klass135433_
                            _g135473135476_
                            _g135474135478_)))
                       _slots135460_
                       _$slots135464_))
                 (_specializer-lambda-expr135554_
                  (let* ((_g135483135497_
                          (lambda (_g135484135494_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135484135494_))))
                         (_g135482135551_
                          (lambda (_g135484135500_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135484135500_))
                                (let ((_e135489135502_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135484135500_))))
                                  (let ((_hd135488135505_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135489135502_)))
                                        (_tl135487135507_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135489135502_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135487135507_))
                                        (let ((_e135492135510_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135487135507_))))
                                          (let ((_hd135491135513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135492135510_)))
                                                (_tl135490135515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135492135510_))))
                                            ((lambda (_L135518_ _L135519_)
                                               (let* ((_self135542_
                                                       (list-ref
                                                        _L135519_
                                                        _self-index134991_))
                                                      (_body135548_
                                                       (map (lambda (_g135543135545_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135543135545_
                         'receiver:
                         _self135542_
                         'klass:
                         _$klass135433_
                         'methods:
                         _method-calls133036_
                         'slots:
                         _slot-refs133037_)))
                    _L135518_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137117
                                                        (let ((__tmp137118
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135519_ _body135548_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137117
                                                    _L135216_))))
                                             _tl135490135515_
                                             _hd135491135513_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135483135497_ _g135484135500_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135483135497_ _g135484135500_))))))
                    (declare (not safe))
                    (_g135482135551_ _L135216_)))
                 (_specializer-case-lambda-expr135689_
                  (let* ((_g135556135575_
                          (lambda (_g135557135572_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135557135572_))))
                         (_g135555135686_
                          (lambda (_g135557135578_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135557135578_))
                                (let ((_e135561135580_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135557135578_))))
                                  (let ((_hd135560135583_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135561135580_)))
                                        (_tl135559135585_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135561135580_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135559135585_))
                                        (let ((_g137119_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135559135585_
                                                  '0))))
                                          (begin
                                            (let ((_g137120_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137119_)
                                                         (##vector-length
                                                          _g137119_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137120_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137120_)))
                                            (let ((_target135562135588_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137119_
                                                      0)))
                                                  (_tl135564135590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137119_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135564135590_))
                                                  (letrec ((_loop135565135593_
                                                            (lambda (_hd135563135596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135569135598_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135563135596_))
                          (let ((_e135566135601_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135563135596_))))
                            (let ((_lp-hd135567135604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135566135601_)))
                                  (_lp-tl135568135606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135566135601_))))
                              (let ((__tmp137123
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135567135604_
                                             _clause135569135598_))))
                                (declare (not safe))
                                (_loop135565135593_
                                 _lp-tl135568135606_
                                 __tmp137123))))
                          (let ((_clause135570135609_
                                 (reverse _clause135569135598_)))
                            ((lambda (_L135612_)
                               (let* ((_clauses135684_
                                       (map (lambda (_clause135626_)
                                              (let* ((_g135628135639_
                                                      (lambda (_g135629135636_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135629135636_))))
                                                     (_g135627135674_
                                                      (lambda (_g135629135642_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135629135642_))
                                                            (let ((_e135634135644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135629135642_))))
                      (let ((_hd135633135647_
                             (let ()
                               (declare (not safe))
                               (##car _e135634135644_)))
                            (_tl135632135649_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135634135644_))))
                        ((lambda (_L135652_ _L135653_)
                           (let* ((_self135665_
                                   (list-ref _L135653_ _self-index134991_))
                                  (_body135671_
                                   (map (lambda (_g135666135668_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135666135668_
                                             'receiver:
                                             _self135665_
                                             'klass:
                                             _$klass135433_
                                             'methods:
                                             _method-calls133036_
                                             'slots:
                                             _slot-refs133037_)))
                                        _L135652_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135653_ _body135671_))))
                         _tl135632135649_
                         _hd135633135647_)))
                    (let ()
                      (declare (not safe))
                      (_g135628135639_ _g135629135642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135627135674_
                                                 _clause135626_)))
                                            (let ((__tmp137121
                                                   (lambda (_g135676135679_
                                                            _g135677135681_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135676135679_
                                                             _g135677135681_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137121
                                                      '()
                                                      _L135612_))))
                                      (__tmp137122
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135684_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137122
                                  _L135215_)))
                             _clause135570135609_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135565135593_
                                                       _target135562135588_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135556135575_
                                                     _g135557135578_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135556135575_ _g135557135578_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135556135575_ _g135557135578_))))))
                    (declare (not safe))
                    (_g135555135686_ _L135215_)))
                 (_specializer-impl135691_
                  (let ((__tmp137124
                         (let ((__tmp137125
                                (let ((__tmp137127
                                       (let ((__tmp137128
                                              (let ((__tmp137145
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134692_ '())))
                                                    (__tmp137129
                                                     (let ((__tmp137130
                                                            (let ((__tmp137131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137133
                                  (let ((__tmp137134
                                         (let ((__tmp137144
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134691_ '())))
                                               (__tmp137135
                                                (let ((__tmp137136
                                                       (let ((__tmp137137
                                                              (let ((__tmp137138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137140
                                    (let ((__tmp137141
                                           (let ((__tmp137143
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135217_ '())))
                                                 (__tmp137142
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135554_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137143 __tmp137142))))
                                      (declare (not safe))
                                      (cons __tmp137141 '())))
                                   (__tmp137139
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135689_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137140 __tmp137139))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137138))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137137 _stx132944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137136 '()))))
                                           (declare (not safe))
                                           (cons __tmp137144 __tmp137135))))
                                    (declare (not safe))
                                    (cons __tmp137134 '())))
                                 (__tmp137132
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134689_ '()))))
                             (declare (not safe))
                             (cons __tmp137133 __tmp137132))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137131))))
               (declare (not safe))
               (cons __tmp137130 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137145
                                                      __tmp137129))))
                                         (declare (not safe))
                                         (cons __tmp137128 '())))
                                      (__tmp137126
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134688_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137127 __tmp137126))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137125))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137124 _stx132944_)))
                 (_specializer-impl135693_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132948_
                     _$klass135433_
                     _$method-table135435_
                     _methods-bind135458_
                     _slots-bind135481_
                     _specializer-impl135691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137147
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133017_)))
                                                          (__tmp137146
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135431_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137147
                                                       '" => "
                                                       __tmp137146))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132949_
                                                       _L133017_
                                                       _specializer-id135431_
                                                       _specializer-impl135693_)))))
                                            _hd135148135210_
                                            _hd135145135202_
                                            _hd135142135194_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135124135154_
                                              _g135125135157_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135124135154_ _g135125135157_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135124135154_ _g135125135157_)))
                           (let ()
                             (declare (not safe))
                             (_g135124135154_ _g135125135157_)))))
                   (let ()
                     (declare (not safe))
                     (_g135124135154_ _g135125135157_)))
               (let ()
                 (declare (not safe))
                 (_g135124135154_ _g135125135157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135124135154_
                                                  _g135125135157_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135124135154_ _g135125135157_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135124135154_ _g135125135157_)))))
                       (let ()
                         (declare (not safe))
                         (_g135124135154_ _g135125135157_)))))
               (let ()
                 (declare (not safe))
                 (_g135124135154_ _g135125135157_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135123135696_ _L134690_))
                                         _stx132944_))))
                             _hd134787134910_
                             _kw-ref134785134931_
                             _hd134775134897_
                             _hd134766134873_
                             _hd134757134849_)
                            (let ()
                              (declare (not safe))
                              (_g134731134793_ _g134732134796_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134780134915_
                                                   _target134777134902_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134731134793_
                                                 _g134732134796_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134731134793_ _g134732134796_))))))
                            (let ()
                              (declare (not safe))
                              (_g134731134793_ _g134732134796_)))
                        (let ()
                          (declare (not safe))
                          (_g134731134793_ _g134732134796_)))
                    (let ()
                      (declare (not safe))
                      (_g134731134793_ _g134732134796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134731134793_
                                                       _g134732134796_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134731134793_
                                                   _g134732134796_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134731134793_
                                               _g134732134796_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134731134793_ _g134732134796_)))))
                            (let ()
                              (declare (not safe))
                              (_g134731134793_ _g134732134796_)))
                        (let ()
                          (declare (not safe))
                          (_g134731134793_ _g134732134796_)))))
                (let ()
                  (declare (not safe))
                  (_g134731134793_ _g134732134796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134731134793_
                                                       _g134732134796_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134731134793_
                                                   _g134732134796_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134731134793_ _g134732134796_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134731134793_ _g134732134796_)))
                            (let ()
                              (declare (not safe))
                              (_g134731134793_ _g134732134796_)))))
                    (let ()
                      (declare (not safe))
                      (_g134731134793_ _g134732134796_)))
                (let ()
                  (declare (not safe))
                  (_g134731134793_ _g134732134796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134731134793_
                                                       _g134732134796_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134731134793_
                                               _g134732134796_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134731134793_ _g134732134796_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134731134793_ _g134732134796_)))
                            (let ()
                              (declare (not safe))
                              (_g134731134793_ _g134732134796_)))))
                    (let ()
                      (declare (not safe))
                      (_g134731134793_ _g134732134796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134731134793_
                                                       _g134732134796_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134731134793_
                                               _g134732134796_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134731134793_ _g134732134796_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134731134793_ _g134732134796_)))))
                            (let ()
                              (declare (not safe))
                              (_g134731134793_ _g134732134796_))))))
                (declare (not safe))
                (_g134730135699_ _L134689_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134565134683_
                                                    _hd134562134675_
                                                    _hd134559134667_
                                                    _hd134556134659_
                                                    _hd134538134611_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134518134571_
                                                      _g134519134574_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134518134571_
                                              _g134519134574_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134518134571_ _g134519134574_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134518134571_ _g134519134574_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134518134571_ _g134519134574_)))))
                       (let ()
                         (declare (not safe))
                         (_g134518134571_ _g134519134574_)))
                   (let ()
                     (declare (not safe))
                     (_g134518134571_ _g134519134574_)))
               (let ()
                 (declare (not safe))
                 (_g134518134571_ _g134519134574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134518134571_
                                                  _g134519134574_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134518134571_
                                              _g134519134574_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134518134571_ _g134519134574_)))))
                           (let ()
                             (declare (not safe))
                             (_g134518134571_ _g134519134574_)))))
                   (let ()
                     (declare (not safe))
                     (_g134518134571_ _g134519134574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134518134571_
                                                      _g134519134574_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134518134571_
                                                  _g134519134574_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134518134571_
                                              _g134519134574_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134518134571_ _g134519134574_)))))
                           (let ()
                             (declare (not safe))
                             (_g134518134571_ _g134519134574_)))
                       (let ()
                         (declare (not safe))
                         (_g134518134571_ _g134519134574_)))))
               (let ()
                 (declare (not safe))
                 (_g134518134571_ _g134519134574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134518134571_
                                                  _g134519134574_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134518134571_ _g134519134574_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134518134571_ _g134519134574_)))
                           (let ()
                             (declare (not safe))
                             (_g134518134571_ _g134519134574_)))
                       (let ()
                         (declare (not safe))
                         (_g134518134571_ _g134519134574_)))))
               (let ()
                 (declare (not safe))
                 (_g134518134571_ _g134519134574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134517135702_ _L133016_))
                                         _stx132944_))))))))
                  (___kont135926135927_ (lambda () _stx132944_)))
              (let ((___match135955135956_
                     (lambda (_e132958132984_
                              _hd132957132987_
                              _tl132956132989_
                              _e132961132992_
                              _hd132960132995_
                              _tl132959132997_
                              _e132964133000_
                              _hd132963133003_
                              _tl132962133005_
                              _e132967133008_
                              _hd132966133011_
                              _tl132965133013_)
                       (let ((_L133016_ _hd132966133011_)
                             (_L133017_ _hd132963133003_))
                         (if (let ((__tmp137236
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L133017_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137236))
                             (___kont135924135925_ _L133016_ _L133017_)
                             (___kont135926135927_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135922135923_))
                    (let ((_e132958132984_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135922135923_))))
                      (let ((_tl132956132989_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132958132984_)))
                            (_hd132957132987_
                             (let ()
                               (declare (not safe))
                               (##car _e132958132984_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132956132989_))
                            (let ((_e132961132992_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132956132989_))))
                              (let ((_tl132959132997_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132961132992_)))
                                    (_hd132960132995_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132961132992_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132960132995_))
                                    (let ((_e132964133000_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132960132995_))))
                                      (let ((_tl132962133005_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132964133000_)))
                                            (_hd132963133003_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132964133000_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl132962133005_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl132959132997_))
                                                (let ((_e132967133008_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl132959132997_))))
                                                  (let ((_tl132965133013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132967133008_)))
                                                        (_hd132966133011_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132967133008_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl132965133013_))
                                                        (___match135955135956_
                                                         _e132958132984_
                                                         _hd132957132987_
                                                         _tl132956132989_
                                                         _e132961132992_
                                                         _hd132960132995_
                                                         _tl132959132997_
                                                         _e132964133000_
                                                         _hd132963133003_
                                                         _tl132962133005_
                                                         _e132967133008_
                                                         _hd132966133011_
                                                         _tl132965133013_)
                                                        (___kont135926135927_))))
                                                (___kont135926135927_))
                                            (___kont135926135927_))))
                                    (___kont135926135927_))))
                            (___kont135926135927_))))
                    (___kont135926135927_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self131904_ _stx131905_)
        (let* ((___stx135958135959_ _stx131905_)
               (_g131913132135_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx135958135959_)))))
          (let ((___kont135960135961_
                 (lambda (_L132892_ _L132893_ _L132894_ _L132895_)
                   (let ((__tmp137238
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131904_ 'methods)))
                         (__tmp137237
                          (let () (declare (not safe)) (gx#stx-e _L132893_))))
                     (declare (not safe))
                     (hash-put! __tmp137238 __tmp137237 '#t))
                   (for-each
                    (lambda (_g132928132930_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131904_ _g132928132930_)))
                    (let ((__tmp137239
                           (lambda (_g132932132935_ _g132933132937_)
                             (let ()
                               (declare (not safe))
                               (cons _g132932132935_ _g132933132937_)))))
                      (declare (not safe))
                      (foldr1 __tmp137239 '() _L132892_)))))
                (___kont135964135965_
                 (lambda (_L132727_ _L132728_ _L132729_ _L132730_ _L132731_)
                   (let ((__tmp137241
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131904_ 'methods)))
                         (__tmp137240
                          (let () (declare (not safe)) (gx#stx-e _L132728_))))
                     (declare (not safe))
                     (hash-put! __tmp137241 __tmp137240 '#t))
                   (for-each
                    (lambda (_g132771132773_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131904_ _g132771132773_)))
                    (let ((__tmp137242
                           (lambda (_g132775132778_ _g132776132780_)
                             (let ()
                               (declare (not safe))
                               (cons _g132775132778_ _g132776132780_)))))
                      (declare (not safe))
                      (foldr1 __tmp137242 '() _L132727_)))))
                (___kont135968135969_
                 (lambda (_L132560_ _L132561_ _L132562_)
                   (let ((__tmp137244
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131904_ 'slots)))
                         (__tmp137243
                          (let () (declare (not safe)) (gx#stx-e _L132560_))))
                     (declare (not safe))
                     (hash-put! __tmp137244 __tmp137243 '#t))))
                (___kont135970135971_
                 (lambda (_L132437_ _L132438_ _L132439_ _L132440_)
                   (let ((__tmp137246
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131904_ 'slots)))
                         (__tmp137245
                          (let () (declare (not safe)) (gx#stx-e _L132438_))))
                     (declare (not safe))
                     (hash-put! __tmp137246 __tmp137245 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self131904_ _L132437_))))
                (___kont135972135973_
                 (lambda (_L132311_ _L132312_)
                   (let* ((_accessor132334_
                           (let ((__tmp137247
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132312_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137247)))
                          (_klass132336_
                           (let ((__tmp137248
                                  (##structure-ref
                                   _accessor132334_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131905_
                              __tmp137248)))
                          (_slot132338_
                           (##structure-ref
                            _accessor132334_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137251
                                     (##structure-ref
                                      _accessor132334_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137251))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132336_
                                     _slot132338_))
                                  (##structure-ref
                                   _klass132336_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137250
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131904_ 'slots)))
                               (__tmp137249
                                (##structure-ref
                                 _accessor132334_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137250 __tmp137249 '#t))))))
                (___kont135974135975_
                 (lambda (_L132211_ _L132212_ _L132213_)
                   (let* ((_mutator132240_
                           (let ((__tmp137252
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132213_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137252)))
                          (_klass132242_
                           (let ((__tmp137253
                                  (##structure-ref
                                   _mutator132240_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131905_
                              __tmp137253)))
                          (_slot132244_
                           (##structure-ref
                            _mutator132240_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137255
                                     (##structure-ref
                                      _mutator132240_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137255))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132242_
                                     _slot132244_))
                                  (##structure-ref
                                   _klass132242_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137254
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131904_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137254 _slot132244_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self131904_ _L132211_)))))
                (___kont135976135977_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self131904_ _stx131905_)))))
            (let* ((___match136457136458_
                    (lambda (_e132109132147_
                             _hd132108132150_
                             _tl132107132152_
                             _e132112132155_
                             _hd132111132158_
                             _tl132110132160_
                             _e132115132163_
                             _hd132114132166_
                             _tl132113132168_
                             _e132118132171_
                             _hd132117132174_
                             _tl132116132176_
                             _e132121132179_
                             _hd132120132182_
                             _tl132119132184_
                             _e132124132187_
                             _hd132123132190_
                             _tl132122132192_
                             _e132127132195_
                             _hd132126132198_
                             _tl132125132200_
                             _e132130132203_
                             _hd132129132206_
                             _tl132128132208_)
                      (let ((_L132211_ _hd132129132206_)
                            (_L132212_ _hd132126132198_)
                            (_L132213_ _hd132117132174_))
                        (if (and (let ((__tmp137257
                                        (let ((__tmp137258
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132213_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137258))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137257
                                    'gxc#!mutator::t))
                                 (let ((__tmp137256
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131904_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132212_
                                    __tmp137256)))
                            (___kont135974135975_
                             _L132211_
                             _L132212_
                             _L132213_)
                            (___kont135976135977_)))))
                   (___match136455136456_
                    (lambda (_e132109132147_
                             _hd132108132150_
                             _tl132107132152_
                             _e132112132155_
                             _hd132111132158_
                             _tl132110132160_
                             _e132115132163_
                             _hd132114132166_
                             _tl132113132168_
                             _e132118132171_
                             _hd132117132174_
                             _tl132116132176_
                             _e132121132179_
                             _hd132120132182_
                             _tl132119132184_
                             _e132124132187_
                             _hd132123132190_
                             _tl132122132192_
                             _e132127132195_
                             _hd132126132198_
                             _tl132125132200_
                             _e132130132203_
                             _hd132129132206_
                             _tl132128132208_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132128132208_))
                          (___match136457136458_
                           _e132109132147_
                           _hd132108132150_
                           _tl132107132152_
                           _e132112132155_
                           _hd132111132158_
                           _tl132110132160_
                           _e132115132163_
                           _hd132114132166_
                           _tl132113132168_
                           _e132118132171_
                           _hd132117132174_
                           _tl132116132176_
                           _e132121132179_
                           _hd132120132182_
                           _tl132119132184_
                           _e132124132187_
                           _hd132123132190_
                           _tl132122132192_
                           _e132127132195_
                           _hd132126132198_
                           _tl132125132200_
                           _e132130132203_
                           _hd132129132206_
                           _tl132128132208_)
                          (___kont135976135977_))))
                   (___match136449136450_
                    (lambda (_e132109132147_
                             _hd132108132150_
                             _tl132107132152_
                             _e132112132155_
                             _hd132111132158_
                             _tl132110132160_
                             _e132115132163_
                             _hd132114132166_
                             _tl132113132168_
                             _e132118132171_
                             _hd132117132174_
                             _tl132116132176_
                             _e132121132179_
                             _hd132120132182_
                             _tl132119132184_
                             _e132124132187_
                             _hd132123132190_
                             _tl132122132192_
                             _e132127132195_
                             _hd132126132198_
                             _tl132125132200_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132119132184_))
                          (let ((_e132130132203_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132119132184_))))
                            (let ((_tl132128132208_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132130132203_)))
                                  (_hd132129132206_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132130132203_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132128132208_))
                                  (___match136457136458_
                                   _e132109132147_
                                   _hd132108132150_
                                   _tl132107132152_
                                   _e132112132155_
                                   _hd132111132158_
                                   _tl132110132160_
                                   _e132115132163_
                                   _hd132114132166_
                                   _tl132113132168_
                                   _e132118132171_
                                   _hd132117132174_
                                   _tl132116132176_
                                   _e132121132179_
                                   _hd132120132182_
                                   _tl132119132184_
                                   _e132124132187_
                                   _hd132123132190_
                                   _tl132122132192_
                                   _e132127132195_
                                   _hd132126132198_
                                   _tl132125132200_
                                   _e132130132203_
                                   _hd132129132206_
                                   _tl132128132208_)
                                  (___kont135976135977_))))
                          (___kont135976135977_))))
                   (___match136395136396_
                    (lambda (_e132085132255_
                             _hd132084132258_
                             _tl132083132260_
                             _e132088132263_
                             _hd132087132266_
                             _tl132086132268_
                             _e132091132271_
                             _hd132090132274_
                             _tl132089132276_
                             _e132094132279_
                             _hd132093132282_
                             _tl132092132284_
                             _e132097132287_
                             _hd132096132290_
                             _tl132095132292_
                             _e132100132295_
                             _hd132099132298_
                             _tl132098132300_
                             _e132103132303_
                             _hd132102132306_
                             _tl132101132308_)
                      (let ((_L132311_ _hd132102132306_)
                            (_L132312_ _hd132093132282_))
                        (if (and (let ((__tmp137260
                                        (let ((__tmp137261
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132312_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137261))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137260
                                    'gxc#!accessor::t))
                                 (let ((__tmp137259
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131904_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132311_
                                    __tmp137259)))
                            (___kont135972135973_ _L132311_ _L132312_)
                            (___kont135976135977_)))))
                   (___match136393136394_
                    (lambda (_e132085132255_
                             _hd132084132258_
                             _tl132083132260_
                             _e132088132263_
                             _hd132087132266_
                             _tl132086132268_
                             _e132091132271_
                             _hd132090132274_
                             _tl132089132276_
                             _e132094132279_
                             _hd132093132282_
                             _tl132092132284_
                             _e132097132287_
                             _hd132096132290_
                             _tl132095132292_
                             _e132100132295_
                             _hd132099132298_
                             _tl132098132300_
                             _e132103132303_
                             _hd132102132306_
                             _tl132101132308_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132095132292_))
                          (___match136395136396_
                           _e132085132255_
                           _hd132084132258_
                           _tl132083132260_
                           _e132088132263_
                           _hd132087132266_
                           _tl132086132268_
                           _e132091132271_
                           _hd132090132274_
                           _tl132089132276_
                           _e132094132279_
                           _hd132093132282_
                           _tl132092132284_
                           _e132097132287_
                           _hd132096132290_
                           _tl132095132292_
                           _e132100132295_
                           _hd132099132298_
                           _tl132098132300_
                           _e132103132303_
                           _hd132102132306_
                           _tl132101132308_)
                          (___match136449136450_
                           _e132085132255_
                           _hd132084132258_
                           _tl132083132260_
                           _e132088132263_
                           _hd132087132266_
                           _tl132086132268_
                           _e132091132271_
                           _hd132090132274_
                           _tl132089132276_
                           _e132094132279_
                           _hd132093132282_
                           _tl132092132284_
                           _e132097132287_
                           _hd132096132290_
                           _tl132095132292_
                           _e132100132295_
                           _hd132099132298_
                           _tl132098132300_
                           _e132103132303_
                           _hd132102132306_
                           _tl132101132308_))))
                   (___match136339136340_
                    (lambda (_e132050132349_
                             _hd132049132352_
                             _tl132048132354_
                             _e132053132357_
                             _hd132052132360_
                             _tl132051132362_
                             _e132056132365_
                             _hd132055132368_
                             _tl132054132370_
                             _e132059132373_
                             _hd132058132376_
                             _tl132057132378_
                             _e132062132381_
                             _hd132061132384_
                             _tl132060132386_
                             _e132065132389_
                             _hd132064132392_
                             _tl132063132394_
                             _e132068132397_
                             _hd132067132400_
                             _tl132066132402_
                             _e132071132405_
                             _hd132070132408_
                             _tl132069132410_
                             _e132074132413_
                             _hd132073132416_
                             _tl132072132418_
                             _e132077132421_
                             _hd132076132424_
                             _tl132075132426_
                             _e132080132429_
                             _hd132079132432_
                             _tl132078132434_)
                      (let ((_L132437_ _hd132079132432_)
                            (_L132438_ _hd132076132424_)
                            (_L132439_ _hd132067132400_)
                            (_L132440_ _hd132058132376_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132440_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132440_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137262
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131904_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132439_
                                    __tmp137262)))
                            (___kont135970135971_
                             _L132437_
                             _L132438_
                             _L132439_
                             _L132440_)
                            (___kont135976135977_)))))
                   (___match136331136332_
                    (lambda (_e132050132349_
                             _hd132049132352_
                             _tl132048132354_
                             _e132053132357_
                             _hd132052132360_
                             _tl132051132362_
                             _e132056132365_
                             _hd132055132368_
                             _tl132054132370_
                             _e132059132373_
                             _hd132058132376_
                             _tl132057132378_
                             _e132062132381_
                             _hd132061132384_
                             _tl132060132386_
                             _e132065132389_
                             _hd132064132392_
                             _tl132063132394_
                             _e132068132397_
                             _hd132067132400_
                             _tl132066132402_
                             _e132071132405_
                             _hd132070132408_
                             _tl132069132410_
                             _e132074132413_
                             _hd132073132416_
                             _tl132072132418_
                             _e132077132421_
                             _hd132076132424_
                             _tl132075132426_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132069132410_))
                          (let ((_e132080132429_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132069132410_))))
                            (let ((_tl132078132434_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132080132429_)))
                                  (_hd132079132432_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132080132429_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132078132434_))
                                  (___match136339136340_
                                   _e132050132349_
                                   _hd132049132352_
                                   _tl132048132354_
                                   _e132053132357_
                                   _hd132052132360_
                                   _tl132051132362_
                                   _e132056132365_
                                   _hd132055132368_
                                   _tl132054132370_
                                   _e132059132373_
                                   _hd132058132376_
                                   _tl132057132378_
                                   _e132062132381_
                                   _hd132061132384_
                                   _tl132060132386_
                                   _e132065132389_
                                   _hd132064132392_
                                   _tl132063132394_
                                   _e132068132397_
                                   _hd132067132400_
                                   _tl132066132402_
                                   _e132071132405_
                                   _hd132070132408_
                                   _tl132069132410_
                                   _e132074132413_
                                   _hd132073132416_
                                   _tl132072132418_
                                   _e132077132421_
                                   _hd132076132424_
                                   _tl132075132426_
                                   _e132080132429_
                                   _hd132079132432_
                                   _tl132078132434_)
                                  (___kont135976135977_))))
                          (___match136455136456_
                           _e132050132349_
                           _hd132049132352_
                           _tl132048132354_
                           _e132053132357_
                           _hd132052132360_
                           _tl132051132362_
                           _e132056132365_
                           _hd132055132368_
                           _tl132054132370_
                           _e132059132373_
                           _hd132058132376_
                           _tl132057132378_
                           _e132062132381_
                           _hd132061132384_
                           _tl132060132386_
                           _e132065132389_
                           _hd132064132392_
                           _tl132063132394_
                           _e132068132397_
                           _hd132067132400_
                           _tl132066132402_
                           _e132071132405_
                           _hd132070132408_
                           _tl132069132410_))))
                   (___match136253136254_
                    (lambda (_e132016132480_
                             _hd132015132483_
                             _tl132014132485_
                             _e132019132488_
                             _hd132018132491_
                             _tl132017132493_
                             _e132022132496_
                             _hd132021132499_
                             _tl132020132501_
                             _e132025132504_
                             _hd132024132507_
                             _tl132023132509_
                             _e132028132512_
                             _hd132027132515_
                             _tl132026132517_
                             _e132031132520_
                             _hd132030132523_
                             _tl132029132525_
                             _e132034132528_
                             _hd132033132531_
                             _tl132032132533_
                             _e132037132536_
                             _hd132036132539_
                             _tl132035132541_
                             _e132040132544_
                             _hd132039132547_
                             _tl132038132549_
                             _e132043132552_
                             _hd132042132555_
                             _tl132041132557_)
                      (let ((_L132560_ _hd132042132555_)
                            (_L132561_ _hd132033132531_)
                            (_L132562_ _hd132024132507_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132562_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132562_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137263
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131904_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132561_
                                    __tmp137263)))
                            (___kont135968135969_
                             _L132560_
                             _L132561_
                             _L132562_)
                            (___match136457136458_
                             _e132016132480_
                             _hd132015132483_
                             _tl132014132485_
                             _e132019132488_
                             _hd132018132491_
                             _tl132017132493_
                             _e132022132496_
                             _hd132021132499_
                             _tl132020132501_
                             _e132025132504_
                             _hd132024132507_
                             _tl132023132509_
                             _e132028132512_
                             _hd132027132515_
                             _tl132026132517_
                             _e132031132520_
                             _hd132030132523_
                             _tl132029132525_
                             _e132034132528_
                             _hd132033132531_
                             _tl132032132533_
                             _e132037132536_
                             _hd132036132539_
                             _tl132035132541_)))))
                   (___match136251136252_
                    (lambda (_e132016132480_
                             _hd132015132483_
                             _tl132014132485_
                             _e132019132488_
                             _hd132018132491_
                             _tl132017132493_
                             _e132022132496_
                             _hd132021132499_
                             _tl132020132501_
                             _e132025132504_
                             _hd132024132507_
                             _tl132023132509_
                             _e132028132512_
                             _hd132027132515_
                             _tl132026132517_
                             _e132031132520_
                             _hd132030132523_
                             _tl132029132525_
                             _e132034132528_
                             _hd132033132531_
                             _tl132032132533_
                             _e132037132536_
                             _hd132036132539_
                             _tl132035132541_
                             _e132040132544_
                             _hd132039132547_
                             _tl132038132549_
                             _e132043132552_
                             _hd132042132555_
                             _tl132041132557_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132035132541_))
                          (___match136253136254_
                           _e132016132480_
                           _hd132015132483_
                           _tl132014132485_
                           _e132019132488_
                           _hd132018132491_
                           _tl132017132493_
                           _e132022132496_
                           _hd132021132499_
                           _tl132020132501_
                           _e132025132504_
                           _hd132024132507_
                           _tl132023132509_
                           _e132028132512_
                           _hd132027132515_
                           _tl132026132517_
                           _e132031132520_
                           _hd132030132523_
                           _tl132029132525_
                           _e132034132528_
                           _hd132033132531_
                           _tl132032132533_
                           _e132037132536_
                           _hd132036132539_
                           _tl132035132541_
                           _e132040132544_
                           _hd132039132547_
                           _tl132038132549_
                           _e132043132552_
                           _hd132042132555_
                           _tl132041132557_)
                          (___match136331136332_
                           _e132016132480_
                           _hd132015132483_
                           _tl132014132485_
                           _e132019132488_
                           _hd132018132491_
                           _tl132017132493_
                           _e132022132496_
                           _hd132021132499_
                           _tl132020132501_
                           _e132025132504_
                           _hd132024132507_
                           _tl132023132509_
                           _e132028132512_
                           _hd132027132515_
                           _tl132026132517_
                           _e132031132520_
                           _hd132030132523_
                           _tl132029132525_
                           _e132034132528_
                           _hd132033132531_
                           _tl132032132533_
                           _e132037132536_
                           _hd132036132539_
                           _tl132035132541_
                           _e132040132544_
                           _hd132039132547_
                           _tl132038132549_
                           _e132043132552_
                           _hd132042132555_
                           _tl132041132557_))))
                   (___match136241136242_
                    (lambda (_e132016132480_
                             _hd132015132483_
                             _tl132014132485_
                             _e132019132488_
                             _hd132018132491_
                             _tl132017132493_
                             _e132022132496_
                             _hd132021132499_
                             _tl132020132501_
                             _e132025132504_
                             _hd132024132507_
                             _tl132023132509_
                             _e132028132512_
                             _hd132027132515_
                             _tl132026132517_
                             _e132031132520_
                             _hd132030132523_
                             _tl132029132525_
                             _e132034132528_
                             _hd132033132531_
                             _tl132032132533_
                             _e132037132536_
                             _hd132036132539_
                             _tl132035132541_
                             _e132040132544_
                             _hd132039132547_
                             _tl132038132549_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd132039132547_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132038132549_))
                              (let ((_e132043132552_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132038132549_))))
                                (let ((_tl132041132557_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132043132552_)))
                                      (_hd132042132555_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132043132552_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132041132557_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl132035132541_))
                                          (___match136253136254_
                                           _e132016132480_
                                           _hd132015132483_
                                           _tl132014132485_
                                           _e132019132488_
                                           _hd132018132491_
                                           _tl132017132493_
                                           _e132022132496_
                                           _hd132021132499_
                                           _tl132020132501_
                                           _e132025132504_
                                           _hd132024132507_
                                           _tl132023132509_
                                           _e132028132512_
                                           _hd132027132515_
                                           _tl132026132517_
                                           _e132031132520_
                                           _hd132030132523_
                                           _tl132029132525_
                                           _e132034132528_
                                           _hd132033132531_
                                           _tl132032132533_
                                           _e132037132536_
                                           _hd132036132539_
                                           _tl132035132541_
                                           _e132040132544_
                                           _hd132039132547_
                                           _tl132038132549_
                                           _e132043132552_
                                           _hd132042132555_
                                           _tl132041132557_)
                                          (___match136331136332_
                                           _e132016132480_
                                           _hd132015132483_
                                           _tl132014132485_
                                           _e132019132488_
                                           _hd132018132491_
                                           _tl132017132493_
                                           _e132022132496_
                                           _hd132021132499_
                                           _tl132020132501_
                                           _e132025132504_
                                           _hd132024132507_
                                           _tl132023132509_
                                           _e132028132512_
                                           _hd132027132515_
                                           _tl132026132517_
                                           _e132031132520_
                                           _hd132030132523_
                                           _tl132029132525_
                                           _e132034132528_
                                           _hd132033132531_
                                           _tl132032132533_
                                           _e132037132536_
                                           _hd132036132539_
                                           _tl132035132541_
                                           _e132040132544_
                                           _hd132039132547_
                                           _tl132038132549_
                                           _e132043132552_
                                           _hd132042132555_
                                           _tl132041132557_))
                                      (___match136455136456_
                                       _e132016132480_
                                       _hd132015132483_
                                       _tl132014132485_
                                       _e132019132488_
                                       _hd132018132491_
                                       _tl132017132493_
                                       _e132022132496_
                                       _hd132021132499_
                                       _tl132020132501_
                                       _e132025132504_
                                       _hd132024132507_
                                       _tl132023132509_
                                       _e132028132512_
                                       _hd132027132515_
                                       _tl132026132517_
                                       _e132031132520_
                                       _hd132030132523_
                                       _tl132029132525_
                                       _e132034132528_
                                       _hd132033132531_
                                       _tl132032132533_
                                       _e132037132536_
                                       _hd132036132539_
                                       _tl132035132541_))))
                              (___match136455136456_
                               _e132016132480_
                               _hd132015132483_
                               _tl132014132485_
                               _e132019132488_
                               _hd132018132491_
                               _tl132017132493_
                               _e132022132496_
                               _hd132021132499_
                               _tl132020132501_
                               _e132025132504_
                               _hd132024132507_
                               _tl132023132509_
                               _e132028132512_
                               _hd132027132515_
                               _tl132026132517_
                               _e132031132520_
                               _hd132030132523_
                               _tl132029132525_
                               _e132034132528_
                               _hd132033132531_
                               _tl132032132533_
                               _e132037132536_
                               _hd132036132539_
                               _tl132035132541_))
                          (___match136455136456_
                           _e132016132480_
                           _hd132015132483_
                           _tl132014132485_
                           _e132019132488_
                           _hd132018132491_
                           _tl132017132493_
                           _e132022132496_
                           _hd132021132499_
                           _tl132020132501_
                           _e132025132504_
                           _hd132024132507_
                           _tl132023132509_
                           _e132028132512_
                           _hd132027132515_
                           _tl132026132517_
                           _e132031132520_
                           _hd132030132523_
                           _tl132029132525_
                           _e132034132528_
                           _hd132033132531_
                           _tl132032132533_
                           _e132037132536_
                           _hd132036132539_
                           _tl132035132541_))))
                   (___match136173136174_
                    (lambda (_e131965132599_
                             _hd131964132602_
                             _tl131963132604_
                             _e131968132607_
                             _hd131967132610_
                             _tl131966132612_
                             _e131971132615_
                             _hd131970132618_
                             _tl131969132620_
                             _e131974132623_
                             _hd131973132626_
                             _tl131972132628_
                             _e131977132631_
                             _hd131976132634_
                             _tl131975132636_
                             _e131980132639_
                             _hd131979132642_
                             _tl131978132644_
                             _e131983132647_
                             _hd131982132650_
                             _tl131981132652_
                             _e131986132655_
                             _hd131985132658_
                             _tl131984132660_
                             _e131989132663_
                             _hd131988132666_
                             _tl131987132668_
                             _e131992132671_
                             _hd131991132674_
                             _tl131990132676_
                             _e131995132679_
                             _hd131994132682_
                             _tl131993132684_
                             _e131998132687_
                             _hd131997132690_
                             _tl131996132692_
                             _e132001132695_
                             _hd132000132698_
                             _tl131999132700_
                             ___splice135966135967_
                             _target132002132703_
                             _tl132004132705_)
                      (letrec ((_loop132005132708_
                                (lambda (_hd132003132711_ _args132009132713_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132003132711_))
                                      (let ((_e132006132716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132003132711_))))
                                        (let ((_lp-tl132008132721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132006132716_)))
                                              (_lp-hd132007132719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132006132716_))))
                                          (let ((__tmp137265
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132007132719_
                                                         _args132009132713_))))
                                            (declare (not safe))
                                            (_loop132005132708_
                                             _lp-tl132008132721_
                                             __tmp137265))))
                                      (let ((_args132010132724_
                                             (reverse _args132009132713_)))
                                        (let ((_L132727_ _args132010132724_)
                                              (_L132728_ _hd132000132698_)
                                              (_L132729_ _hd131991132674_)
                                              (_L132730_ _hd131982132650_)
                                              (_L132731_ _hd131973132626_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132731_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132730_
                                                      'call-method))
                                                   (let ((__tmp137264
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131904_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132729_
                                                      __tmp137264)))
                                              (___kont135964135965_
                                               _L132727_
                                               _L132728_
                                               _L132729_
                                               _L132730_
                                               _L132731_)
                                              (___kont135976135977_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132005132708_ _target132002132703_ '())))))
                   (___match136131136132_
                    (lambda (_e131965132599_
                             _hd131964132602_
                             _tl131963132604_
                             _e131968132607_
                             _hd131967132610_
                             _tl131966132612_
                             _e131971132615_
                             _hd131970132618_
                             _tl131969132620_
                             _e131974132623_
                             _hd131973132626_
                             _tl131972132628_
                             _e131977132631_
                             _hd131976132634_
                             _tl131975132636_
                             _e131980132639_
                             _hd131979132642_
                             _tl131978132644_
                             _e131983132647_
                             _hd131982132650_
                             _tl131981132652_
                             _e131986132655_
                             _hd131985132658_
                             _tl131984132660_
                             _e131989132663_
                             _hd131988132666_
                             _tl131987132668_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd131988132666_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131987132668_))
                              (let ((_e131992132671_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131987132668_))))
                                (let ((_tl131990132676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131992132671_)))
                                      (_hd131991132674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131992132671_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131990132676_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131984132660_))
                                          (let ((_e131995132679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131984132660_))))
                                            (let ((_tl131993132684_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131995132679_)))
                                                  (_hd131994132682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131995132679_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131994132682_))
                                                  (let ((_e131998132687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131994132682_))))
                                                    (let ((_tl131996132692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131998132687_)))
                                                          (_hd131997132690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131998132687_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd131997132690_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd131997132690_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131996132692_))
                          (let ((_e132001132695_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131996132692_))))
                            (let ((_tl131999132700_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132001132695_)))
                                  (_hd132000132698_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132001132695_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131999132700_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131993132684_))
                                      (let ((___splice135966135967_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131993132684_
                                                '0))))
                                        (let ((_tl132004132705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135966135967_
                                                  '1)))
                                              (_target132002132703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135966135967_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132004132705_))
                                              (___match136173136174_
                                               _e131965132599_
                                               _hd131964132602_
                                               _tl131963132604_
                                               _e131968132607_
                                               _hd131967132610_
                                               _tl131966132612_
                                               _e131971132615_
                                               _hd131970132618_
                                               _tl131969132620_
                                               _e131974132623_
                                               _hd131973132626_
                                               _tl131972132628_
                                               _e131977132631_
                                               _hd131976132634_
                                               _tl131975132636_
                                               _e131980132639_
                                               _hd131979132642_
                                               _tl131978132644_
                                               _e131983132647_
                                               _hd131982132650_
                                               _tl131981132652_
                                               _e131986132655_
                                               _hd131985132658_
                                               _tl131984132660_
                                               _e131989132663_
                                               _hd131988132666_
                                               _tl131987132668_
                                               _e131992132671_
                                               _hd131991132674_
                                               _tl131990132676_
                                               _e131995132679_
                                               _hd131994132682_
                                               _tl131993132684_
                                               _e131998132687_
                                               _hd131997132690_
                                               _tl131996132692_
                                               _e132001132695_
                                               _hd132000132698_
                                               _tl131999132700_
                                               ___splice135966135967_
                                               _target132002132703_
                                               _tl132004132705_)
                                              (___kont135976135977_))))
                                      (___kont135976135977_))
                                  (___kont135976135977_))))
                          (___kont135976135977_))
                      (___kont135976135977_))
                  (___kont135976135977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135976135977_))))
                                          (___match136455136456_
                                           _e131965132599_
                                           _hd131964132602_
                                           _tl131963132604_
                                           _e131968132607_
                                           _hd131967132610_
                                           _tl131966132612_
                                           _e131971132615_
                                           _hd131970132618_
                                           _tl131969132620_
                                           _e131974132623_
                                           _hd131973132626_
                                           _tl131972132628_
                                           _e131977132631_
                                           _hd131976132634_
                                           _tl131975132636_
                                           _e131980132639_
                                           _hd131979132642_
                                           _tl131978132644_
                                           _e131983132647_
                                           _hd131982132650_
                                           _tl131981132652_
                                           _e131986132655_
                                           _hd131985132658_
                                           _tl131984132660_))
                                      (___match136455136456_
                                       _e131965132599_
                                       _hd131964132602_
                                       _tl131963132604_
                                       _e131968132607_
                                       _hd131967132610_
                                       _tl131966132612_
                                       _e131971132615_
                                       _hd131970132618_
                                       _tl131969132620_
                                       _e131974132623_
                                       _hd131973132626_
                                       _tl131972132628_
                                       _e131977132631_
                                       _hd131976132634_
                                       _tl131975132636_
                                       _e131980132639_
                                       _hd131979132642_
                                       _tl131978132644_
                                       _e131983132647_
                                       _hd131982132650_
                                       _tl131981132652_
                                       _e131986132655_
                                       _hd131985132658_
                                       _tl131984132660_))))
                              (___match136455136456_
                               _e131965132599_
                               _hd131964132602_
                               _tl131963132604_
                               _e131968132607_
                               _hd131967132610_
                               _tl131966132612_
                               _e131971132615_
                               _hd131970132618_
                               _tl131969132620_
                               _e131974132623_
                               _hd131973132626_
                               _tl131972132628_
                               _e131977132631_
                               _hd131976132634_
                               _tl131975132636_
                               _e131980132639_
                               _hd131979132642_
                               _tl131978132644_
                               _e131983132647_
                               _hd131982132650_
                               _tl131981132652_
                               _e131986132655_
                               _hd131985132658_
                               _tl131984132660_))
                          (___match136241136242_
                           _e131965132599_
                           _hd131964132602_
                           _tl131963132604_
                           _e131968132607_
                           _hd131967132610_
                           _tl131966132612_
                           _e131971132615_
                           _hd131970132618_
                           _tl131969132620_
                           _e131974132623_
                           _hd131973132626_
                           _tl131972132628_
                           _e131977132631_
                           _hd131976132634_
                           _tl131975132636_
                           _e131980132639_
                           _hd131979132642_
                           _tl131978132644_
                           _e131983132647_
                           _hd131982132650_
                           _tl131981132652_
                           _e131986132655_
                           _hd131985132658_
                           _tl131984132660_
                           _e131989132663_
                           _hd131988132666_
                           _tl131987132668_))))
                   (___match136063136064_
                    (lambda (_e131921132788_
                             _hd131920132791_
                             _tl131919132793_
                             _e131924132796_
                             _hd131923132799_
                             _tl131922132801_
                             _e131927132804_
                             _hd131926132807_
                             _tl131925132809_
                             _e131930132812_
                             _hd131929132815_
                             _tl131928132817_
                             _e131933132820_
                             _hd131932132823_
                             _tl131931132825_
                             _e131936132828_
                             _hd131935132831_
                             _tl131934132833_
                             _e131939132836_
                             _hd131938132839_
                             _tl131937132841_
                             _e131942132844_
                             _hd131941132847_
                             _tl131940132849_
                             _e131945132852_
                             _hd131944132855_
                             _tl131943132857_
                             _e131948132860_
                             _hd131947132863_
                             _tl131946132865_
                             ___splice135962135963_
                             _target131949132868_
                             _tl131951132870_)
                      (letrec ((_loop131952132873_
                                (lambda (_hd131950132876_ _args131956132878_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131950132876_))
                                      (let ((_e131953132881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131950132876_))))
                                        (let ((_lp-tl131955132886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131953132881_)))
                                              (_lp-hd131954132884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131953132881_))))
                                          (let ((__tmp137267
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131954132884_
                                                         _args131956132878_))))
                                            (declare (not safe))
                                            (_loop131952132873_
                                             _lp-tl131955132886_
                                             __tmp137267))))
                                      (let ((_args131957132889_
                                             (reverse _args131956132878_)))
                                        (let ((_L132892_ _args131957132889_)
                                              (_L132893_ _hd131947132863_)
                                              (_L132894_ _hd131938132839_)
                                              (_L132895_ _hd131929132815_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132895_
                                                      'call-method))
                                                   (let ((__tmp137266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131904_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132894_
                                                      __tmp137266)))
                                              (___kont135960135961_
                                               _L132892_
                                               _L132893_
                                               _L132894_
                                               _L132895_)
                                              (___match136251136252_
                                               _e131921132788_
                                               _hd131920132791_
                                               _tl131919132793_
                                               _e131924132796_
                                               _hd131923132799_
                                               _tl131922132801_
                                               _e131927132804_
                                               _hd131926132807_
                                               _tl131925132809_
                                               _e131930132812_
                                               _hd131929132815_
                                               _tl131928132817_
                                               _e131933132820_
                                               _hd131932132823_
                                               _tl131931132825_
                                               _e131936132828_
                                               _hd131935132831_
                                               _tl131934132833_
                                               _e131939132836_
                                               _hd131938132839_
                                               _tl131937132841_
                                               _e131942132844_
                                               _hd131941132847_
                                               _tl131940132849_
                                               _e131945132852_
                                               _hd131944132855_
                                               _tl131943132857_
                                               _e131948132860_
                                               _hd131947132863_
                                               _tl131946132865_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131952132873_ _target131949132868_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx135958135959_))
                  (let ((_e131921132788_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx135958135959_))))
                    (let ((_tl131919132793_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131921132788_)))
                          (_hd131920132791_
                           (let ()
                             (declare (not safe))
                             (##car _e131921132788_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131919132793_))
                          (let ((_e131924132796_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131919132793_))))
                            (let ((_tl131922132801_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131924132796_)))
                                  (_hd131923132799_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131924132796_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd131923132799_))
                                  (let ((_e131927132804_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd131923132799_))))
                                    (let ((_tl131925132809_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e131927132804_)))
                                          (_hd131926132807_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e131927132804_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd131926132807_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd131926132807_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl131925132809_))
                                                  (let ((_e131930132812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl131925132809_))))
                                                    (let ((_tl131928132817_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131930132812_)))
                                                          (_hd131929132815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131930132812_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl131928132817_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl131922132801_))
                      (let ((_e131933132820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl131922132801_))))
                        (let ((_tl131931132825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131933132820_)))
                              (_hd131932132823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131933132820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd131932132823_))
                              (let ((_e131936132828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd131932132823_))))
                                (let ((_tl131934132833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131936132828_)))
                                      (_hd131935132831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131936132828_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd131935132831_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd131935132831_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl131934132833_))
                                              (let ((_e131939132836_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl131934132833_))))
                                                (let ((_tl131937132841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131939132836_)))
                                                      (_hd131938132839_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131939132836_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl131937132841_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl131931132825_))
                                                          (let ((_e131942132844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl131931132825_))))
                    (let ((_tl131940132849_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131942132844_)))
                          (_hd131941132847_
                           (let ()
                             (declare (not safe))
                             (##car _e131942132844_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd131941132847_))
                          (let ((_e131945132852_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd131941132847_))))
                            (let ((_tl131943132857_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131945132852_)))
                                  (_hd131944132855_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131945132852_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd131944132855_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd131944132855_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131943132857_))
                                          (let ((_e131948132860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131943132857_))))
                                            (let ((_tl131946132865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131948132860_)))
                                                  (_hd131947132863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131948132860_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl131946132865_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl131940132849_))
                                                      (let ((___splice135962135963_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl131940132849_ '0))))
                (let ((_tl131951132870_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135962135963_ '1)))
                      (_target131949132868_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135962135963_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl131951132870_))
                      (___match136063136064_
                       _e131921132788_
                       _hd131920132791_
                       _tl131919132793_
                       _e131924132796_
                       _hd131923132799_
                       _tl131922132801_
                       _e131927132804_
                       _hd131926132807_
                       _tl131925132809_
                       _e131930132812_
                       _hd131929132815_
                       _tl131928132817_
                       _e131933132820_
                       _hd131932132823_
                       _tl131931132825_
                       _e131936132828_
                       _hd131935132831_
                       _tl131934132833_
                       _e131939132836_
                       _hd131938132839_
                       _tl131937132841_
                       _e131942132844_
                       _hd131941132847_
                       _tl131940132849_
                       _e131945132852_
                       _hd131944132855_
                       _tl131943132857_
                       _e131948132860_
                       _hd131947132863_
                       _tl131946132865_
                       ___splice135962135963_
                       _target131949132868_
                       _tl131951132870_)
                      (___match136251136252_
                       _e131921132788_
                       _hd131920132791_
                       _tl131919132793_
                       _e131924132796_
                       _hd131923132799_
                       _tl131922132801_
                       _e131927132804_
                       _hd131926132807_
                       _tl131925132809_
                       _e131930132812_
                       _hd131929132815_
                       _tl131928132817_
                       _e131933132820_
                       _hd131932132823_
                       _tl131931132825_
                       _e131936132828_
                       _hd131935132831_
                       _tl131934132833_
                       _e131939132836_
                       _hd131938132839_
                       _tl131937132841_
                       _e131942132844_
                       _hd131941132847_
                       _tl131940132849_
                       _e131945132852_
                       _hd131944132855_
                       _tl131943132857_
                       _e131948132860_
                       _hd131947132863_
                       _tl131946132865_))))
              (___match136251136252_
               _e131921132788_
               _hd131920132791_
               _tl131919132793_
               _e131924132796_
               _hd131923132799_
               _tl131922132801_
               _e131927132804_
               _hd131926132807_
               _tl131925132809_
               _e131930132812_
               _hd131929132815_
               _tl131928132817_
               _e131933132820_
               _hd131932132823_
               _tl131931132825_
               _e131936132828_
               _hd131935132831_
               _tl131934132833_
               _e131939132836_
               _hd131938132839_
               _tl131937132841_
               _e131942132844_
               _hd131941132847_
               _tl131940132849_
               _e131945132852_
               _hd131944132855_
               _tl131943132857_
               _e131948132860_
               _hd131947132863_
               _tl131946132865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136455136456_
                                                   _e131921132788_
                                                   _hd131920132791_
                                                   _tl131919132793_
                                                   _e131924132796_
                                                   _hd131923132799_
                                                   _tl131922132801_
                                                   _e131927132804_
                                                   _hd131926132807_
                                                   _tl131925132809_
                                                   _e131930132812_
                                                   _hd131929132815_
                                                   _tl131928132817_
                                                   _e131933132820_
                                                   _hd131932132823_
                                                   _tl131931132825_
                                                   _e131936132828_
                                                   _hd131935132831_
                                                   _tl131934132833_
                                                   _e131939132836_
                                                   _hd131938132839_
                                                   _tl131937132841_
                                                   _e131942132844_
                                                   _hd131941132847_
                                                   _tl131940132849_))))
                                          (___match136455136456_
                                           _e131921132788_
                                           _hd131920132791_
                                           _tl131919132793_
                                           _e131924132796_
                                           _hd131923132799_
                                           _tl131922132801_
                                           _e131927132804_
                                           _hd131926132807_
                                           _tl131925132809_
                                           _e131930132812_
                                           _hd131929132815_
                                           _tl131928132817_
                                           _e131933132820_
                                           _hd131932132823_
                                           _tl131931132825_
                                           _e131936132828_
                                           _hd131935132831_
                                           _tl131934132833_
                                           _e131939132836_
                                           _hd131938132839_
                                           _tl131937132841_
                                           _e131942132844_
                                           _hd131941132847_
                                           _tl131940132849_))
                                      (___match136131136132_
                                       _e131921132788_
                                       _hd131920132791_
                                       _tl131919132793_
                                       _e131924132796_
                                       _hd131923132799_
                                       _tl131922132801_
                                       _e131927132804_
                                       _hd131926132807_
                                       _tl131925132809_
                                       _e131930132812_
                                       _hd131929132815_
                                       _tl131928132817_
                                       _e131933132820_
                                       _hd131932132823_
                                       _tl131931132825_
                                       _e131936132828_
                                       _hd131935132831_
                                       _tl131934132833_
                                       _e131939132836_
                                       _hd131938132839_
                                       _tl131937132841_
                                       _e131942132844_
                                       _hd131941132847_
                                       _tl131940132849_
                                       _e131945132852_
                                       _hd131944132855_
                                       _tl131943132857_))
                                  (___match136455136456_
                                   _e131921132788_
                                   _hd131920132791_
                                   _tl131919132793_
                                   _e131924132796_
                                   _hd131923132799_
                                   _tl131922132801_
                                   _e131927132804_
                                   _hd131926132807_
                                   _tl131925132809_
                                   _e131930132812_
                                   _hd131929132815_
                                   _tl131928132817_
                                   _e131933132820_
                                   _hd131932132823_
                                   _tl131931132825_
                                   _e131936132828_
                                   _hd131935132831_
                                   _tl131934132833_
                                   _e131939132836_
                                   _hd131938132839_
                                   _tl131937132841_
                                   _e131942132844_
                                   _hd131941132847_
                                   _tl131940132849_))))
                          (___match136455136456_
                           _e131921132788_
                           _hd131920132791_
                           _tl131919132793_
                           _e131924132796_
                           _hd131923132799_
                           _tl131922132801_
                           _e131927132804_
                           _hd131926132807_
                           _tl131925132809_
                           _e131930132812_
                           _hd131929132815_
                           _tl131928132817_
                           _e131933132820_
                           _hd131932132823_
                           _tl131931132825_
                           _e131936132828_
                           _hd131935132831_
                           _tl131934132833_
                           _e131939132836_
                           _hd131938132839_
                           _tl131937132841_
                           _e131942132844_
                           _hd131941132847_
                           _tl131940132849_))))
                  (___match136393136394_
                   _e131921132788_
                   _hd131920132791_
                   _tl131919132793_
                   _e131924132796_
                   _hd131923132799_
                   _tl131922132801_
                   _e131927132804_
                   _hd131926132807_
                   _tl131925132809_
                   _e131930132812_
                   _hd131929132815_
                   _tl131928132817_
                   _e131933132820_
                   _hd131932132823_
                   _tl131931132825_
                   _e131936132828_
                   _hd131935132831_
                   _tl131934132833_
                   _e131939132836_
                   _hd131938132839_
                   _tl131937132841_))
              (___kont135976135977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont135976135977_))
                                          (___kont135976135977_))
                                      (___kont135976135977_))))
                              (___kont135976135977_))))
                      (___kont135976135977_))
                  (___kont135976135977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135976135977_))
                                              (___kont135976135977_))
                                          (___kont135976135977_))))
                                  (___kont135976135977_))))
                          (___kont135976135977_))))
                  (___kont135976135977_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self130843_ _stx130844_)
        (letrec ((_force-e130846_
                  (lambda (_target131902_)
                    (let ((__tmp137268
                           (let ((__tmp137272
                                  (let ((__tmp137273
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137273)))
                                 (__tmp137269
                                  (let ((__tmp137270
                                         (let ((__tmp137271
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target131902_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137271))))
                                    (declare (not safe))
                                    (cons __tmp137270 '()))))
                             (declare (not safe))
                             (cons __tmp137272 __tmp137269))))
                      (declare (not safe))
                      (cons '%#call __tmp137268)))))
          (let* ((___stx136460136461_ _stx130844_)
                 (_g130854131076_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136460136461_)))))
            (let ((___kont136462136463_
                   (lambda (_L131848_ _L131849_ _L131850_ _L131851_)
                     (let ((_$method131896_
                            (let ((__tmp137275
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130843_ 'methods)))
                                  (__tmp137274
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131849_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137275 __tmp137274)))
                           (_args131897_
                            (map (lambda (_g131884131886_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self130843_
                                      _g131884131886_)))
                                 (let ((__tmp137276
                                        (lambda (_g131888131891_
                                                 _g131889131893_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131888131891_
                                                  _g131889131893_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137276 '() _L131848_)))))
                       (let ((__tmp137277
                              (let ((__tmp137278
                                     (let ((__tmp137283
                                            (let ()
                                              (declare (not safe))
                                              (_force-e130846_
                                               _$method131896_)))
                                           (__tmp137279
                                            (let ((__tmp137280
                                                   (let ((__tmp137281
                                                          (let ((__tmp137282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self130843_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137282 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137281))))
                                              (declare (not safe))
                                              (cons __tmp137280
                                                    _args131897_))))
                                       (declare (not safe))
                                       (cons __tmp137283 __tmp137279))))
                                (declare (not safe))
                                (cons '%#call __tmp137278))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137277 _stx130844_)))))
                  (___kont136466136467_
                   (lambda (_L131680_ _L131681_ _L131682_ _L131683_ _L131684_)
                     (let ((_$method131736_
                            (let ((__tmp137285
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130843_ 'methods)))
                                  (__tmp137284
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131681_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137285 __tmp137284)))
                           (_args131737_
                            (map (lambda (_g131724131726_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self130843_
                                      _g131724131726_)))
                                 (let ((__tmp137286
                                        (lambda (_g131728131731_
                                                 _g131729131733_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131728131731_
                                                  _g131729131733_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137286 '() _L131680_)))))
                       (let ((__tmp137287
                              (let ((__tmp137288
                                     (let ((__tmp137295
                                            (let ((__tmp137296
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137296)))
                                           (__tmp137289
                                            (let ((__tmp137294
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e130846_
                                                      _$method131736_)))
                                                  (__tmp137290
                                                   (let ((__tmp137291
                                                          (let ((__tmp137292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137293
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130843_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137293 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137291
                                                           _args131737_))))
                                              (declare (not safe))
                                              (cons __tmp137294 __tmp137290))))
                                       (declare (not safe))
                                       (cons __tmp137295 __tmp137289))))
                                (declare (not safe))
                                (cons '%#call __tmp137288))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137287 _stx130844_)))))
                  (___kont136470136471_
                   (lambda (_L131511_ _L131512_ _L131513_)
                     (let* ((_$field131545_
                             (let ((__tmp137298
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self130843_ 'slots)))
                                   (__tmp137297
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131511_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137298 __tmp137297)))
                            (__tmp137299
                             (let ((__tmp137300
                                    (let ((__tmp137308
                                           (let ((__tmp137309
                                                  (let ((__tmp137310
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self130843_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137310 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137309)))
                                          (__tmp137301
                                           (let ((__tmp137306
                                                  (let ((__tmp137307
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137307)))
                                                 (__tmp137302
                                                  (let ((__tmp137303
                                                         (let ((__tmp137304
                                                                (let ((__tmp137305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self130843_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137305 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137303 '()))))
                                             (declare (not safe))
                                             (cons __tmp137306 __tmp137302))))
                                      (declare (not safe))
                                      (cons __tmp137308 __tmp137301))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137300))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137299 _stx130844_))))
                  (___kont136472136473_
                   (lambda (_L131385_ _L131386_ _L131387_ _L131388_)
                     (let ((_$field131423_
                            (let ((__tmp137312
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130843_ 'slots)))
                                  (__tmp137311
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131386_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137312 __tmp137311)))
                           (_expr131424_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self130843_ _L131385_))))
                       (let ((__tmp137313
                              (let ((__tmp137314
                                     (let ((__tmp137323
                                            (let ((__tmp137324
                                                   (let ((__tmp137325
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130843_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137325 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137324)))
                                           (__tmp137315
                                            (let ((__tmp137321
                                                   (let ((__tmp137322
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137322)))
                                                  (__tmp137316
                                                   (let ((__tmp137318
                                                          (let ((__tmp137319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137320
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130843_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137320 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137319)))
                 (__tmp137317
                  (let () (declare (not safe)) (cons _expr131424_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137318
                                                           __tmp137317))))
                                              (declare (not safe))
                                              (cons __tmp137321 __tmp137316))))
                                       (declare (not safe))
                                       (cons __tmp137323 __tmp137315))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137314))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137313 _stx130844_)))))
                  (___kont136474136475_
                   (lambda (_L131257_ _L131258_)
                     (let* ((_accessor131280_
                             (let ((__tmp137326
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131258_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137326)))
                            (_klass131282_
                             (let ((__tmp137327
                                    (##structure-ref
                                     _accessor131280_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx130844_
                                __tmp137327)))
                            (_slot131284_
                             (##structure-ref
                              _accessor131280_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137341
                                       (##structure-ref
                                        _accessor131280_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137341))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131282_
                                       _slot131284_))
                                    (##structure-ref
                                     _klass131282_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx130844_
                           (let* ((_$field131290_
                                   (let ((__tmp137328
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130843_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137328 _slot131284_)))
                                  (__tmp137329
                                   (let ((__tmp137330
                                          (let ((__tmp137338
                                                 (let ((__tmp137339
                                                        (let ((__tmp137340
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self130843_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137340 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137339)))
                                                (__tmp137331
                                                 (let ((__tmp137336
                                                        (let ((__tmp137337
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131290_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137337)))
               (__tmp137332
                (let ((__tmp137333
                       (let ((__tmp137334
                              (let ((__tmp137335
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self130843_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137335 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137334))))
                  (declare (not safe))
                  (cons __tmp137333 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137336
                                                         __tmp137332))))
                                            (declare (not safe))
                                            (cons __tmp137338 __tmp137331))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137330))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137329
                              _stx130844_))))))
                  (___kont136476136477_
                   (lambda (_L131152_ _L131153_ _L131154_)
                     (let* ((_mutator131182_
                             (let ((__tmp137342
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131154_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137342)))
                            (_klass131184_
                             (let ((__tmp137343
                                    (##structure-ref
                                     _mutator131182_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx130844_
                                __tmp137343)))
                            (_slot131186_
                             (##structure-ref
                              _mutator131182_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131188_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self130843_ _L131152_))))
                       (if (and (let ((__tmp137368
                                       (##structure-ref
                                        _mutator131182_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137368))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131184_
                                       _slot131186_))
                                    (##structure-ref
                                     _klass131184_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137358
                                  (let ((__tmp137359
                                         (let ((__tmp137365
                                                (let ((__tmp137367
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137366
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131154_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137367
                                                        __tmp137366)))
                                               (__tmp137360
                                                (let ((__tmp137362
                                                       (let ((__tmp137364
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137363
                      (let () (declare (not safe)) (cons _L131153_ '()))))
                 (declare (not safe))
                 (cons __tmp137364 __tmp137363)))
              (__tmp137361
               (let () (declare (not safe)) (cons _expr131188_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137362
                                                        __tmp137361))))
                                           (declare (not safe))
                                           (cons __tmp137365 __tmp137360))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137359))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137358 _stx130844_))
                           (let* ((_$field131194_
                                   (let ((__tmp137344
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130843_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137344 _slot131186_)))
                                  (__tmp137345
                                   (let ((__tmp137346
                                          (let ((__tmp137355
                                                 (let ((__tmp137356
                                                        (let ((__tmp137357
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self130843_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137357 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137356)))
                                                (__tmp137347
                                                 (let ((__tmp137353
                                                        (let ((__tmp137354
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131194_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137354)))
               (__tmp137348
                (let ((__tmp137350
                       (let ((__tmp137351
                              (let ((__tmp137352
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self130843_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137352 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137351)))
                      (__tmp137349
                       (let () (declare (not safe)) (cons _expr131188_ '()))))
                  (declare (not safe))
                  (cons __tmp137350 __tmp137349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137353
                                                         __tmp137348))))
                                            (declare (not safe))
                                            (cons __tmp137355 __tmp137347))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137346))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137345
                              _stx130844_))))))
                  (___kont136478136479_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self130843_ _stx130844_)))))
              (let* ((___match136959136960_
                      (lambda (_e131050131088_
                               _hd131049131091_
                               _tl131048131093_
                               _e131053131096_
                               _hd131052131099_
                               _tl131051131101_
                               _e131056131104_
                               _hd131055131107_
                               _tl131054131109_
                               _e131059131112_
                               _hd131058131115_
                               _tl131057131117_
                               _e131062131120_
                               _hd131061131123_
                               _tl131060131125_
                               _e131065131128_
                               _hd131064131131_
                               _tl131063131133_
                               _e131068131136_
                               _hd131067131139_
                               _tl131066131141_
                               _e131071131144_
                               _hd131070131147_
                               _tl131069131149_)
                        (let ((_L131152_ _hd131070131147_)
                              (_L131153_ _hd131067131139_)
                              (_L131154_ _hd131058131115_))
                          (if (and (let ((__tmp137371
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130843_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131153_
                                      __tmp137371))
                                   (let ((__tmp137369
                                          (let ((__tmp137370
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131154_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137370))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137369
                                      'gxc#!mutator::t)))
                              (___kont136476136477_
                               _L131152_
                               _L131153_
                               _L131154_)
                              (___kont136478136479_)))))
                     (___match136957136958_
                      (lambda (_e131050131088_
                               _hd131049131091_
                               _tl131048131093_
                               _e131053131096_
                               _hd131052131099_
                               _tl131051131101_
                               _e131056131104_
                               _hd131055131107_
                               _tl131054131109_
                               _e131059131112_
                               _hd131058131115_
                               _tl131057131117_
                               _e131062131120_
                               _hd131061131123_
                               _tl131060131125_
                               _e131065131128_
                               _hd131064131131_
                               _tl131063131133_
                               _e131068131136_
                               _hd131067131139_
                               _tl131066131141_
                               _e131071131144_
                               _hd131070131147_
                               _tl131069131149_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131069131149_))
                            (___match136959136960_
                             _e131050131088_
                             _hd131049131091_
                             _tl131048131093_
                             _e131053131096_
                             _hd131052131099_
                             _tl131051131101_
                             _e131056131104_
                             _hd131055131107_
                             _tl131054131109_
                             _e131059131112_
                             _hd131058131115_
                             _tl131057131117_
                             _e131062131120_
                             _hd131061131123_
                             _tl131060131125_
                             _e131065131128_
                             _hd131064131131_
                             _tl131063131133_
                             _e131068131136_
                             _hd131067131139_
                             _tl131066131141_
                             _e131071131144_
                             _hd131070131147_
                             _tl131069131149_)
                            (___kont136478136479_))))
                     (___match136951136952_
                      (lambda (_e131050131088_
                               _hd131049131091_
                               _tl131048131093_
                               _e131053131096_
                               _hd131052131099_
                               _tl131051131101_
                               _e131056131104_
                               _hd131055131107_
                               _tl131054131109_
                               _e131059131112_
                               _hd131058131115_
                               _tl131057131117_
                               _e131062131120_
                               _hd131061131123_
                               _tl131060131125_
                               _e131065131128_
                               _hd131064131131_
                               _tl131063131133_
                               _e131068131136_
                               _hd131067131139_
                               _tl131066131141_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131060131125_))
                            (let ((_e131071131144_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131060131125_))))
                              (let ((_tl131069131149_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131071131144_)))
                                    (_hd131070131147_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131071131144_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131069131149_))
                                    (___match136959136960_
                                     _e131050131088_
                                     _hd131049131091_
                                     _tl131048131093_
                                     _e131053131096_
                                     _hd131052131099_
                                     _tl131051131101_
                                     _e131056131104_
                                     _hd131055131107_
                                     _tl131054131109_
                                     _e131059131112_
                                     _hd131058131115_
                                     _tl131057131117_
                                     _e131062131120_
                                     _hd131061131123_
                                     _tl131060131125_
                                     _e131065131128_
                                     _hd131064131131_
                                     _tl131063131133_
                                     _e131068131136_
                                     _hd131067131139_
                                     _tl131066131141_
                                     _e131071131144_
                                     _hd131070131147_
                                     _tl131069131149_)
                                    (___kont136478136479_))))
                            (___kont136478136479_))))
                     (___match136897136898_
                      (lambda (_e131026131201_
                               _hd131025131204_
                               _tl131024131206_
                               _e131029131209_
                               _hd131028131212_
                               _tl131027131214_
                               _e131032131217_
                               _hd131031131220_
                               _tl131030131222_
                               _e131035131225_
                               _hd131034131228_
                               _tl131033131230_
                               _e131038131233_
                               _hd131037131236_
                               _tl131036131238_
                               _e131041131241_
                               _hd131040131244_
                               _tl131039131246_
                               _e131044131249_
                               _hd131043131252_
                               _tl131042131254_)
                        (let ((_L131257_ _hd131043131252_)
                              (_L131258_ _hd131034131228_))
                          (if (and (let ((__tmp137374
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130843_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131257_
                                      __tmp137374))
                                   (let ((__tmp137372
                                          (let ((__tmp137373
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131258_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137373))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137372
                                      'gxc#!accessor::t)))
                              (___kont136474136475_ _L131257_ _L131258_)
                              (___kont136478136479_)))))
                     (___match136895136896_
                      (lambda (_e131026131201_
                               _hd131025131204_
                               _tl131024131206_
                               _e131029131209_
                               _hd131028131212_
                               _tl131027131214_
                               _e131032131217_
                               _hd131031131220_
                               _tl131030131222_
                               _e131035131225_
                               _hd131034131228_
                               _tl131033131230_
                               _e131038131233_
                               _hd131037131236_
                               _tl131036131238_
                               _e131041131241_
                               _hd131040131244_
                               _tl131039131246_
                               _e131044131249_
                               _hd131043131252_
                               _tl131042131254_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131036131238_))
                            (___match136897136898_
                             _e131026131201_
                             _hd131025131204_
                             _tl131024131206_
                             _e131029131209_
                             _hd131028131212_
                             _tl131027131214_
                             _e131032131217_
                             _hd131031131220_
                             _tl131030131222_
                             _e131035131225_
                             _hd131034131228_
                             _tl131033131230_
                             _e131038131233_
                             _hd131037131236_
                             _tl131036131238_
                             _e131041131241_
                             _hd131040131244_
                             _tl131039131246_
                             _e131044131249_
                             _hd131043131252_
                             _tl131042131254_)
                            (___match136951136952_
                             _e131026131201_
                             _hd131025131204_
                             _tl131024131206_
                             _e131029131209_
                             _hd131028131212_
                             _tl131027131214_
                             _e131032131217_
                             _hd131031131220_
                             _tl131030131222_
                             _e131035131225_
                             _hd131034131228_
                             _tl131033131230_
                             _e131038131233_
                             _hd131037131236_
                             _tl131036131238_
                             _e131041131241_
                             _hd131040131244_
                             _tl131039131246_
                             _e131044131249_
                             _hd131043131252_
                             _tl131042131254_))))
                     (___match136841136842_
                      (lambda (_e130991131297_
                               _hd130990131300_
                               _tl130989131302_
                               _e130994131305_
                               _hd130993131308_
                               _tl130992131310_
                               _e130997131313_
                               _hd130996131316_
                               _tl130995131318_
                               _e131000131321_
                               _hd130999131324_
                               _tl130998131326_
                               _e131003131329_
                               _hd131002131332_
                               _tl131001131334_
                               _e131006131337_
                               _hd131005131340_
                               _tl131004131342_
                               _e131009131345_
                               _hd131008131348_
                               _tl131007131350_
                               _e131012131353_
                               _hd131011131356_
                               _tl131010131358_
                               _e131015131361_
                               _hd131014131364_
                               _tl131013131366_
                               _e131018131369_
                               _hd131017131372_
                               _tl131016131374_
                               _e131021131377_
                               _hd131020131380_
                               _tl131019131382_)
                        (let ((_L131385_ _hd131020131380_)
                              (_L131386_ _hd131017131372_)
                              (_L131387_ _hd131008131348_)
                              (_L131388_ _hd130999131324_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131388_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131388_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137375
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130843_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131387_
                                      __tmp137375)))
                              (___kont136472136473_
                               _L131385_
                               _L131386_
                               _L131387_
                               _L131388_)
                              (___kont136478136479_)))))
                     (___match136833136834_
                      (lambda (_e130991131297_
                               _hd130990131300_
                               _tl130989131302_
                               _e130994131305_
                               _hd130993131308_
                               _tl130992131310_
                               _e130997131313_
                               _hd130996131316_
                               _tl130995131318_
                               _e131000131321_
                               _hd130999131324_
                               _tl130998131326_
                               _e131003131329_
                               _hd131002131332_
                               _tl131001131334_
                               _e131006131337_
                               _hd131005131340_
                               _tl131004131342_
                               _e131009131345_
                               _hd131008131348_
                               _tl131007131350_
                               _e131012131353_
                               _hd131011131356_
                               _tl131010131358_
                               _e131015131361_
                               _hd131014131364_
                               _tl131013131366_
                               _e131018131369_
                               _hd131017131372_
                               _tl131016131374_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131010131358_))
                            (let ((_e131021131377_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131010131358_))))
                              (let ((_tl131019131382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131021131377_)))
                                    (_hd131020131380_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131021131377_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131019131382_))
                                    (___match136841136842_
                                     _e130991131297_
                                     _hd130990131300_
                                     _tl130989131302_
                                     _e130994131305_
                                     _hd130993131308_
                                     _tl130992131310_
                                     _e130997131313_
                                     _hd130996131316_
                                     _tl130995131318_
                                     _e131000131321_
                                     _hd130999131324_
                                     _tl130998131326_
                                     _e131003131329_
                                     _hd131002131332_
                                     _tl131001131334_
                                     _e131006131337_
                                     _hd131005131340_
                                     _tl131004131342_
                                     _e131009131345_
                                     _hd131008131348_
                                     _tl131007131350_
                                     _e131012131353_
                                     _hd131011131356_
                                     _tl131010131358_
                                     _e131015131361_
                                     _hd131014131364_
                                     _tl131013131366_
                                     _e131018131369_
                                     _hd131017131372_
                                     _tl131016131374_
                                     _e131021131377_
                                     _hd131020131380_
                                     _tl131019131382_)
                                    (___kont136478136479_))))
                            (___match136957136958_
                             _e130991131297_
                             _hd130990131300_
                             _tl130989131302_
                             _e130994131305_
                             _hd130993131308_
                             _tl130992131310_
                             _e130997131313_
                             _hd130996131316_
                             _tl130995131318_
                             _e131000131321_
                             _hd130999131324_
                             _tl130998131326_
                             _e131003131329_
                             _hd131002131332_
                             _tl131001131334_
                             _e131006131337_
                             _hd131005131340_
                             _tl131004131342_
                             _e131009131345_
                             _hd131008131348_
                             _tl131007131350_
                             _e131012131353_
                             _hd131011131356_
                             _tl131010131358_))))
                     (___match136755136756_
                      (lambda (_e130957131431_
                               _hd130956131434_
                               _tl130955131436_
                               _e130960131439_
                               _hd130959131442_
                               _tl130958131444_
                               _e130963131447_
                               _hd130962131450_
                               _tl130961131452_
                               _e130966131455_
                               _hd130965131458_
                               _tl130964131460_
                               _e130969131463_
                               _hd130968131466_
                               _tl130967131468_
                               _e130972131471_
                               _hd130971131474_
                               _tl130970131476_
                               _e130975131479_
                               _hd130974131482_
                               _tl130973131484_
                               _e130978131487_
                               _hd130977131490_
                               _tl130976131492_
                               _e130981131495_
                               _hd130980131498_
                               _tl130979131500_
                               _e130984131503_
                               _hd130983131506_
                               _tl130982131508_)
                        (let ((_L131511_ _hd130983131506_)
                              (_L131512_ _hd130974131482_)
                              (_L131513_ _hd130965131458_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131513_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131513_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137376
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130843_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131512_
                                      __tmp137376)))
                              (___kont136470136471_
                               _L131511_
                               _L131512_
                               _L131513_)
                              (___match136959136960_
                               _e130957131431_
                               _hd130956131434_
                               _tl130955131436_
                               _e130960131439_
                               _hd130959131442_
                               _tl130958131444_
                               _e130963131447_
                               _hd130962131450_
                               _tl130961131452_
                               _e130966131455_
                               _hd130965131458_
                               _tl130964131460_
                               _e130969131463_
                               _hd130968131466_
                               _tl130967131468_
                               _e130972131471_
                               _hd130971131474_
                               _tl130970131476_
                               _e130975131479_
                               _hd130974131482_
                               _tl130973131484_
                               _e130978131487_
                               _hd130977131490_
                               _tl130976131492_)))))
                     (___match136753136754_
                      (lambda (_e130957131431_
                               _hd130956131434_
                               _tl130955131436_
                               _e130960131439_
                               _hd130959131442_
                               _tl130958131444_
                               _e130963131447_
                               _hd130962131450_
                               _tl130961131452_
                               _e130966131455_
                               _hd130965131458_
                               _tl130964131460_
                               _e130969131463_
                               _hd130968131466_
                               _tl130967131468_
                               _e130972131471_
                               _hd130971131474_
                               _tl130970131476_
                               _e130975131479_
                               _hd130974131482_
                               _tl130973131484_
                               _e130978131487_
                               _hd130977131490_
                               _tl130976131492_
                               _e130981131495_
                               _hd130980131498_
                               _tl130979131500_
                               _e130984131503_
                               _hd130983131506_
                               _tl130982131508_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130976131492_))
                            (___match136755136756_
                             _e130957131431_
                             _hd130956131434_
                             _tl130955131436_
                             _e130960131439_
                             _hd130959131442_
                             _tl130958131444_
                             _e130963131447_
                             _hd130962131450_
                             _tl130961131452_
                             _e130966131455_
                             _hd130965131458_
                             _tl130964131460_
                             _e130969131463_
                             _hd130968131466_
                             _tl130967131468_
                             _e130972131471_
                             _hd130971131474_
                             _tl130970131476_
                             _e130975131479_
                             _hd130974131482_
                             _tl130973131484_
                             _e130978131487_
                             _hd130977131490_
                             _tl130976131492_
                             _e130981131495_
                             _hd130980131498_
                             _tl130979131500_
                             _e130984131503_
                             _hd130983131506_
                             _tl130982131508_)
                            (___match136833136834_
                             _e130957131431_
                             _hd130956131434_
                             _tl130955131436_
                             _e130960131439_
                             _hd130959131442_
                             _tl130958131444_
                             _e130963131447_
                             _hd130962131450_
                             _tl130961131452_
                             _e130966131455_
                             _hd130965131458_
                             _tl130964131460_
                             _e130969131463_
                             _hd130968131466_
                             _tl130967131468_
                             _e130972131471_
                             _hd130971131474_
                             _tl130970131476_
                             _e130975131479_
                             _hd130974131482_
                             _tl130973131484_
                             _e130978131487_
                             _hd130977131490_
                             _tl130976131492_
                             _e130981131495_
                             _hd130980131498_
                             _tl130979131500_
                             _e130984131503_
                             _hd130983131506_
                             _tl130982131508_))))
                     (___match136743136744_
                      (lambda (_e130957131431_
                               _hd130956131434_
                               _tl130955131436_
                               _e130960131439_
                               _hd130959131442_
                               _tl130958131444_
                               _e130963131447_
                               _hd130962131450_
                               _tl130961131452_
                               _e130966131455_
                               _hd130965131458_
                               _tl130964131460_
                               _e130969131463_
                               _hd130968131466_
                               _tl130967131468_
                               _e130972131471_
                               _hd130971131474_
                               _tl130970131476_
                               _e130975131479_
                               _hd130974131482_
                               _tl130973131484_
                               _e130978131487_
                               _hd130977131490_
                               _tl130976131492_
                               _e130981131495_
                               _hd130980131498_
                               _tl130979131500_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd130980131498_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130979131500_))
                                (let ((_e130984131503_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130979131500_))))
                                  (let ((_tl130982131508_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130984131503_)))
                                        (_hd130983131506_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130984131503_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130982131508_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130976131492_))
                                            (___match136755136756_
                                             _e130957131431_
                                             _hd130956131434_
                                             _tl130955131436_
                                             _e130960131439_
                                             _hd130959131442_
                                             _tl130958131444_
                                             _e130963131447_
                                             _hd130962131450_
                                             _tl130961131452_
                                             _e130966131455_
                                             _hd130965131458_
                                             _tl130964131460_
                                             _e130969131463_
                                             _hd130968131466_
                                             _tl130967131468_
                                             _e130972131471_
                                             _hd130971131474_
                                             _tl130970131476_
                                             _e130975131479_
                                             _hd130974131482_
                                             _tl130973131484_
                                             _e130978131487_
                                             _hd130977131490_
                                             _tl130976131492_
                                             _e130981131495_
                                             _hd130980131498_
                                             _tl130979131500_
                                             _e130984131503_
                                             _hd130983131506_
                                             _tl130982131508_)
                                            (___match136833136834_
                                             _e130957131431_
                                             _hd130956131434_
                                             _tl130955131436_
                                             _e130960131439_
                                             _hd130959131442_
                                             _tl130958131444_
                                             _e130963131447_
                                             _hd130962131450_
                                             _tl130961131452_
                                             _e130966131455_
                                             _hd130965131458_
                                             _tl130964131460_
                                             _e130969131463_
                                             _hd130968131466_
                                             _tl130967131468_
                                             _e130972131471_
                                             _hd130971131474_
                                             _tl130970131476_
                                             _e130975131479_
                                             _hd130974131482_
                                             _tl130973131484_
                                             _e130978131487_
                                             _hd130977131490_
                                             _tl130976131492_
                                             _e130981131495_
                                             _hd130980131498_
                                             _tl130979131500_
                                             _e130984131503_
                                             _hd130983131506_
                                             _tl130982131508_))
                                        (___match136957136958_
                                         _e130957131431_
                                         _hd130956131434_
                                         _tl130955131436_
                                         _e130960131439_
                                         _hd130959131442_
                                         _tl130958131444_
                                         _e130963131447_
                                         _hd130962131450_
                                         _tl130961131452_
                                         _e130966131455_
                                         _hd130965131458_
                                         _tl130964131460_
                                         _e130969131463_
                                         _hd130968131466_
                                         _tl130967131468_
                                         _e130972131471_
                                         _hd130971131474_
                                         _tl130970131476_
                                         _e130975131479_
                                         _hd130974131482_
                                         _tl130973131484_
                                         _e130978131487_
                                         _hd130977131490_
                                         _tl130976131492_))))
                                (___match136957136958_
                                 _e130957131431_
                                 _hd130956131434_
                                 _tl130955131436_
                                 _e130960131439_
                                 _hd130959131442_
                                 _tl130958131444_
                                 _e130963131447_
                                 _hd130962131450_
                                 _tl130961131452_
                                 _e130966131455_
                                 _hd130965131458_
                                 _tl130964131460_
                                 _e130969131463_
                                 _hd130968131466_
                                 _tl130967131468_
                                 _e130972131471_
                                 _hd130971131474_
                                 _tl130970131476_
                                 _e130975131479_
                                 _hd130974131482_
                                 _tl130973131484_
                                 _e130978131487_
                                 _hd130977131490_
                                 _tl130976131492_))
                            (___match136957136958_
                             _e130957131431_
                             _hd130956131434_
                             _tl130955131436_
                             _e130960131439_
                             _hd130959131442_
                             _tl130958131444_
                             _e130963131447_
                             _hd130962131450_
                             _tl130961131452_
                             _e130966131455_
                             _hd130965131458_
                             _tl130964131460_
                             _e130969131463_
                             _hd130968131466_
                             _tl130967131468_
                             _e130972131471_
                             _hd130971131474_
                             _tl130970131476_
                             _e130975131479_
                             _hd130974131482_
                             _tl130973131484_
                             _e130978131487_
                             _hd130977131490_
                             _tl130976131492_))))
                     (___match136675136676_
                      (lambda (_e130906131552_
                               _hd130905131555_
                               _tl130904131557_
                               _e130909131560_
                               _hd130908131563_
                               _tl130907131565_
                               _e130912131568_
                               _hd130911131571_
                               _tl130910131573_
                               _e130915131576_
                               _hd130914131579_
                               _tl130913131581_
                               _e130918131584_
                               _hd130917131587_
                               _tl130916131589_
                               _e130921131592_
                               _hd130920131595_
                               _tl130919131597_
                               _e130924131600_
                               _hd130923131603_
                               _tl130922131605_
                               _e130927131608_
                               _hd130926131611_
                               _tl130925131613_
                               _e130930131616_
                               _hd130929131619_
                               _tl130928131621_
                               _e130933131624_
                               _hd130932131627_
                               _tl130931131629_
                               _e130936131632_
                               _hd130935131635_
                               _tl130934131637_
                               _e130939131640_
                               _hd130938131643_
                               _tl130937131645_
                               _e130942131648_
                               _hd130941131651_
                               _tl130940131653_
                               ___splice136468136469_
                               _target130943131656_
                               _tl130945131658_)
                        (letrec ((_loop130946131661_
                                  (lambda (_hd130944131664_ _args130950131666_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130944131664_))
                                        (let ((_e130947131669_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130944131664_))))
                                          (let ((_lp-tl130949131674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130947131669_)))
                                                (_lp-hd130948131672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130947131669_))))
                                            (let ((__tmp137378
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130948131672_
                                                           _args130950131666_))))
                                              (declare (not safe))
                                              (_loop130946131661_
                                               _lp-tl130949131674_
                                               __tmp137378))))
                                        (let ((_args130951131677_
                                               (reverse _args130950131666_)))
                                          (let ((_L131680_ _args130951131677_)
                                                (_L131681_ _hd130941131651_)
                                                (_L131682_ _hd130932131627_)
                                                (_L131683_ _hd130923131603_)
                                                (_L131684_ _hd130914131579_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131684_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131683_
                                                        'call-method))
                                                     (let ((__tmp137377
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self130843_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131682_
                                                        __tmp137377)))
                                                (___kont136466136467_
                                                 _L131680_
                                                 _L131681_
                                                 _L131682_
                                                 _L131683_
                                                 _L131684_)
                                                (___kont136478136479_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130946131661_ _target130943131656_ '())))))
                     (___match136633136634_
                      (lambda (_e130906131552_
                               _hd130905131555_
                               _tl130904131557_
                               _e130909131560_
                               _hd130908131563_
                               _tl130907131565_
                               _e130912131568_
                               _hd130911131571_
                               _tl130910131573_
                               _e130915131576_
                               _hd130914131579_
                               _tl130913131581_
                               _e130918131584_
                               _hd130917131587_
                               _tl130916131589_
                               _e130921131592_
                               _hd130920131595_
                               _tl130919131597_
                               _e130924131600_
                               _hd130923131603_
                               _tl130922131605_
                               _e130927131608_
                               _hd130926131611_
                               _tl130925131613_
                               _e130930131616_
                               _hd130929131619_
                               _tl130928131621_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd130929131619_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130928131621_))
                                (let ((_e130933131624_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130928131621_))))
                                  (let ((_tl130931131629_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130933131624_)))
                                        (_hd130932131627_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130933131624_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130931131629_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130925131613_))
                                            (let ((_e130936131632_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130925131613_))))
                                              (let ((_tl130934131637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130936131632_)))
                                                    (_hd130935131635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130936131632_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd130935131635_))
                                                    (let ((_e130939131640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd130935131635_))))
                                                      (let ((_tl130937131645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130939131640_)))
                    (_hd130938131643_
                     (let () (declare (not safe)) (##car _e130939131640_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd130938131643_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd130938131643_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130937131645_))
                            (let ((_e130942131648_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130937131645_))))
                              (let ((_tl130940131653_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130942131648_)))
                                    (_hd130941131651_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130942131648_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130940131653_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl130934131637_))
                                        (let ((___splice136468136469_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl130934131637_
                                                  '0))))
                                          (let ((_tl130945131658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136468136469_
                                                    '1)))
                                                (_target130943131656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136468136469_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl130945131658_))
                                                (___match136675136676_
                                                 _e130906131552_
                                                 _hd130905131555_
                                                 _tl130904131557_
                                                 _e130909131560_
                                                 _hd130908131563_
                                                 _tl130907131565_
                                                 _e130912131568_
                                                 _hd130911131571_
                                                 _tl130910131573_
                                                 _e130915131576_
                                                 _hd130914131579_
                                                 _tl130913131581_
                                                 _e130918131584_
                                                 _hd130917131587_
                                                 _tl130916131589_
                                                 _e130921131592_
                                                 _hd130920131595_
                                                 _tl130919131597_
                                                 _e130924131600_
                                                 _hd130923131603_
                                                 _tl130922131605_
                                                 _e130927131608_
                                                 _hd130926131611_
                                                 _tl130925131613_
                                                 _e130930131616_
                                                 _hd130929131619_
                                                 _tl130928131621_
                                                 _e130933131624_
                                                 _hd130932131627_
                                                 _tl130931131629_
                                                 _e130936131632_
                                                 _hd130935131635_
                                                 _tl130934131637_
                                                 _e130939131640_
                                                 _hd130938131643_
                                                 _tl130937131645_
                                                 _e130942131648_
                                                 _hd130941131651_
                                                 _tl130940131653_
                                                 ___splice136468136469_
                                                 _target130943131656_
                                                 _tl130945131658_)
                                                (___kont136478136479_))))
                                        (___kont136478136479_))
                                    (___kont136478136479_))))
                            (___kont136478136479_))
                        (___kont136478136479_))
                    (___kont136478136479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136478136479_))))
                                            (___match136957136958_
                                             _e130906131552_
                                             _hd130905131555_
                                             _tl130904131557_
                                             _e130909131560_
                                             _hd130908131563_
                                             _tl130907131565_
                                             _e130912131568_
                                             _hd130911131571_
                                             _tl130910131573_
                                             _e130915131576_
                                             _hd130914131579_
                                             _tl130913131581_
                                             _e130918131584_
                                             _hd130917131587_
                                             _tl130916131589_
                                             _e130921131592_
                                             _hd130920131595_
                                             _tl130919131597_
                                             _e130924131600_
                                             _hd130923131603_
                                             _tl130922131605_
                                             _e130927131608_
                                             _hd130926131611_
                                             _tl130925131613_))
                                        (___match136957136958_
                                         _e130906131552_
                                         _hd130905131555_
                                         _tl130904131557_
                                         _e130909131560_
                                         _hd130908131563_
                                         _tl130907131565_
                                         _e130912131568_
                                         _hd130911131571_
                                         _tl130910131573_
                                         _e130915131576_
                                         _hd130914131579_
                                         _tl130913131581_
                                         _e130918131584_
                                         _hd130917131587_
                                         _tl130916131589_
                                         _e130921131592_
                                         _hd130920131595_
                                         _tl130919131597_
                                         _e130924131600_
                                         _hd130923131603_
                                         _tl130922131605_
                                         _e130927131608_
                                         _hd130926131611_
                                         _tl130925131613_))))
                                (___match136957136958_
                                 _e130906131552_
                                 _hd130905131555_
                                 _tl130904131557_
                                 _e130909131560_
                                 _hd130908131563_
                                 _tl130907131565_
                                 _e130912131568_
                                 _hd130911131571_
                                 _tl130910131573_
                                 _e130915131576_
                                 _hd130914131579_
                                 _tl130913131581_
                                 _e130918131584_
                                 _hd130917131587_
                                 _tl130916131589_
                                 _e130921131592_
                                 _hd130920131595_
                                 _tl130919131597_
                                 _e130924131600_
                                 _hd130923131603_
                                 _tl130922131605_
                                 _e130927131608_
                                 _hd130926131611_
                                 _tl130925131613_))
                            (___match136743136744_
                             _e130906131552_
                             _hd130905131555_
                             _tl130904131557_
                             _e130909131560_
                             _hd130908131563_
                             _tl130907131565_
                             _e130912131568_
                             _hd130911131571_
                             _tl130910131573_
                             _e130915131576_
                             _hd130914131579_
                             _tl130913131581_
                             _e130918131584_
                             _hd130917131587_
                             _tl130916131589_
                             _e130921131592_
                             _hd130920131595_
                             _tl130919131597_
                             _e130924131600_
                             _hd130923131603_
                             _tl130922131605_
                             _e130927131608_
                             _hd130926131611_
                             _tl130925131613_
                             _e130930131616_
                             _hd130929131619_
                             _tl130928131621_))))
                     (___match136565136566_
                      (lambda (_e130862131744_
                               _hd130861131747_
                               _tl130860131749_
                               _e130865131752_
                               _hd130864131755_
                               _tl130863131757_
                               _e130868131760_
                               _hd130867131763_
                               _tl130866131765_
                               _e130871131768_
                               _hd130870131771_
                               _tl130869131773_
                               _e130874131776_
                               _hd130873131779_
                               _tl130872131781_
                               _e130877131784_
                               _hd130876131787_
                               _tl130875131789_
                               _e130880131792_
                               _hd130879131795_
                               _tl130878131797_
                               _e130883131800_
                               _hd130882131803_
                               _tl130881131805_
                               _e130886131808_
                               _hd130885131811_
                               _tl130884131813_
                               _e130889131816_
                               _hd130888131819_
                               _tl130887131821_
                               ___splice136464136465_
                               _target130890131824_
                               _tl130892131826_)
                        (letrec ((_loop130893131829_
                                  (lambda (_hd130891131832_ _args130897131834_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130891131832_))
                                        (let ((_e130894131837_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130891131832_))))
                                          (let ((_lp-tl130896131842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130894131837_)))
                                                (_lp-hd130895131840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130894131837_))))
                                            (let ((__tmp137380
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130895131840_
                                                           _args130897131834_))))
                                              (declare (not safe))
                                              (_loop130893131829_
                                               _lp-tl130896131842_
                                               __tmp137380))))
                                        (let ((_args130898131845_
                                               (reverse _args130897131834_)))
                                          (let ((_L131848_ _args130898131845_)
                                                (_L131849_ _hd130888131819_)
                                                (_L131850_ _hd130879131795_)
                                                (_L131851_ _hd130870131771_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131851_
                                                        'call-method))
                                                     (let ((__tmp137379
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self130843_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131850_
                                                        __tmp137379)))
                                                (___kont136462136463_
                                                 _L131848_
                                                 _L131849_
                                                 _L131850_
                                                 _L131851_)
                                                (___match136753136754_
                                                 _e130862131744_
                                                 _hd130861131747_
                                                 _tl130860131749_
                                                 _e130865131752_
                                                 _hd130864131755_
                                                 _tl130863131757_
                                                 _e130868131760_
                                                 _hd130867131763_
                                                 _tl130866131765_
                                                 _e130871131768_
                                                 _hd130870131771_
                                                 _tl130869131773_
                                                 _e130874131776_
                                                 _hd130873131779_
                                                 _tl130872131781_
                                                 _e130877131784_
                                                 _hd130876131787_
                                                 _tl130875131789_
                                                 _e130880131792_
                                                 _hd130879131795_
                                                 _tl130878131797_
                                                 _e130883131800_
                                                 _hd130882131803_
                                                 _tl130881131805_
                                                 _e130886131808_
                                                 _hd130885131811_
                                                 _tl130884131813_
                                                 _e130889131816_
                                                 _hd130888131819_
                                                 _tl130887131821_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130893131829_ _target130890131824_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136460136461_))
                    (let ((_e130862131744_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136460136461_))))
                      (let ((_tl130860131749_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130862131744_)))
                            (_hd130861131747_
                             (let ()
                               (declare (not safe))
                               (##car _e130862131744_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130860131749_))
                            (let ((_e130865131752_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130860131749_))))
                              (let ((_tl130863131757_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130865131752_)))
                                    (_hd130864131755_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130865131752_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130864131755_))
                                    (let ((_e130868131760_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130864131755_))))
                                      (let ((_tl130866131765_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130868131760_)))
                                            (_hd130867131763_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130868131760_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd130867131763_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd130867131763_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl130866131765_))
                                                    (let ((_e130871131768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl130866131765_))))
                                                      (let ((_tl130869131773_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130871131768_)))
                    (_hd130870131771_
                     (let () (declare (not safe)) (##car _e130871131768_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl130869131773_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl130863131757_))
                        (let ((_e130874131776_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl130863131757_))))
                          (let ((_tl130872131781_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e130874131776_)))
                                (_hd130873131779_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e130874131776_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd130873131779_))
                                (let ((_e130877131784_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd130873131779_))))
                                  (let ((_tl130875131789_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130877131784_)))
                                        (_hd130876131787_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130877131784_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd130876131787_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd130876131787_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130875131789_))
                                                (let ((_e130880131792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130875131789_))))
                                                  (let ((_tl130878131797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130880131792_)))
                                                        (_hd130879131795_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130880131792_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130878131797_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl130872131781_))
                                                            (let ((_e130883131800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl130872131781_))))
                      (let ((_tl130881131805_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130883131800_)))
                            (_hd130882131803_
                             (let ()
                               (declare (not safe))
                               (##car _e130883131800_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd130882131803_))
                            (let ((_e130886131808_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd130882131803_))))
                              (let ((_tl130884131813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130886131808_)))
                                    (_hd130885131811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130886131808_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd130885131811_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd130885131811_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130884131813_))
                                            (let ((_e130889131816_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130884131813_))))
                                              (let ((_tl130887131821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130889131816_)))
                                                    (_hd130888131819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130889131816_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl130887131821_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl130881131805_))
                                                        (let ((___splice136464136465_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl130881131805_ '0))))
                  (let ((_tl130892131826_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136464136465_ '1)))
                        (_target130890131824_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136464136465_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl130892131826_))
                        (___match136565136566_
                         _e130862131744_
                         _hd130861131747_
                         _tl130860131749_
                         _e130865131752_
                         _hd130864131755_
                         _tl130863131757_
                         _e130868131760_
                         _hd130867131763_
                         _tl130866131765_
                         _e130871131768_
                         _hd130870131771_
                         _tl130869131773_
                         _e130874131776_
                         _hd130873131779_
                         _tl130872131781_
                         _e130877131784_
                         _hd130876131787_
                         _tl130875131789_
                         _e130880131792_
                         _hd130879131795_
                         _tl130878131797_
                         _e130883131800_
                         _hd130882131803_
                         _tl130881131805_
                         _e130886131808_
                         _hd130885131811_
                         _tl130884131813_
                         _e130889131816_
                         _hd130888131819_
                         _tl130887131821_
                         ___splice136464136465_
                         _target130890131824_
                         _tl130892131826_)
                        (___match136753136754_
                         _e130862131744_
                         _hd130861131747_
                         _tl130860131749_
                         _e130865131752_
                         _hd130864131755_
                         _tl130863131757_
                         _e130868131760_
                         _hd130867131763_
                         _tl130866131765_
                         _e130871131768_
                         _hd130870131771_
                         _tl130869131773_
                         _e130874131776_
                         _hd130873131779_
                         _tl130872131781_
                         _e130877131784_
                         _hd130876131787_
                         _tl130875131789_
                         _e130880131792_
                         _hd130879131795_
                         _tl130878131797_
                         _e130883131800_
                         _hd130882131803_
                         _tl130881131805_
                         _e130886131808_
                         _hd130885131811_
                         _tl130884131813_
                         _e130889131816_
                         _hd130888131819_
                         _tl130887131821_))))
                (___match136753136754_
                 _e130862131744_
                 _hd130861131747_
                 _tl130860131749_
                 _e130865131752_
                 _hd130864131755_
                 _tl130863131757_
                 _e130868131760_
                 _hd130867131763_
                 _tl130866131765_
                 _e130871131768_
                 _hd130870131771_
                 _tl130869131773_
                 _e130874131776_
                 _hd130873131779_
                 _tl130872131781_
                 _e130877131784_
                 _hd130876131787_
                 _tl130875131789_
                 _e130880131792_
                 _hd130879131795_
                 _tl130878131797_
                 _e130883131800_
                 _hd130882131803_
                 _tl130881131805_
                 _e130886131808_
                 _hd130885131811_
                 _tl130884131813_
                 _e130889131816_
                 _hd130888131819_
                 _tl130887131821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match136957136958_
                                                     _e130862131744_
                                                     _hd130861131747_
                                                     _tl130860131749_
                                                     _e130865131752_
                                                     _hd130864131755_
                                                     _tl130863131757_
                                                     _e130868131760_
                                                     _hd130867131763_
                                                     _tl130866131765_
                                                     _e130871131768_
                                                     _hd130870131771_
                                                     _tl130869131773_
                                                     _e130874131776_
                                                     _hd130873131779_
                                                     _tl130872131781_
                                                     _e130877131784_
                                                     _hd130876131787_
                                                     _tl130875131789_
                                                     _e130880131792_
                                                     _hd130879131795_
                                                     _tl130878131797_
                                                     _e130883131800_
                                                     _hd130882131803_
                                                     _tl130881131805_))))
                                            (___match136957136958_
                                             _e130862131744_
                                             _hd130861131747_
                                             _tl130860131749_
                                             _e130865131752_
                                             _hd130864131755_
                                             _tl130863131757_
                                             _e130868131760_
                                             _hd130867131763_
                                             _tl130866131765_
                                             _e130871131768_
                                             _hd130870131771_
                                             _tl130869131773_
                                             _e130874131776_
                                             _hd130873131779_
                                             _tl130872131781_
                                             _e130877131784_
                                             _hd130876131787_
                                             _tl130875131789_
                                             _e130880131792_
                                             _hd130879131795_
                                             _tl130878131797_
                                             _e130883131800_
                                             _hd130882131803_
                                             _tl130881131805_))
                                        (___match136633136634_
                                         _e130862131744_
                                         _hd130861131747_
                                         _tl130860131749_
                                         _e130865131752_
                                         _hd130864131755_
                                         _tl130863131757_
                                         _e130868131760_
                                         _hd130867131763_
                                         _tl130866131765_
                                         _e130871131768_
                                         _hd130870131771_
                                         _tl130869131773_
                                         _e130874131776_
                                         _hd130873131779_
                                         _tl130872131781_
                                         _e130877131784_
                                         _hd130876131787_
                                         _tl130875131789_
                                         _e130880131792_
                                         _hd130879131795_
                                         _tl130878131797_
                                         _e130883131800_
                                         _hd130882131803_
                                         _tl130881131805_
                                         _e130886131808_
                                         _hd130885131811_
                                         _tl130884131813_))
                                    (___match136957136958_
                                     _e130862131744_
                                     _hd130861131747_
                                     _tl130860131749_
                                     _e130865131752_
                                     _hd130864131755_
                                     _tl130863131757_
                                     _e130868131760_
                                     _hd130867131763_
                                     _tl130866131765_
                                     _e130871131768_
                                     _hd130870131771_
                                     _tl130869131773_
                                     _e130874131776_
                                     _hd130873131779_
                                     _tl130872131781_
                                     _e130877131784_
                                     _hd130876131787_
                                     _tl130875131789_
                                     _e130880131792_
                                     _hd130879131795_
                                     _tl130878131797_
                                     _e130883131800_
                                     _hd130882131803_
                                     _tl130881131805_))))
                            (___match136957136958_
                             _e130862131744_
                             _hd130861131747_
                             _tl130860131749_
                             _e130865131752_
                             _hd130864131755_
                             _tl130863131757_
                             _e130868131760_
                             _hd130867131763_
                             _tl130866131765_
                             _e130871131768_
                             _hd130870131771_
                             _tl130869131773_
                             _e130874131776_
                             _hd130873131779_
                             _tl130872131781_
                             _e130877131784_
                             _hd130876131787_
                             _tl130875131789_
                             _e130880131792_
                             _hd130879131795_
                             _tl130878131797_
                             _e130883131800_
                             _hd130882131803_
                             _tl130881131805_))))
                    (___match136895136896_
                     _e130862131744_
                     _hd130861131747_
                     _tl130860131749_
                     _e130865131752_
                     _hd130864131755_
                     _tl130863131757_
                     _e130868131760_
                     _hd130867131763_
                     _tl130866131765_
                     _e130871131768_
                     _hd130870131771_
                     _tl130869131773_
                     _e130874131776_
                     _hd130873131779_
                     _tl130872131781_
                     _e130877131784_
                     _hd130876131787_
                     _tl130875131789_
                     _e130880131792_
                     _hd130879131795_
                     _tl130878131797_))
                (___kont136478136479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136478136479_))
                                            (___kont136478136479_))
                                        (___kont136478136479_))))
                                (___kont136478136479_))))
                        (___kont136478136479_))
                    (___kont136478136479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136478136479_))
                                                (___kont136478136479_))
                                            (___kont136478136479_))))
                                    (___kont136478136479_))))
                            (___kont136478136479_))))
                    (___kont136478136479_))))))))))
