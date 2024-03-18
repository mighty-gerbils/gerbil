(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710781151)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp137231 (list gxc#::identity::t))
            (__tmp137229
             (let ((__tmp137230
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137230 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp137231
         '()
         __tmp137229
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args136095_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args136095_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (make-promise
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
    (define gxc#apply-generate-method-specializers
      (lambda (_stx136087_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self136090_
                (let ((__obj137224
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj137224))
               (__tmp137232
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self136090_ _stx136087_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp137232
           gxc#current-compile-method
           _self136090_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp137235 (list gxc#::void::t))
            (__tmp137233
             (let ((__tmp137234
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137234 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp137235
         '(receiver methods slots)
         __tmp137233
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args136084_
        (apply make-instance gxc#::collect-object-refs::t _$args136084_)))
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
      (make-promise
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
    (define gxc#apply-collect-object-refs__%
      (lambda (_g137236_
               _receiver136045136050_
               _methods136046136052_
               _slots136047136054_
               _stx136056_)
        (let* ((_receiver136059_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver136045136050_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver136045136050_))
               (_methods136061_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods136046136052_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods136046136052_))
               (_slots136063_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136047136054_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136047136054_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self136065_
                  (let ((__obj137226
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
                       __obj137226
                       _receiver136059_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137226
                       _methods136061_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137226
                       _slots136063_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj137226))
                 (__tmp137237
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136065_ _stx136056_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137237
             gxc#current-compile-method
             _self136065_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys136044136072_ . _args136074_)
        (apply gxc#apply-collect-object-refs__%
               _keys136044136072_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136044136072_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136044136072_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys136044136072_ 'slots: absent-value))
               _args136074_)))
    (define gxc#apply-collect-object-refs
      (lambda _args136048136080_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args136048136080_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp137240 (list gxc#::basic-xform-expression::t))
            (__tmp137238
             (let ((__tmp137239
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137239 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp137240
         '(receiver klass methods slots)
         __tmp137238
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args136040_
        (apply make-instance gxc#::subst-object-refs::t _$args136040_)))
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
      (make-promise
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
    (define gxc#apply-subst-object-refs__%
      (lambda (_g137241_
               _receiver135996136002_
               _klass135997136004_
               _methods135998136006_
               _slots135999136008_
               _stx136010_)
        (let* ((_receiver136013_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135996136002_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135996136002_))
               (_klass136015_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass135997136004_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass135997136004_))
               (_methods136017_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135998136006_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135998136006_))
               (_slots136019_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135999136008_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135999136008_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self136021_
                  (let ((__obj137228
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
                       __obj137228
                       _receiver136013_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137228
                       _klass136015_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137228
                       _methods136017_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137228
                       _slots136019_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj137228))
                 (__tmp137242
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136021_ _stx136010_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137242
             gxc#current-compile-method
             _self136021_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135995136028_ . _args136030_)
        (apply gxc#apply-subst-object-refs__%
               _keys135995136028_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135995136028_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135995136028_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135995136028_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135995136028_ 'slots: absent-value))
               _args136030_)))
    (define gxc#apply-subst-object-refs
      (lambda _args136000136036_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args136000136036_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self133205_ _stx133206_)
        (letrec ((_generate-method-bind133208_
                  (lambda (_$klass135987_
                           _$method-table135988_
                           _id135989_
                           _$id135990_)
                    (let ((_$tmp135992_
                           (let ((__tmp137243 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137243))))
                      (let ((__tmp137291
                             (let ()
                               (declare (not safe))
                               (cons _$id135990_ '())))
                            (__tmp137244
                             (let ((__tmp137245
                                    (let ((__tmp137246
                                           (let ((__tmp137289
                                                  (let ((__tmp137290
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137290)))
                                                 (__tmp137247
                                                  (let ((__tmp137248
                                                         (let ((__tmp137249
                                                                (let ((__tmp137250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137251
                                      (let ((__tmp137252
                                             (let ((__tmp137272
                                                    (let ((__tmp137273
                                                           (let ((__tmp137288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135992_ '())))
                         (__tmp137274
                          (let ((__tmp137275
                                 (let ((__tmp137276
                                        (let ((__tmp137286
                                               (let ((__tmp137287
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp137287)))
                                              (__tmp137277
                                               (let ((__tmp137284
                                                      (let ((__tmp137285
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135988_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp137285)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137278
                                                      (let ((__tmp137282
                                                             (let ((__tmp137283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135989_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp137283)))
                    (__tmp137279
                     (let ((__tmp137280
                            (let ((__tmp137281
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137281))))
                       (declare (not safe))
                       (cons __tmp137280 '()))))
                (declare (not safe))
                (cons __tmp137282 __tmp137279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp137284
                                                       __tmp137278))))
                                          (declare (not safe))
                                          (cons __tmp137286 __tmp137277))))
                                   (declare (not safe))
                                   (cons '%#call __tmp137276))))
                            (declare (not safe))
                            (cons __tmp137275 '()))))
                     (declare (not safe))
                     (cons __tmp137288 __tmp137274))))
              (declare (not safe))
              (cons __tmp137273 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137253
                                                    (let ((__tmp137254
                                                           (let ((__tmp137255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137270
                                 (let ((__tmp137271
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135992_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp137271)))
                                (__tmp137256
                                 (let ((__tmp137268
                                        (let ((__tmp137269
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135992_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp137269)))
                                       (__tmp137257
                                        (let ((__tmp137258
                                               (let ((__tmp137259
                                                      (let ((__tmp137266
                                                             (let ((__tmp137267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp137267)))
                    (__tmp137260
                     (let ((__tmp137264
                            (let ((__tmp137265
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137265)))
                           (__tmp137261
                            (let ((__tmp137262
                                   (let ((__tmp137263
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135989_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp137263))))
                              (declare (not safe))
                              (cons __tmp137262 '()))))
                       (declare (not safe))
                       (cons __tmp137264 __tmp137261))))
                (declare (not safe))
                (cons __tmp137266 __tmp137260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp137259))))
                                          (declare (not safe))
                                          (cons __tmp137258 '()))))
                                   (declare (not safe))
                                   (cons __tmp137268 __tmp137257))))
                            (declare (not safe))
                            (cons __tmp137270 __tmp137256))))
                     (declare (not safe))
                     (cons '%#if __tmp137255))))
              (declare (not safe))
              (cons __tmp137254 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137272
                                                     __tmp137253))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp137252))))
                                 (declare (not safe))
                                 (cons __tmp137251 '()))))
                          (declare (not safe))
                          (cons '() __tmp137250))))
                   (declare (not safe))
                   (cons '%#lambda __tmp137249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137248 '()))))
                                             (declare (not safe))
                                             (cons __tmp137289 __tmp137247))))
                                      (declare (not safe))
                                      (cons '%#call __tmp137246))))
                               (declare (not safe))
                               (cons __tmp137245 '()))))
                        (declare (not safe))
                        (cons __tmp137291 __tmp137244)))))
                 (_generate-slot-bind133209_
                  (lambda (_$klass135981_ _id135982_ _$id135983_)
                    (let ((_$tmp135985_
                           (let ((__tmp137292 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137292))))
                      (let ((__tmp137329
                             (let ()
                               (declare (not safe))
                               (cons _$id135983_ '())))
                            (__tmp137293
                             (let ((__tmp137294
                                    (let ((__tmp137295
                                           (let ((__tmp137315
                                                  (let ((__tmp137316
                                                         (let ((__tmp137328
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135985_ '())))
                       (__tmp137317
                        (let ((__tmp137318
                               (let ((__tmp137319
                                      (let ((__tmp137326
                                             (let ((__tmp137327
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp137327)))
                                            (__tmp137320
                                             (let ((__tmp137324
                                                    (let ((__tmp137325
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp137325)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137321
                                                    (let ((__tmp137322
                                                           (let ((__tmp137323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135982_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp137323))))
              (declare (not safe))
              (cons __tmp137322 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137324
                                                     __tmp137321))))
                                        (declare (not safe))
                                        (cons __tmp137326 __tmp137320))))
                                 (declare (not safe))
                                 (cons '%#call __tmp137319))))
                          (declare (not safe))
                          (cons __tmp137318 '()))))
                   (declare (not safe))
                   (cons __tmp137328 __tmp137317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137316 '())))
                                                 (__tmp137296
                                                  (let ((__tmp137297
                                                         (let ((__tmp137298
                                                                (let ((__tmp137313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137314
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135985_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp137314)))
                              (__tmp137299
                               (let ((__tmp137311
                                      (let ((__tmp137312
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135985_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp137312)))
                                     (__tmp137300
                                      (let ((__tmp137301
                                             (let ((__tmp137302
                                                    (let ((__tmp137309
                                                           (let ((__tmp137310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp137310)))
                  (__tmp137303
                   (let ((__tmp137307
                          (let ((__tmp137308
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp137308)))
                         (__tmp137304
                          (let ((__tmp137305
                                 (let ((__tmp137306
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135982_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp137306))))
                            (declare (not safe))
                            (cons __tmp137305 '()))))
                     (declare (not safe))
                     (cons __tmp137307 __tmp137304))))
              (declare (not safe))
              (cons __tmp137309 __tmp137303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp137302))))
                                        (declare (not safe))
                                        (cons __tmp137301 '()))))
                                 (declare (not safe))
                                 (cons __tmp137311 __tmp137300))))
                          (declare (not safe))
                          (cons __tmp137313 __tmp137299))))
                   (declare (not safe))
                   (cons '%#if __tmp137298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137297 '()))))
                                             (declare (not safe))
                                             (cons __tmp137315 __tmp137296))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp137295))))
                               (declare (not safe))
                               (cons __tmp137294 '()))))
                        (declare (not safe))
                        (cons __tmp137329 __tmp137293)))))
                 (_generate-specializer-impl133210_
                  (lambda (_$klass135975_
                           _$method-table135976_
                           _methods-bind135977_
                           _slots-bind135978_
                           _specializer-impl135979_)
                    (let ((__tmp137330
                           (let ((__tmp137331
                                  (let ((__tmp137337
                                         (let ((__tmp137338
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135976_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135975_ __tmp137338)))
                                        (__tmp137332
                                         (let ((__tmp137333
                                                (let ((__tmp137334
                                                       (let ((__tmp137336
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135978_ _methods-bind135977_)))
                     (__tmp137335
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135979_ '()))))
                 (declare (not safe))
                 (cons __tmp137336 __tmp137335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137334))))
                                           (declare (not safe))
                                           (cons __tmp137333 '()))))
                                    (declare (not safe))
                                    (cons __tmp137337 __tmp137332))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137331))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137330 _stx133206_))))
                 (_generate-specializer-def133211_
                  (lambda (_id135971_
                           _specializer-id135972_
                           _specializer-impl135973_)
                    (let ((__tmp137339
                           (let ((__tmp137340
                                  (let ((__tmp137341
                                         (let ((__tmp137354
                                                (let ((__tmp137355
                                                       (let ((__tmp137356
                                                              (let ((__tmp137358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135972_ '())))
                            (__tmp137357
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135973_ '()))))
                        (declare (not safe))
                        (cons __tmp137358 __tmp137357))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137355
                                                   _stx133206_)))
                                               (__tmp137342
                                                (let ((__tmp137343
                                                       (let ((__tmp137344
                                                              (let ((__tmp137345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137352
                                    (let ((__tmp137353
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137353)))
                                   (__tmp137346
                                    (let ((__tmp137350
                                           (let ((__tmp137351
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135971_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137351)))
                                          (__tmp137347
                                           (let ((__tmp137348
                                                  (let ((__tmp137349
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137349))))
                                             (declare (not safe))
                                             (cons __tmp137348 '()))))
                                      (declare (not safe))
                                      (cons __tmp137350 __tmp137347))))
                               (declare (not safe))
                               (cons __tmp137352 __tmp137346))))
                        (declare (not safe))
                        (cons '%#call __tmp137345))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137344 _stx133206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137343 '()))))
                                           (declare (not safe))
                                           (cons __tmp137354 __tmp137342))))
                                    (declare (not safe))
                                    (cons _stx133206_ __tmp137341))))
                             (declare (not safe))
                             (cons '%#begin __tmp137340))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137339 _stx133206_)))))
          (let* ((___stx136184136185_ _stx133206_)
                 (_g133214133234_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136184136185_)))))
            (let ((___kont136186136187_
                   (lambda (_L133278_ _L133279_)
                     (let ((_method-calls133298_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs133299_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty133300_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?133302_
                                 (lambda ()
                                   (if (let ((__tmp137360
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls133298_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137360))
                                       (let ((__tmp137359
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs133299_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137359))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L133278_))
                             (let* ((___stx136098136099_ _L133278_)
                                    (_g133689133707_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx136098136099_)))))
                               (let ((___kont136100136101_
                                      (lambda (_L133743_ _L133744_ _L133745_)
                                        (for-each
                                         (lambda (_g133760133762_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133760133762_
                                              'receiver:
                                              _L133745_
                                              'methods:
                                              _method-calls133298_
                                              'slots:
                                              _slot-refs133299_)))
                                         _L133743_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?133302_))
                                            _stx133206_
                                            (let* ((_specializer-id133771_
                                                    (let* ((_id133765_
                                                            (let ((__tmp137482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L133279_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137482 '"::specialize")))
                   (_specializer-id133768_
                    (let ((__tmp137483
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx133206_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133765_ __tmp137483))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133768_))
              _specializer-id133768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133773_
                                                    (let ((__tmp137484
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137484)))
                                                   (_$method-table133775_
                                                    (let ((__tmp137485
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137485)))
                                                   (_methods133777_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls133298_)))
                                                   (_$methods133781_
                                                    (map (lambda (_id133779_)
                                                           (let ((__tmp137486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133779_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137486)))
                 _methods133777_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137487_
                                                    (for-each
                                                     (lambda (_g133782133785_
                                                              _g133783133787_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls133298_
                                                          _g133782133785_
                                                          _g133783133787_)))
                                                     _methods133777_
                                                     _$methods133781_))
                                                   (_methods-bind133798_
                                                    (map (lambda (_g133790133793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133791133795_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind133208_
                      _$klass133773_
                      _$method-table133775_
                      _g133790133793_
                      _g133791133795_)))
                 _methods133777_
                 _$methods133781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133800_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs133299_)))
                                                   (_$slots133804_
                                                    (map (lambda (_id133802_)
                                                           (let ((__tmp137488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133802_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137488)))
                 _slots133800_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137489_
                                                    (for-each
                                                     (lambda (_g133805133808_
                                                              _g133806133810_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs133299_
                                                          _g133805133808_
                                                          _g133806133810_)))
                                                     _slots133800_
                                                     _$slots133804_))
                                                   (_slots-bind133821_
                                                    (map (lambda (_g133813133816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133814133818_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind133209_
                      _$klass133773_
                      _g133813133816_
                      _g133814133818_)))
                 _slots133800_
                 _$slots133804_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133827_
                                                    (map (lambda (_g133822133824_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133822133824_
                                                              'receiver:
                                                              _L133745_
                                                              'klass:
                                                              _$klass133773_
                                                              'methods:
                                                              _method-calls133298_
                                                              'slots:
                                                              _slot-refs133299_)))
                                                         _L133743_))
                                                   (_specializer-impl133829_
                                                    (let ((__tmp137490
                                                           (let ((__tmp137491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137492
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133745_ _L133744_))))
                            (declare (not safe))
                            (cons __tmp137492 _specializer-body133827_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137491))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137490 _stx133206_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133831_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl133210_
                                                       _$klass133773_
                                                       _$method-table133775_
                                                       _methods-bind133798_
                                                       _slots-bind133821_
                                                       _specializer-impl133829_))))
                                              (let ((__tmp137494
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L133279_)))
                                                    (__tmp137493
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133771_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137494
                                                 '" => "
                                                 __tmp137493))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def133211_
                                                 _L133279_
                                                 _specializer-id133771_
                                                 _specializer-impl133831_))))))
                                     (___kont136102136103_
                                      (lambda () _stx133206_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx136098136099_))
                                     (let ((_e133696133719_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx136098136099_))))
                                       (let ((_tl133694133724_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133696133719_)))
                                             (_hd133695133722_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133696133719_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133694133724_))
                                             (let ((_e133699133727_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133694133724_))))
                                               (let ((_tl133697133732_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133699133727_)))
                                                     (_hd133698133730_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133699133727_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133698133730_))
                                                     (let ((_e133702133735_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133698133730_))))
                                                       (let ((_tl133700133740_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133702133735_)))
                     (_hd133701133738_
                      (let () (declare (not safe)) (##car _e133702133735_))))
                 (___kont136100136101_
                  _tl133697133732_
                  _tl133700133740_
                  _hd133701133738_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136102136103_))))
                                             (___kont136102136103_))))
                                     (___kont136102136103_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L133278_))
                                 (let* ((_g133837133856_
                                         (lambda (_g133838133853_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133838133853_))))
                                        (_g133836134139_
                                         (lambda (_g133838133859_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133838133859_))
                                               (let ((_e133842133861_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133838133859_))))
                                                 (let ((_hd133841133864_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133842133861_)))
                                                       (_tl133840133866_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133842133861_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133840133866_))
                                                       (let ((_g137465_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133840133866_ '0))))
                 (begin
                   (let ((_g137466_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137465_)
                                (##vector-length _g137465_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137466_ 2)))
                         (error "Context expects 2 values" _g137466_)))
                   (let ((_target133843133869_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137465_ 0)))
                         (_tl133845133871_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137465_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133845133871_))
                         (letrec ((_loop133846133874_
                                   (lambda (_hd133844133877_
                                            _clause133850133879_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133844133877_))
                                         (let ((_e133847133882_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133844133877_))))
                                           (let ((_lp-hd133848133885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133847133882_)))
                                                 (_lp-tl133849133887_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133847133882_))))
                                             (let ((__tmp137481
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133848133885_
                                                            _clause133850133879_))))
                                               (declare (not safe))
                                               (_loop133846133874_
                                                _lp-tl133849133887_
                                                __tmp137481))))
                                         (let ((_clause133851133890_
                                                (reverse _clause133850133879_)))
                                           ((lambda (_L133893_)
                                              (for-each
                                               (lambda (_clause133906_)
                                                 (let* ((___stx136124136125_
                                                         _clause133906_)
                                                        (_g133909133924_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx136124136125_)))))
                                                   (let ((___kont136126136127_
                                                          (lambda (_L133952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133953_
                           _L133954_)
                    (for-each
                     (lambda (_g133969133971_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133969133971_
                          'receiver:
                          _L133954_
                          'methods:
                          _method-calls133298_
                          'slots:
                          _slot-refs133299_)))
                     _L133952_)))
                 (___kont136128136129_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx136124136125_))
                                                         (let ((_e133916133936_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx136124136125_))))
                   (let ((_tl133914133941_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133916133936_)))
                         (_hd133915133939_
                          (let ()
                            (declare (not safe))
                            (##car _e133916133936_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133915133939_))
                         (let ((_e133919133944_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133915133939_))))
                           (let ((_tl133917133949_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133919133944_)))
                                 (_hd133918133947_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133919133944_))))
                             (___kont136126136127_
                              _tl133914133941_
                              _tl133917133949_
                              _hd133918133947_)))
                         (___kont136128136129_))))
                 (___kont136128136129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137467
                                                      (lambda (_g133976133979_
                                                               _g133977133981_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133976133979_
                                                                _g133977133981_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137467
                                                         '()
                                                         _L133893_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133302_))
                                                  _stx133206_
                                                  (let* ((_specializer-id133990_
                                                          (let* ((_id133984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137468
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133279_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137468 '"::specialize")))
                         (_specializer-id133987_
                          (let ((__tmp137469
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133206_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133984_ __tmp137469))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133987_))
                    _specializer-id133987_))
                 (_$klass133992_
                  (let ((__tmp137470 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137470)))
                 (_$method-table133994_
                  (let ((__tmp137471 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137471)))
                 (_methods133996_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133298_)))
                 (_$methods134000_
                  (map (lambda (_id133998_)
                         (let ((__tmp137472 (gensym _id133998_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137472)))
                       _methods133996_))
                 (_g137473_
                  (for-each
                   (lambda (_g134001134004_ _g134002134006_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133298_
                        _g134001134004_
                        _g134002134006_)))
                   _methods133996_
                   _$methods134000_))
                 (_methods-bind134017_
                  (map (lambda (_g134009134012_ _g134010134014_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133208_
                            _$klass133992_
                            _$method-table133994_
                            _g134009134012_
                            _g134010134014_)))
                       _methods133996_
                       _$methods134000_))
                 (_slots134019_
                  (let () (declare (not safe)) (hash-keys _slot-refs133299_)))
                 (_$slots134023_
                  (map (lambda (_id134021_)
                         (let ((__tmp137474 (gensym _id134021_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137474)))
                       _slots134019_))
                 (_g137475_
                  (for-each
                   (lambda (_g134024134027_ _g134025134029_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133299_
                        _g134024134027_
                        _g134025134029_)))
                   _slots134019_
                   _$slots134023_))
                 (_slots-bind134040_
                  (map (lambda (_g134032134035_ _g134033134037_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133209_
                            _$klass133992_
                            _g134032134035_
                            _g134033134037_)))
                       _slots134019_
                       _$slots134023_))
                 (_specializer-clauses134132_
                  (map (lambda (_clause134042_)
                         (let* ((___stx136144136145_ _clause134042_)
                                (_g134045134060_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx136144136145_)))))
                           (let ((___kont136146136147_
                                  (lambda (_L134088_ _L134089_ _L134090_)
                                    (let* ((_body134120_
                                            (map (lambda (_g134115134117_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g134115134117_
                                                      'receiver:
                                                      _L134090_
                                                      'klass:
                                                      _$klass133992_
                                                      'methods:
                                                      _method-calls133298_
                                                      'slots:
                                                      _slot-refs133299_)))
                                                 _L134088_))
                                           (__tmp137476
                                            (let ()
                                              (declare (not safe))
                                              (cons _L134090_ _L134089_))))
                                      (declare (not safe))
                                      (cons __tmp137476 _body134120_))))
                                 (___kont136148136149_
                                  (lambda () _clause134042_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx136144136145_))
                                 (let ((_e134052134072_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx136144136145_))))
                                   (let ((_tl134050134077_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e134052134072_)))
                                         (_hd134051134075_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e134052134072_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd134051134075_))
                                         (let ((_e134055134080_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd134051134075_))))
                                           (let ((_tl134053134085_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e134055134080_)))
                                                 (_hd134054134083_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e134055134080_))))
                                             (___kont136146136147_
                                              _tl134050134077_
                                              _tl134053134085_
                                              _hd134054134083_)))
                                         (___kont136148136149_))))
                                 (___kont136148136149_)))))
                       (let ((__tmp137477
                              (lambda (_g134124134127_ _g134125134129_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g134124134127_ _g134125134129_)))))
                         (declare (not safe))
                         (foldr1 __tmp137477 '() _L133893_))))
                 (_specializer-impl134134_
                  (let ((__tmp137478
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses134132_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137478 _stx133206_)))
                 (_specializer-impl134136_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133210_
                     _$klass133992_
                     _$method-table133994_
                     _methods-bind134017_
                     _slots-bind134040_
                     _specializer-impl134134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137480
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133279_)))
                                                          (__tmp137479
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133990_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137480
                                                       '" => "
                                                       __tmp137479))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133211_
                                                       _L133279_
                                                       _specializer-id133990_
                                                       _specializer-impl134136_)))))
                                            _clause133851133890_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133846133874_ _target133843133869_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133837133856_ _g133838133859_))))))
               (let ()
                 (declare (not safe))
                 (_g133837133856_ _g133838133859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133837133856_
                                                  _g133838133859_))))))
                                   (declare (not safe))
                                   (_g133836134139_ _L133278_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L133278_))
                                     (let* ((_g134142134172_
                                             (lambda (_g134143134169_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134143134169_))))
                                            (_g134141134777_
                                             (lambda (_g134143134175_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134143134175_))
                                                   (let ((_e134149134177_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134143134175_))))
                                                     (let ((_hd134148134180_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134149134177_)))
                                                           (_tl134147134182_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134149134177_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134147134182_))
                                                           (let ((_e134152134185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134147134182_))))
                     (let ((_hd134151134188_
                            (let ()
                              (declare (not safe))
                              (##car _e134152134185_)))
                           (_tl134150134190_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134152134185_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134151134188_))
                           (let ((_e134155134193_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134151134188_))))
                             (let ((_hd134154134196_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134155134193_)))
                                   (_tl134153134198_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134155134193_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134154134196_))
                                   (let ((_e134158134201_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134154134196_))))
                                     (let ((_hd134157134204_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134158134201_)))
                                           (_tl134156134206_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134158134201_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd134157134204_))
                                           (let ((_e134161134209_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd134157134204_))))
                                             (let ((_hd134160134212_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134161134209_)))
                                                   (_tl134159134214_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134161134209_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134159134214_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl134156134206_))
                                                       (let ((_e134164134217_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl134156134206_))))
                 (let ((_hd134163134220_
                        (let () (declare (not safe)) (##car _e134164134217_)))
                       (_tl134162134222_
                        (let () (declare (not safe)) (##cdr _e134164134217_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134162134222_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134153134198_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134150134190_))
                               (let ((_e134167134225_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134150134190_))))
                                 (let ((_hd134166134228_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134167134225_)))
                                       (_tl134165134230_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134167134225_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134165134230_))
                                       ((lambda (_L134233_ _L134234_ _L134235_)
                                          (let* ((_g134258134276_
                                                  (lambda (_g134259134273_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134259134273_))))
                                                 (_g134257134327_
                                                  (lambda (_g134259134279_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134259134279_))
                                                        (let ((_e134265134281_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134259134279_))))
                  (let ((_hd134264134284_
                         (let () (declare (not safe)) (##car _e134265134281_)))
                        (_tl134263134286_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134265134281_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl134263134286_))
                        (let ((_e134268134289_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl134263134286_))))
                          (let ((_hd134267134292_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e134268134289_)))
                                (_tl134266134294_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e134268134289_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd134267134292_))
                                (let ((_e134271134297_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd134267134292_))))
                                  (let ((_hd134270134300_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134271134297_)))
                                        (_tl134269134302_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134271134297_))))
                                    ((lambda (_L134305_ _L134306_ _L134307_)
                                       (for-each
                                        (lambda (_g134322134324_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g134322134324_
                                             'receiver:
                                             _L134307_
                                             'methods:
                                             _method-calls133298_
                                             'slots:
                                             _slot-refs133299_)))
                                        _L134305_))
                                     _tl134266134294_
                                     _tl134269134302_
                                     _hd134270134300_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134258134276_ _g134259134279_)))))
                        (let ()
                          (declare (not safe))
                          (_g134258134276_ _g134259134279_)))))
                (let ()
                  (declare (not safe))
                  (_g134258134276_ _g134259134279_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134257134327_ _L134234_))
                                          (let* ((_g134330134349_
                                                  (lambda (_g134331134346_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134331134346_))))
                                                 (_g134329134468_
                                                  (lambda (_g134331134352_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134331134352_))
                                                        (let ((_e134335134354_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134331134352_))))
                  (let ((_hd134334134357_
                         (let () (declare (not safe)) (##car _e134335134354_)))
                        (_tl134333134359_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134335134354_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134333134359_))
                        (let ((_g137435_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134333134359_
                                  '0))))
                          (begin
                            (let ((_g137436_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137435_)
                                         (##vector-length _g137435_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137436_ 2)))
                                  (error "Context expects 2 values"
                                         _g137436_)))
                            (let ((_target134336134362_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137435_ 0)))
                                  (_tl134338134364_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137435_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134338134364_))
                                  (letrec ((_loop134339134367_
                                            (lambda (_hd134337134370_
                                                     _clause134343134372_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134337134370_))
                                                  (let ((_e134340134375_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134337134370_))))
                                                    (let ((_lp-hd134341134378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134340134375_)))
                                                          (_lp-tl134342134380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134340134375_))))
                                                      (let ((__tmp137438
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134341134378_ _clause134343134372_))))
                (declare (not safe))
                (_loop134339134367_ _lp-tl134342134380_ __tmp137438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134344134383_
                                                         (reverse _clause134343134372_)))
                                                    ((lambda (_L134386_)
                                                       (for-each
                                                        (lambda (_clause134399_)
                                                          (let* ((_g134401134416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134402134413_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134402134413_))))
                         (_g134400134458_
                          (lambda (_g134402134419_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134402134419_))
                                (let ((_e134408134421_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134402134419_))))
                                  (let ((_hd134407134424_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134408134421_)))
                                        (_tl134406134426_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134408134421_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134407134424_))
                                        (let ((_e134411134429_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134407134424_))))
                                          (let ((_hd134410134432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134411134429_)))
                                                (_tl134409134434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134411134429_))))
                                            ((lambda (_L134437_
                                                      _L134438_
                                                      _L134439_)
                                               (for-each
                                                (lambda (_g134453134455_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134453134455_
                                                     'receiver:
                                                     _L134439_
                                                     'methods:
                                                     _method-calls133298_
                                                     'slots:
                                                     _slot-refs133299_)))
                                                _L134437_))
                                             _tl134406134426_
                                             _tl134409134434_
                                             _hd134410134432_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134401134416_ _g134402134419_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134401134416_ _g134402134419_))))))
                    (declare (not safe))
                    (_g134400134458_ _clause134399_)))
                (let ((__tmp137437
                       (lambda (_g134460134463_ _g134461134465_)
                         (let ()
                           (declare (not safe))
                           (cons _g134460134463_ _g134461134465_)))))
                  (declare (not safe))
                  (foldr1 __tmp137437 '() _L134386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134344134383_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134339134367_
                                       _target134336134362_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g134330134349_ _g134331134352_))))))
                        (let ()
                          (declare (not safe))
                          (_g134330134349_ _g134331134352_)))))
                (let ()
                  (declare (not safe))
                  (_g134330134349_ _g134331134352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134329134468_ _L134233_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?133302_))
                                              _stx133206_
                                              (let* ((_specializer-id134477_
                                                      (let* ((_id134471_
                                                              (let ((__tmp137439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L133279_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137439 '"::specialize")))
                     (_specializer-id134474_
                      (let ((__tmp137440
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx133206_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134471_ __tmp137440))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134474_))
                _specializer-id134474_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134479_
                                                      (let ((__tmp137441
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137441)))
                                                     (_$method-table134481_
                                                      (let ((__tmp137442
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137442)))
                                                     (_methods134483_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls133298_)))
                                                     (_$methods134487_
                                                      (map (lambda (_id134485_)
                                                             (let ((__tmp137443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134485_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137443)))
                   _methods134483_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137444_
                                                      (for-each
                                                       (lambda (_g134488134491_
                                                                _g134489134493_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls133298_
                                                            _g134488134491_
                                                            _g134489134493_)))
                                                       _methods134483_
                                                       _$methods134487_))
                                                     (_methods-bind134504_
                                                      (map (lambda (_g134496134499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134497134501_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind133208_
                        _$klass134479_
                        _$method-table134481_
                        _g134496134499_
                        _g134497134501_)))
                   _methods134483_
                   _$methods134487_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134506_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs133299_)))
                                                     (_$slots134510_
                                                      (map (lambda (_id134508_)
                                                             (let ((__tmp137445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134508_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137445)))
                   _slots134506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137446_
                                                      (for-each
                                                       (lambda (_g134511134514_
                                                                _g134512134516_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs133299_
                                                            _g134511134514_
                                                            _g134512134516_)))
                                                       _slots134506_
                                                       _$slots134510_))
                                                     (_slots-bind134527_
                                                      (map (lambda (_g134519134522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134520134524_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind133209_
                        _$klass134479_
                        _g134519134522_
                        _g134520134524_)))
                   _slots134506_
                   _$slots134510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134613_
                                                      (let* ((_g134529134547_
                                                              (lambda (_g134530134544_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134530134544_))))
                     (_g134528134610_
                      (lambda (_g134530134550_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134530134550_))
                            (let ((_e134536134552_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134530134550_))))
                              (let ((_hd134535134555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134536134552_)))
                                    (_tl134534134557_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134536134552_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134534134557_))
                                    (let ((_e134539134560_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134534134557_))))
                                      (let ((_hd134538134563_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134539134560_)))
                                            (_tl134537134565_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134539134560_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134538134563_))
                                            (let ((_e134542134568_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134538134563_))))
                                              (let ((_hd134541134571_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134542134568_)))
                                                    (_tl134540134573_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134542134568_))))
                                                ((lambda (_L134576_
                                                          _L134577_
                                                          _L134578_)
                                                   (let* ((_body134608_
                                                           (map (lambda (_g134603134605_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134603134605_
                             'receiver:
                             _L134578_
                             'klass:
                             _$klass134479_
                             'methods:
                             _method-calls133298_
                             'slots:
                             _slot-refs133299_)))
                        _L134576_))
                  (__tmp137447
                   (let ((__tmp137448
                          (let ((__tmp137449
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134578_ _L134577_))))
                            (declare (not safe))
                            (cons __tmp137449 _body134608_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137447
                                                      _L134234_)))
                                                 _tl134537134565_
                                                 _tl134540134573_
                                                 _hd134541134571_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134529134547_
                                               _g134530134550_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134529134547_ _g134530134550_)))))
                            (let ()
                              (declare (not safe))
                              (_g134529134547_ _g134530134550_))))))
                (declare (not safe))
                (_g134528134610_ _L134234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134770_
                                                      (let* ((_g134615134634_
                                                              (lambda (_g134616134631_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134616134631_))))
                     (_g134614134767_
                      (lambda (_g134616134637_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134616134637_))
                            (let ((_e134620134639_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134616134637_))))
                              (let ((_hd134619134642_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134620134639_)))
                                    (_tl134618134644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134620134639_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134618134644_))
                                    (let ((_g137450_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134618134644_
                                              '0))))
                                      (begin
                                        (let ((_g137451_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137450_)
                                                     (##vector-length
                                                      _g137450_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137451_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137451_)))
                                        (let ((_target134621134647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137450_ 0)))
                                              (_tl134623134649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137450_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134623134649_))
                                              (letrec ((_loop134624134652_
                                                        (lambda (_hd134622134655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134628134657_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134622134655_))
                      (let ((_e134625134660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134622134655_))))
                        (let ((_lp-hd134626134663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134625134660_)))
                              (_lp-tl134627134665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134625134660_))))
                          (let ((__tmp137455
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134626134663_
                                         _clause134628134657_))))
                            (declare (not safe))
                            (_loop134624134652_
                             _lp-tl134627134665_
                             __tmp137455))))
                      (let ((_clause134629134668_
                             (reverse _clause134628134657_)))
                        ((lambda (_L134671_)
                           (let* ((_clauses134765_
                                   (map (lambda (_clause134685_)
                                          (let* ((___stx136164136165_
                                                  _clause134685_)
                                                 (_g134688134703_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136164136165_)))))
                                            (let ((___kont136166136167_
                                                   (lambda (_L134731_
                                                            _L134732_
                                                            _L134733_)
                                                     (let* ((_body134753_
                                                             (map (lambda (_g134748134750_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134748134750_
                               'receiver:
                               _L134733_
                               'klass:
                               _$klass134479_
                               'methods:
                               _method-calls133298_
                               'slots:
                               _slot-refs133299_)))
                          _L134731_))
                    (__tmp137452
                     (let () (declare (not safe)) (cons _L134733_ _L134732_))))
               (declare (not safe))
               (cons __tmp137452 _body134753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136168136169_
                                                   (lambda () _clause134685_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx136164136165_))
                                                  (let ((_e134695134715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx136164136165_))))
                                                    (let ((_tl134693134720_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134695134715_)))
                                                          (_hd134694134718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134695134715_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134694134718_))
                                                          (let ((_e134698134723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134694134718_))))
                    (let ((_tl134696134728_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134698134723_)))
                          (_hd134697134726_
                           (let ()
                             (declare (not safe))
                             (##car _e134698134723_))))
                      (___kont136166136167_
                       _tl134693134720_
                       _tl134696134728_
                       _hd134697134726_)))
                  (___kont136168136169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136168136169_)))))
                                        (let ((__tmp137453
                                               (lambda (_g134757134760_
                                                        _g134758134762_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134757134760_
                                                         _g134758134762_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137453 '() _L134671_))))
                                  (__tmp137454
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134765_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137454 _L134233_)))
                         _clause134629134668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134624134652_
                                                   _target134621134647_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134615134634_
                                                 _g134616134637_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134615134634_ _g134616134637_)))))
                            (let ()
                              (declare (not safe))
                              (_g134615134634_ _g134616134637_))))))
                (declare (not safe))
                (_g134614134767_ _L134233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134772_
                                                      (let ((__tmp137456
                                                             (let ((__tmp137457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137459
                                   (let ((__tmp137460
                                          (let ((__tmp137462
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L134235_ '())))
                                                (__tmp137461
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134613_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137462 __tmp137461))))
                                     (declare (not safe))
                                     (cons __tmp137460 '())))
                                  (__tmp137458
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134770_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137459 __tmp137458))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137457))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137456 _stx133206_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134774_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl133210_
                                                         _$klass134479_
                                                         _$method-table134481_
                                                         _methods-bind134504_
                                                         _slots-bind134527_
                                                         _specializer-impl134772_))))
                                                (let ((__tmp137464
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L133279_)))
                                                      (__tmp137463
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134477_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137464
                                                   '" => "
                                                   __tmp137463))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def133211_
                                                   _L133279_
                                                   _specializer-id134477_
                                                   _specializer-impl134774_)))))
                                        _hd134166134228_
                                        _hd134163134220_
                                        _hd134160134212_)
                                       (let ()
                                         (declare (not safe))
                                         (_g134142134172_ _g134143134175_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134142134172_ _g134143134175_)))
                           (let ()
                             (declare (not safe))
                             (_g134142134172_ _g134143134175_)))
                       (let ()
                         (declare (not safe))
                         (_g134142134172_ _g134143134175_)))))
               (let () (declare (not safe)) (_g134142134172_ _g134143134175_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134142134172_
                                                      _g134143134175_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134142134172_
                                              _g134143134175_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134142134172_ _g134143134175_)))))
                           (let ()
                             (declare (not safe))
                             (_g134142134172_ _g134143134175_)))))
                   (let ()
                     (declare (not safe))
                     (_g134142134172_ _g134143134175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134142134172_
                                                      _g134143134175_))))))
                                       (declare (not safe))
                                       (_g134141134777_ _L133278_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L133278_))
                                         (let* ((_g134780134833_
                                                 (lambda (_g134781134830_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134781134830_))))
                                                (_g134779135964_
                                                 (lambda (_g134781134836_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134781134836_))
                                                       (let ((_e134789134838_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134781134836_))))
                 (let ((_hd134788134841_
                        (let () (declare (not safe)) (##car _e134789134838_)))
                       (_tl134787134843_
                        (let () (declare (not safe)) (##cdr _e134789134838_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134788134841_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134788134841_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134787134843_))
                               (let ((_e134792134846_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134787134843_))))
                                 (let ((_hd134791134849_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134792134846_)))
                                       (_tl134790134851_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134792134846_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134791134849_))
                                       (let ((_e134795134854_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134791134849_))))
                                         (let ((_hd134794134857_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134795134854_)))
                                               (_tl134793134859_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134795134854_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134794134857_))
                                               (let ((_e134798134862_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134794134857_))))
                                                 (let ((_hd134797134865_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134798134862_)))
                                                       (_tl134796134867_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134798134862_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134797134865_))
                                                       (let ((_e134801134870_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134797134865_))))
                 (let ((_hd134800134873_
                        (let () (declare (not safe)) (##car _e134801134870_)))
                       (_tl134799134875_
                        (let () (declare (not safe)) (##cdr _e134801134870_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134799134875_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134796134867_))
                           (let ((_e134804134878_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134796134867_))))
                             (let ((_hd134803134881_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134804134878_)))
                                   (_tl134802134883_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134804134878_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134803134881_))
                                   (let ((_e134807134886_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134803134881_))))
                                     (let ((_hd134806134889_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134807134886_)))
                                           (_tl134805134891_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134807134886_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134806134889_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134806134889_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134805134891_))
                                                   (let ((_e134810134894_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134805134891_))))
                                                     (let ((_hd134809134897_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134810134894_)))
                                                           (_tl134808134899_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134810134894_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134809134897_))
                                                           (let ((_e134813134902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134809134897_))))
                     (let ((_hd134812134905_
                            (let ()
                              (declare (not safe))
                              (##car _e134813134902_)))
                           (_tl134811134907_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134813134902_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134812134905_))
                           (let ((_e134816134910_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134812134905_))))
                             (let ((_hd134815134913_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134816134910_)))
                                   (_tl134814134915_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134816134910_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134815134913_))
                                   (let ((_e134819134918_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134815134913_))))
                                     (let ((_hd134818134921_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134819134918_)))
                                           (_tl134817134923_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134819134918_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134817134923_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134814134915_))
                                               (let ((_e134822134926_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134814134915_))))
                                                 (let ((_hd134821134929_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134822134926_)))
                                                       (_tl134820134931_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134822134926_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134820134931_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134811134907_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134808134899_))
                       (let ((_e134825134934_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134808134899_))))
                         (let ((_hd134824134937_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134825134934_)))
                               (_tl134823134939_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134825134934_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134823134939_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134802134883_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134793134859_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134790134851_))
                                           (let ((_e134828134942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134790134851_))))
                                             (let ((_hd134827134945_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134828134942_)))
                                                   (_tl134826134947_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134828134942_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134826134947_))
                                                   ((lambda (_L134950_
                                                             _L134951_
                                                             _L134952_
                                                             _L134953_
                                                             _L134954_)
                                                      (let* ((_g134993135055_
                                                              (lambda (_g134994135052_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134994135052_))))
                     (_g134992135961_
                      (lambda (_g134994135058_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134994135058_))
                            (let ((_e135002135060_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134994135058_))))
                              (let ((_hd135001135063_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135002135060_)))
                                    (_tl135000135065_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135002135060_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd135001135063_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd135001135063_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl135000135065_))
                                            (let ((_e135005135068_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl135000135065_))))
                                              (let ((_hd135004135071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135005135068_)))
                                                    (_tl135003135073_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135005135068_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135003135073_))
                                                    (let ((_e135008135076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135003135073_))))
                                                      (let ((_hd135007135079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135008135076_)))
                    (_tl135006135081_
                     (let () (declare (not safe)) (##cdr _e135008135076_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd135007135079_))
                    (let ((_e135011135084_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd135007135079_))))
                      (let ((_hd135010135087_
                             (let ()
                               (declare (not safe))
                               (##car _e135011135084_)))
                            (_tl135009135089_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135011135084_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd135010135087_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd135010135087_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl135009135089_))
                                    (let ((_e135014135092_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl135009135089_))))
                                      (let ((_hd135013135095_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135014135092_)))
                                            (_tl135012135097_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135014135092_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd135013135095_))
                                            (let ((_e135017135100_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd135013135095_))))
                                              (let ((_hd135016135103_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135017135100_)))
                                                    (_tl135015135105_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135017135100_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd135016135103_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd135016135103_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl135015135105_))
                                                            (let ((_e135020135108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl135015135105_))))
                      (let ((_hd135019135111_
                             (let ()
                               (declare (not safe))
                               (##car _e135020135108_)))
                            (_tl135018135113_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135020135108_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135018135113_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl135012135097_))
                                (let ((_e135023135116_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl135012135097_))))
                                  (let ((_hd135022135119_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135023135116_)))
                                        (_tl135021135121_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135023135116_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd135022135119_))
                                        (let ((_e135026135124_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd135022135119_))))
                                          (let ((_hd135025135127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135026135124_)))
                                                (_tl135024135129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135026135124_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd135025135127_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd135025135127_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl135024135129_))
                                                        (let ((_e135029135132_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl135024135129_))))
                  (let ((_hd135028135135_
                         (let () (declare (not safe)) (##car _e135029135132_)))
                        (_tl135027135137_
                         (let ()
                           (declare (not safe))
                           (##cdr _e135029135132_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl135027135137_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135021135121_))
                            (let ((_e135032135140_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135021135121_))))
                              (let ((_hd135031135143_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135032135140_)))
                                    (_tl135030135145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135032135140_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd135031135143_))
                                    (let ((_e135035135148_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd135031135143_))))
                                      (let ((_hd135034135151_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135035135148_)))
                                            (_tl135033135153_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135035135148_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd135034135151_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd135034135151_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135033135153_))
                                                    (let ((_e135038135156_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135033135153_))))
                                                      (let ((_hd135037135159_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135038135156_)))
                    (_tl135036135161_
                     (let () (declare (not safe)) (##cdr _e135038135156_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl135036135161_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl135030135145_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl135030135145_))
                                  '1)
                            (let ((_g137361_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135030135145_
                                      '1))))
                              (begin
                                (let ((_g137362_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137361_)
                                             (##vector-length _g137361_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137362_ 2)))
                                      (error "Context expects 2 values"
                                             _g137362_)))
                                (let ((_target135039135164_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137361_ 0)))
                                      (_tl135041135166_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137361_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl135041135166_))
                                      (let ((_e135050135169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl135041135166_))))
                                        (let ((_hd135049135172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e135050135169_)))
                                              (_tl135048135174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e135050135169_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl135048135174_))
                                              (letrec ((_loop135042135177_
                                                        (lambda (_hd135040135180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref135046135182_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd135040135180_))
                      (let ((_e135043135185_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd135040135180_))))
                        (let ((_lp-hd135044135188_
                               (let ()
                                 (declare (not safe))
                                 (##car _e135043135185_)))
                              (_lp-tl135045135190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e135043135185_))))
                          (let ((__tmp137434
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd135044135188_
                                         _kw-ref135046135182_))))
                            (declare (not safe))
                            (_loop135042135177_
                             _lp-tl135045135190_
                             __tmp137434))))
                      (let ((_kw-ref135047135193_
                             (reverse _kw-ref135046135182_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135006135081_))
                            ((lambda (_L135196_
                                      _L135197_
                                      _L135198_
                                      _L135199_
                                      _L135200_)
                               (let* ((_kw-count135251_
                                       (length (let ((__tmp137363
                                                      (lambda (_g135243135246_
                                                               _g135244135248_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g135243135246_
                                                                _g135244135248_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137363
                                                         '()
                                                         _L135197_))))
                                      (_self-index135253_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count135251_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134952_))
                                     (let* ((_g135256135270_
                                             (lambda (_g135257135267_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g135257135267_))))
                                            (_g135255135383_
                                             (lambda (_g135257135273_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g135257135273_))
                                                   (let ((_e135262135275_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g135257135273_))))
                                                     (let ((_hd135261135278_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e135262135275_)))
                                                           (_tl135260135280_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e135262135275_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135260135280_))
                                                           (let ((_e135265135283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135260135280_))))
                     (let ((_hd135264135286_
                            (let ()
                              (declare (not safe))
                              (##car _e135265135283_)))
                           (_tl135263135288_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135265135283_))))
                       ((lambda (_L135291_ _L135292_)
                          (let ((_self135308_
                                 (list-ref _L135292_ _self-index135253_)))
                            (for-each
                             (lambda (_g135309135311_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g135309135311_
                                  'receiver:
                                  _self135308_
                                  'methods:
                                  _method-calls133298_
                                  'slots:
                                  _slot-refs133299_)))
                             _L135291_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?133302_))
                                _stx133206_
                                (let* ((_specializer-id135320_
                                        (let* ((_id135314_
                                                (let ((__tmp137407
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L133279_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137407
                                                   '"::specialize")))
                                               (_specializer-id135317_
                                                (let ((__tmp137408
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx133206_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id135314_
                                                   __tmp137408))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id135317_))
                                          _specializer-id135317_))
                                       (_$klass135322_
                                        (let ((__tmp137409 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137409)))
                                       (_$method-table135324_
                                        (let ((__tmp137410
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137410)))
                                       (_methods135326_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls133298_)))
                                       (_$methods135330_
                                        (map (lambda (_id135328_)
                                               (let ((__tmp137411
                                                      (gensym _id135328_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137411)))
                                             _methods135326_))
                                       (_g137412_
                                        (for-each
                                         (lambda (_g135331135334_
                                                  _g135332135336_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls133298_
                                              _g135331135334_
                                              _g135332135336_)))
                                         _methods135326_
                                         _$methods135330_))
                                       (_methods-bind135347_
                                        (map (lambda (_g135339135342_
                                                      _g135340135344_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind133208_
                                                  _$klass135322_
                                                  _$method-table135324_
                                                  _g135339135342_
                                                  _g135340135344_)))
                                             _methods135326_
                                             _$methods135330_))
                                       (_slots135349_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs133299_)))
                                       (_$slots135353_
                                        (map (lambda (_id135351_)
                                               (let ((__tmp137413
                                                      (gensym _id135351_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137413)))
                                             _slots135349_))
                                       (_g137414_
                                        (for-each
                                         (lambda (_g135354135357_
                                                  _g135355135359_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs133299_
                                              _g135354135357_
                                              _g135355135359_)))
                                         _slots135349_
                                         _$slots135353_))
                                       (_slots-bind135370_
                                        (map (lambda (_g135362135365_
                                                      _g135363135367_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind133209_
                                                  _$klass135322_
                                                  _g135362135365_
                                                  _g135363135367_)))
                                             _slots135349_
                                             _$slots135353_))
                                       (_specializer-impl135378_
                                        (let* ((_specializer-body135376_
                                                (map (lambda (_g135371135373_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135371135373_
                                                          'receiver:
                                                          _self135308_
                                                          'klass:
                                                          _$klass135322_
                                                          'methods:
                                                          _method-calls133298_
                                                          'slots:
                                                          _slot-refs133299_)))
                                                     _L135291_))
                                               (__tmp137415
                                                (let ((__tmp137416
                                                       (let ((__tmp137418
                                                              (let ((__tmp137419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137431
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134954_ '())))
                                   (__tmp137420
                                    (let ((__tmp137421
                                           (let ((__tmp137422
                                                  (let ((__tmp137424
                                                         (let ((__tmp137425
                                                                (let ((__tmp137430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134953_ '())))
                              (__tmp137426
                               (let ((__tmp137427
                                      (let ((__tmp137428
                                             (let ((__tmp137429
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L135292_
                                                            _specializer-body135376_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137429))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137428
                                         _L134952_))))
                                 (declare (not safe))
                                 (cons __tmp137427 '()))))
                          (declare (not safe))
                          (cons __tmp137430 __tmp137426))))
                   (declare (not safe))
                   (cons __tmp137425 '())))
                (__tmp137423
                 (let () (declare (not safe)) (cons _L134951_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137424
                                                          __tmp137423))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137422))))
                                      (declare (not safe))
                                      (cons __tmp137421 '()))))
                               (declare (not safe))
                               (cons __tmp137431 __tmp137420))))
                        (declare (not safe))
                        (cons __tmp137419 '())))
                     (__tmp137417
                      (let () (declare (not safe)) (cons _L134950_ '()))))
                 (declare (not safe))
                 (cons __tmp137418 __tmp137417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137416))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137415
                                           _stx133206_)))
                                       (_specializer-impl135380_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl133210_
                                           _$klass135322_
                                           _$method-table135324_
                                           _methods-bind135347_
                                           _slots-bind135370_
                                           _specializer-impl135378_))))
                                  (let ((__tmp137433
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L133279_)))
                                        (__tmp137432
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id135320_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137433
                                     '" => "
                                     __tmp137432))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def133211_
                                     _L133279_
                                     _specializer-id135320_
                                     _specializer-impl135380_))))))
                        _tl135263135288_
                        _hd135264135286_)))
                   (let ()
                     (declare (not safe))
                     (_g135256135270_ _g135257135273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g135256135270_
                                                      _g135257135273_))))))
                                       (declare (not safe))
                                       (_g135255135383_ _L134952_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134952_))
                                         (let* ((_g135386135416_
                                                 (lambda (_g135387135413_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135387135413_))))
                                                (_g135385135958_
                                                 (lambda (_g135387135419_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135387135419_))
                                                       (let ((_e135393135421_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135387135419_))))
                 (let ((_hd135392135424_
                        (let () (declare (not safe)) (##car _e135393135421_)))
                       (_tl135391135426_
                        (let () (declare (not safe)) (##cdr _e135393135421_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135391135426_))
                       (let ((_e135396135429_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135391135426_))))
                         (let ((_hd135395135432_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135396135429_)))
                               (_tl135394135434_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135396135429_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135395135432_))
                               (let ((_e135399135437_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135395135432_))))
                                 (let ((_hd135398135440_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135399135437_)))
                                       (_tl135397135442_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135399135437_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135398135440_))
                                       (let ((_e135402135445_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135398135440_))))
                                         (let ((_hd135401135448_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135402135445_)))
                                               (_tl135400135450_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135402135445_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135401135448_))
                                               (let ((_e135405135453_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135401135448_))))
                                                 (let ((_hd135404135456_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135405135453_)))
                                                       (_tl135403135458_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135405135453_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135403135458_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135400135450_))
                                                           (let ((_e135408135461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135400135450_))))
                     (let ((_hd135407135464_
                            (let ()
                              (declare (not safe))
                              (##car _e135408135461_)))
                           (_tl135406135466_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135408135461_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135406135466_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135397135442_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135394135434_))
                                   (let ((_e135411135469_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135394135434_))))
                                     (let ((_hd135410135472_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135411135469_)))
                                           (_tl135409135474_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135411135469_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135409135474_))
                                           ((lambda (_L135477_
                                                     _L135478_
                                                     _L135479_)
                                              (let* ((_g135502135516_
                                                      (lambda (_g135503135513_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135503135513_))))
                                                     (_g135501135557_
                                                      (lambda (_g135503135519_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135503135519_))
                                                            (let ((_e135508135521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135503135519_))))
                      (let ((_hd135507135524_
                             (let ()
                               (declare (not safe))
                               (##car _e135508135521_)))
                            (_tl135506135526_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135508135521_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135506135526_))
                            (let ((_e135511135529_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135506135526_))))
                              (let ((_hd135510135532_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135511135529_)))
                                    (_tl135509135534_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135511135529_))))
                                ((lambda (_L135537_ _L135538_)
                                   (let ((_self135551_
                                          (list-ref
                                           _L135538_
                                           _self-index135253_)))
                                     (for-each
                                      (lambda (_g135552135554_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135552135554_
                                           'receiver:
                                           _self135551_
                                           'methods:
                                           _method-calls133298_
                                           'slots:
                                           _slot-refs133299_)))
                                      _L135537_)))
                                 _tl135509135534_
                                 _hd135510135532_)))
                            (let ()
                              (declare (not safe))
                              (_g135502135516_ _g135503135519_)))))
                    (let ()
                      (declare (not safe))
                      (_g135502135516_ _g135503135519_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135501135557_ _L135478_))
                                              (let* ((_g135560135579_
                                                      (lambda (_g135561135576_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135561135576_))))
                                                     (_g135559135684_
                                                      (lambda (_g135561135582_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135561135582_))
                                                            (let ((_e135565135584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135561135582_))))
                      (let ((_hd135564135587_
                             (let ()
                               (declare (not safe))
                               (##car _e135565135584_)))
                            (_tl135563135589_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135565135584_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135563135589_))
                            (let ((_g137364_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135563135589_
                                      '0))))
                              (begin
                                (let ((_g137365_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137364_)
                                             (##vector-length _g137364_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137365_ 2)))
                                      (error "Context expects 2 values"
                                             _g137365_)))
                                (let ((_target135566135592_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137364_ 0)))
                                      (_tl135568135594_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137364_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135568135594_))
                                      (letrec ((_loop135569135597_
                                                (lambda (_hd135567135600_
                                                         _clause135573135602_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135567135600_))
                                                      (let ((_e135570135605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135567135600_))))
                (let ((_lp-hd135571135608_
                       (let () (declare (not safe)) (##car _e135570135605_)))
                      (_lp-tl135572135610_
                       (let () (declare (not safe)) (##cdr _e135570135605_))))
                  (let ((__tmp137367
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135571135608_ _clause135573135602_))))
                    (declare (not safe))
                    (_loop135569135597_ _lp-tl135572135610_ __tmp137367))))
              (let ((_clause135574135613_ (reverse _clause135573135602_)))
                ((lambda (_L135616_)
                   (for-each
                    (lambda (_clause135629_)
                      (let* ((_g135631135642_
                              (lambda (_g135632135639_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135632135639_))))
                             (_g135630135674_
                              (lambda (_g135632135645_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135632135645_))
                                    (let ((_e135637135647_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135632135645_))))
                                      (let ((_hd135636135650_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135637135647_)))
                                            (_tl135635135652_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135637135647_))))
                                        ((lambda (_L135655_ _L135656_)
                                           (let ((_self135668_
                                                  (list-ref
                                                   _L135656_
                                                   _self-index135253_)))
                                             (for-each
                                              (lambda (_g135669135671_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135669135671_
                                                   'receiver:
                                                   _self135668_
                                                   'methods:
                                                   _method-calls133298_
                                                   'slots:
                                                   _slot-refs133299_)))
                                              _L135655_)))
                                         _tl135635135652_
                                         _hd135636135650_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135631135642_ _g135632135645_))))))
                        (declare (not safe))
                        (_g135630135674_ _clause135629_)))
                    (let ((__tmp137366
                           (lambda (_g135676135679_ _g135677135681_)
                             (let ()
                               (declare (not safe))
                               (cons _g135676135679_ _g135677135681_)))))
                      (declare (not safe))
                      (foldr1 __tmp137366 '() _L135616_))))
                 _clause135574135613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135569135597_
                                           _target135566135592_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135560135579_ _g135561135582_))))))
                            (let ()
                              (declare (not safe))
                              (_g135560135579_ _g135561135582_)))))
                    (let ()
                      (declare (not safe))
                      (_g135560135579_ _g135561135582_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135559135684_ _L135477_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133302_))
                                                  _stx133206_
                                                  (let* ((_specializer-id135693_
                                                          (let* ((_id135687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137368
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133279_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137368 '"::specialize")))
                         (_specializer-id135690_
                          (let ((__tmp137369
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133206_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135687_ __tmp137369))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135690_))
                    _specializer-id135690_))
                 (_$klass135695_
                  (let ((__tmp137370 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137370)))
                 (_$method-table135697_
                  (let ((__tmp137371 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137371)))
                 (_methods135699_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133298_)))
                 (_$methods135703_
                  (map (lambda (_id135701_)
                         (let ((__tmp137372 (gensym _id135701_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137372)))
                       _methods135699_))
                 (_g137373_
                  (for-each
                   (lambda (_g135704135707_ _g135705135709_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133298_
                        _g135704135707_
                        _g135705135709_)))
                   _methods135699_
                   _$methods135703_))
                 (_methods-bind135720_
                  (map (lambda (_g135712135715_ _g135713135717_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133208_
                            _$klass135695_
                            _$method-table135697_
                            _g135712135715_
                            _g135713135717_)))
                       _methods135699_
                       _$methods135703_))
                 (_slots135722_
                  (let () (declare (not safe)) (hash-keys _slot-refs133299_)))
                 (_$slots135726_
                  (map (lambda (_id135724_)
                         (let ((__tmp137374 (gensym _id135724_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137374)))
                       _slots135722_))
                 (_g137375_
                  (for-each
                   (lambda (_g135727135730_ _g135728135732_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133299_
                        _g135727135730_
                        _g135728135732_)))
                   _slots135722_
                   _$slots135726_))
                 (_slots-bind135743_
                  (map (lambda (_g135735135738_ _g135736135740_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133209_
                            _$klass135695_
                            _g135735135738_
                            _g135736135740_)))
                       _slots135722_
                       _$slots135726_))
                 (_specializer-lambda-expr135816_
                  (let* ((_g135745135759_
                          (lambda (_g135746135756_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135746135756_))))
                         (_g135744135813_
                          (lambda (_g135746135762_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135746135762_))
                                (let ((_e135751135764_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135746135762_))))
                                  (let ((_hd135750135767_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135751135764_)))
                                        (_tl135749135769_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135751135764_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135749135769_))
                                        (let ((_e135754135772_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135749135769_))))
                                          (let ((_hd135753135775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135754135772_)))
                                                (_tl135752135777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135754135772_))))
                                            ((lambda (_L135780_ _L135781_)
                                               (let* ((_self135804_
                                                       (list-ref
                                                        _L135781_
                                                        _self-index135253_))
                                                      (_body135810_
                                                       (map (lambda (_g135805135807_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135805135807_
                         'receiver:
                         _self135804_
                         'klass:
                         _$klass135695_
                         'methods:
                         _method-calls133298_
                         'slots:
                         _slot-refs133299_)))
                    _L135780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137376
                                                        (let ((__tmp137377
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135781_ _body135810_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137376
                                                    _L135478_))))
                                             _tl135752135777_
                                             _hd135753135775_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135745135759_ _g135746135762_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135745135759_ _g135746135762_))))))
                    (declare (not safe))
                    (_g135744135813_ _L135478_)))
                 (_specializer-case-lambda-expr135951_
                  (let* ((_g135818135837_
                          (lambda (_g135819135834_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135819135834_))))
                         (_g135817135948_
                          (lambda (_g135819135840_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135819135840_))
                                (let ((_e135823135842_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135819135840_))))
                                  (let ((_hd135822135845_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135823135842_)))
                                        (_tl135821135847_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135823135842_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135821135847_))
                                        (let ((_g137378_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135821135847_
                                                  '0))))
                                          (begin
                                            (let ((_g137379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137378_)
                                                         (##vector-length
                                                          _g137378_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137379_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137379_)))
                                            (let ((_target135824135850_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137378_
                                                      0)))
                                                  (_tl135826135852_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137378_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135826135852_))
                                                  (letrec ((_loop135827135855_
                                                            (lambda (_hd135825135858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135831135860_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135825135858_))
                          (let ((_e135828135863_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135825135858_))))
                            (let ((_lp-hd135829135866_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135828135863_)))
                                  (_lp-tl135830135868_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135828135863_))))
                              (let ((__tmp137382
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135829135866_
                                             _clause135831135860_))))
                                (declare (not safe))
                                (_loop135827135855_
                                 _lp-tl135830135868_
                                 __tmp137382))))
                          (let ((_clause135832135871_
                                 (reverse _clause135831135860_)))
                            ((lambda (_L135874_)
                               (let* ((_clauses135946_
                                       (map (lambda (_clause135888_)
                                              (let* ((_g135890135901_
                                                      (lambda (_g135891135898_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135891135898_))))
                                                     (_g135889135936_
                                                      (lambda (_g135891135904_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135891135904_))
                                                            (let ((_e135896135906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135891135904_))))
                      (let ((_hd135895135909_
                             (let ()
                               (declare (not safe))
                               (##car _e135896135906_)))
                            (_tl135894135911_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135896135906_))))
                        ((lambda (_L135914_ _L135915_)
                           (let* ((_self135927_
                                   (list-ref _L135915_ _self-index135253_))
                                  (_body135933_
                                   (map (lambda (_g135928135930_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135928135930_
                                             'receiver:
                                             _self135927_
                                             'klass:
                                             _$klass135695_
                                             'methods:
                                             _method-calls133298_
                                             'slots:
                                             _slot-refs133299_)))
                                        _L135914_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135915_ _body135933_))))
                         _tl135894135911_
                         _hd135895135909_)))
                    (let ()
                      (declare (not safe))
                      (_g135890135901_ _g135891135904_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135889135936_
                                                 _clause135888_)))
                                            (let ((__tmp137380
                                                   (lambda (_g135938135941_
                                                            _g135939135943_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135938135941_
                                                             _g135939135943_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137380
                                                      '()
                                                      _L135874_))))
                                      (__tmp137381
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135946_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137381
                                  _L135477_)))
                             _clause135832135871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135827135855_
                                                       _target135824135850_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135818135837_
                                                     _g135819135840_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135818135837_ _g135819135840_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135818135837_ _g135819135840_))))))
                    (declare (not safe))
                    (_g135817135948_ _L135477_)))
                 (_specializer-impl135953_
                  (let ((__tmp137383
                         (let ((__tmp137384
                                (let ((__tmp137386
                                       (let ((__tmp137387
                                              (let ((__tmp137404
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134954_ '())))
                                                    (__tmp137388
                                                     (let ((__tmp137389
                                                            (let ((__tmp137390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137392
                                  (let ((__tmp137393
                                         (let ((__tmp137403
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134953_ '())))
                                               (__tmp137394
                                                (let ((__tmp137395
                                                       (let ((__tmp137396
                                                              (let ((__tmp137397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137399
                                    (let ((__tmp137400
                                           (let ((__tmp137402
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135479_ '())))
                                                 (__tmp137401
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135816_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137402 __tmp137401))))
                                      (declare (not safe))
                                      (cons __tmp137400 '())))
                                   (__tmp137398
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135951_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137399 __tmp137398))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137397))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137396 _stx133206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137395 '()))))
                                           (declare (not safe))
                                           (cons __tmp137403 __tmp137394))))
                                    (declare (not safe))
                                    (cons __tmp137393 '())))
                                 (__tmp137391
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134951_ '()))))
                             (declare (not safe))
                             (cons __tmp137392 __tmp137391))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137390))))
               (declare (not safe))
               (cons __tmp137389 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137404
                                                      __tmp137388))))
                                         (declare (not safe))
                                         (cons __tmp137387 '())))
                                      (__tmp137385
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134950_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137386 __tmp137385))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137384))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137383 _stx133206_)))
                 (_specializer-impl135955_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133210_
                     _$klass135695_
                     _$method-table135697_
                     _methods-bind135720_
                     _slots-bind135743_
                     _specializer-impl135953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137406
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133279_)))
                                                          (__tmp137405
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135693_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137406
                                                       '" => "
                                                       __tmp137405))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133211_
                                                       _L133279_
                                                       _specializer-id135693_
                                                       _specializer-impl135955_)))))
                                            _hd135410135472_
                                            _hd135407135464_
                                            _hd135404135456_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135386135416_
                                              _g135387135419_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135386135416_ _g135387135419_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135386135416_ _g135387135419_)))
                           (let ()
                             (declare (not safe))
                             (_g135386135416_ _g135387135419_)))))
                   (let ()
                     (declare (not safe))
                     (_g135386135416_ _g135387135419_)))
               (let ()
                 (declare (not safe))
                 (_g135386135416_ _g135387135419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135386135416_
                                                  _g135387135419_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135386135416_ _g135387135419_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135386135416_ _g135387135419_)))))
                       (let ()
                         (declare (not safe))
                         (_g135386135416_ _g135387135419_)))))
               (let ()
                 (declare (not safe))
                 (_g135386135416_ _g135387135419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135385135958_ _L134952_))
                                         _stx133206_))))
                             _hd135049135172_
                             _kw-ref135047135193_
                             _hd135037135159_
                             _hd135028135135_
                             _hd135019135111_)
                            (let ()
                              (declare (not safe))
                              (_g134993135055_ _g134994135058_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop135042135177_
                                                   _target135039135164_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134993135055_
                                                 _g134994135058_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134993135055_ _g134994135058_))))))
                            (let ()
                              (declare (not safe))
                              (_g134993135055_ _g134994135058_)))
                        (let ()
                          (declare (not safe))
                          (_g134993135055_ _g134994135058_)))
                    (let ()
                      (declare (not safe))
                      (_g134993135055_ _g134994135058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134993135055_
                                                       _g134994135058_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134993135055_
                                                   _g134994135058_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134993135055_
                                               _g134994135058_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134993135055_ _g134994135058_)))))
                            (let ()
                              (declare (not safe))
                              (_g134993135055_ _g134994135058_)))
                        (let ()
                          (declare (not safe))
                          (_g134993135055_ _g134994135058_)))))
                (let ()
                  (declare (not safe))
                  (_g134993135055_ _g134994135058_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134993135055_
                                                       _g134994135058_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134993135055_
                                                   _g134994135058_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134993135055_ _g134994135058_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134993135055_ _g134994135058_)))
                            (let ()
                              (declare (not safe))
                              (_g134993135055_ _g134994135058_)))))
                    (let ()
                      (declare (not safe))
                      (_g134993135055_ _g134994135058_)))
                (let ()
                  (declare (not safe))
                  (_g134993135055_ _g134994135058_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134993135055_
                                                       _g134994135058_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134993135055_
                                               _g134994135058_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134993135055_ _g134994135058_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134993135055_ _g134994135058_)))
                            (let ()
                              (declare (not safe))
                              (_g134993135055_ _g134994135058_)))))
                    (let ()
                      (declare (not safe))
                      (_g134993135055_ _g134994135058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134993135055_
                                                       _g134994135058_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134993135055_
                                               _g134994135058_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134993135055_ _g134994135058_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134993135055_ _g134994135058_)))))
                            (let ()
                              (declare (not safe))
                              (_g134993135055_ _g134994135058_))))))
                (declare (not safe))
                (_g134992135961_ _L134951_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134827134945_
                                                    _hd134824134937_
                                                    _hd134821134929_
                                                    _hd134818134921_
                                                    _hd134800134873_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134780134833_
                                                      _g134781134836_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134780134833_
                                              _g134781134836_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134780134833_ _g134781134836_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134780134833_ _g134781134836_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134780134833_ _g134781134836_)))))
                       (let ()
                         (declare (not safe))
                         (_g134780134833_ _g134781134836_)))
                   (let ()
                     (declare (not safe))
                     (_g134780134833_ _g134781134836_)))
               (let ()
                 (declare (not safe))
                 (_g134780134833_ _g134781134836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134780134833_
                                                  _g134781134836_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134780134833_
                                              _g134781134836_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134780134833_ _g134781134836_)))))
                           (let ()
                             (declare (not safe))
                             (_g134780134833_ _g134781134836_)))))
                   (let ()
                     (declare (not safe))
                     (_g134780134833_ _g134781134836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134780134833_
                                                      _g134781134836_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134780134833_
                                                  _g134781134836_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134780134833_
                                              _g134781134836_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134780134833_ _g134781134836_)))))
                           (let ()
                             (declare (not safe))
                             (_g134780134833_ _g134781134836_)))
                       (let ()
                         (declare (not safe))
                         (_g134780134833_ _g134781134836_)))))
               (let ()
                 (declare (not safe))
                 (_g134780134833_ _g134781134836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134780134833_
                                                  _g134781134836_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134780134833_ _g134781134836_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134780134833_ _g134781134836_)))
                           (let ()
                             (declare (not safe))
                             (_g134780134833_ _g134781134836_)))
                       (let ()
                         (declare (not safe))
                         (_g134780134833_ _g134781134836_)))))
               (let ()
                 (declare (not safe))
                 (_g134780134833_ _g134781134836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134779135964_ _L133278_))
                                         _stx133206_))))))))
                  (___kont136188136189_ (lambda () _stx133206_)))
              (let ((___match136217136218_
                     (lambda (_e133220133246_
                              _hd133219133249_
                              _tl133218133251_
                              _e133223133254_
                              _hd133222133257_
                              _tl133221133259_
                              _e133226133262_
                              _hd133225133265_
                              _tl133224133267_
                              _e133229133270_
                              _hd133228133273_
                              _tl133227133275_)
                       (let ((_L133278_ _hd133228133273_)
                             (_L133279_ _hd133225133265_))
                         (if (let ((__tmp137495
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L133279_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137495))
                             (___kont136186136187_ _L133278_ _L133279_)
                             (___kont136188136189_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136184136185_))
                    (let ((_e133220133246_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136184136185_))))
                      (let ((_tl133218133251_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133220133246_)))
                            (_hd133219133249_
                             (let ()
                               (declare (not safe))
                               (##car _e133220133246_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133218133251_))
                            (let ((_e133223133254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133218133251_))))
                              (let ((_tl133221133259_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133223133254_)))
                                    (_hd133222133257_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133223133254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133222133257_))
                                    (let ((_e133226133262_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133222133257_))))
                                      (let ((_tl133224133267_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133226133262_)))
                                            (_hd133225133265_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133226133262_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl133224133267_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl133221133259_))
                                                (let ((_e133229133270_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl133221133259_))))
                                                  (let ((_tl133227133275_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e133229133270_)))
                                                        (_hd133228133273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e133229133270_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl133227133275_))
                                                        (___match136217136218_
                                                         _e133220133246_
                                                         _hd133219133249_
                                                         _tl133218133251_
                                                         _e133223133254_
                                                         _hd133222133257_
                                                         _tl133221133259_
                                                         _e133226133262_
                                                         _hd133225133265_
                                                         _tl133224133267_
                                                         _e133229133270_
                                                         _hd133228133273_
                                                         _tl133227133275_)
                                                        (___kont136188136189_))))
                                                (___kont136188136189_))
                                            (___kont136188136189_))))
                                    (___kont136188136189_))))
                            (___kont136188136189_))))
                    (___kont136188136189_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self132166_ _stx132167_)
        (let* ((___stx136220136221_ _stx132167_)
               (_g132175132397_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx136220136221_)))))
          (let ((___kont136222136223_
                 (lambda (_L133154_ _L133155_ _L133156_ _L133157_)
                   (let ((__tmp137497
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132166_ 'methods)))
                         (__tmp137496
                          (let () (declare (not safe)) (gx#stx-e _L133155_))))
                     (declare (not safe))
                     (hash-put! __tmp137497 __tmp137496 '#t))
                   (for-each
                    (lambda (_g133190133192_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132166_ _g133190133192_)))
                    (let ((__tmp137498
                           (lambda (_g133194133197_ _g133195133199_)
                             (let ()
                               (declare (not safe))
                               (cons _g133194133197_ _g133195133199_)))))
                      (declare (not safe))
                      (foldr1 __tmp137498 '() _L133154_)))))
                (___kont136226136227_
                 (lambda (_L132989_ _L132990_ _L132991_ _L132992_ _L132993_)
                   (let ((__tmp137500
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132166_ 'methods)))
                         (__tmp137499
                          (let () (declare (not safe)) (gx#stx-e _L132990_))))
                     (declare (not safe))
                     (hash-put! __tmp137500 __tmp137499 '#t))
                   (for-each
                    (lambda (_g133033133035_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132166_ _g133033133035_)))
                    (let ((__tmp137501
                           (lambda (_g133037133040_ _g133038133042_)
                             (let ()
                               (declare (not safe))
                               (cons _g133037133040_ _g133038133042_)))))
                      (declare (not safe))
                      (foldr1 __tmp137501 '() _L132989_)))))
                (___kont136230136231_
                 (lambda (_L132822_ _L132823_ _L132824_)
                   (let ((__tmp137503
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132166_ 'slots)))
                         (__tmp137502
                          (let () (declare (not safe)) (gx#stx-e _L132822_))))
                     (declare (not safe))
                     (hash-put! __tmp137503 __tmp137502 '#t))))
                (___kont136232136233_
                 (lambda (_L132699_ _L132700_ _L132701_ _L132702_)
                   (let ((__tmp137505
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132166_ 'slots)))
                         (__tmp137504
                          (let () (declare (not safe)) (gx#stx-e _L132700_))))
                     (declare (not safe))
                     (hash-put! __tmp137505 __tmp137504 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self132166_ _L132699_))))
                (___kont136234136235_
                 (lambda (_L132573_ _L132574_)
                   (let* ((_accessor132596_
                           (let ((__tmp137506
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132574_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137506)))
                          (_klass132598_
                           (let ((__tmp137507
                                  (##structure-ref
                                   _accessor132596_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132167_
                              __tmp137507)))
                          (_slot132600_
                           (##structure-ref
                            _accessor132596_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137510
                                     (##structure-ref
                                      _accessor132596_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137510))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132598_
                                     _slot132600_))
                                  (##structure-ref
                                   _klass132598_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137509
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132166_ 'slots)))
                               (__tmp137508
                                (##structure-ref
                                 _accessor132596_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137509 __tmp137508 '#t))))))
                (___kont136236136237_
                 (lambda (_L132473_ _L132474_ _L132475_)
                   (let* ((_mutator132502_
                           (let ((__tmp137511
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132475_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137511)))
                          (_klass132504_
                           (let ((__tmp137512
                                  (##structure-ref
                                   _mutator132502_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132167_
                              __tmp137512)))
                          (_slot132506_
                           (##structure-ref
                            _mutator132502_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137514
                                     (##structure-ref
                                      _mutator132502_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137514))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132504_
                                     _slot132506_))
                                  (##structure-ref
                                   _klass132504_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137513
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132166_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137513 _slot132506_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self132166_ _L132473_)))))
                (___kont136238136239_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self132166_ _stx132167_)))))
            (let* ((___match136719136720_
                    (lambda (_e132371132409_
                             _hd132370132412_
                             _tl132369132414_
                             _e132374132417_
                             _hd132373132420_
                             _tl132372132422_
                             _e132377132425_
                             _hd132376132428_
                             _tl132375132430_
                             _e132380132433_
                             _hd132379132436_
                             _tl132378132438_
                             _e132383132441_
                             _hd132382132444_
                             _tl132381132446_
                             _e132386132449_
                             _hd132385132452_
                             _tl132384132454_
                             _e132389132457_
                             _hd132388132460_
                             _tl132387132462_
                             _e132392132465_
                             _hd132391132468_
                             _tl132390132470_)
                      (let ((_L132473_ _hd132391132468_)
                            (_L132474_ _hd132388132460_)
                            (_L132475_ _hd132379132436_))
                        (if (and (let ((__tmp137516
                                        (let ((__tmp137517
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132475_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137517))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137516
                                    'gxc#!mutator::t))
                                 (let ((__tmp137515
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132166_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132474_
                                    __tmp137515)))
                            (___kont136236136237_
                             _L132473_
                             _L132474_
                             _L132475_)
                            (___kont136238136239_)))))
                   (___match136717136718_
                    (lambda (_e132371132409_
                             _hd132370132412_
                             _tl132369132414_
                             _e132374132417_
                             _hd132373132420_
                             _tl132372132422_
                             _e132377132425_
                             _hd132376132428_
                             _tl132375132430_
                             _e132380132433_
                             _hd132379132436_
                             _tl132378132438_
                             _e132383132441_
                             _hd132382132444_
                             _tl132381132446_
                             _e132386132449_
                             _hd132385132452_
                             _tl132384132454_
                             _e132389132457_
                             _hd132388132460_
                             _tl132387132462_
                             _e132392132465_
                             _hd132391132468_
                             _tl132390132470_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132390132470_))
                          (___match136719136720_
                           _e132371132409_
                           _hd132370132412_
                           _tl132369132414_
                           _e132374132417_
                           _hd132373132420_
                           _tl132372132422_
                           _e132377132425_
                           _hd132376132428_
                           _tl132375132430_
                           _e132380132433_
                           _hd132379132436_
                           _tl132378132438_
                           _e132383132441_
                           _hd132382132444_
                           _tl132381132446_
                           _e132386132449_
                           _hd132385132452_
                           _tl132384132454_
                           _e132389132457_
                           _hd132388132460_
                           _tl132387132462_
                           _e132392132465_
                           _hd132391132468_
                           _tl132390132470_)
                          (___kont136238136239_))))
                   (___match136711136712_
                    (lambda (_e132371132409_
                             _hd132370132412_
                             _tl132369132414_
                             _e132374132417_
                             _hd132373132420_
                             _tl132372132422_
                             _e132377132425_
                             _hd132376132428_
                             _tl132375132430_
                             _e132380132433_
                             _hd132379132436_
                             _tl132378132438_
                             _e132383132441_
                             _hd132382132444_
                             _tl132381132446_
                             _e132386132449_
                             _hd132385132452_
                             _tl132384132454_
                             _e132389132457_
                             _hd132388132460_
                             _tl132387132462_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132381132446_))
                          (let ((_e132392132465_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132381132446_))))
                            (let ((_tl132390132470_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132392132465_)))
                                  (_hd132391132468_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132392132465_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132390132470_))
                                  (___match136719136720_
                                   _e132371132409_
                                   _hd132370132412_
                                   _tl132369132414_
                                   _e132374132417_
                                   _hd132373132420_
                                   _tl132372132422_
                                   _e132377132425_
                                   _hd132376132428_
                                   _tl132375132430_
                                   _e132380132433_
                                   _hd132379132436_
                                   _tl132378132438_
                                   _e132383132441_
                                   _hd132382132444_
                                   _tl132381132446_
                                   _e132386132449_
                                   _hd132385132452_
                                   _tl132384132454_
                                   _e132389132457_
                                   _hd132388132460_
                                   _tl132387132462_
                                   _e132392132465_
                                   _hd132391132468_
                                   _tl132390132470_)
                                  (___kont136238136239_))))
                          (___kont136238136239_))))
                   (___match136657136658_
                    (lambda (_e132347132517_
                             _hd132346132520_
                             _tl132345132522_
                             _e132350132525_
                             _hd132349132528_
                             _tl132348132530_
                             _e132353132533_
                             _hd132352132536_
                             _tl132351132538_
                             _e132356132541_
                             _hd132355132544_
                             _tl132354132546_
                             _e132359132549_
                             _hd132358132552_
                             _tl132357132554_
                             _e132362132557_
                             _hd132361132560_
                             _tl132360132562_
                             _e132365132565_
                             _hd132364132568_
                             _tl132363132570_)
                      (let ((_L132573_ _hd132364132568_)
                            (_L132574_ _hd132355132544_))
                        (if (and (let ((__tmp137519
                                        (let ((__tmp137520
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132574_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137520))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137519
                                    'gxc#!accessor::t))
                                 (let ((__tmp137518
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132166_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132573_
                                    __tmp137518)))
                            (___kont136234136235_ _L132573_ _L132574_)
                            (___kont136238136239_)))))
                   (___match136655136656_
                    (lambda (_e132347132517_
                             _hd132346132520_
                             _tl132345132522_
                             _e132350132525_
                             _hd132349132528_
                             _tl132348132530_
                             _e132353132533_
                             _hd132352132536_
                             _tl132351132538_
                             _e132356132541_
                             _hd132355132544_
                             _tl132354132546_
                             _e132359132549_
                             _hd132358132552_
                             _tl132357132554_
                             _e132362132557_
                             _hd132361132560_
                             _tl132360132562_
                             _e132365132565_
                             _hd132364132568_
                             _tl132363132570_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132357132554_))
                          (___match136657136658_
                           _e132347132517_
                           _hd132346132520_
                           _tl132345132522_
                           _e132350132525_
                           _hd132349132528_
                           _tl132348132530_
                           _e132353132533_
                           _hd132352132536_
                           _tl132351132538_
                           _e132356132541_
                           _hd132355132544_
                           _tl132354132546_
                           _e132359132549_
                           _hd132358132552_
                           _tl132357132554_
                           _e132362132557_
                           _hd132361132560_
                           _tl132360132562_
                           _e132365132565_
                           _hd132364132568_
                           _tl132363132570_)
                          (___match136711136712_
                           _e132347132517_
                           _hd132346132520_
                           _tl132345132522_
                           _e132350132525_
                           _hd132349132528_
                           _tl132348132530_
                           _e132353132533_
                           _hd132352132536_
                           _tl132351132538_
                           _e132356132541_
                           _hd132355132544_
                           _tl132354132546_
                           _e132359132549_
                           _hd132358132552_
                           _tl132357132554_
                           _e132362132557_
                           _hd132361132560_
                           _tl132360132562_
                           _e132365132565_
                           _hd132364132568_
                           _tl132363132570_))))
                   (___match136601136602_
                    (lambda (_e132312132611_
                             _hd132311132614_
                             _tl132310132616_
                             _e132315132619_
                             _hd132314132622_
                             _tl132313132624_
                             _e132318132627_
                             _hd132317132630_
                             _tl132316132632_
                             _e132321132635_
                             _hd132320132638_
                             _tl132319132640_
                             _e132324132643_
                             _hd132323132646_
                             _tl132322132648_
                             _e132327132651_
                             _hd132326132654_
                             _tl132325132656_
                             _e132330132659_
                             _hd132329132662_
                             _tl132328132664_
                             _e132333132667_
                             _hd132332132670_
                             _tl132331132672_
                             _e132336132675_
                             _hd132335132678_
                             _tl132334132680_
                             _e132339132683_
                             _hd132338132686_
                             _tl132337132688_
                             _e132342132691_
                             _hd132341132694_
                             _tl132340132696_)
                      (let ((_L132699_ _hd132341132694_)
                            (_L132700_ _hd132338132686_)
                            (_L132701_ _hd132329132662_)
                            (_L132702_ _hd132320132638_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132702_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132702_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137521
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132166_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132701_
                                    __tmp137521)))
                            (___kont136232136233_
                             _L132699_
                             _L132700_
                             _L132701_
                             _L132702_)
                            (___kont136238136239_)))))
                   (___match136593136594_
                    (lambda (_e132312132611_
                             _hd132311132614_
                             _tl132310132616_
                             _e132315132619_
                             _hd132314132622_
                             _tl132313132624_
                             _e132318132627_
                             _hd132317132630_
                             _tl132316132632_
                             _e132321132635_
                             _hd132320132638_
                             _tl132319132640_
                             _e132324132643_
                             _hd132323132646_
                             _tl132322132648_
                             _e132327132651_
                             _hd132326132654_
                             _tl132325132656_
                             _e132330132659_
                             _hd132329132662_
                             _tl132328132664_
                             _e132333132667_
                             _hd132332132670_
                             _tl132331132672_
                             _e132336132675_
                             _hd132335132678_
                             _tl132334132680_
                             _e132339132683_
                             _hd132338132686_
                             _tl132337132688_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132331132672_))
                          (let ((_e132342132691_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132331132672_))))
                            (let ((_tl132340132696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132342132691_)))
                                  (_hd132341132694_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132342132691_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132340132696_))
                                  (___match136601136602_
                                   _e132312132611_
                                   _hd132311132614_
                                   _tl132310132616_
                                   _e132315132619_
                                   _hd132314132622_
                                   _tl132313132624_
                                   _e132318132627_
                                   _hd132317132630_
                                   _tl132316132632_
                                   _e132321132635_
                                   _hd132320132638_
                                   _tl132319132640_
                                   _e132324132643_
                                   _hd132323132646_
                                   _tl132322132648_
                                   _e132327132651_
                                   _hd132326132654_
                                   _tl132325132656_
                                   _e132330132659_
                                   _hd132329132662_
                                   _tl132328132664_
                                   _e132333132667_
                                   _hd132332132670_
                                   _tl132331132672_
                                   _e132336132675_
                                   _hd132335132678_
                                   _tl132334132680_
                                   _e132339132683_
                                   _hd132338132686_
                                   _tl132337132688_
                                   _e132342132691_
                                   _hd132341132694_
                                   _tl132340132696_)
                                  (___kont136238136239_))))
                          (___match136717136718_
                           _e132312132611_
                           _hd132311132614_
                           _tl132310132616_
                           _e132315132619_
                           _hd132314132622_
                           _tl132313132624_
                           _e132318132627_
                           _hd132317132630_
                           _tl132316132632_
                           _e132321132635_
                           _hd132320132638_
                           _tl132319132640_
                           _e132324132643_
                           _hd132323132646_
                           _tl132322132648_
                           _e132327132651_
                           _hd132326132654_
                           _tl132325132656_
                           _e132330132659_
                           _hd132329132662_
                           _tl132328132664_
                           _e132333132667_
                           _hd132332132670_
                           _tl132331132672_))))
                   (___match136515136516_
                    (lambda (_e132278132742_
                             _hd132277132745_
                             _tl132276132747_
                             _e132281132750_
                             _hd132280132753_
                             _tl132279132755_
                             _e132284132758_
                             _hd132283132761_
                             _tl132282132763_
                             _e132287132766_
                             _hd132286132769_
                             _tl132285132771_
                             _e132290132774_
                             _hd132289132777_
                             _tl132288132779_
                             _e132293132782_
                             _hd132292132785_
                             _tl132291132787_
                             _e132296132790_
                             _hd132295132793_
                             _tl132294132795_
                             _e132299132798_
                             _hd132298132801_
                             _tl132297132803_
                             _e132302132806_
                             _hd132301132809_
                             _tl132300132811_
                             _e132305132814_
                             _hd132304132817_
                             _tl132303132819_)
                      (let ((_L132822_ _hd132304132817_)
                            (_L132823_ _hd132295132793_)
                            (_L132824_ _hd132286132769_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132824_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132824_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137522
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132166_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132823_
                                    __tmp137522)))
                            (___kont136230136231_
                             _L132822_
                             _L132823_
                             _L132824_)
                            (___match136719136720_
                             _e132278132742_
                             _hd132277132745_
                             _tl132276132747_
                             _e132281132750_
                             _hd132280132753_
                             _tl132279132755_
                             _e132284132758_
                             _hd132283132761_
                             _tl132282132763_
                             _e132287132766_
                             _hd132286132769_
                             _tl132285132771_
                             _e132290132774_
                             _hd132289132777_
                             _tl132288132779_
                             _e132293132782_
                             _hd132292132785_
                             _tl132291132787_
                             _e132296132790_
                             _hd132295132793_
                             _tl132294132795_
                             _e132299132798_
                             _hd132298132801_
                             _tl132297132803_)))))
                   (___match136513136514_
                    (lambda (_e132278132742_
                             _hd132277132745_
                             _tl132276132747_
                             _e132281132750_
                             _hd132280132753_
                             _tl132279132755_
                             _e132284132758_
                             _hd132283132761_
                             _tl132282132763_
                             _e132287132766_
                             _hd132286132769_
                             _tl132285132771_
                             _e132290132774_
                             _hd132289132777_
                             _tl132288132779_
                             _e132293132782_
                             _hd132292132785_
                             _tl132291132787_
                             _e132296132790_
                             _hd132295132793_
                             _tl132294132795_
                             _e132299132798_
                             _hd132298132801_
                             _tl132297132803_
                             _e132302132806_
                             _hd132301132809_
                             _tl132300132811_
                             _e132305132814_
                             _hd132304132817_
                             _tl132303132819_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132297132803_))
                          (___match136515136516_
                           _e132278132742_
                           _hd132277132745_
                           _tl132276132747_
                           _e132281132750_
                           _hd132280132753_
                           _tl132279132755_
                           _e132284132758_
                           _hd132283132761_
                           _tl132282132763_
                           _e132287132766_
                           _hd132286132769_
                           _tl132285132771_
                           _e132290132774_
                           _hd132289132777_
                           _tl132288132779_
                           _e132293132782_
                           _hd132292132785_
                           _tl132291132787_
                           _e132296132790_
                           _hd132295132793_
                           _tl132294132795_
                           _e132299132798_
                           _hd132298132801_
                           _tl132297132803_
                           _e132302132806_
                           _hd132301132809_
                           _tl132300132811_
                           _e132305132814_
                           _hd132304132817_
                           _tl132303132819_)
                          (___match136593136594_
                           _e132278132742_
                           _hd132277132745_
                           _tl132276132747_
                           _e132281132750_
                           _hd132280132753_
                           _tl132279132755_
                           _e132284132758_
                           _hd132283132761_
                           _tl132282132763_
                           _e132287132766_
                           _hd132286132769_
                           _tl132285132771_
                           _e132290132774_
                           _hd132289132777_
                           _tl132288132779_
                           _e132293132782_
                           _hd132292132785_
                           _tl132291132787_
                           _e132296132790_
                           _hd132295132793_
                           _tl132294132795_
                           _e132299132798_
                           _hd132298132801_
                           _tl132297132803_
                           _e132302132806_
                           _hd132301132809_
                           _tl132300132811_
                           _e132305132814_
                           _hd132304132817_
                           _tl132303132819_))))
                   (___match136503136504_
                    (lambda (_e132278132742_
                             _hd132277132745_
                             _tl132276132747_
                             _e132281132750_
                             _hd132280132753_
                             _tl132279132755_
                             _e132284132758_
                             _hd132283132761_
                             _tl132282132763_
                             _e132287132766_
                             _hd132286132769_
                             _tl132285132771_
                             _e132290132774_
                             _hd132289132777_
                             _tl132288132779_
                             _e132293132782_
                             _hd132292132785_
                             _tl132291132787_
                             _e132296132790_
                             _hd132295132793_
                             _tl132294132795_
                             _e132299132798_
                             _hd132298132801_
                             _tl132297132803_
                             _e132302132806_
                             _hd132301132809_
                             _tl132300132811_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd132301132809_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132300132811_))
                              (let ((_e132305132814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132300132811_))))
                                (let ((_tl132303132819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132305132814_)))
                                      (_hd132304132817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132305132814_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132303132819_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl132297132803_))
                                          (___match136515136516_
                                           _e132278132742_
                                           _hd132277132745_
                                           _tl132276132747_
                                           _e132281132750_
                                           _hd132280132753_
                                           _tl132279132755_
                                           _e132284132758_
                                           _hd132283132761_
                                           _tl132282132763_
                                           _e132287132766_
                                           _hd132286132769_
                                           _tl132285132771_
                                           _e132290132774_
                                           _hd132289132777_
                                           _tl132288132779_
                                           _e132293132782_
                                           _hd132292132785_
                                           _tl132291132787_
                                           _e132296132790_
                                           _hd132295132793_
                                           _tl132294132795_
                                           _e132299132798_
                                           _hd132298132801_
                                           _tl132297132803_
                                           _e132302132806_
                                           _hd132301132809_
                                           _tl132300132811_
                                           _e132305132814_
                                           _hd132304132817_
                                           _tl132303132819_)
                                          (___match136593136594_
                                           _e132278132742_
                                           _hd132277132745_
                                           _tl132276132747_
                                           _e132281132750_
                                           _hd132280132753_
                                           _tl132279132755_
                                           _e132284132758_
                                           _hd132283132761_
                                           _tl132282132763_
                                           _e132287132766_
                                           _hd132286132769_
                                           _tl132285132771_
                                           _e132290132774_
                                           _hd132289132777_
                                           _tl132288132779_
                                           _e132293132782_
                                           _hd132292132785_
                                           _tl132291132787_
                                           _e132296132790_
                                           _hd132295132793_
                                           _tl132294132795_
                                           _e132299132798_
                                           _hd132298132801_
                                           _tl132297132803_
                                           _e132302132806_
                                           _hd132301132809_
                                           _tl132300132811_
                                           _e132305132814_
                                           _hd132304132817_
                                           _tl132303132819_))
                                      (___match136717136718_
                                       _e132278132742_
                                       _hd132277132745_
                                       _tl132276132747_
                                       _e132281132750_
                                       _hd132280132753_
                                       _tl132279132755_
                                       _e132284132758_
                                       _hd132283132761_
                                       _tl132282132763_
                                       _e132287132766_
                                       _hd132286132769_
                                       _tl132285132771_
                                       _e132290132774_
                                       _hd132289132777_
                                       _tl132288132779_
                                       _e132293132782_
                                       _hd132292132785_
                                       _tl132291132787_
                                       _e132296132790_
                                       _hd132295132793_
                                       _tl132294132795_
                                       _e132299132798_
                                       _hd132298132801_
                                       _tl132297132803_))))
                              (___match136717136718_
                               _e132278132742_
                               _hd132277132745_
                               _tl132276132747_
                               _e132281132750_
                               _hd132280132753_
                               _tl132279132755_
                               _e132284132758_
                               _hd132283132761_
                               _tl132282132763_
                               _e132287132766_
                               _hd132286132769_
                               _tl132285132771_
                               _e132290132774_
                               _hd132289132777_
                               _tl132288132779_
                               _e132293132782_
                               _hd132292132785_
                               _tl132291132787_
                               _e132296132790_
                               _hd132295132793_
                               _tl132294132795_
                               _e132299132798_
                               _hd132298132801_
                               _tl132297132803_))
                          (___match136717136718_
                           _e132278132742_
                           _hd132277132745_
                           _tl132276132747_
                           _e132281132750_
                           _hd132280132753_
                           _tl132279132755_
                           _e132284132758_
                           _hd132283132761_
                           _tl132282132763_
                           _e132287132766_
                           _hd132286132769_
                           _tl132285132771_
                           _e132290132774_
                           _hd132289132777_
                           _tl132288132779_
                           _e132293132782_
                           _hd132292132785_
                           _tl132291132787_
                           _e132296132790_
                           _hd132295132793_
                           _tl132294132795_
                           _e132299132798_
                           _hd132298132801_
                           _tl132297132803_))))
                   (___match136435136436_
                    (lambda (_e132227132861_
                             _hd132226132864_
                             _tl132225132866_
                             _e132230132869_
                             _hd132229132872_
                             _tl132228132874_
                             _e132233132877_
                             _hd132232132880_
                             _tl132231132882_
                             _e132236132885_
                             _hd132235132888_
                             _tl132234132890_
                             _e132239132893_
                             _hd132238132896_
                             _tl132237132898_
                             _e132242132901_
                             _hd132241132904_
                             _tl132240132906_
                             _e132245132909_
                             _hd132244132912_
                             _tl132243132914_
                             _e132248132917_
                             _hd132247132920_
                             _tl132246132922_
                             _e132251132925_
                             _hd132250132928_
                             _tl132249132930_
                             _e132254132933_
                             _hd132253132936_
                             _tl132252132938_
                             _e132257132941_
                             _hd132256132944_
                             _tl132255132946_
                             _e132260132949_
                             _hd132259132952_
                             _tl132258132954_
                             _e132263132957_
                             _hd132262132960_
                             _tl132261132962_
                             ___splice136228136229_
                             _target132264132965_
                             _tl132266132967_)
                      (letrec ((_loop132267132970_
                                (lambda (_hd132265132973_ _args132271132975_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132265132973_))
                                      (let ((_e132268132978_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132265132973_))))
                                        (let ((_lp-tl132270132983_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132268132978_)))
                                              (_lp-hd132269132981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132268132978_))))
                                          (let ((__tmp137524
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132269132981_
                                                         _args132271132975_))))
                                            (declare (not safe))
                                            (_loop132267132970_
                                             _lp-tl132270132983_
                                             __tmp137524))))
                                      (let ((_args132272132986_
                                             (reverse _args132271132975_)))
                                        (let ((_L132989_ _args132272132986_)
                                              (_L132990_ _hd132262132960_)
                                              (_L132991_ _hd132253132936_)
                                              (_L132992_ _hd132244132912_)
                                              (_L132993_ _hd132235132888_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132993_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132992_
                                                      'call-method))
                                                   (let ((__tmp137523
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132166_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132991_
                                                      __tmp137523)))
                                              (___kont136226136227_
                                               _L132989_
                                               _L132990_
                                               _L132991_
                                               _L132992_
                                               _L132993_)
                                              (___kont136238136239_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132267132970_ _target132264132965_ '())))))
                   (___match136393136394_
                    (lambda (_e132227132861_
                             _hd132226132864_
                             _tl132225132866_
                             _e132230132869_
                             _hd132229132872_
                             _tl132228132874_
                             _e132233132877_
                             _hd132232132880_
                             _tl132231132882_
                             _e132236132885_
                             _hd132235132888_
                             _tl132234132890_
                             _e132239132893_
                             _hd132238132896_
                             _tl132237132898_
                             _e132242132901_
                             _hd132241132904_
                             _tl132240132906_
                             _e132245132909_
                             _hd132244132912_
                             _tl132243132914_
                             _e132248132917_
                             _hd132247132920_
                             _tl132246132922_
                             _e132251132925_
                             _hd132250132928_
                             _tl132249132930_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd132250132928_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132249132930_))
                              (let ((_e132254132933_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132249132930_))))
                                (let ((_tl132252132938_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132254132933_)))
                                      (_hd132253132936_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132254132933_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132252132938_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132246132922_))
                                          (let ((_e132257132941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132246132922_))))
                                            (let ((_tl132255132946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132257132941_)))
                                                  (_hd132256132944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132257132941_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132256132944_))
                                                  (let ((_e132260132949_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132256132944_))))
                                                    (let ((_tl132258132954_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132260132949_)))
                                                          (_hd132259132952_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132260132949_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd132259132952_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd132259132952_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132258132954_))
                          (let ((_e132263132957_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132258132954_))))
                            (let ((_tl132261132962_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132263132957_)))
                                  (_hd132262132960_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132263132957_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132261132962_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl132255132946_))
                                      (let ((___splice136228136229_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl132255132946_
                                                '0))))
                                        (let ((_tl132266132967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136228136229_
                                                  '1)))
                                              (_target132264132965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136228136229_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132266132967_))
                                              (___match136435136436_
                                               _e132227132861_
                                               _hd132226132864_
                                               _tl132225132866_
                                               _e132230132869_
                                               _hd132229132872_
                                               _tl132228132874_
                                               _e132233132877_
                                               _hd132232132880_
                                               _tl132231132882_
                                               _e132236132885_
                                               _hd132235132888_
                                               _tl132234132890_
                                               _e132239132893_
                                               _hd132238132896_
                                               _tl132237132898_
                                               _e132242132901_
                                               _hd132241132904_
                                               _tl132240132906_
                                               _e132245132909_
                                               _hd132244132912_
                                               _tl132243132914_
                                               _e132248132917_
                                               _hd132247132920_
                                               _tl132246132922_
                                               _e132251132925_
                                               _hd132250132928_
                                               _tl132249132930_
                                               _e132254132933_
                                               _hd132253132936_
                                               _tl132252132938_
                                               _e132257132941_
                                               _hd132256132944_
                                               _tl132255132946_
                                               _e132260132949_
                                               _hd132259132952_
                                               _tl132258132954_
                                               _e132263132957_
                                               _hd132262132960_
                                               _tl132261132962_
                                               ___splice136228136229_
                                               _target132264132965_
                                               _tl132266132967_)
                                              (___kont136238136239_))))
                                      (___kont136238136239_))
                                  (___kont136238136239_))))
                          (___kont136238136239_))
                      (___kont136238136239_))
                  (___kont136238136239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136238136239_))))
                                          (___match136717136718_
                                           _e132227132861_
                                           _hd132226132864_
                                           _tl132225132866_
                                           _e132230132869_
                                           _hd132229132872_
                                           _tl132228132874_
                                           _e132233132877_
                                           _hd132232132880_
                                           _tl132231132882_
                                           _e132236132885_
                                           _hd132235132888_
                                           _tl132234132890_
                                           _e132239132893_
                                           _hd132238132896_
                                           _tl132237132898_
                                           _e132242132901_
                                           _hd132241132904_
                                           _tl132240132906_
                                           _e132245132909_
                                           _hd132244132912_
                                           _tl132243132914_
                                           _e132248132917_
                                           _hd132247132920_
                                           _tl132246132922_))
                                      (___match136717136718_
                                       _e132227132861_
                                       _hd132226132864_
                                       _tl132225132866_
                                       _e132230132869_
                                       _hd132229132872_
                                       _tl132228132874_
                                       _e132233132877_
                                       _hd132232132880_
                                       _tl132231132882_
                                       _e132236132885_
                                       _hd132235132888_
                                       _tl132234132890_
                                       _e132239132893_
                                       _hd132238132896_
                                       _tl132237132898_
                                       _e132242132901_
                                       _hd132241132904_
                                       _tl132240132906_
                                       _e132245132909_
                                       _hd132244132912_
                                       _tl132243132914_
                                       _e132248132917_
                                       _hd132247132920_
                                       _tl132246132922_))))
                              (___match136717136718_
                               _e132227132861_
                               _hd132226132864_
                               _tl132225132866_
                               _e132230132869_
                               _hd132229132872_
                               _tl132228132874_
                               _e132233132877_
                               _hd132232132880_
                               _tl132231132882_
                               _e132236132885_
                               _hd132235132888_
                               _tl132234132890_
                               _e132239132893_
                               _hd132238132896_
                               _tl132237132898_
                               _e132242132901_
                               _hd132241132904_
                               _tl132240132906_
                               _e132245132909_
                               _hd132244132912_
                               _tl132243132914_
                               _e132248132917_
                               _hd132247132920_
                               _tl132246132922_))
                          (___match136503136504_
                           _e132227132861_
                           _hd132226132864_
                           _tl132225132866_
                           _e132230132869_
                           _hd132229132872_
                           _tl132228132874_
                           _e132233132877_
                           _hd132232132880_
                           _tl132231132882_
                           _e132236132885_
                           _hd132235132888_
                           _tl132234132890_
                           _e132239132893_
                           _hd132238132896_
                           _tl132237132898_
                           _e132242132901_
                           _hd132241132904_
                           _tl132240132906_
                           _e132245132909_
                           _hd132244132912_
                           _tl132243132914_
                           _e132248132917_
                           _hd132247132920_
                           _tl132246132922_
                           _e132251132925_
                           _hd132250132928_
                           _tl132249132930_))))
                   (___match136325136326_
                    (lambda (_e132183133050_
                             _hd132182133053_
                             _tl132181133055_
                             _e132186133058_
                             _hd132185133061_
                             _tl132184133063_
                             _e132189133066_
                             _hd132188133069_
                             _tl132187133071_
                             _e132192133074_
                             _hd132191133077_
                             _tl132190133079_
                             _e132195133082_
                             _hd132194133085_
                             _tl132193133087_
                             _e132198133090_
                             _hd132197133093_
                             _tl132196133095_
                             _e132201133098_
                             _hd132200133101_
                             _tl132199133103_
                             _e132204133106_
                             _hd132203133109_
                             _tl132202133111_
                             _e132207133114_
                             _hd132206133117_
                             _tl132205133119_
                             _e132210133122_
                             _hd132209133125_
                             _tl132208133127_
                             ___splice136224136225_
                             _target132211133130_
                             _tl132213133132_)
                      (letrec ((_loop132214133135_
                                (lambda (_hd132212133138_ _args132218133140_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132212133138_))
                                      (let ((_e132215133143_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132212133138_))))
                                        (let ((_lp-tl132217133148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132215133143_)))
                                              (_lp-hd132216133146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132215133143_))))
                                          (let ((__tmp137526
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132216133146_
                                                         _args132218133140_))))
                                            (declare (not safe))
                                            (_loop132214133135_
                                             _lp-tl132217133148_
                                             __tmp137526))))
                                      (let ((_args132219133151_
                                             (reverse _args132218133140_)))
                                        (let ((_L133154_ _args132219133151_)
                                              (_L133155_ _hd132209133125_)
                                              (_L133156_ _hd132200133101_)
                                              (_L133157_ _hd132191133077_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L133157_
                                                      'call-method))
                                                   (let ((__tmp137525
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132166_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L133156_
                                                      __tmp137525)))
                                              (___kont136222136223_
                                               _L133154_
                                               _L133155_
                                               _L133156_
                                               _L133157_)
                                              (___match136513136514_
                                               _e132183133050_
                                               _hd132182133053_
                                               _tl132181133055_
                                               _e132186133058_
                                               _hd132185133061_
                                               _tl132184133063_
                                               _e132189133066_
                                               _hd132188133069_
                                               _tl132187133071_
                                               _e132192133074_
                                               _hd132191133077_
                                               _tl132190133079_
                                               _e132195133082_
                                               _hd132194133085_
                                               _tl132193133087_
                                               _e132198133090_
                                               _hd132197133093_
                                               _tl132196133095_
                                               _e132201133098_
                                               _hd132200133101_
                                               _tl132199133103_
                                               _e132204133106_
                                               _hd132203133109_
                                               _tl132202133111_
                                               _e132207133114_
                                               _hd132206133117_
                                               _tl132205133119_
                                               _e132210133122_
                                               _hd132209133125_
                                               _tl132208133127_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132214133135_ _target132211133130_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx136220136221_))
                  (let ((_e132183133050_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx136220136221_))))
                    (let ((_tl132181133055_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132183133050_)))
                          (_hd132182133053_
                           (let ()
                             (declare (not safe))
                             (##car _e132183133050_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132181133055_))
                          (let ((_e132186133058_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132181133055_))))
                            (let ((_tl132184133063_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132186133058_)))
                                  (_hd132185133061_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132186133058_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd132185133061_))
                                  (let ((_e132189133066_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd132185133061_))))
                                    (let ((_tl132187133071_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e132189133066_)))
                                          (_hd132188133069_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e132189133066_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd132188133069_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd132188133069_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl132187133071_))
                                                  (let ((_e132192133074_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl132187133071_))))
                                                    (let ((_tl132190133079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132192133074_)))
                                                          (_hd132191133077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132192133074_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl132190133079_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl132184133063_))
                      (let ((_e132195133082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl132184133063_))))
                        (let ((_tl132193133087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132195133082_)))
                              (_hd132194133085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132195133082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd132194133085_))
                              (let ((_e132198133090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd132194133085_))))
                                (let ((_tl132196133095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132198133090_)))
                                      (_hd132197133093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132198133090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd132197133093_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd132197133093_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl132196133095_))
                                              (let ((_e132201133098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl132196133095_))))
                                                (let ((_tl132199133103_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e132201133098_)))
                                                      (_hd132200133101_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e132201133098_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl132199133103_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl132193133087_))
                                                          (let ((_e132204133106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl132193133087_))))
                    (let ((_tl132202133111_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132204133106_)))
                          (_hd132203133109_
                           (let ()
                             (declare (not safe))
                             (##car _e132204133106_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132203133109_))
                          (let ((_e132207133114_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132203133109_))))
                            (let ((_tl132205133119_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132207133114_)))
                                  (_hd132206133117_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132207133114_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd132206133117_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd132206133117_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132205133119_))
                                          (let ((_e132210133122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132205133119_))))
                                            (let ((_tl132208133127_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132210133122_)))
                                                  (_hd132209133125_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132210133122_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132208133127_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl132202133111_))
                                                      (let ((___splice136224136225_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl132202133111_ '0))))
                (let ((_tl132213133132_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136224136225_ '1)))
                      (_target132211133130_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136224136225_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl132213133132_))
                      (___match136325136326_
                       _e132183133050_
                       _hd132182133053_
                       _tl132181133055_
                       _e132186133058_
                       _hd132185133061_
                       _tl132184133063_
                       _e132189133066_
                       _hd132188133069_
                       _tl132187133071_
                       _e132192133074_
                       _hd132191133077_
                       _tl132190133079_
                       _e132195133082_
                       _hd132194133085_
                       _tl132193133087_
                       _e132198133090_
                       _hd132197133093_
                       _tl132196133095_
                       _e132201133098_
                       _hd132200133101_
                       _tl132199133103_
                       _e132204133106_
                       _hd132203133109_
                       _tl132202133111_
                       _e132207133114_
                       _hd132206133117_
                       _tl132205133119_
                       _e132210133122_
                       _hd132209133125_
                       _tl132208133127_
                       ___splice136224136225_
                       _target132211133130_
                       _tl132213133132_)
                      (___match136513136514_
                       _e132183133050_
                       _hd132182133053_
                       _tl132181133055_
                       _e132186133058_
                       _hd132185133061_
                       _tl132184133063_
                       _e132189133066_
                       _hd132188133069_
                       _tl132187133071_
                       _e132192133074_
                       _hd132191133077_
                       _tl132190133079_
                       _e132195133082_
                       _hd132194133085_
                       _tl132193133087_
                       _e132198133090_
                       _hd132197133093_
                       _tl132196133095_
                       _e132201133098_
                       _hd132200133101_
                       _tl132199133103_
                       _e132204133106_
                       _hd132203133109_
                       _tl132202133111_
                       _e132207133114_
                       _hd132206133117_
                       _tl132205133119_
                       _e132210133122_
                       _hd132209133125_
                       _tl132208133127_))))
              (___match136513136514_
               _e132183133050_
               _hd132182133053_
               _tl132181133055_
               _e132186133058_
               _hd132185133061_
               _tl132184133063_
               _e132189133066_
               _hd132188133069_
               _tl132187133071_
               _e132192133074_
               _hd132191133077_
               _tl132190133079_
               _e132195133082_
               _hd132194133085_
               _tl132193133087_
               _e132198133090_
               _hd132197133093_
               _tl132196133095_
               _e132201133098_
               _hd132200133101_
               _tl132199133103_
               _e132204133106_
               _hd132203133109_
               _tl132202133111_
               _e132207133114_
               _hd132206133117_
               _tl132205133119_
               _e132210133122_
               _hd132209133125_
               _tl132208133127_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136717136718_
                                                   _e132183133050_
                                                   _hd132182133053_
                                                   _tl132181133055_
                                                   _e132186133058_
                                                   _hd132185133061_
                                                   _tl132184133063_
                                                   _e132189133066_
                                                   _hd132188133069_
                                                   _tl132187133071_
                                                   _e132192133074_
                                                   _hd132191133077_
                                                   _tl132190133079_
                                                   _e132195133082_
                                                   _hd132194133085_
                                                   _tl132193133087_
                                                   _e132198133090_
                                                   _hd132197133093_
                                                   _tl132196133095_
                                                   _e132201133098_
                                                   _hd132200133101_
                                                   _tl132199133103_
                                                   _e132204133106_
                                                   _hd132203133109_
                                                   _tl132202133111_))))
                                          (___match136717136718_
                                           _e132183133050_
                                           _hd132182133053_
                                           _tl132181133055_
                                           _e132186133058_
                                           _hd132185133061_
                                           _tl132184133063_
                                           _e132189133066_
                                           _hd132188133069_
                                           _tl132187133071_
                                           _e132192133074_
                                           _hd132191133077_
                                           _tl132190133079_
                                           _e132195133082_
                                           _hd132194133085_
                                           _tl132193133087_
                                           _e132198133090_
                                           _hd132197133093_
                                           _tl132196133095_
                                           _e132201133098_
                                           _hd132200133101_
                                           _tl132199133103_
                                           _e132204133106_
                                           _hd132203133109_
                                           _tl132202133111_))
                                      (___match136393136394_
                                       _e132183133050_
                                       _hd132182133053_
                                       _tl132181133055_
                                       _e132186133058_
                                       _hd132185133061_
                                       _tl132184133063_
                                       _e132189133066_
                                       _hd132188133069_
                                       _tl132187133071_
                                       _e132192133074_
                                       _hd132191133077_
                                       _tl132190133079_
                                       _e132195133082_
                                       _hd132194133085_
                                       _tl132193133087_
                                       _e132198133090_
                                       _hd132197133093_
                                       _tl132196133095_
                                       _e132201133098_
                                       _hd132200133101_
                                       _tl132199133103_
                                       _e132204133106_
                                       _hd132203133109_
                                       _tl132202133111_
                                       _e132207133114_
                                       _hd132206133117_
                                       _tl132205133119_))
                                  (___match136717136718_
                                   _e132183133050_
                                   _hd132182133053_
                                   _tl132181133055_
                                   _e132186133058_
                                   _hd132185133061_
                                   _tl132184133063_
                                   _e132189133066_
                                   _hd132188133069_
                                   _tl132187133071_
                                   _e132192133074_
                                   _hd132191133077_
                                   _tl132190133079_
                                   _e132195133082_
                                   _hd132194133085_
                                   _tl132193133087_
                                   _e132198133090_
                                   _hd132197133093_
                                   _tl132196133095_
                                   _e132201133098_
                                   _hd132200133101_
                                   _tl132199133103_
                                   _e132204133106_
                                   _hd132203133109_
                                   _tl132202133111_))))
                          (___match136717136718_
                           _e132183133050_
                           _hd132182133053_
                           _tl132181133055_
                           _e132186133058_
                           _hd132185133061_
                           _tl132184133063_
                           _e132189133066_
                           _hd132188133069_
                           _tl132187133071_
                           _e132192133074_
                           _hd132191133077_
                           _tl132190133079_
                           _e132195133082_
                           _hd132194133085_
                           _tl132193133087_
                           _e132198133090_
                           _hd132197133093_
                           _tl132196133095_
                           _e132201133098_
                           _hd132200133101_
                           _tl132199133103_
                           _e132204133106_
                           _hd132203133109_
                           _tl132202133111_))))
                  (___match136655136656_
                   _e132183133050_
                   _hd132182133053_
                   _tl132181133055_
                   _e132186133058_
                   _hd132185133061_
                   _tl132184133063_
                   _e132189133066_
                   _hd132188133069_
                   _tl132187133071_
                   _e132192133074_
                   _hd132191133077_
                   _tl132190133079_
                   _e132195133082_
                   _hd132194133085_
                   _tl132193133087_
                   _e132198133090_
                   _hd132197133093_
                   _tl132196133095_
                   _e132201133098_
                   _hd132200133101_
                   _tl132199133103_))
              (___kont136238136239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont136238136239_))
                                          (___kont136238136239_))
                                      (___kont136238136239_))))
                              (___kont136238136239_))))
                      (___kont136238136239_))
                  (___kont136238136239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136238136239_))
                                              (___kont136238136239_))
                                          (___kont136238136239_))))
                                  (___kont136238136239_))))
                          (___kont136238136239_))))
                  (___kont136238136239_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self131105_ _stx131106_)
        (letrec ((_force-e131108_
                  (lambda (_target132164_)
                    (let ((__tmp137527
                           (let ((__tmp137531
                                  (let ((__tmp137532
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137532)))
                                 (__tmp137528
                                  (let ((__tmp137529
                                         (let ((__tmp137530
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target132164_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137530))))
                                    (declare (not safe))
                                    (cons __tmp137529 '()))))
                             (declare (not safe))
                             (cons __tmp137531 __tmp137528))))
                      (declare (not safe))
                      (cons '%#call __tmp137527)))))
          (let* ((___stx136722136723_ _stx131106_)
                 (_g131116131338_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136722136723_)))))
            (let ((___kont136724136725_
                   (lambda (_L132110_ _L132111_ _L132112_ _L132113_)
                     (let ((_$method132158_
                            (let ((__tmp137534
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131105_ 'methods)))
                                  (__tmp137533
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L132111_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137534 __tmp137533)))
                           (_args132159_
                            (map (lambda (_g132146132148_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131105_
                                      _g132146132148_)))
                                 (let ((__tmp137535
                                        (lambda (_g132150132153_
                                                 _g132151132155_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g132150132153_
                                                  _g132151132155_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137535 '() _L132110_)))))
                       (let ((__tmp137536
                              (let ((__tmp137537
                                     (let ((__tmp137542
                                            (let ()
                                              (declare (not safe))
                                              (_force-e131108_
                                               _$method132158_)))
                                           (__tmp137538
                                            (let ((__tmp137539
                                                   (let ((__tmp137540
                                                          (let ((__tmp137541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self131105_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137541 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137540))))
                                              (declare (not safe))
                                              (cons __tmp137539
                                                    _args132159_))))
                                       (declare (not safe))
                                       (cons __tmp137542 __tmp137538))))
                                (declare (not safe))
                                (cons '%#call __tmp137537))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137536 _stx131106_)))))
                  (___kont136728136729_
                   (lambda (_L131942_ _L131943_ _L131944_ _L131945_ _L131946_)
                     (let ((_$method131998_
                            (let ((__tmp137544
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131105_ 'methods)))
                                  (__tmp137543
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131943_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137544 __tmp137543)))
                           (_args131999_
                            (map (lambda (_g131986131988_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131105_
                                      _g131986131988_)))
                                 (let ((__tmp137545
                                        (lambda (_g131990131993_
                                                 _g131991131995_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131990131993_
                                                  _g131991131995_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137545 '() _L131942_)))))
                       (let ((__tmp137546
                              (let ((__tmp137547
                                     (let ((__tmp137554
                                            (let ((__tmp137555
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137555)))
                                           (__tmp137548
                                            (let ((__tmp137553
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e131108_
                                                      _$method131998_)))
                                                  (__tmp137549
                                                   (let ((__tmp137550
                                                          (let ((__tmp137551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137552
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131105_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137552 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137550
                                                           _args131999_))))
                                              (declare (not safe))
                                              (cons __tmp137553 __tmp137549))))
                                       (declare (not safe))
                                       (cons __tmp137554 __tmp137548))))
                                (declare (not safe))
                                (cons '%#call __tmp137547))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137546 _stx131106_)))))
                  (___kont136732136733_
                   (lambda (_L131773_ _L131774_ _L131775_)
                     (let* ((_$field131807_
                             (let ((__tmp137557
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self131105_ 'slots)))
                                   (__tmp137556
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131773_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137557 __tmp137556)))
                            (__tmp137558
                             (let ((__tmp137559
                                    (let ((__tmp137567
                                           (let ((__tmp137568
                                                  (let ((__tmp137569
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self131105_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137569 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137568)))
                                          (__tmp137560
                                           (let ((__tmp137565
                                                  (let ((__tmp137566
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137566)))
                                                 (__tmp137561
                                                  (let ((__tmp137562
                                                         (let ((__tmp137563
                                                                (let ((__tmp137564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self131105_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137564 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137562 '()))))
                                             (declare (not safe))
                                             (cons __tmp137565 __tmp137561))))
                                      (declare (not safe))
                                      (cons __tmp137567 __tmp137560))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137559))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137558 _stx131106_))))
                  (___kont136734136735_
                   (lambda (_L131647_ _L131648_ _L131649_ _L131650_)
                     (let ((_$field131685_
                            (let ((__tmp137571
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131105_ 'slots)))
                                  (__tmp137570
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131648_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137571 __tmp137570)))
                           (_expr131686_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self131105_ _L131647_))))
                       (let ((__tmp137572
                              (let ((__tmp137573
                                     (let ((__tmp137582
                                            (let ((__tmp137583
                                                   (let ((__tmp137584
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131105_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137584 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137583)))
                                           (__tmp137574
                                            (let ((__tmp137580
                                                   (let ((__tmp137581
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137581)))
                                                  (__tmp137575
                                                   (let ((__tmp137577
                                                          (let ((__tmp137578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137579
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131105_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137579 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137578)))
                 (__tmp137576
                  (let () (declare (not safe)) (cons _expr131686_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137577
                                                           __tmp137576))))
                                              (declare (not safe))
                                              (cons __tmp137580 __tmp137575))))
                                       (declare (not safe))
                                       (cons __tmp137582 __tmp137574))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137573))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137572 _stx131106_)))))
                  (___kont136736136737_
                   (lambda (_L131519_ _L131520_)
                     (let* ((_accessor131542_
                             (let ((__tmp137585
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131520_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137585)))
                            (_klass131544_
                             (let ((__tmp137586
                                    (##structure-ref
                                     _accessor131542_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131106_
                                __tmp137586)))
                            (_slot131546_
                             (##structure-ref
                              _accessor131542_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137600
                                       (##structure-ref
                                        _accessor131542_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137600))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131544_
                                       _slot131546_))
                                    (##structure-ref
                                     _klass131544_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx131106_
                           (let* ((_$field131552_
                                   (let ((__tmp137587
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131105_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137587 _slot131546_)))
                                  (__tmp137588
                                   (let ((__tmp137589
                                          (let ((__tmp137597
                                                 (let ((__tmp137598
                                                        (let ((__tmp137599
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131105_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137599 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137598)))
                                                (__tmp137590
                                                 (let ((__tmp137595
                                                        (let ((__tmp137596
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131552_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137596)))
               (__tmp137591
                (let ((__tmp137592
                       (let ((__tmp137593
                              (let ((__tmp137594
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131105_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137594 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137593))))
                  (declare (not safe))
                  (cons __tmp137592 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137595
                                                         __tmp137591))))
                                            (declare (not safe))
                                            (cons __tmp137597 __tmp137590))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137589))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137588
                              _stx131106_))))))
                  (___kont136738136739_
                   (lambda (_L131414_ _L131415_ _L131416_)
                     (let* ((_mutator131444_
                             (let ((__tmp137601
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131416_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137601)))
                            (_klass131446_
                             (let ((__tmp137602
                                    (##structure-ref
                                     _mutator131444_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131106_
                                __tmp137602)))
                            (_slot131448_
                             (##structure-ref
                              _mutator131444_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131450_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self131105_ _L131414_))))
                       (if (and (let ((__tmp137627
                                       (##structure-ref
                                        _mutator131444_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137627))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131446_
                                       _slot131448_))
                                    (##structure-ref
                                     _klass131446_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137617
                                  (let ((__tmp137618
                                         (let ((__tmp137624
                                                (let ((__tmp137626
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137625
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131416_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137626
                                                        __tmp137625)))
                                               (__tmp137619
                                                (let ((__tmp137621
                                                       (let ((__tmp137623
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137622
                      (let () (declare (not safe)) (cons _L131415_ '()))))
                 (declare (not safe))
                 (cons __tmp137623 __tmp137622)))
              (__tmp137620
               (let () (declare (not safe)) (cons _expr131450_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137621
                                                        __tmp137620))))
                                           (declare (not safe))
                                           (cons __tmp137624 __tmp137619))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137618))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137617 _stx131106_))
                           (let* ((_$field131456_
                                   (let ((__tmp137603
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131105_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137603 _slot131448_)))
                                  (__tmp137604
                                   (let ((__tmp137605
                                          (let ((__tmp137614
                                                 (let ((__tmp137615
                                                        (let ((__tmp137616
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131105_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137616 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137615)))
                                                (__tmp137606
                                                 (let ((__tmp137612
                                                        (let ((__tmp137613
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131456_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137613)))
               (__tmp137607
                (let ((__tmp137609
                       (let ((__tmp137610
                              (let ((__tmp137611
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131105_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137611 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137610)))
                      (__tmp137608
                       (let () (declare (not safe)) (cons _expr131450_ '()))))
                  (declare (not safe))
                  (cons __tmp137609 __tmp137608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137612
                                                         __tmp137607))))
                                            (declare (not safe))
                                            (cons __tmp137614 __tmp137606))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137605))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137604
                              _stx131106_))))))
                  (___kont136740136741_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self131105_ _stx131106_)))))
              (let* ((___match137221137222_
                      (lambda (_e131312131350_
                               _hd131311131353_
                               _tl131310131355_
                               _e131315131358_
                               _hd131314131361_
                               _tl131313131363_
                               _e131318131366_
                               _hd131317131369_
                               _tl131316131371_
                               _e131321131374_
                               _hd131320131377_
                               _tl131319131379_
                               _e131324131382_
                               _hd131323131385_
                               _tl131322131387_
                               _e131327131390_
                               _hd131326131393_
                               _tl131325131395_
                               _e131330131398_
                               _hd131329131401_
                               _tl131328131403_
                               _e131333131406_
                               _hd131332131409_
                               _tl131331131411_)
                        (let ((_L131414_ _hd131332131409_)
                              (_L131415_ _hd131329131401_)
                              (_L131416_ _hd131320131377_))
                          (if (and (let ((__tmp137630
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131105_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131415_
                                      __tmp137630))
                                   (let ((__tmp137628
                                          (let ((__tmp137629
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131416_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137629))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137628
                                      'gxc#!mutator::t)))
                              (___kont136738136739_
                               _L131414_
                               _L131415_
                               _L131416_)
                              (___kont136740136741_)))))
                     (___match137219137220_
                      (lambda (_e131312131350_
                               _hd131311131353_
                               _tl131310131355_
                               _e131315131358_
                               _hd131314131361_
                               _tl131313131363_
                               _e131318131366_
                               _hd131317131369_
                               _tl131316131371_
                               _e131321131374_
                               _hd131320131377_
                               _tl131319131379_
                               _e131324131382_
                               _hd131323131385_
                               _tl131322131387_
                               _e131327131390_
                               _hd131326131393_
                               _tl131325131395_
                               _e131330131398_
                               _hd131329131401_
                               _tl131328131403_
                               _e131333131406_
                               _hd131332131409_
                               _tl131331131411_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131331131411_))
                            (___match137221137222_
                             _e131312131350_
                             _hd131311131353_
                             _tl131310131355_
                             _e131315131358_
                             _hd131314131361_
                             _tl131313131363_
                             _e131318131366_
                             _hd131317131369_
                             _tl131316131371_
                             _e131321131374_
                             _hd131320131377_
                             _tl131319131379_
                             _e131324131382_
                             _hd131323131385_
                             _tl131322131387_
                             _e131327131390_
                             _hd131326131393_
                             _tl131325131395_
                             _e131330131398_
                             _hd131329131401_
                             _tl131328131403_
                             _e131333131406_
                             _hd131332131409_
                             _tl131331131411_)
                            (___kont136740136741_))))
                     (___match137213137214_
                      (lambda (_e131312131350_
                               _hd131311131353_
                               _tl131310131355_
                               _e131315131358_
                               _hd131314131361_
                               _tl131313131363_
                               _e131318131366_
                               _hd131317131369_
                               _tl131316131371_
                               _e131321131374_
                               _hd131320131377_
                               _tl131319131379_
                               _e131324131382_
                               _hd131323131385_
                               _tl131322131387_
                               _e131327131390_
                               _hd131326131393_
                               _tl131325131395_
                               _e131330131398_
                               _hd131329131401_
                               _tl131328131403_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131322131387_))
                            (let ((_e131333131406_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131322131387_))))
                              (let ((_tl131331131411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131333131406_)))
                                    (_hd131332131409_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131333131406_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131331131411_))
                                    (___match137221137222_
                                     _e131312131350_
                                     _hd131311131353_
                                     _tl131310131355_
                                     _e131315131358_
                                     _hd131314131361_
                                     _tl131313131363_
                                     _e131318131366_
                                     _hd131317131369_
                                     _tl131316131371_
                                     _e131321131374_
                                     _hd131320131377_
                                     _tl131319131379_
                                     _e131324131382_
                                     _hd131323131385_
                                     _tl131322131387_
                                     _e131327131390_
                                     _hd131326131393_
                                     _tl131325131395_
                                     _e131330131398_
                                     _hd131329131401_
                                     _tl131328131403_
                                     _e131333131406_
                                     _hd131332131409_
                                     _tl131331131411_)
                                    (___kont136740136741_))))
                            (___kont136740136741_))))
                     (___match137159137160_
                      (lambda (_e131288131463_
                               _hd131287131466_
                               _tl131286131468_
                               _e131291131471_
                               _hd131290131474_
                               _tl131289131476_
                               _e131294131479_
                               _hd131293131482_
                               _tl131292131484_
                               _e131297131487_
                               _hd131296131490_
                               _tl131295131492_
                               _e131300131495_
                               _hd131299131498_
                               _tl131298131500_
                               _e131303131503_
                               _hd131302131506_
                               _tl131301131508_
                               _e131306131511_
                               _hd131305131514_
                               _tl131304131516_)
                        (let ((_L131519_ _hd131305131514_)
                              (_L131520_ _hd131296131490_))
                          (if (and (let ((__tmp137633
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131105_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131519_
                                      __tmp137633))
                                   (let ((__tmp137631
                                          (let ((__tmp137632
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131520_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137632))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137631
                                      'gxc#!accessor::t)))
                              (___kont136736136737_ _L131519_ _L131520_)
                              (___kont136740136741_)))))
                     (___match137157137158_
                      (lambda (_e131288131463_
                               _hd131287131466_
                               _tl131286131468_
                               _e131291131471_
                               _hd131290131474_
                               _tl131289131476_
                               _e131294131479_
                               _hd131293131482_
                               _tl131292131484_
                               _e131297131487_
                               _hd131296131490_
                               _tl131295131492_
                               _e131300131495_
                               _hd131299131498_
                               _tl131298131500_
                               _e131303131503_
                               _hd131302131506_
                               _tl131301131508_
                               _e131306131511_
                               _hd131305131514_
                               _tl131304131516_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131298131500_))
                            (___match137159137160_
                             _e131288131463_
                             _hd131287131466_
                             _tl131286131468_
                             _e131291131471_
                             _hd131290131474_
                             _tl131289131476_
                             _e131294131479_
                             _hd131293131482_
                             _tl131292131484_
                             _e131297131487_
                             _hd131296131490_
                             _tl131295131492_
                             _e131300131495_
                             _hd131299131498_
                             _tl131298131500_
                             _e131303131503_
                             _hd131302131506_
                             _tl131301131508_
                             _e131306131511_
                             _hd131305131514_
                             _tl131304131516_)
                            (___match137213137214_
                             _e131288131463_
                             _hd131287131466_
                             _tl131286131468_
                             _e131291131471_
                             _hd131290131474_
                             _tl131289131476_
                             _e131294131479_
                             _hd131293131482_
                             _tl131292131484_
                             _e131297131487_
                             _hd131296131490_
                             _tl131295131492_
                             _e131300131495_
                             _hd131299131498_
                             _tl131298131500_
                             _e131303131503_
                             _hd131302131506_
                             _tl131301131508_
                             _e131306131511_
                             _hd131305131514_
                             _tl131304131516_))))
                     (___match137103137104_
                      (lambda (_e131253131559_
                               _hd131252131562_
                               _tl131251131564_
                               _e131256131567_
                               _hd131255131570_
                               _tl131254131572_
                               _e131259131575_
                               _hd131258131578_
                               _tl131257131580_
                               _e131262131583_
                               _hd131261131586_
                               _tl131260131588_
                               _e131265131591_
                               _hd131264131594_
                               _tl131263131596_
                               _e131268131599_
                               _hd131267131602_
                               _tl131266131604_
                               _e131271131607_
                               _hd131270131610_
                               _tl131269131612_
                               _e131274131615_
                               _hd131273131618_
                               _tl131272131620_
                               _e131277131623_
                               _hd131276131626_
                               _tl131275131628_
                               _e131280131631_
                               _hd131279131634_
                               _tl131278131636_
                               _e131283131639_
                               _hd131282131642_
                               _tl131281131644_)
                        (let ((_L131647_ _hd131282131642_)
                              (_L131648_ _hd131279131634_)
                              (_L131649_ _hd131270131610_)
                              (_L131650_ _hd131261131586_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131650_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131650_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137634
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131105_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131649_
                                      __tmp137634)))
                              (___kont136734136735_
                               _L131647_
                               _L131648_
                               _L131649_
                               _L131650_)
                              (___kont136740136741_)))))
                     (___match137095137096_
                      (lambda (_e131253131559_
                               _hd131252131562_
                               _tl131251131564_
                               _e131256131567_
                               _hd131255131570_
                               _tl131254131572_
                               _e131259131575_
                               _hd131258131578_
                               _tl131257131580_
                               _e131262131583_
                               _hd131261131586_
                               _tl131260131588_
                               _e131265131591_
                               _hd131264131594_
                               _tl131263131596_
                               _e131268131599_
                               _hd131267131602_
                               _tl131266131604_
                               _e131271131607_
                               _hd131270131610_
                               _tl131269131612_
                               _e131274131615_
                               _hd131273131618_
                               _tl131272131620_
                               _e131277131623_
                               _hd131276131626_
                               _tl131275131628_
                               _e131280131631_
                               _hd131279131634_
                               _tl131278131636_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131272131620_))
                            (let ((_e131283131639_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131272131620_))))
                              (let ((_tl131281131644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131283131639_)))
                                    (_hd131282131642_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131283131639_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131281131644_))
                                    (___match137103137104_
                                     _e131253131559_
                                     _hd131252131562_
                                     _tl131251131564_
                                     _e131256131567_
                                     _hd131255131570_
                                     _tl131254131572_
                                     _e131259131575_
                                     _hd131258131578_
                                     _tl131257131580_
                                     _e131262131583_
                                     _hd131261131586_
                                     _tl131260131588_
                                     _e131265131591_
                                     _hd131264131594_
                                     _tl131263131596_
                                     _e131268131599_
                                     _hd131267131602_
                                     _tl131266131604_
                                     _e131271131607_
                                     _hd131270131610_
                                     _tl131269131612_
                                     _e131274131615_
                                     _hd131273131618_
                                     _tl131272131620_
                                     _e131277131623_
                                     _hd131276131626_
                                     _tl131275131628_
                                     _e131280131631_
                                     _hd131279131634_
                                     _tl131278131636_
                                     _e131283131639_
                                     _hd131282131642_
                                     _tl131281131644_)
                                    (___kont136740136741_))))
                            (___match137219137220_
                             _e131253131559_
                             _hd131252131562_
                             _tl131251131564_
                             _e131256131567_
                             _hd131255131570_
                             _tl131254131572_
                             _e131259131575_
                             _hd131258131578_
                             _tl131257131580_
                             _e131262131583_
                             _hd131261131586_
                             _tl131260131588_
                             _e131265131591_
                             _hd131264131594_
                             _tl131263131596_
                             _e131268131599_
                             _hd131267131602_
                             _tl131266131604_
                             _e131271131607_
                             _hd131270131610_
                             _tl131269131612_
                             _e131274131615_
                             _hd131273131618_
                             _tl131272131620_))))
                     (___match137017137018_
                      (lambda (_e131219131693_
                               _hd131218131696_
                               _tl131217131698_
                               _e131222131701_
                               _hd131221131704_
                               _tl131220131706_
                               _e131225131709_
                               _hd131224131712_
                               _tl131223131714_
                               _e131228131717_
                               _hd131227131720_
                               _tl131226131722_
                               _e131231131725_
                               _hd131230131728_
                               _tl131229131730_
                               _e131234131733_
                               _hd131233131736_
                               _tl131232131738_
                               _e131237131741_
                               _hd131236131744_
                               _tl131235131746_
                               _e131240131749_
                               _hd131239131752_
                               _tl131238131754_
                               _e131243131757_
                               _hd131242131760_
                               _tl131241131762_
                               _e131246131765_
                               _hd131245131768_
                               _tl131244131770_)
                        (let ((_L131773_ _hd131245131768_)
                              (_L131774_ _hd131236131744_)
                              (_L131775_ _hd131227131720_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131775_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131775_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137635
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131105_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131774_
                                      __tmp137635)))
                              (___kont136732136733_
                               _L131773_
                               _L131774_
                               _L131775_)
                              (___match137221137222_
                               _e131219131693_
                               _hd131218131696_
                               _tl131217131698_
                               _e131222131701_
                               _hd131221131704_
                               _tl131220131706_
                               _e131225131709_
                               _hd131224131712_
                               _tl131223131714_
                               _e131228131717_
                               _hd131227131720_
                               _tl131226131722_
                               _e131231131725_
                               _hd131230131728_
                               _tl131229131730_
                               _e131234131733_
                               _hd131233131736_
                               _tl131232131738_
                               _e131237131741_
                               _hd131236131744_
                               _tl131235131746_
                               _e131240131749_
                               _hd131239131752_
                               _tl131238131754_)))))
                     (___match137015137016_
                      (lambda (_e131219131693_
                               _hd131218131696_
                               _tl131217131698_
                               _e131222131701_
                               _hd131221131704_
                               _tl131220131706_
                               _e131225131709_
                               _hd131224131712_
                               _tl131223131714_
                               _e131228131717_
                               _hd131227131720_
                               _tl131226131722_
                               _e131231131725_
                               _hd131230131728_
                               _tl131229131730_
                               _e131234131733_
                               _hd131233131736_
                               _tl131232131738_
                               _e131237131741_
                               _hd131236131744_
                               _tl131235131746_
                               _e131240131749_
                               _hd131239131752_
                               _tl131238131754_
                               _e131243131757_
                               _hd131242131760_
                               _tl131241131762_
                               _e131246131765_
                               _hd131245131768_
                               _tl131244131770_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131238131754_))
                            (___match137017137018_
                             _e131219131693_
                             _hd131218131696_
                             _tl131217131698_
                             _e131222131701_
                             _hd131221131704_
                             _tl131220131706_
                             _e131225131709_
                             _hd131224131712_
                             _tl131223131714_
                             _e131228131717_
                             _hd131227131720_
                             _tl131226131722_
                             _e131231131725_
                             _hd131230131728_
                             _tl131229131730_
                             _e131234131733_
                             _hd131233131736_
                             _tl131232131738_
                             _e131237131741_
                             _hd131236131744_
                             _tl131235131746_
                             _e131240131749_
                             _hd131239131752_
                             _tl131238131754_
                             _e131243131757_
                             _hd131242131760_
                             _tl131241131762_
                             _e131246131765_
                             _hd131245131768_
                             _tl131244131770_)
                            (___match137095137096_
                             _e131219131693_
                             _hd131218131696_
                             _tl131217131698_
                             _e131222131701_
                             _hd131221131704_
                             _tl131220131706_
                             _e131225131709_
                             _hd131224131712_
                             _tl131223131714_
                             _e131228131717_
                             _hd131227131720_
                             _tl131226131722_
                             _e131231131725_
                             _hd131230131728_
                             _tl131229131730_
                             _e131234131733_
                             _hd131233131736_
                             _tl131232131738_
                             _e131237131741_
                             _hd131236131744_
                             _tl131235131746_
                             _e131240131749_
                             _hd131239131752_
                             _tl131238131754_
                             _e131243131757_
                             _hd131242131760_
                             _tl131241131762_
                             _e131246131765_
                             _hd131245131768_
                             _tl131244131770_))))
                     (___match137005137006_
                      (lambda (_e131219131693_
                               _hd131218131696_
                               _tl131217131698_
                               _e131222131701_
                               _hd131221131704_
                               _tl131220131706_
                               _e131225131709_
                               _hd131224131712_
                               _tl131223131714_
                               _e131228131717_
                               _hd131227131720_
                               _tl131226131722_
                               _e131231131725_
                               _hd131230131728_
                               _tl131229131730_
                               _e131234131733_
                               _hd131233131736_
                               _tl131232131738_
                               _e131237131741_
                               _hd131236131744_
                               _tl131235131746_
                               _e131240131749_
                               _hd131239131752_
                               _tl131238131754_
                               _e131243131757_
                               _hd131242131760_
                               _tl131241131762_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd131242131760_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131241131762_))
                                (let ((_e131246131765_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131241131762_))))
                                  (let ((_tl131244131770_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131246131765_)))
                                        (_hd131245131768_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131246131765_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131244131770_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131238131754_))
                                            (___match137017137018_
                                             _e131219131693_
                                             _hd131218131696_
                                             _tl131217131698_
                                             _e131222131701_
                                             _hd131221131704_
                                             _tl131220131706_
                                             _e131225131709_
                                             _hd131224131712_
                                             _tl131223131714_
                                             _e131228131717_
                                             _hd131227131720_
                                             _tl131226131722_
                                             _e131231131725_
                                             _hd131230131728_
                                             _tl131229131730_
                                             _e131234131733_
                                             _hd131233131736_
                                             _tl131232131738_
                                             _e131237131741_
                                             _hd131236131744_
                                             _tl131235131746_
                                             _e131240131749_
                                             _hd131239131752_
                                             _tl131238131754_
                                             _e131243131757_
                                             _hd131242131760_
                                             _tl131241131762_
                                             _e131246131765_
                                             _hd131245131768_
                                             _tl131244131770_)
                                            (___match137095137096_
                                             _e131219131693_
                                             _hd131218131696_
                                             _tl131217131698_
                                             _e131222131701_
                                             _hd131221131704_
                                             _tl131220131706_
                                             _e131225131709_
                                             _hd131224131712_
                                             _tl131223131714_
                                             _e131228131717_
                                             _hd131227131720_
                                             _tl131226131722_
                                             _e131231131725_
                                             _hd131230131728_
                                             _tl131229131730_
                                             _e131234131733_
                                             _hd131233131736_
                                             _tl131232131738_
                                             _e131237131741_
                                             _hd131236131744_
                                             _tl131235131746_
                                             _e131240131749_
                                             _hd131239131752_
                                             _tl131238131754_
                                             _e131243131757_
                                             _hd131242131760_
                                             _tl131241131762_
                                             _e131246131765_
                                             _hd131245131768_
                                             _tl131244131770_))
                                        (___match137219137220_
                                         _e131219131693_
                                         _hd131218131696_
                                         _tl131217131698_
                                         _e131222131701_
                                         _hd131221131704_
                                         _tl131220131706_
                                         _e131225131709_
                                         _hd131224131712_
                                         _tl131223131714_
                                         _e131228131717_
                                         _hd131227131720_
                                         _tl131226131722_
                                         _e131231131725_
                                         _hd131230131728_
                                         _tl131229131730_
                                         _e131234131733_
                                         _hd131233131736_
                                         _tl131232131738_
                                         _e131237131741_
                                         _hd131236131744_
                                         _tl131235131746_
                                         _e131240131749_
                                         _hd131239131752_
                                         _tl131238131754_))))
                                (___match137219137220_
                                 _e131219131693_
                                 _hd131218131696_
                                 _tl131217131698_
                                 _e131222131701_
                                 _hd131221131704_
                                 _tl131220131706_
                                 _e131225131709_
                                 _hd131224131712_
                                 _tl131223131714_
                                 _e131228131717_
                                 _hd131227131720_
                                 _tl131226131722_
                                 _e131231131725_
                                 _hd131230131728_
                                 _tl131229131730_
                                 _e131234131733_
                                 _hd131233131736_
                                 _tl131232131738_
                                 _e131237131741_
                                 _hd131236131744_
                                 _tl131235131746_
                                 _e131240131749_
                                 _hd131239131752_
                                 _tl131238131754_))
                            (___match137219137220_
                             _e131219131693_
                             _hd131218131696_
                             _tl131217131698_
                             _e131222131701_
                             _hd131221131704_
                             _tl131220131706_
                             _e131225131709_
                             _hd131224131712_
                             _tl131223131714_
                             _e131228131717_
                             _hd131227131720_
                             _tl131226131722_
                             _e131231131725_
                             _hd131230131728_
                             _tl131229131730_
                             _e131234131733_
                             _hd131233131736_
                             _tl131232131738_
                             _e131237131741_
                             _hd131236131744_
                             _tl131235131746_
                             _e131240131749_
                             _hd131239131752_
                             _tl131238131754_))))
                     (___match136937136938_
                      (lambda (_e131168131814_
                               _hd131167131817_
                               _tl131166131819_
                               _e131171131822_
                               _hd131170131825_
                               _tl131169131827_
                               _e131174131830_
                               _hd131173131833_
                               _tl131172131835_
                               _e131177131838_
                               _hd131176131841_
                               _tl131175131843_
                               _e131180131846_
                               _hd131179131849_
                               _tl131178131851_
                               _e131183131854_
                               _hd131182131857_
                               _tl131181131859_
                               _e131186131862_
                               _hd131185131865_
                               _tl131184131867_
                               _e131189131870_
                               _hd131188131873_
                               _tl131187131875_
                               _e131192131878_
                               _hd131191131881_
                               _tl131190131883_
                               _e131195131886_
                               _hd131194131889_
                               _tl131193131891_
                               _e131198131894_
                               _hd131197131897_
                               _tl131196131899_
                               _e131201131902_
                               _hd131200131905_
                               _tl131199131907_
                               _e131204131910_
                               _hd131203131913_
                               _tl131202131915_
                               ___splice136730136731_
                               _target131205131918_
                               _tl131207131920_)
                        (letrec ((_loop131208131923_
                                  (lambda (_hd131206131926_ _args131212131928_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131206131926_))
                                        (let ((_e131209131931_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131206131926_))))
                                          (let ((_lp-tl131211131936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131209131931_)))
                                                (_lp-hd131210131934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131209131931_))))
                                            (let ((__tmp137637
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131210131934_
                                                           _args131212131928_))))
                                              (declare (not safe))
                                              (_loop131208131923_
                                               _lp-tl131211131936_
                                               __tmp137637))))
                                        (let ((_args131213131939_
                                               (reverse _args131212131928_)))
                                          (let ((_L131942_ _args131213131939_)
                                                (_L131943_ _hd131203131913_)
                                                (_L131944_ _hd131194131889_)
                                                (_L131945_ _hd131185131865_)
                                                (_L131946_ _hd131176131841_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131946_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131945_
                                                        'call-method))
                                                     (let ((__tmp137636
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131105_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131944_
                                                        __tmp137636)))
                                                (___kont136728136729_
                                                 _L131942_
                                                 _L131943_
                                                 _L131944_
                                                 _L131945_
                                                 _L131946_)
                                                (___kont136740136741_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131208131923_ _target131205131918_ '())))))
                     (___match136895136896_
                      (lambda (_e131168131814_
                               _hd131167131817_
                               _tl131166131819_
                               _e131171131822_
                               _hd131170131825_
                               _tl131169131827_
                               _e131174131830_
                               _hd131173131833_
                               _tl131172131835_
                               _e131177131838_
                               _hd131176131841_
                               _tl131175131843_
                               _e131180131846_
                               _hd131179131849_
                               _tl131178131851_
                               _e131183131854_
                               _hd131182131857_
                               _tl131181131859_
                               _e131186131862_
                               _hd131185131865_
                               _tl131184131867_
                               _e131189131870_
                               _hd131188131873_
                               _tl131187131875_
                               _e131192131878_
                               _hd131191131881_
                               _tl131190131883_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd131191131881_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131190131883_))
                                (let ((_e131195131886_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131190131883_))))
                                  (let ((_tl131193131891_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131195131886_)))
                                        (_hd131194131889_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131195131886_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131193131891_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131187131875_))
                                            (let ((_e131198131894_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131187131875_))))
                                              (let ((_tl131196131899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131198131894_)))
                                                    (_hd131197131897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131198131894_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd131197131897_))
                                                    (let ((_e131201131902_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd131197131897_))))
                                                      (let ((_tl131199131907_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131201131902_)))
                    (_hd131200131905_
                     (let () (declare (not safe)) (##car _e131201131902_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd131200131905_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd131200131905_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131199131907_))
                            (let ((_e131204131910_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131199131907_))))
                              (let ((_tl131202131915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131204131910_)))
                                    (_hd131203131913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131204131910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131202131915_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl131196131899_))
                                        (let ((___splice136730136731_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl131196131899_
                                                  '0))))
                                          (let ((_tl131207131920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136730136731_
                                                    '1)))
                                                (_target131205131918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136730136731_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131207131920_))
                                                (___match136937136938_
                                                 _e131168131814_
                                                 _hd131167131817_
                                                 _tl131166131819_
                                                 _e131171131822_
                                                 _hd131170131825_
                                                 _tl131169131827_
                                                 _e131174131830_
                                                 _hd131173131833_
                                                 _tl131172131835_
                                                 _e131177131838_
                                                 _hd131176131841_
                                                 _tl131175131843_
                                                 _e131180131846_
                                                 _hd131179131849_
                                                 _tl131178131851_
                                                 _e131183131854_
                                                 _hd131182131857_
                                                 _tl131181131859_
                                                 _e131186131862_
                                                 _hd131185131865_
                                                 _tl131184131867_
                                                 _e131189131870_
                                                 _hd131188131873_
                                                 _tl131187131875_
                                                 _e131192131878_
                                                 _hd131191131881_
                                                 _tl131190131883_
                                                 _e131195131886_
                                                 _hd131194131889_
                                                 _tl131193131891_
                                                 _e131198131894_
                                                 _hd131197131897_
                                                 _tl131196131899_
                                                 _e131201131902_
                                                 _hd131200131905_
                                                 _tl131199131907_
                                                 _e131204131910_
                                                 _hd131203131913_
                                                 _tl131202131915_
                                                 ___splice136730136731_
                                                 _target131205131918_
                                                 _tl131207131920_)
                                                (___kont136740136741_))))
                                        (___kont136740136741_))
                                    (___kont136740136741_))))
                            (___kont136740136741_))
                        (___kont136740136741_))
                    (___kont136740136741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136740136741_))))
                                            (___match137219137220_
                                             _e131168131814_
                                             _hd131167131817_
                                             _tl131166131819_
                                             _e131171131822_
                                             _hd131170131825_
                                             _tl131169131827_
                                             _e131174131830_
                                             _hd131173131833_
                                             _tl131172131835_
                                             _e131177131838_
                                             _hd131176131841_
                                             _tl131175131843_
                                             _e131180131846_
                                             _hd131179131849_
                                             _tl131178131851_
                                             _e131183131854_
                                             _hd131182131857_
                                             _tl131181131859_
                                             _e131186131862_
                                             _hd131185131865_
                                             _tl131184131867_
                                             _e131189131870_
                                             _hd131188131873_
                                             _tl131187131875_))
                                        (___match137219137220_
                                         _e131168131814_
                                         _hd131167131817_
                                         _tl131166131819_
                                         _e131171131822_
                                         _hd131170131825_
                                         _tl131169131827_
                                         _e131174131830_
                                         _hd131173131833_
                                         _tl131172131835_
                                         _e131177131838_
                                         _hd131176131841_
                                         _tl131175131843_
                                         _e131180131846_
                                         _hd131179131849_
                                         _tl131178131851_
                                         _e131183131854_
                                         _hd131182131857_
                                         _tl131181131859_
                                         _e131186131862_
                                         _hd131185131865_
                                         _tl131184131867_
                                         _e131189131870_
                                         _hd131188131873_
                                         _tl131187131875_))))
                                (___match137219137220_
                                 _e131168131814_
                                 _hd131167131817_
                                 _tl131166131819_
                                 _e131171131822_
                                 _hd131170131825_
                                 _tl131169131827_
                                 _e131174131830_
                                 _hd131173131833_
                                 _tl131172131835_
                                 _e131177131838_
                                 _hd131176131841_
                                 _tl131175131843_
                                 _e131180131846_
                                 _hd131179131849_
                                 _tl131178131851_
                                 _e131183131854_
                                 _hd131182131857_
                                 _tl131181131859_
                                 _e131186131862_
                                 _hd131185131865_
                                 _tl131184131867_
                                 _e131189131870_
                                 _hd131188131873_
                                 _tl131187131875_))
                            (___match137005137006_
                             _e131168131814_
                             _hd131167131817_
                             _tl131166131819_
                             _e131171131822_
                             _hd131170131825_
                             _tl131169131827_
                             _e131174131830_
                             _hd131173131833_
                             _tl131172131835_
                             _e131177131838_
                             _hd131176131841_
                             _tl131175131843_
                             _e131180131846_
                             _hd131179131849_
                             _tl131178131851_
                             _e131183131854_
                             _hd131182131857_
                             _tl131181131859_
                             _e131186131862_
                             _hd131185131865_
                             _tl131184131867_
                             _e131189131870_
                             _hd131188131873_
                             _tl131187131875_
                             _e131192131878_
                             _hd131191131881_
                             _tl131190131883_))))
                     (___match136827136828_
                      (lambda (_e131124132006_
                               _hd131123132009_
                               _tl131122132011_
                               _e131127132014_
                               _hd131126132017_
                               _tl131125132019_
                               _e131130132022_
                               _hd131129132025_
                               _tl131128132027_
                               _e131133132030_
                               _hd131132132033_
                               _tl131131132035_
                               _e131136132038_
                               _hd131135132041_
                               _tl131134132043_
                               _e131139132046_
                               _hd131138132049_
                               _tl131137132051_
                               _e131142132054_
                               _hd131141132057_
                               _tl131140132059_
                               _e131145132062_
                               _hd131144132065_
                               _tl131143132067_
                               _e131148132070_
                               _hd131147132073_
                               _tl131146132075_
                               _e131151132078_
                               _hd131150132081_
                               _tl131149132083_
                               ___splice136726136727_
                               _target131152132086_
                               _tl131154132088_)
                        (letrec ((_loop131155132091_
                                  (lambda (_hd131153132094_ _args131159132096_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131153132094_))
                                        (let ((_e131156132099_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131153132094_))))
                                          (let ((_lp-tl131158132104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131156132099_)))
                                                (_lp-hd131157132102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131156132099_))))
                                            (let ((__tmp137639
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131157132102_
                                                           _args131159132096_))))
                                              (declare (not safe))
                                              (_loop131155132091_
                                               _lp-tl131158132104_
                                               __tmp137639))))
                                        (let ((_args131160132107_
                                               (reverse _args131159132096_)))
                                          (let ((_L132110_ _args131160132107_)
                                                (_L132111_ _hd131150132081_)
                                                (_L132112_ _hd131141132057_)
                                                (_L132113_ _hd131132132033_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L132113_
                                                        'call-method))
                                                     (let ((__tmp137638
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131105_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L132112_
                                                        __tmp137638)))
                                                (___kont136724136725_
                                                 _L132110_
                                                 _L132111_
                                                 _L132112_
                                                 _L132113_)
                                                (___match137015137016_
                                                 _e131124132006_
                                                 _hd131123132009_
                                                 _tl131122132011_
                                                 _e131127132014_
                                                 _hd131126132017_
                                                 _tl131125132019_
                                                 _e131130132022_
                                                 _hd131129132025_
                                                 _tl131128132027_
                                                 _e131133132030_
                                                 _hd131132132033_
                                                 _tl131131132035_
                                                 _e131136132038_
                                                 _hd131135132041_
                                                 _tl131134132043_
                                                 _e131139132046_
                                                 _hd131138132049_
                                                 _tl131137132051_
                                                 _e131142132054_
                                                 _hd131141132057_
                                                 _tl131140132059_
                                                 _e131145132062_
                                                 _hd131144132065_
                                                 _tl131143132067_
                                                 _e131148132070_
                                                 _hd131147132073_
                                                 _tl131146132075_
                                                 _e131151132078_
                                                 _hd131150132081_
                                                 _tl131149132083_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131155132091_ _target131152132086_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136722136723_))
                    (let ((_e131124132006_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136722136723_))))
                      (let ((_tl131122132011_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131124132006_)))
                            (_hd131123132009_
                             (let ()
                               (declare (not safe))
                               (##car _e131124132006_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131122132011_))
                            (let ((_e131127132014_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131122132011_))))
                              (let ((_tl131125132019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131127132014_)))
                                    (_hd131126132017_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131127132014_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131126132017_))
                                    (let ((_e131130132022_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131126132017_))))
                                      (let ((_tl131128132027_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131130132022_)))
                                            (_hd131129132025_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131130132022_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd131129132025_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd131129132025_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl131128132027_))
                                                    (let ((_e131133132030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl131128132027_))))
                                                      (let ((_tl131131132035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131133132030_)))
                    (_hd131132132033_
                     (let () (declare (not safe)) (##car _e131133132030_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl131131132035_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131125132019_))
                        (let ((_e131136132038_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131125132019_))))
                          (let ((_tl131134132043_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131136132038_)))
                                (_hd131135132041_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131136132038_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131135132041_))
                                (let ((_e131139132046_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131135132041_))))
                                  (let ((_tl131137132051_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131139132046_)))
                                        (_hd131138132049_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131139132046_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd131138132049_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd131138132049_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131137132051_))
                                                (let ((_e131142132054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131137132051_))))
                                                  (let ((_tl131140132059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131142132054_)))
                                                        (_hd131141132057_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131142132054_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131140132059_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl131134132043_))
                                                            (let ((_e131145132062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl131134132043_))))
                      (let ((_tl131143132067_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131145132062_)))
                            (_hd131144132065_
                             (let ()
                               (declare (not safe))
                               (##car _e131145132062_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd131144132065_))
                            (let ((_e131148132070_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd131144132065_))))
                              (let ((_tl131146132075_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131148132070_)))
                                    (_hd131147132073_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131148132070_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd131147132073_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd131147132073_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131146132075_))
                                            (let ((_e131151132078_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131146132075_))))
                                              (let ((_tl131149132083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131151132078_)))
                                                    (_hd131150132081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131151132078_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl131149132083_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl131143132067_))
                                                        (let ((___splice136726136727_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl131143132067_ '0))))
                  (let ((_tl131154132088_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136726136727_ '1)))
                        (_target131152132086_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136726136727_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl131154132088_))
                        (___match136827136828_
                         _e131124132006_
                         _hd131123132009_
                         _tl131122132011_
                         _e131127132014_
                         _hd131126132017_
                         _tl131125132019_
                         _e131130132022_
                         _hd131129132025_
                         _tl131128132027_
                         _e131133132030_
                         _hd131132132033_
                         _tl131131132035_
                         _e131136132038_
                         _hd131135132041_
                         _tl131134132043_
                         _e131139132046_
                         _hd131138132049_
                         _tl131137132051_
                         _e131142132054_
                         _hd131141132057_
                         _tl131140132059_
                         _e131145132062_
                         _hd131144132065_
                         _tl131143132067_
                         _e131148132070_
                         _hd131147132073_
                         _tl131146132075_
                         _e131151132078_
                         _hd131150132081_
                         _tl131149132083_
                         ___splice136726136727_
                         _target131152132086_
                         _tl131154132088_)
                        (___match137015137016_
                         _e131124132006_
                         _hd131123132009_
                         _tl131122132011_
                         _e131127132014_
                         _hd131126132017_
                         _tl131125132019_
                         _e131130132022_
                         _hd131129132025_
                         _tl131128132027_
                         _e131133132030_
                         _hd131132132033_
                         _tl131131132035_
                         _e131136132038_
                         _hd131135132041_
                         _tl131134132043_
                         _e131139132046_
                         _hd131138132049_
                         _tl131137132051_
                         _e131142132054_
                         _hd131141132057_
                         _tl131140132059_
                         _e131145132062_
                         _hd131144132065_
                         _tl131143132067_
                         _e131148132070_
                         _hd131147132073_
                         _tl131146132075_
                         _e131151132078_
                         _hd131150132081_
                         _tl131149132083_))))
                (___match137015137016_
                 _e131124132006_
                 _hd131123132009_
                 _tl131122132011_
                 _e131127132014_
                 _hd131126132017_
                 _tl131125132019_
                 _e131130132022_
                 _hd131129132025_
                 _tl131128132027_
                 _e131133132030_
                 _hd131132132033_
                 _tl131131132035_
                 _e131136132038_
                 _hd131135132041_
                 _tl131134132043_
                 _e131139132046_
                 _hd131138132049_
                 _tl131137132051_
                 _e131142132054_
                 _hd131141132057_
                 _tl131140132059_
                 _e131145132062_
                 _hd131144132065_
                 _tl131143132067_
                 _e131148132070_
                 _hd131147132073_
                 _tl131146132075_
                 _e131151132078_
                 _hd131150132081_
                 _tl131149132083_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match137219137220_
                                                     _e131124132006_
                                                     _hd131123132009_
                                                     _tl131122132011_
                                                     _e131127132014_
                                                     _hd131126132017_
                                                     _tl131125132019_
                                                     _e131130132022_
                                                     _hd131129132025_
                                                     _tl131128132027_
                                                     _e131133132030_
                                                     _hd131132132033_
                                                     _tl131131132035_
                                                     _e131136132038_
                                                     _hd131135132041_
                                                     _tl131134132043_
                                                     _e131139132046_
                                                     _hd131138132049_
                                                     _tl131137132051_
                                                     _e131142132054_
                                                     _hd131141132057_
                                                     _tl131140132059_
                                                     _e131145132062_
                                                     _hd131144132065_
                                                     _tl131143132067_))))
                                            (___match137219137220_
                                             _e131124132006_
                                             _hd131123132009_
                                             _tl131122132011_
                                             _e131127132014_
                                             _hd131126132017_
                                             _tl131125132019_
                                             _e131130132022_
                                             _hd131129132025_
                                             _tl131128132027_
                                             _e131133132030_
                                             _hd131132132033_
                                             _tl131131132035_
                                             _e131136132038_
                                             _hd131135132041_
                                             _tl131134132043_
                                             _e131139132046_
                                             _hd131138132049_
                                             _tl131137132051_
                                             _e131142132054_
                                             _hd131141132057_
                                             _tl131140132059_
                                             _e131145132062_
                                             _hd131144132065_
                                             _tl131143132067_))
                                        (___match136895136896_
                                         _e131124132006_
                                         _hd131123132009_
                                         _tl131122132011_
                                         _e131127132014_
                                         _hd131126132017_
                                         _tl131125132019_
                                         _e131130132022_
                                         _hd131129132025_
                                         _tl131128132027_
                                         _e131133132030_
                                         _hd131132132033_
                                         _tl131131132035_
                                         _e131136132038_
                                         _hd131135132041_
                                         _tl131134132043_
                                         _e131139132046_
                                         _hd131138132049_
                                         _tl131137132051_
                                         _e131142132054_
                                         _hd131141132057_
                                         _tl131140132059_
                                         _e131145132062_
                                         _hd131144132065_
                                         _tl131143132067_
                                         _e131148132070_
                                         _hd131147132073_
                                         _tl131146132075_))
                                    (___match137219137220_
                                     _e131124132006_
                                     _hd131123132009_
                                     _tl131122132011_
                                     _e131127132014_
                                     _hd131126132017_
                                     _tl131125132019_
                                     _e131130132022_
                                     _hd131129132025_
                                     _tl131128132027_
                                     _e131133132030_
                                     _hd131132132033_
                                     _tl131131132035_
                                     _e131136132038_
                                     _hd131135132041_
                                     _tl131134132043_
                                     _e131139132046_
                                     _hd131138132049_
                                     _tl131137132051_
                                     _e131142132054_
                                     _hd131141132057_
                                     _tl131140132059_
                                     _e131145132062_
                                     _hd131144132065_
                                     _tl131143132067_))))
                            (___match137219137220_
                             _e131124132006_
                             _hd131123132009_
                             _tl131122132011_
                             _e131127132014_
                             _hd131126132017_
                             _tl131125132019_
                             _e131130132022_
                             _hd131129132025_
                             _tl131128132027_
                             _e131133132030_
                             _hd131132132033_
                             _tl131131132035_
                             _e131136132038_
                             _hd131135132041_
                             _tl131134132043_
                             _e131139132046_
                             _hd131138132049_
                             _tl131137132051_
                             _e131142132054_
                             _hd131141132057_
                             _tl131140132059_
                             _e131145132062_
                             _hd131144132065_
                             _tl131143132067_))))
                    (___match137157137158_
                     _e131124132006_
                     _hd131123132009_
                     _tl131122132011_
                     _e131127132014_
                     _hd131126132017_
                     _tl131125132019_
                     _e131130132022_
                     _hd131129132025_
                     _tl131128132027_
                     _e131133132030_
                     _hd131132132033_
                     _tl131131132035_
                     _e131136132038_
                     _hd131135132041_
                     _tl131134132043_
                     _e131139132046_
                     _hd131138132049_
                     _tl131137132051_
                     _e131142132054_
                     _hd131141132057_
                     _tl131140132059_))
                (___kont136740136741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136740136741_))
                                            (___kont136740136741_))
                                        (___kont136740136741_))))
                                (___kont136740136741_))))
                        (___kont136740136741_))
                    (___kont136740136741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136740136741_))
                                                (___kont136740136741_))
                                            (___kont136740136741_))))
                                    (___kont136740136741_))))
                            (___kont136740136741_))))
                    (___kont136740136741_))))))))))
