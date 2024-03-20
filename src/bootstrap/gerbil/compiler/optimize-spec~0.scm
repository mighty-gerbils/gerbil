(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710943500)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp137217 (list gxc#::identity::t))
            (__tmp137215
             (let ((__tmp137216
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137216 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp137217
         '()
         __tmp137215
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args136081_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args136081_)))
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
      (lambda (_stx136073_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self136076_
                (let ((__obj137210
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj137210))
               (__tmp137218
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self136076_ _stx136073_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp137218
           gxc#current-compile-method
           _self136076_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp137221 (list gxc#::void::t))
            (__tmp137219
             (let ((__tmp137220
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137220 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp137221
         '(receiver methods slots)
         __tmp137219
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args136070_
        (apply make-instance gxc#::collect-object-refs::t _$args136070_)))
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
      (lambda (_g137222_
               _receiver136031136036_
               _methods136032136038_
               _slots136033136040_
               _stx136042_)
        (let* ((_receiver136045_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver136031136036_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver136031136036_))
               (_methods136047_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods136032136038_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods136032136038_))
               (_slots136049_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136033136040_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136033136040_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self136051_
                  (let ((__obj137212
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
                       __obj137212
                       _receiver136045_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137212
                       _methods136047_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137212
                       _slots136049_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj137212))
                 (__tmp137223
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136051_ _stx136042_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137223
             gxc#current-compile-method
             _self136051_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys136030136058_ . _args136060_)
        (apply gxc#apply-collect-object-refs__%
               _keys136030136058_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136030136058_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136030136058_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys136030136058_ 'slots: absent-value))
               _args136060_)))
    (define gxc#apply-collect-object-refs
      (lambda _args136034136066_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args136034136066_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp137226 (list gxc#::basic-xform-expression::t))
            (__tmp137224
             (let ((__tmp137225
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137225 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp137226
         '(receiver klass methods slots)
         __tmp137224
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args136026_
        (apply make-instance gxc#::subst-object-refs::t _$args136026_)))
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
      (lambda (_g137227_
               _receiver135982135988_
               _klass135983135990_
               _methods135984135992_
               _slots135985135994_
               _stx135996_)
        (let* ((_receiver135999_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135982135988_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135982135988_))
               (_klass136001_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass135983135990_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass135983135990_))
               (_methods136003_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135984135992_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135984135992_))
               (_slots136005_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135985135994_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135985135994_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self136007_
                  (let ((__obj137214
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
                       __obj137214
                       _receiver135999_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137214
                       _klass136001_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137214
                       _methods136003_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137214
                       _slots136005_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj137214))
                 (__tmp137228
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136007_ _stx135996_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137228
             gxc#current-compile-method
             _self136007_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135981136014_ . _args136016_)
        (apply gxc#apply-subst-object-refs__%
               _keys135981136014_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135981136014_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135981136014_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135981136014_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135981136014_ 'slots: absent-value))
               _args136016_)))
    (define gxc#apply-subst-object-refs
      (lambda _args135986136022_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args135986136022_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self133191_ _stx133192_)
        (letrec ((_generate-method-bind133194_
                  (lambda (_$klass135973_
                           _$method-table135974_
                           _id135975_
                           _$id135976_)
                    (let ((_$tmp135978_
                           (let ((__tmp137229 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137229))))
                      (let ((__tmp137277
                             (let ()
                               (declare (not safe))
                               (cons _$id135976_ '())))
                            (__tmp137230
                             (let ((__tmp137231
                                    (let ((__tmp137232
                                           (let ((__tmp137275
                                                  (let ((__tmp137276
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137276)))
                                                 (__tmp137233
                                                  (let ((__tmp137234
                                                         (let ((__tmp137235
                                                                (let ((__tmp137236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137237
                                      (let ((__tmp137238
                                             (let ((__tmp137258
                                                    (let ((__tmp137259
                                                           (let ((__tmp137274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135978_ '())))
                         (__tmp137260
                          (let ((__tmp137261
                                 (let ((__tmp137262
                                        (let ((__tmp137272
                                               (let ((__tmp137273
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp137273)))
                                              (__tmp137263
                                               (let ((__tmp137270
                                                      (let ((__tmp137271
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135974_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp137271)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137264
                                                      (let ((__tmp137268
                                                             (let ((__tmp137269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135975_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp137269)))
                    (__tmp137265
                     (let ((__tmp137266
                            (let ((__tmp137267
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137267))))
                       (declare (not safe))
                       (cons __tmp137266 '()))))
                (declare (not safe))
                (cons __tmp137268 __tmp137265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp137270
                                                       __tmp137264))))
                                          (declare (not safe))
                                          (cons __tmp137272 __tmp137263))))
                                   (declare (not safe))
                                   (cons '%#call __tmp137262))))
                            (declare (not safe))
                            (cons __tmp137261 '()))))
                     (declare (not safe))
                     (cons __tmp137274 __tmp137260))))
              (declare (not safe))
              (cons __tmp137259 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137239
                                                    (let ((__tmp137240
                                                           (let ((__tmp137241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137256
                                 (let ((__tmp137257
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135978_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp137257)))
                                (__tmp137242
                                 (let ((__tmp137254
                                        (let ((__tmp137255
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135978_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp137255)))
                                       (__tmp137243
                                        (let ((__tmp137244
                                               (let ((__tmp137245
                                                      (let ((__tmp137252
                                                             (let ((__tmp137253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp137253)))
                    (__tmp137246
                     (let ((__tmp137250
                            (let ((__tmp137251
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137251)))
                           (__tmp137247
                            (let ((__tmp137248
                                   (let ((__tmp137249
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135975_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp137249))))
                              (declare (not safe))
                              (cons __tmp137248 '()))))
                       (declare (not safe))
                       (cons __tmp137250 __tmp137247))))
                (declare (not safe))
                (cons __tmp137252 __tmp137246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp137245))))
                                          (declare (not safe))
                                          (cons __tmp137244 '()))))
                                   (declare (not safe))
                                   (cons __tmp137254 __tmp137243))))
                            (declare (not safe))
                            (cons __tmp137256 __tmp137242))))
                     (declare (not safe))
                     (cons '%#if __tmp137241))))
              (declare (not safe))
              (cons __tmp137240 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137258
                                                     __tmp137239))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp137238))))
                                 (declare (not safe))
                                 (cons __tmp137237 '()))))
                          (declare (not safe))
                          (cons '() __tmp137236))))
                   (declare (not safe))
                   (cons '%#lambda __tmp137235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137234 '()))))
                                             (declare (not safe))
                                             (cons __tmp137275 __tmp137233))))
                                      (declare (not safe))
                                      (cons '%#call __tmp137232))))
                               (declare (not safe))
                               (cons __tmp137231 '()))))
                        (declare (not safe))
                        (cons __tmp137277 __tmp137230)))))
                 (_generate-slot-bind133195_
                  (lambda (_$klass135967_ _id135968_ _$id135969_)
                    (let ((_$tmp135971_
                           (let ((__tmp137278 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137278))))
                      (let ((__tmp137315
                             (let ()
                               (declare (not safe))
                               (cons _$id135969_ '())))
                            (__tmp137279
                             (let ((__tmp137280
                                    (let ((__tmp137281
                                           (let ((__tmp137301
                                                  (let ((__tmp137302
                                                         (let ((__tmp137314
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135971_ '())))
                       (__tmp137303
                        (let ((__tmp137304
                               (let ((__tmp137305
                                      (let ((__tmp137312
                                             (let ((__tmp137313
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp137313)))
                                            (__tmp137306
                                             (let ((__tmp137310
                                                    (let ((__tmp137311
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp137311)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137307
                                                    (let ((__tmp137308
                                                           (let ((__tmp137309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135968_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp137309))))
              (declare (not safe))
              (cons __tmp137308 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137310
                                                     __tmp137307))))
                                        (declare (not safe))
                                        (cons __tmp137312 __tmp137306))))
                                 (declare (not safe))
                                 (cons '%#call __tmp137305))))
                          (declare (not safe))
                          (cons __tmp137304 '()))))
                   (declare (not safe))
                   (cons __tmp137314 __tmp137303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137302 '())))
                                                 (__tmp137282
                                                  (let ((__tmp137283
                                                         (let ((__tmp137284
                                                                (let ((__tmp137299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137300
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135971_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp137300)))
                              (__tmp137285
                               (let ((__tmp137297
                                      (let ((__tmp137298
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135971_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp137298)))
                                     (__tmp137286
                                      (let ((__tmp137287
                                             (let ((__tmp137288
                                                    (let ((__tmp137295
                                                           (let ((__tmp137296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp137296)))
                  (__tmp137289
                   (let ((__tmp137293
                          (let ((__tmp137294
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp137294)))
                         (__tmp137290
                          (let ((__tmp137291
                                 (let ((__tmp137292
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135968_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp137292))))
                            (declare (not safe))
                            (cons __tmp137291 '()))))
                     (declare (not safe))
                     (cons __tmp137293 __tmp137290))))
              (declare (not safe))
              (cons __tmp137295 __tmp137289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp137288))))
                                        (declare (not safe))
                                        (cons __tmp137287 '()))))
                                 (declare (not safe))
                                 (cons __tmp137297 __tmp137286))))
                          (declare (not safe))
                          (cons __tmp137299 __tmp137285))))
                   (declare (not safe))
                   (cons '%#if __tmp137284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137283 '()))))
                                             (declare (not safe))
                                             (cons __tmp137301 __tmp137282))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp137281))))
                               (declare (not safe))
                               (cons __tmp137280 '()))))
                        (declare (not safe))
                        (cons __tmp137315 __tmp137279)))))
                 (_generate-specializer-impl133196_
                  (lambda (_$klass135961_
                           _$method-table135962_
                           _methods-bind135963_
                           _slots-bind135964_
                           _specializer-impl135965_)
                    (let ((__tmp137316
                           (let ((__tmp137317
                                  (let ((__tmp137323
                                         (let ((__tmp137324
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135962_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135961_ __tmp137324)))
                                        (__tmp137318
                                         (let ((__tmp137319
                                                (let ((__tmp137320
                                                       (let ((__tmp137322
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135964_ _methods-bind135963_)))
                     (__tmp137321
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135965_ '()))))
                 (declare (not safe))
                 (cons __tmp137322 __tmp137321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137320))))
                                           (declare (not safe))
                                           (cons __tmp137319 '()))))
                                    (declare (not safe))
                                    (cons __tmp137323 __tmp137318))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137317))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137316 _stx133192_))))
                 (_generate-specializer-def133197_
                  (lambda (_id135957_
                           _specializer-id135958_
                           _specializer-impl135959_)
                    (let ((__tmp137325
                           (let ((__tmp137326
                                  (let ((__tmp137327
                                         (let ((__tmp137340
                                                (let ((__tmp137341
                                                       (let ((__tmp137342
                                                              (let ((__tmp137344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135958_ '())))
                            (__tmp137343
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135959_ '()))))
                        (declare (not safe))
                        (cons __tmp137344 __tmp137343))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137341
                                                   _stx133192_)))
                                               (__tmp137328
                                                (let ((__tmp137329
                                                       (let ((__tmp137330
                                                              (let ((__tmp137331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137338
                                    (let ((__tmp137339
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137339)))
                                   (__tmp137332
                                    (let ((__tmp137336
                                           (let ((__tmp137337
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135957_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137337)))
                                          (__tmp137333
                                           (let ((__tmp137334
                                                  (let ((__tmp137335
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137335))))
                                             (declare (not safe))
                                             (cons __tmp137334 '()))))
                                      (declare (not safe))
                                      (cons __tmp137336 __tmp137333))))
                               (declare (not safe))
                               (cons __tmp137338 __tmp137332))))
                        (declare (not safe))
                        (cons '%#call __tmp137331))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137330 _stx133192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137329 '()))))
                                           (declare (not safe))
                                           (cons __tmp137340 __tmp137328))))
                                    (declare (not safe))
                                    (cons _stx133192_ __tmp137327))))
                             (declare (not safe))
                             (cons '%#begin __tmp137326))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137325 _stx133192_)))))
          (let* ((___stx136170136171_ _stx133192_)
                 (_g133200133220_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136170136171_)))))
            (let ((___kont136172136173_
                   (lambda (_L133264_ _L133265_)
                     (let ((_method-calls133284_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs133285_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty133286_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?133288_
                                 (lambda ()
                                   (if (let ((__tmp137346
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls133284_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137346))
                                       (let ((__tmp137345
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs133285_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137345))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L133264_))
                             (let* ((___stx136084136085_ _L133264_)
                                    (_g133675133693_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx136084136085_)))))
                               (let ((___kont136086136087_
                                      (lambda (_L133729_ _L133730_ _L133731_)
                                        (for-each
                                         (lambda (_g133746133748_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133746133748_
                                              'receiver:
                                              _L133731_
                                              'methods:
                                              _method-calls133284_
                                              'slots:
                                              _slot-refs133285_)))
                                         _L133729_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?133288_))
                                            _stx133192_
                                            (let* ((_specializer-id133757_
                                                    (let* ((_id133751_
                                                            (let ((__tmp137468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L133265_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137468 '"::specialize")))
                   (_specializer-id133754_
                    (let ((__tmp137469
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx133192_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133751_ __tmp137469))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133754_))
              _specializer-id133754_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133759_
                                                    (let ((__tmp137470
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137470)))
                                                   (_$method-table133761_
                                                    (let ((__tmp137471
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137471)))
                                                   (_methods133763_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls133284_)))
                                                   (_$methods133767_
                                                    (map (lambda (_id133765_)
                                                           (let ((__tmp137472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133765_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137472)))
                 _methods133763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137473_
                                                    (for-each
                                                     (lambda (_g133768133771_
                                                              _g133769133773_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls133284_
                                                          _g133768133771_
                                                          _g133769133773_)))
                                                     _methods133763_
                                                     _$methods133767_))
                                                   (_methods-bind133784_
                                                    (map (lambda (_g133776133779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133777133781_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind133194_
                      _$klass133759_
                      _$method-table133761_
                      _g133776133779_
                      _g133777133781_)))
                 _methods133763_
                 _$methods133767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133786_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs133285_)))
                                                   (_$slots133790_
                                                    (map (lambda (_id133788_)
                                                           (let ((__tmp137474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133788_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137474)))
                 _slots133786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137475_
                                                    (for-each
                                                     (lambda (_g133791133794_
                                                              _g133792133796_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs133285_
                                                          _g133791133794_
                                                          _g133792133796_)))
                                                     _slots133786_
                                                     _$slots133790_))
                                                   (_slots-bind133807_
                                                    (map (lambda (_g133799133802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133800133804_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind133195_
                      _$klass133759_
                      _g133799133802_
                      _g133800133804_)))
                 _slots133786_
                 _$slots133790_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133813_
                                                    (map (lambda (_g133808133810_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133808133810_
                                                              'receiver:
                                                              _L133731_
                                                              'klass:
                                                              _$klass133759_
                                                              'methods:
                                                              _method-calls133284_
                                                              'slots:
                                                              _slot-refs133285_)))
                                                         _L133729_))
                                                   (_specializer-impl133815_
                                                    (let ((__tmp137476
                                                           (let ((__tmp137477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137478
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133731_ _L133730_))))
                            (declare (not safe))
                            (cons __tmp137478 _specializer-body133813_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137477))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137476 _stx133192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133817_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl133196_
                                                       _$klass133759_
                                                       _$method-table133761_
                                                       _methods-bind133784_
                                                       _slots-bind133807_
                                                       _specializer-impl133815_))))
                                              (let ((__tmp137480
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L133265_)))
                                                    (__tmp137479
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133757_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137480
                                                 '" => "
                                                 __tmp137479))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def133197_
                                                 _L133265_
                                                 _specializer-id133757_
                                                 _specializer-impl133817_))))))
                                     (___kont136088136089_
                                      (lambda () _stx133192_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx136084136085_))
                                     (let ((_e133682133705_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx136084136085_))))
                                       (let ((_tl133680133710_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133682133705_)))
                                             (_hd133681133708_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133682133705_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133680133710_))
                                             (let ((_e133685133713_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133680133710_))))
                                               (let ((_tl133683133718_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133685133713_)))
                                                     (_hd133684133716_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133685133713_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133684133716_))
                                                     (let ((_e133688133721_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133684133716_))))
                                                       (let ((_tl133686133726_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133688133721_)))
                     (_hd133687133724_
                      (let () (declare (not safe)) (##car _e133688133721_))))
                 (___kont136086136087_
                  _tl133683133718_
                  _tl133686133726_
                  _hd133687133724_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136088136089_))))
                                             (___kont136088136089_))))
                                     (___kont136088136089_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L133264_))
                                 (let* ((_g133823133842_
                                         (lambda (_g133824133839_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133824133839_))))
                                        (_g133822134125_
                                         (lambda (_g133824133845_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133824133845_))
                                               (let ((_e133828133847_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133824133845_))))
                                                 (let ((_hd133827133850_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133828133847_)))
                                                       (_tl133826133852_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133828133847_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133826133852_))
                                                       (let ((_g137451_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133826133852_ '0))))
                 (begin
                   (let ((_g137452_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137451_)
                                (##vector-length _g137451_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137452_ 2)))
                         (error "Context expects 2 values" _g137452_)))
                   (let ((_target133829133855_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137451_ 0)))
                         (_tl133831133857_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137451_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133831133857_))
                         (letrec ((_loop133832133860_
                                   (lambda (_hd133830133863_
                                            _clause133836133865_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133830133863_))
                                         (let ((_e133833133868_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133830133863_))))
                                           (let ((_lp-hd133834133871_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133833133868_)))
                                                 (_lp-tl133835133873_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133833133868_))))
                                             (let ((__tmp137467
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133834133871_
                                                            _clause133836133865_))))
                                               (declare (not safe))
                                               (_loop133832133860_
                                                _lp-tl133835133873_
                                                __tmp137467))))
                                         (let ((_clause133837133876_
                                                (reverse _clause133836133865_)))
                                           ((lambda (_L133879_)
                                              (for-each
                                               (lambda (_clause133892_)
                                                 (let* ((___stx136110136111_
                                                         _clause133892_)
                                                        (_g133895133910_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx136110136111_)))))
                                                   (let ((___kont136112136113_
                                                          (lambda (_L133938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133939_
                           _L133940_)
                    (for-each
                     (lambda (_g133955133957_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133955133957_
                          'receiver:
                          _L133940_
                          'methods:
                          _method-calls133284_
                          'slots:
                          _slot-refs133285_)))
                     _L133938_)))
                 (___kont136114136115_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx136110136111_))
                                                         (let ((_e133902133922_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx136110136111_))))
                   (let ((_tl133900133927_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133902133922_)))
                         (_hd133901133925_
                          (let ()
                            (declare (not safe))
                            (##car _e133902133922_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133901133925_))
                         (let ((_e133905133930_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133901133925_))))
                           (let ((_tl133903133935_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133905133930_)))
                                 (_hd133904133933_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133905133930_))))
                             (___kont136112136113_
                              _tl133900133927_
                              _tl133903133935_
                              _hd133904133933_)))
                         (___kont136114136115_))))
                 (___kont136114136115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137453
                                                      (lambda (_g133962133965_
                                                               _g133963133967_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133962133965_
                                                                _g133963133967_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137453
                                                         '()
                                                         _L133879_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133288_))
                                                  _stx133192_
                                                  (let* ((_specializer-id133976_
                                                          (let* ((_id133970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137454
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133265_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137454 '"::specialize")))
                         (_specializer-id133973_
                          (let ((__tmp137455
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133192_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133970_ __tmp137455))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133973_))
                    _specializer-id133973_))
                 (_$klass133978_
                  (let ((__tmp137456 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137456)))
                 (_$method-table133980_
                  (let ((__tmp137457 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137457)))
                 (_methods133982_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133284_)))
                 (_$methods133986_
                  (map (lambda (_id133984_)
                         (let ((__tmp137458 (gensym _id133984_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137458)))
                       _methods133982_))
                 (_g137459_
                  (for-each
                   (lambda (_g133987133990_ _g133988133992_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133284_
                        _g133987133990_
                        _g133988133992_)))
                   _methods133982_
                   _$methods133986_))
                 (_methods-bind134003_
                  (map (lambda (_g133995133998_ _g133996134000_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133194_
                            _$klass133978_
                            _$method-table133980_
                            _g133995133998_
                            _g133996134000_)))
                       _methods133982_
                       _$methods133986_))
                 (_slots134005_
                  (let () (declare (not safe)) (hash-keys _slot-refs133285_)))
                 (_$slots134009_
                  (map (lambda (_id134007_)
                         (let ((__tmp137460 (gensym _id134007_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137460)))
                       _slots134005_))
                 (_g137461_
                  (for-each
                   (lambda (_g134010134013_ _g134011134015_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133285_
                        _g134010134013_
                        _g134011134015_)))
                   _slots134005_
                   _$slots134009_))
                 (_slots-bind134026_
                  (map (lambda (_g134018134021_ _g134019134023_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133195_
                            _$klass133978_
                            _g134018134021_
                            _g134019134023_)))
                       _slots134005_
                       _$slots134009_))
                 (_specializer-clauses134118_
                  (map (lambda (_clause134028_)
                         (let* ((___stx136130136131_ _clause134028_)
                                (_g134031134046_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx136130136131_)))))
                           (let ((___kont136132136133_
                                  (lambda (_L134074_ _L134075_ _L134076_)
                                    (let* ((_body134106_
                                            (map (lambda (_g134101134103_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g134101134103_
                                                      'receiver:
                                                      _L134076_
                                                      'klass:
                                                      _$klass133978_
                                                      'methods:
                                                      _method-calls133284_
                                                      'slots:
                                                      _slot-refs133285_)))
                                                 _L134074_))
                                           (__tmp137462
                                            (let ()
                                              (declare (not safe))
                                              (cons _L134076_ _L134075_))))
                                      (declare (not safe))
                                      (cons __tmp137462 _body134106_))))
                                 (___kont136134136135_
                                  (lambda () _clause134028_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx136130136131_))
                                 (let ((_e134038134058_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx136130136131_))))
                                   (let ((_tl134036134063_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e134038134058_)))
                                         (_hd134037134061_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e134038134058_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd134037134061_))
                                         (let ((_e134041134066_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd134037134061_))))
                                           (let ((_tl134039134071_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e134041134066_)))
                                                 (_hd134040134069_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e134041134066_))))
                                             (___kont136132136133_
                                              _tl134036134063_
                                              _tl134039134071_
                                              _hd134040134069_)))
                                         (___kont136134136135_))))
                                 (___kont136134136135_)))))
                       (let ((__tmp137463
                              (lambda (_g134110134113_ _g134111134115_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g134110134113_ _g134111134115_)))))
                         (declare (not safe))
                         (foldr1 __tmp137463 '() _L133879_))))
                 (_specializer-impl134120_
                  (let ((__tmp137464
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses134118_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137464 _stx133192_)))
                 (_specializer-impl134122_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133196_
                     _$klass133978_
                     _$method-table133980_
                     _methods-bind134003_
                     _slots-bind134026_
                     _specializer-impl134120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137466
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133265_)))
                                                          (__tmp137465
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133976_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137466
                                                       '" => "
                                                       __tmp137465))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133197_
                                                       _L133265_
                                                       _specializer-id133976_
                                                       _specializer-impl134122_)))))
                                            _clause133837133876_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133832133860_ _target133829133855_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133823133842_ _g133824133845_))))))
               (let ()
                 (declare (not safe))
                 (_g133823133842_ _g133824133845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133823133842_
                                                  _g133824133845_))))))
                                   (declare (not safe))
                                   (_g133822134125_ _L133264_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L133264_))
                                     (let* ((_g134128134158_
                                             (lambda (_g134129134155_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134129134155_))))
                                            (_g134127134763_
                                             (lambda (_g134129134161_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134129134161_))
                                                   (let ((_e134135134163_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134129134161_))))
                                                     (let ((_hd134134134166_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134135134163_)))
                                                           (_tl134133134168_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134135134163_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134133134168_))
                                                           (let ((_e134138134171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134133134168_))))
                     (let ((_hd134137134174_
                            (let ()
                              (declare (not safe))
                              (##car _e134138134171_)))
                           (_tl134136134176_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134138134171_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134137134174_))
                           (let ((_e134141134179_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134137134174_))))
                             (let ((_hd134140134182_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134141134179_)))
                                   (_tl134139134184_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134141134179_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134140134182_))
                                   (let ((_e134144134187_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134140134182_))))
                                     (let ((_hd134143134190_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134144134187_)))
                                           (_tl134142134192_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134144134187_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd134143134190_))
                                           (let ((_e134147134195_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd134143134190_))))
                                             (let ((_hd134146134198_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134147134195_)))
                                                   (_tl134145134200_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134147134195_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134145134200_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl134142134192_))
                                                       (let ((_e134150134203_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl134142134192_))))
                 (let ((_hd134149134206_
                        (let () (declare (not safe)) (##car _e134150134203_)))
                       (_tl134148134208_
                        (let () (declare (not safe)) (##cdr _e134150134203_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134148134208_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134139134184_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134136134176_))
                               (let ((_e134153134211_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134136134176_))))
                                 (let ((_hd134152134214_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134153134211_)))
                                       (_tl134151134216_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134153134211_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134151134216_))
                                       ((lambda (_L134219_ _L134220_ _L134221_)
                                          (let* ((_g134244134262_
                                                  (lambda (_g134245134259_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134245134259_))))
                                                 (_g134243134313_
                                                  (lambda (_g134245134265_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134245134265_))
                                                        (let ((_e134251134267_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134245134265_))))
                  (let ((_hd134250134270_
                         (let () (declare (not safe)) (##car _e134251134267_)))
                        (_tl134249134272_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134251134267_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl134249134272_))
                        (let ((_e134254134275_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl134249134272_))))
                          (let ((_hd134253134278_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e134254134275_)))
                                (_tl134252134280_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e134254134275_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd134253134278_))
                                (let ((_e134257134283_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd134253134278_))))
                                  (let ((_hd134256134286_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134257134283_)))
                                        (_tl134255134288_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134257134283_))))
                                    ((lambda (_L134291_ _L134292_ _L134293_)
                                       (for-each
                                        (lambda (_g134308134310_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g134308134310_
                                             'receiver:
                                             _L134293_
                                             'methods:
                                             _method-calls133284_
                                             'slots:
                                             _slot-refs133285_)))
                                        _L134291_))
                                     _tl134252134280_
                                     _tl134255134288_
                                     _hd134256134286_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134244134262_ _g134245134265_)))))
                        (let ()
                          (declare (not safe))
                          (_g134244134262_ _g134245134265_)))))
                (let ()
                  (declare (not safe))
                  (_g134244134262_ _g134245134265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134243134313_ _L134220_))
                                          (let* ((_g134316134335_
                                                  (lambda (_g134317134332_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134317134332_))))
                                                 (_g134315134454_
                                                  (lambda (_g134317134338_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134317134338_))
                                                        (let ((_e134321134340_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134317134338_))))
                  (let ((_hd134320134343_
                         (let () (declare (not safe)) (##car _e134321134340_)))
                        (_tl134319134345_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134321134340_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134319134345_))
                        (let ((_g137421_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134319134345_
                                  '0))))
                          (begin
                            (let ((_g137422_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137421_)
                                         (##vector-length _g137421_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137422_ 2)))
                                  (error "Context expects 2 values"
                                         _g137422_)))
                            (let ((_target134322134348_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137421_ 0)))
                                  (_tl134324134350_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137421_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134324134350_))
                                  (letrec ((_loop134325134353_
                                            (lambda (_hd134323134356_
                                                     _clause134329134358_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134323134356_))
                                                  (let ((_e134326134361_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134323134356_))))
                                                    (let ((_lp-hd134327134364_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134326134361_)))
                                                          (_lp-tl134328134366_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134326134361_))))
                                                      (let ((__tmp137424
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134327134364_ _clause134329134358_))))
                (declare (not safe))
                (_loop134325134353_ _lp-tl134328134366_ __tmp137424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134330134369_
                                                         (reverse _clause134329134358_)))
                                                    ((lambda (_L134372_)
                                                       (for-each
                                                        (lambda (_clause134385_)
                                                          (let* ((_g134387134402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134388134399_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134388134399_))))
                         (_g134386134444_
                          (lambda (_g134388134405_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134388134405_))
                                (let ((_e134394134407_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134388134405_))))
                                  (let ((_hd134393134410_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134394134407_)))
                                        (_tl134392134412_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134394134407_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134393134410_))
                                        (let ((_e134397134415_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134393134410_))))
                                          (let ((_hd134396134418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134397134415_)))
                                                (_tl134395134420_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134397134415_))))
                                            ((lambda (_L134423_
                                                      _L134424_
                                                      _L134425_)
                                               (for-each
                                                (lambda (_g134439134441_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134439134441_
                                                     'receiver:
                                                     _L134425_
                                                     'methods:
                                                     _method-calls133284_
                                                     'slots:
                                                     _slot-refs133285_)))
                                                _L134423_))
                                             _tl134392134412_
                                             _tl134395134420_
                                             _hd134396134418_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134387134402_ _g134388134405_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134387134402_ _g134388134405_))))))
                    (declare (not safe))
                    (_g134386134444_ _clause134385_)))
                (let ((__tmp137423
                       (lambda (_g134446134449_ _g134447134451_)
                         (let ()
                           (declare (not safe))
                           (cons _g134446134449_ _g134447134451_)))))
                  (declare (not safe))
                  (foldr1 __tmp137423 '() _L134372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134330134369_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134325134353_
                                       _target134322134348_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g134316134335_ _g134317134338_))))))
                        (let ()
                          (declare (not safe))
                          (_g134316134335_ _g134317134338_)))))
                (let ()
                  (declare (not safe))
                  (_g134316134335_ _g134317134338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134315134454_ _L134219_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?133288_))
                                              _stx133192_
                                              (let* ((_specializer-id134463_
                                                      (let* ((_id134457_
                                                              (let ((__tmp137425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L133265_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137425 '"::specialize")))
                     (_specializer-id134460_
                      (let ((__tmp137426
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx133192_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134457_ __tmp137426))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134460_))
                _specializer-id134460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134465_
                                                      (let ((__tmp137427
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137427)))
                                                     (_$method-table134467_
                                                      (let ((__tmp137428
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137428)))
                                                     (_methods134469_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls133284_)))
                                                     (_$methods134473_
                                                      (map (lambda (_id134471_)
                                                             (let ((__tmp137429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134471_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137429)))
                   _methods134469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137430_
                                                      (for-each
                                                       (lambda (_g134474134477_
                                                                _g134475134479_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls133284_
                                                            _g134474134477_
                                                            _g134475134479_)))
                                                       _methods134469_
                                                       _$methods134473_))
                                                     (_methods-bind134490_
                                                      (map (lambda (_g134482134485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134483134487_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind133194_
                        _$klass134465_
                        _$method-table134467_
                        _g134482134485_
                        _g134483134487_)))
                   _methods134469_
                   _$methods134473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134492_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs133285_)))
                                                     (_$slots134496_
                                                      (map (lambda (_id134494_)
                                                             (let ((__tmp137431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134494_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137431)))
                   _slots134492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137432_
                                                      (for-each
                                                       (lambda (_g134497134500_
                                                                _g134498134502_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs133285_
                                                            _g134497134500_
                                                            _g134498134502_)))
                                                       _slots134492_
                                                       _$slots134496_))
                                                     (_slots-bind134513_
                                                      (map (lambda (_g134505134508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134506134510_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind133195_
                        _$klass134465_
                        _g134505134508_
                        _g134506134510_)))
                   _slots134492_
                   _$slots134496_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134599_
                                                      (let* ((_g134515134533_
                                                              (lambda (_g134516134530_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134516134530_))))
                     (_g134514134596_
                      (lambda (_g134516134536_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134516134536_))
                            (let ((_e134522134538_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134516134536_))))
                              (let ((_hd134521134541_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134522134538_)))
                                    (_tl134520134543_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134522134538_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134520134543_))
                                    (let ((_e134525134546_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134520134543_))))
                                      (let ((_hd134524134549_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134525134546_)))
                                            (_tl134523134551_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134525134546_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134524134549_))
                                            (let ((_e134528134554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134524134549_))))
                                              (let ((_hd134527134557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134528134554_)))
                                                    (_tl134526134559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134528134554_))))
                                                ((lambda (_L134562_
                                                          _L134563_
                                                          _L134564_)
                                                   (let* ((_body134594_
                                                           (map (lambda (_g134589134591_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134589134591_
                             'receiver:
                             _L134564_
                             'klass:
                             _$klass134465_
                             'methods:
                             _method-calls133284_
                             'slots:
                             _slot-refs133285_)))
                        _L134562_))
                  (__tmp137433
                   (let ((__tmp137434
                          (let ((__tmp137435
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134564_ _L134563_))))
                            (declare (not safe))
                            (cons __tmp137435 _body134594_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137433
                                                      _L134220_)))
                                                 _tl134523134551_
                                                 _tl134526134559_
                                                 _hd134527134557_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134515134533_
                                               _g134516134536_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134515134533_ _g134516134536_)))))
                            (let ()
                              (declare (not safe))
                              (_g134515134533_ _g134516134536_))))))
                (declare (not safe))
                (_g134514134596_ _L134220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134756_
                                                      (let* ((_g134601134620_
                                                              (lambda (_g134602134617_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134602134617_))))
                     (_g134600134753_
                      (lambda (_g134602134623_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134602134623_))
                            (let ((_e134606134625_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134602134623_))))
                              (let ((_hd134605134628_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134606134625_)))
                                    (_tl134604134630_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134606134625_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134604134630_))
                                    (let ((_g137436_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134604134630_
                                              '0))))
                                      (begin
                                        (let ((_g137437_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137436_)
                                                     (##vector-length
                                                      _g137436_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137437_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137437_)))
                                        (let ((_target134607134633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137436_ 0)))
                                              (_tl134609134635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137436_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134609134635_))
                                              (letrec ((_loop134610134638_
                                                        (lambda (_hd134608134641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134614134643_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134608134641_))
                      (let ((_e134611134646_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134608134641_))))
                        (let ((_lp-hd134612134649_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134611134646_)))
                              (_lp-tl134613134651_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134611134646_))))
                          (let ((__tmp137441
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134612134649_
                                         _clause134614134643_))))
                            (declare (not safe))
                            (_loop134610134638_
                             _lp-tl134613134651_
                             __tmp137441))))
                      (let ((_clause134615134654_
                             (reverse _clause134614134643_)))
                        ((lambda (_L134657_)
                           (let* ((_clauses134751_
                                   (map (lambda (_clause134671_)
                                          (let* ((___stx136150136151_
                                                  _clause134671_)
                                                 (_g134674134689_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136150136151_)))))
                                            (let ((___kont136152136153_
                                                   (lambda (_L134717_
                                                            _L134718_
                                                            _L134719_)
                                                     (let* ((_body134739_
                                                             (map (lambda (_g134734134736_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134734134736_
                               'receiver:
                               _L134719_
                               'klass:
                               _$klass134465_
                               'methods:
                               _method-calls133284_
                               'slots:
                               _slot-refs133285_)))
                          _L134717_))
                    (__tmp137438
                     (let () (declare (not safe)) (cons _L134719_ _L134718_))))
               (declare (not safe))
               (cons __tmp137438 _body134739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136154136155_
                                                   (lambda () _clause134671_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx136150136151_))
                                                  (let ((_e134681134701_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx136150136151_))))
                                                    (let ((_tl134679134706_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134681134701_)))
                                                          (_hd134680134704_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134681134701_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134680134704_))
                                                          (let ((_e134684134709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134680134704_))))
                    (let ((_tl134682134714_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134684134709_)))
                          (_hd134683134712_
                           (let ()
                             (declare (not safe))
                             (##car _e134684134709_))))
                      (___kont136152136153_
                       _tl134679134706_
                       _tl134682134714_
                       _hd134683134712_)))
                  (___kont136154136155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136154136155_)))))
                                        (let ((__tmp137439
                                               (lambda (_g134743134746_
                                                        _g134744134748_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134743134746_
                                                         _g134744134748_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137439 '() _L134657_))))
                                  (__tmp137440
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134751_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137440 _L134219_)))
                         _clause134615134654_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134610134638_
                                                   _target134607134633_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134601134620_
                                                 _g134602134623_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134601134620_ _g134602134623_)))))
                            (let ()
                              (declare (not safe))
                              (_g134601134620_ _g134602134623_))))))
                (declare (not safe))
                (_g134600134753_ _L134219_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134758_
                                                      (let ((__tmp137442
                                                             (let ((__tmp137443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137445
                                   (let ((__tmp137446
                                          (let ((__tmp137448
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L134221_ '())))
                                                (__tmp137447
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134599_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137448 __tmp137447))))
                                     (declare (not safe))
                                     (cons __tmp137446 '())))
                                  (__tmp137444
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134756_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137445 __tmp137444))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137443))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137442 _stx133192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134760_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl133196_
                                                         _$klass134465_
                                                         _$method-table134467_
                                                         _methods-bind134490_
                                                         _slots-bind134513_
                                                         _specializer-impl134758_))))
                                                (let ((__tmp137450
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L133265_)))
                                                      (__tmp137449
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134463_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137450
                                                   '" => "
                                                   __tmp137449))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def133197_
                                                   _L133265_
                                                   _specializer-id134463_
                                                   _specializer-impl134760_)))))
                                        _hd134152134214_
                                        _hd134149134206_
                                        _hd134146134198_)
                                       (let ()
                                         (declare (not safe))
                                         (_g134128134158_ _g134129134161_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134128134158_ _g134129134161_)))
                           (let ()
                             (declare (not safe))
                             (_g134128134158_ _g134129134161_)))
                       (let ()
                         (declare (not safe))
                         (_g134128134158_ _g134129134161_)))))
               (let () (declare (not safe)) (_g134128134158_ _g134129134161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134128134158_
                                                      _g134129134161_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134128134158_
                                              _g134129134161_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134128134158_ _g134129134161_)))))
                           (let ()
                             (declare (not safe))
                             (_g134128134158_ _g134129134161_)))))
                   (let ()
                     (declare (not safe))
                     (_g134128134158_ _g134129134161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134128134158_
                                                      _g134129134161_))))))
                                       (declare (not safe))
                                       (_g134127134763_ _L133264_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L133264_))
                                         (let* ((_g134766134819_
                                                 (lambda (_g134767134816_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134767134816_))))
                                                (_g134765135950_
                                                 (lambda (_g134767134822_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134767134822_))
                                                       (let ((_e134775134824_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134767134822_))))
                 (let ((_hd134774134827_
                        (let () (declare (not safe)) (##car _e134775134824_)))
                       (_tl134773134829_
                        (let () (declare (not safe)) (##cdr _e134775134824_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134774134827_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134774134827_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134773134829_))
                               (let ((_e134778134832_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134773134829_))))
                                 (let ((_hd134777134835_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134778134832_)))
                                       (_tl134776134837_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134778134832_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134777134835_))
                                       (let ((_e134781134840_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134777134835_))))
                                         (let ((_hd134780134843_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134781134840_)))
                                               (_tl134779134845_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134781134840_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134780134843_))
                                               (let ((_e134784134848_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134780134843_))))
                                                 (let ((_hd134783134851_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134784134848_)))
                                                       (_tl134782134853_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134784134848_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134783134851_))
                                                       (let ((_e134787134856_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134783134851_))))
                 (let ((_hd134786134859_
                        (let () (declare (not safe)) (##car _e134787134856_)))
                       (_tl134785134861_
                        (let () (declare (not safe)) (##cdr _e134787134856_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134785134861_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134782134853_))
                           (let ((_e134790134864_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134782134853_))))
                             (let ((_hd134789134867_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134790134864_)))
                                   (_tl134788134869_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134790134864_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134789134867_))
                                   (let ((_e134793134872_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134789134867_))))
                                     (let ((_hd134792134875_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134793134872_)))
                                           (_tl134791134877_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134793134872_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134792134875_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134792134875_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134791134877_))
                                                   (let ((_e134796134880_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134791134877_))))
                                                     (let ((_hd134795134883_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134796134880_)))
                                                           (_tl134794134885_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134796134880_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134795134883_))
                                                           (let ((_e134799134888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134795134883_))))
                     (let ((_hd134798134891_
                            (let ()
                              (declare (not safe))
                              (##car _e134799134888_)))
                           (_tl134797134893_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134799134888_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134798134891_))
                           (let ((_e134802134896_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134798134891_))))
                             (let ((_hd134801134899_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134802134896_)))
                                   (_tl134800134901_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134802134896_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134801134899_))
                                   (let ((_e134805134904_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134801134899_))))
                                     (let ((_hd134804134907_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134805134904_)))
                                           (_tl134803134909_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134805134904_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134803134909_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134800134901_))
                                               (let ((_e134808134912_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134800134901_))))
                                                 (let ((_hd134807134915_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134808134912_)))
                                                       (_tl134806134917_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134808134912_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134806134917_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134797134893_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134794134885_))
                       (let ((_e134811134920_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134794134885_))))
                         (let ((_hd134810134923_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134811134920_)))
                               (_tl134809134925_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134811134920_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134809134925_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134788134869_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134779134845_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134776134837_))
                                           (let ((_e134814134928_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134776134837_))))
                                             (let ((_hd134813134931_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134814134928_)))
                                                   (_tl134812134933_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134814134928_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134812134933_))
                                                   ((lambda (_L134936_
                                                             _L134937_
                                                             _L134938_
                                                             _L134939_
                                                             _L134940_)
                                                      (let* ((_g134979135041_
                                                              (lambda (_g134980135038_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134980135038_))))
                     (_g134978135947_
                      (lambda (_g134980135044_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134980135044_))
                            (let ((_e134988135046_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134980135044_))))
                              (let ((_hd134987135049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134988135046_)))
                                    (_tl134986135051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134988135046_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd134987135049_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd134987135049_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl134986135051_))
                                            (let ((_e134991135054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl134986135051_))))
                                              (let ((_hd134990135057_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134991135054_)))
                                                    (_tl134989135059_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134991135054_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134989135059_))
                                                    (let ((_e134994135062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134989135059_))))
                                                      (let ((_hd134993135065_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134994135062_)))
                    (_tl134992135067_
                     (let () (declare (not safe)) (##cdr _e134994135062_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd134993135065_))
                    (let ((_e134997135070_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd134993135065_))))
                      (let ((_hd134996135073_
                             (let ()
                               (declare (not safe))
                               (##car _e134997135070_)))
                            (_tl134995135075_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134997135070_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd134996135073_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd134996135073_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134995135075_))
                                    (let ((_e135000135078_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134995135075_))))
                                      (let ((_hd134999135081_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135000135078_)))
                                            (_tl134998135083_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135000135078_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134999135081_))
                                            (let ((_e135003135086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134999135081_))))
                                              (let ((_hd135002135089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135003135086_)))
                                                    (_tl135001135091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135003135086_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd135002135089_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd135002135089_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl135001135091_))
                                                            (let ((_e135006135094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl135001135091_))))
                      (let ((_hd135005135097_
                             (let ()
                               (declare (not safe))
                               (##car _e135006135094_)))
                            (_tl135004135099_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135006135094_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135004135099_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl134998135083_))
                                (let ((_e135009135102_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl134998135083_))))
                                  (let ((_hd135008135105_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135009135102_)))
                                        (_tl135007135107_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135009135102_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd135008135105_))
                                        (let ((_e135012135110_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd135008135105_))))
                                          (let ((_hd135011135113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135012135110_)))
                                                (_tl135010135115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135012135110_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd135011135113_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd135011135113_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl135010135115_))
                                                        (let ((_e135015135118_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl135010135115_))))
                  (let ((_hd135014135121_
                         (let () (declare (not safe)) (##car _e135015135118_)))
                        (_tl135013135123_
                         (let ()
                           (declare (not safe))
                           (##cdr _e135015135118_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl135013135123_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135007135107_))
                            (let ((_e135018135126_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135007135107_))))
                              (let ((_hd135017135129_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135018135126_)))
                                    (_tl135016135131_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135018135126_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd135017135129_))
                                    (let ((_e135021135134_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd135017135129_))))
                                      (let ((_hd135020135137_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135021135134_)))
                                            (_tl135019135139_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135021135134_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd135020135137_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd135020135137_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135019135139_))
                                                    (let ((_e135024135142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135019135139_))))
                                                      (let ((_hd135023135145_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135024135142_)))
                    (_tl135022135147_
                     (let () (declare (not safe)) (##cdr _e135024135142_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl135022135147_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl135016135131_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl135016135131_))
                                  '1)
                            (let ((_g137347_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135016135131_
                                      '1))))
                              (begin
                                (let ((_g137348_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137347_)
                                             (##vector-length _g137347_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137348_ 2)))
                                      (error "Context expects 2 values"
                                             _g137348_)))
                                (let ((_target135025135150_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137347_ 0)))
                                      (_tl135027135152_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137347_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl135027135152_))
                                      (let ((_e135036135155_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl135027135152_))))
                                        (let ((_hd135035135158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e135036135155_)))
                                              (_tl135034135160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e135036135155_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl135034135160_))
                                              (letrec ((_loop135028135163_
                                                        (lambda (_hd135026135166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref135032135168_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd135026135166_))
                      (let ((_e135029135171_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd135026135166_))))
                        (let ((_lp-hd135030135174_
                               (let ()
                                 (declare (not safe))
                                 (##car _e135029135171_)))
                              (_lp-tl135031135176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e135029135171_))))
                          (let ((__tmp137420
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd135030135174_
                                         _kw-ref135032135168_))))
                            (declare (not safe))
                            (_loop135028135163_
                             _lp-tl135031135176_
                             __tmp137420))))
                      (let ((_kw-ref135033135179_
                             (reverse _kw-ref135032135168_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134992135067_))
                            ((lambda (_L135182_
                                      _L135183_
                                      _L135184_
                                      _L135185_
                                      _L135186_)
                               (let* ((_kw-count135237_
                                       (length (let ((__tmp137349
                                                      (lambda (_g135229135232_
                                                               _g135230135234_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g135229135232_
                                                                _g135230135234_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137349
                                                         '()
                                                         _L135183_))))
                                      (_self-index135239_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count135237_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134938_))
                                     (let* ((_g135242135256_
                                             (lambda (_g135243135253_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g135243135253_))))
                                            (_g135241135369_
                                             (lambda (_g135243135259_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g135243135259_))
                                                   (let ((_e135248135261_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g135243135259_))))
                                                     (let ((_hd135247135264_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e135248135261_)))
                                                           (_tl135246135266_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e135248135261_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135246135266_))
                                                           (let ((_e135251135269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135246135266_))))
                     (let ((_hd135250135272_
                            (let ()
                              (declare (not safe))
                              (##car _e135251135269_)))
                           (_tl135249135274_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135251135269_))))
                       ((lambda (_L135277_ _L135278_)
                          (let ((_self135294_
                                 (list-ref _L135278_ _self-index135239_)))
                            (for-each
                             (lambda (_g135295135297_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g135295135297_
                                  'receiver:
                                  _self135294_
                                  'methods:
                                  _method-calls133284_
                                  'slots:
                                  _slot-refs133285_)))
                             _L135277_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?133288_))
                                _stx133192_
                                (let* ((_specializer-id135306_
                                        (let* ((_id135300_
                                                (let ((__tmp137393
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L133265_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137393
                                                   '"::specialize")))
                                               (_specializer-id135303_
                                                (let ((__tmp137394
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx133192_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id135300_
                                                   __tmp137394))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id135303_))
                                          _specializer-id135303_))
                                       (_$klass135308_
                                        (let ((__tmp137395 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137395)))
                                       (_$method-table135310_
                                        (let ((__tmp137396
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137396)))
                                       (_methods135312_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls133284_)))
                                       (_$methods135316_
                                        (map (lambda (_id135314_)
                                               (let ((__tmp137397
                                                      (gensym _id135314_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137397)))
                                             _methods135312_))
                                       (_g137398_
                                        (for-each
                                         (lambda (_g135317135320_
                                                  _g135318135322_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls133284_
                                              _g135317135320_
                                              _g135318135322_)))
                                         _methods135312_
                                         _$methods135316_))
                                       (_methods-bind135333_
                                        (map (lambda (_g135325135328_
                                                      _g135326135330_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind133194_
                                                  _$klass135308_
                                                  _$method-table135310_
                                                  _g135325135328_
                                                  _g135326135330_)))
                                             _methods135312_
                                             _$methods135316_))
                                       (_slots135335_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs133285_)))
                                       (_$slots135339_
                                        (map (lambda (_id135337_)
                                               (let ((__tmp137399
                                                      (gensym _id135337_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137399)))
                                             _slots135335_))
                                       (_g137400_
                                        (for-each
                                         (lambda (_g135340135343_
                                                  _g135341135345_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs133285_
                                              _g135340135343_
                                              _g135341135345_)))
                                         _slots135335_
                                         _$slots135339_))
                                       (_slots-bind135356_
                                        (map (lambda (_g135348135351_
                                                      _g135349135353_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind133195_
                                                  _$klass135308_
                                                  _g135348135351_
                                                  _g135349135353_)))
                                             _slots135335_
                                             _$slots135339_))
                                       (_specializer-impl135364_
                                        (let* ((_specializer-body135362_
                                                (map (lambda (_g135357135359_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135357135359_
                                                          'receiver:
                                                          _self135294_
                                                          'klass:
                                                          _$klass135308_
                                                          'methods:
                                                          _method-calls133284_
                                                          'slots:
                                                          _slot-refs133285_)))
                                                     _L135277_))
                                               (__tmp137401
                                                (let ((__tmp137402
                                                       (let ((__tmp137404
                                                              (let ((__tmp137405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137417
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134940_ '())))
                                   (__tmp137406
                                    (let ((__tmp137407
                                           (let ((__tmp137408
                                                  (let ((__tmp137410
                                                         (let ((__tmp137411
                                                                (let ((__tmp137416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134939_ '())))
                              (__tmp137412
                               (let ((__tmp137413
                                      (let ((__tmp137414
                                             (let ((__tmp137415
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L135278_
                                                            _specializer-body135362_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137415))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137414
                                         _L134938_))))
                                 (declare (not safe))
                                 (cons __tmp137413 '()))))
                          (declare (not safe))
                          (cons __tmp137416 __tmp137412))))
                   (declare (not safe))
                   (cons __tmp137411 '())))
                (__tmp137409
                 (let () (declare (not safe)) (cons _L134937_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137410
                                                          __tmp137409))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137408))))
                                      (declare (not safe))
                                      (cons __tmp137407 '()))))
                               (declare (not safe))
                               (cons __tmp137417 __tmp137406))))
                        (declare (not safe))
                        (cons __tmp137405 '())))
                     (__tmp137403
                      (let () (declare (not safe)) (cons _L134936_ '()))))
                 (declare (not safe))
                 (cons __tmp137404 __tmp137403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137402))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137401
                                           _stx133192_)))
                                       (_specializer-impl135366_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl133196_
                                           _$klass135308_
                                           _$method-table135310_
                                           _methods-bind135333_
                                           _slots-bind135356_
                                           _specializer-impl135364_))))
                                  (let ((__tmp137419
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L133265_)))
                                        (__tmp137418
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id135306_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137419
                                     '" => "
                                     __tmp137418))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def133197_
                                     _L133265_
                                     _specializer-id135306_
                                     _specializer-impl135366_))))))
                        _tl135249135274_
                        _hd135250135272_)))
                   (let ()
                     (declare (not safe))
                     (_g135242135256_ _g135243135259_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g135242135256_
                                                      _g135243135259_))))))
                                       (declare (not safe))
                                       (_g135241135369_ _L134938_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134938_))
                                         (let* ((_g135372135402_
                                                 (lambda (_g135373135399_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135373135399_))))
                                                (_g135371135944_
                                                 (lambda (_g135373135405_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135373135405_))
                                                       (let ((_e135379135407_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135373135405_))))
                 (let ((_hd135378135410_
                        (let () (declare (not safe)) (##car _e135379135407_)))
                       (_tl135377135412_
                        (let () (declare (not safe)) (##cdr _e135379135407_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135377135412_))
                       (let ((_e135382135415_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135377135412_))))
                         (let ((_hd135381135418_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135382135415_)))
                               (_tl135380135420_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135382135415_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135381135418_))
                               (let ((_e135385135423_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135381135418_))))
                                 (let ((_hd135384135426_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135385135423_)))
                                       (_tl135383135428_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135385135423_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135384135426_))
                                       (let ((_e135388135431_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135384135426_))))
                                         (let ((_hd135387135434_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135388135431_)))
                                               (_tl135386135436_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135388135431_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135387135434_))
                                               (let ((_e135391135439_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135387135434_))))
                                                 (let ((_hd135390135442_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135391135439_)))
                                                       (_tl135389135444_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135391135439_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135389135444_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135386135436_))
                                                           (let ((_e135394135447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135386135436_))))
                     (let ((_hd135393135450_
                            (let ()
                              (declare (not safe))
                              (##car _e135394135447_)))
                           (_tl135392135452_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135394135447_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135392135452_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135383135428_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135380135420_))
                                   (let ((_e135397135455_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135380135420_))))
                                     (let ((_hd135396135458_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135397135455_)))
                                           (_tl135395135460_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135397135455_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135395135460_))
                                           ((lambda (_L135463_
                                                     _L135464_
                                                     _L135465_)
                                              (let* ((_g135488135502_
                                                      (lambda (_g135489135499_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135489135499_))))
                                                     (_g135487135543_
                                                      (lambda (_g135489135505_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135489135505_))
                                                            (let ((_e135494135507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135489135505_))))
                      (let ((_hd135493135510_
                             (let ()
                               (declare (not safe))
                               (##car _e135494135507_)))
                            (_tl135492135512_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135494135507_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135492135512_))
                            (let ((_e135497135515_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135492135512_))))
                              (let ((_hd135496135518_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135497135515_)))
                                    (_tl135495135520_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135497135515_))))
                                ((lambda (_L135523_ _L135524_)
                                   (let ((_self135537_
                                          (list-ref
                                           _L135524_
                                           _self-index135239_)))
                                     (for-each
                                      (lambda (_g135538135540_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135538135540_
                                           'receiver:
                                           _self135537_
                                           'methods:
                                           _method-calls133284_
                                           'slots:
                                           _slot-refs133285_)))
                                      _L135523_)))
                                 _tl135495135520_
                                 _hd135496135518_)))
                            (let ()
                              (declare (not safe))
                              (_g135488135502_ _g135489135505_)))))
                    (let ()
                      (declare (not safe))
                      (_g135488135502_ _g135489135505_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135487135543_ _L135464_))
                                              (let* ((_g135546135565_
                                                      (lambda (_g135547135562_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135547135562_))))
                                                     (_g135545135670_
                                                      (lambda (_g135547135568_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135547135568_))
                                                            (let ((_e135551135570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135547135568_))))
                      (let ((_hd135550135573_
                             (let ()
                               (declare (not safe))
                               (##car _e135551135570_)))
                            (_tl135549135575_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135551135570_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135549135575_))
                            (let ((_g137350_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135549135575_
                                      '0))))
                              (begin
                                (let ((_g137351_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137350_)
                                             (##vector-length _g137350_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137351_ 2)))
                                      (error "Context expects 2 values"
                                             _g137351_)))
                                (let ((_target135552135578_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137350_ 0)))
                                      (_tl135554135580_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137350_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135554135580_))
                                      (letrec ((_loop135555135583_
                                                (lambda (_hd135553135586_
                                                         _clause135559135588_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135553135586_))
                                                      (let ((_e135556135591_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135553135586_))))
                (let ((_lp-hd135557135594_
                       (let () (declare (not safe)) (##car _e135556135591_)))
                      (_lp-tl135558135596_
                       (let () (declare (not safe)) (##cdr _e135556135591_))))
                  (let ((__tmp137353
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135557135594_ _clause135559135588_))))
                    (declare (not safe))
                    (_loop135555135583_ _lp-tl135558135596_ __tmp137353))))
              (let ((_clause135560135599_ (reverse _clause135559135588_)))
                ((lambda (_L135602_)
                   (for-each
                    (lambda (_clause135615_)
                      (let* ((_g135617135628_
                              (lambda (_g135618135625_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135618135625_))))
                             (_g135616135660_
                              (lambda (_g135618135631_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135618135631_))
                                    (let ((_e135623135633_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135618135631_))))
                                      (let ((_hd135622135636_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135623135633_)))
                                            (_tl135621135638_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135623135633_))))
                                        ((lambda (_L135641_ _L135642_)
                                           (let ((_self135654_
                                                  (list-ref
                                                   _L135642_
                                                   _self-index135239_)))
                                             (for-each
                                              (lambda (_g135655135657_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135655135657_
                                                   'receiver:
                                                   _self135654_
                                                   'methods:
                                                   _method-calls133284_
                                                   'slots:
                                                   _slot-refs133285_)))
                                              _L135641_)))
                                         _tl135621135638_
                                         _hd135622135636_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135617135628_ _g135618135631_))))))
                        (declare (not safe))
                        (_g135616135660_ _clause135615_)))
                    (let ((__tmp137352
                           (lambda (_g135662135665_ _g135663135667_)
                             (let ()
                               (declare (not safe))
                               (cons _g135662135665_ _g135663135667_)))))
                      (declare (not safe))
                      (foldr1 __tmp137352 '() _L135602_))))
                 _clause135560135599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135555135583_
                                           _target135552135578_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135546135565_ _g135547135568_))))))
                            (let ()
                              (declare (not safe))
                              (_g135546135565_ _g135547135568_)))))
                    (let ()
                      (declare (not safe))
                      (_g135546135565_ _g135547135568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135545135670_ _L135463_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133288_))
                                                  _stx133192_
                                                  (let* ((_specializer-id135679_
                                                          (let* ((_id135673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137354
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133265_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137354 '"::specialize")))
                         (_specializer-id135676_
                          (let ((__tmp137355
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133192_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135673_ __tmp137355))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135676_))
                    _specializer-id135676_))
                 (_$klass135681_
                  (let ((__tmp137356 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137356)))
                 (_$method-table135683_
                  (let ((__tmp137357 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137357)))
                 (_methods135685_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133284_)))
                 (_$methods135689_
                  (map (lambda (_id135687_)
                         (let ((__tmp137358 (gensym _id135687_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137358)))
                       _methods135685_))
                 (_g137359_
                  (for-each
                   (lambda (_g135690135693_ _g135691135695_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133284_
                        _g135690135693_
                        _g135691135695_)))
                   _methods135685_
                   _$methods135689_))
                 (_methods-bind135706_
                  (map (lambda (_g135698135701_ _g135699135703_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133194_
                            _$klass135681_
                            _$method-table135683_
                            _g135698135701_
                            _g135699135703_)))
                       _methods135685_
                       _$methods135689_))
                 (_slots135708_
                  (let () (declare (not safe)) (hash-keys _slot-refs133285_)))
                 (_$slots135712_
                  (map (lambda (_id135710_)
                         (let ((__tmp137360 (gensym _id135710_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137360)))
                       _slots135708_))
                 (_g137361_
                  (for-each
                   (lambda (_g135713135716_ _g135714135718_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133285_
                        _g135713135716_
                        _g135714135718_)))
                   _slots135708_
                   _$slots135712_))
                 (_slots-bind135729_
                  (map (lambda (_g135721135724_ _g135722135726_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133195_
                            _$klass135681_
                            _g135721135724_
                            _g135722135726_)))
                       _slots135708_
                       _$slots135712_))
                 (_specializer-lambda-expr135802_
                  (let* ((_g135731135745_
                          (lambda (_g135732135742_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135732135742_))))
                         (_g135730135799_
                          (lambda (_g135732135748_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135732135748_))
                                (let ((_e135737135750_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135732135748_))))
                                  (let ((_hd135736135753_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135737135750_)))
                                        (_tl135735135755_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135737135750_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135735135755_))
                                        (let ((_e135740135758_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135735135755_))))
                                          (let ((_hd135739135761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135740135758_)))
                                                (_tl135738135763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135740135758_))))
                                            ((lambda (_L135766_ _L135767_)
                                               (let* ((_self135790_
                                                       (list-ref
                                                        _L135767_
                                                        _self-index135239_))
                                                      (_body135796_
                                                       (map (lambda (_g135791135793_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135791135793_
                         'receiver:
                         _self135790_
                         'klass:
                         _$klass135681_
                         'methods:
                         _method-calls133284_
                         'slots:
                         _slot-refs133285_)))
                    _L135766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137362
                                                        (let ((__tmp137363
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135767_ _body135796_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137362
                                                    _L135464_))))
                                             _tl135738135763_
                                             _hd135739135761_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135731135745_ _g135732135748_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135731135745_ _g135732135748_))))))
                    (declare (not safe))
                    (_g135730135799_ _L135464_)))
                 (_specializer-case-lambda-expr135937_
                  (let* ((_g135804135823_
                          (lambda (_g135805135820_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135805135820_))))
                         (_g135803135934_
                          (lambda (_g135805135826_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135805135826_))
                                (let ((_e135809135828_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135805135826_))))
                                  (let ((_hd135808135831_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135809135828_)))
                                        (_tl135807135833_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135809135828_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135807135833_))
                                        (let ((_g137364_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135807135833_
                                                  '0))))
                                          (begin
                                            (let ((_g137365_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137364_)
                                                         (##vector-length
                                                          _g137364_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137365_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137365_)))
                                            (let ((_target135810135836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137364_
                                                      0)))
                                                  (_tl135812135838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137364_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135812135838_))
                                                  (letrec ((_loop135813135841_
                                                            (lambda (_hd135811135844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135817135846_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135811135844_))
                          (let ((_e135814135849_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135811135844_))))
                            (let ((_lp-hd135815135852_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135814135849_)))
                                  (_lp-tl135816135854_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135814135849_))))
                              (let ((__tmp137368
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135815135852_
                                             _clause135817135846_))))
                                (declare (not safe))
                                (_loop135813135841_
                                 _lp-tl135816135854_
                                 __tmp137368))))
                          (let ((_clause135818135857_
                                 (reverse _clause135817135846_)))
                            ((lambda (_L135860_)
                               (let* ((_clauses135932_
                                       (map (lambda (_clause135874_)
                                              (let* ((_g135876135887_
                                                      (lambda (_g135877135884_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135877135884_))))
                                                     (_g135875135922_
                                                      (lambda (_g135877135890_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135877135890_))
                                                            (let ((_e135882135892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135877135890_))))
                      (let ((_hd135881135895_
                             (let ()
                               (declare (not safe))
                               (##car _e135882135892_)))
                            (_tl135880135897_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135882135892_))))
                        ((lambda (_L135900_ _L135901_)
                           (let* ((_self135913_
                                   (list-ref _L135901_ _self-index135239_))
                                  (_body135919_
                                   (map (lambda (_g135914135916_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135914135916_
                                             'receiver:
                                             _self135913_
                                             'klass:
                                             _$klass135681_
                                             'methods:
                                             _method-calls133284_
                                             'slots:
                                             _slot-refs133285_)))
                                        _L135900_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135901_ _body135919_))))
                         _tl135880135897_
                         _hd135881135895_)))
                    (let ()
                      (declare (not safe))
                      (_g135876135887_ _g135877135890_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135875135922_
                                                 _clause135874_)))
                                            (let ((__tmp137366
                                                   (lambda (_g135924135927_
                                                            _g135925135929_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135924135927_
                                                             _g135925135929_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137366
                                                      '()
                                                      _L135860_))))
                                      (__tmp137367
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135932_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137367
                                  _L135463_)))
                             _clause135818135857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135813135841_
                                                       _target135810135836_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135804135823_
                                                     _g135805135826_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135804135823_ _g135805135826_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135804135823_ _g135805135826_))))))
                    (declare (not safe))
                    (_g135803135934_ _L135463_)))
                 (_specializer-impl135939_
                  (let ((__tmp137369
                         (let ((__tmp137370
                                (let ((__tmp137372
                                       (let ((__tmp137373
                                              (let ((__tmp137390
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134940_ '())))
                                                    (__tmp137374
                                                     (let ((__tmp137375
                                                            (let ((__tmp137376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137378
                                  (let ((__tmp137379
                                         (let ((__tmp137389
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134939_ '())))
                                               (__tmp137380
                                                (let ((__tmp137381
                                                       (let ((__tmp137382
                                                              (let ((__tmp137383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137385
                                    (let ((__tmp137386
                                           (let ((__tmp137388
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135465_ '())))
                                                 (__tmp137387
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135802_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137388 __tmp137387))))
                                      (declare (not safe))
                                      (cons __tmp137386 '())))
                                   (__tmp137384
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135937_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137385 __tmp137384))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137383))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137382 _stx133192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137381 '()))))
                                           (declare (not safe))
                                           (cons __tmp137389 __tmp137380))))
                                    (declare (not safe))
                                    (cons __tmp137379 '())))
                                 (__tmp137377
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134937_ '()))))
                             (declare (not safe))
                             (cons __tmp137378 __tmp137377))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137376))))
               (declare (not safe))
               (cons __tmp137375 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137390
                                                      __tmp137374))))
                                         (declare (not safe))
                                         (cons __tmp137373 '())))
                                      (__tmp137371
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134936_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137372 __tmp137371))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137370))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137369 _stx133192_)))
                 (_specializer-impl135941_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133196_
                     _$klass135681_
                     _$method-table135683_
                     _methods-bind135706_
                     _slots-bind135729_
                     _specializer-impl135939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137392
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133265_)))
                                                          (__tmp137391
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135679_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137392
                                                       '" => "
                                                       __tmp137391))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133197_
                                                       _L133265_
                                                       _specializer-id135679_
                                                       _specializer-impl135941_)))))
                                            _hd135396135458_
                                            _hd135393135450_
                                            _hd135390135442_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135372135402_
                                              _g135373135405_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135372135402_ _g135373135405_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135372135402_ _g135373135405_)))
                           (let ()
                             (declare (not safe))
                             (_g135372135402_ _g135373135405_)))))
                   (let ()
                     (declare (not safe))
                     (_g135372135402_ _g135373135405_)))
               (let ()
                 (declare (not safe))
                 (_g135372135402_ _g135373135405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135372135402_
                                                  _g135373135405_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135372135402_ _g135373135405_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135372135402_ _g135373135405_)))))
                       (let ()
                         (declare (not safe))
                         (_g135372135402_ _g135373135405_)))))
               (let ()
                 (declare (not safe))
                 (_g135372135402_ _g135373135405_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135371135944_ _L134938_))
                                         _stx133192_))))
                             _hd135035135158_
                             _kw-ref135033135179_
                             _hd135023135145_
                             _hd135014135121_
                             _hd135005135097_)
                            (let ()
                              (declare (not safe))
                              (_g134979135041_ _g134980135044_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop135028135163_
                                                   _target135025135150_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134979135041_
                                                 _g134980135044_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134979135041_ _g134980135044_))))))
                            (let ()
                              (declare (not safe))
                              (_g134979135041_ _g134980135044_)))
                        (let ()
                          (declare (not safe))
                          (_g134979135041_ _g134980135044_)))
                    (let ()
                      (declare (not safe))
                      (_g134979135041_ _g134980135044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134979135041_
                                                       _g134980135044_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134979135041_
                                                   _g134980135044_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134979135041_
                                               _g134980135044_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134979135041_ _g134980135044_)))))
                            (let ()
                              (declare (not safe))
                              (_g134979135041_ _g134980135044_)))
                        (let ()
                          (declare (not safe))
                          (_g134979135041_ _g134980135044_)))))
                (let ()
                  (declare (not safe))
                  (_g134979135041_ _g134980135044_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134979135041_
                                                       _g134980135044_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134979135041_
                                                   _g134980135044_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134979135041_ _g134980135044_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134979135041_ _g134980135044_)))
                            (let ()
                              (declare (not safe))
                              (_g134979135041_ _g134980135044_)))))
                    (let ()
                      (declare (not safe))
                      (_g134979135041_ _g134980135044_)))
                (let ()
                  (declare (not safe))
                  (_g134979135041_ _g134980135044_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134979135041_
                                                       _g134980135044_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134979135041_
                                               _g134980135044_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134979135041_ _g134980135044_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134979135041_ _g134980135044_)))
                            (let ()
                              (declare (not safe))
                              (_g134979135041_ _g134980135044_)))))
                    (let ()
                      (declare (not safe))
                      (_g134979135041_ _g134980135044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134979135041_
                                                       _g134980135044_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134979135041_
                                               _g134980135044_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134979135041_ _g134980135044_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134979135041_ _g134980135044_)))))
                            (let ()
                              (declare (not safe))
                              (_g134979135041_ _g134980135044_))))))
                (declare (not safe))
                (_g134978135947_ _L134937_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134813134931_
                                                    _hd134810134923_
                                                    _hd134807134915_
                                                    _hd134804134907_
                                                    _hd134786134859_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134766134819_
                                                      _g134767134822_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134766134819_
                                              _g134767134822_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134766134819_ _g134767134822_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134766134819_ _g134767134822_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134766134819_ _g134767134822_)))))
                       (let ()
                         (declare (not safe))
                         (_g134766134819_ _g134767134822_)))
                   (let ()
                     (declare (not safe))
                     (_g134766134819_ _g134767134822_)))
               (let ()
                 (declare (not safe))
                 (_g134766134819_ _g134767134822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134766134819_
                                                  _g134767134822_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134766134819_
                                              _g134767134822_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134766134819_ _g134767134822_)))))
                           (let ()
                             (declare (not safe))
                             (_g134766134819_ _g134767134822_)))))
                   (let ()
                     (declare (not safe))
                     (_g134766134819_ _g134767134822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134766134819_
                                                      _g134767134822_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134766134819_
                                                  _g134767134822_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134766134819_
                                              _g134767134822_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134766134819_ _g134767134822_)))))
                           (let ()
                             (declare (not safe))
                             (_g134766134819_ _g134767134822_)))
                       (let ()
                         (declare (not safe))
                         (_g134766134819_ _g134767134822_)))))
               (let ()
                 (declare (not safe))
                 (_g134766134819_ _g134767134822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134766134819_
                                                  _g134767134822_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134766134819_ _g134767134822_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134766134819_ _g134767134822_)))
                           (let ()
                             (declare (not safe))
                             (_g134766134819_ _g134767134822_)))
                       (let ()
                         (declare (not safe))
                         (_g134766134819_ _g134767134822_)))))
               (let ()
                 (declare (not safe))
                 (_g134766134819_ _g134767134822_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134765135950_ _L133264_))
                                         _stx133192_))))))))
                  (___kont136174136175_ (lambda () _stx133192_)))
              (let ((___match136203136204_
                     (lambda (_e133206133232_
                              _hd133205133235_
                              _tl133204133237_
                              _e133209133240_
                              _hd133208133243_
                              _tl133207133245_
                              _e133212133248_
                              _hd133211133251_
                              _tl133210133253_
                              _e133215133256_
                              _hd133214133259_
                              _tl133213133261_)
                       (let ((_L133264_ _hd133214133259_)
                             (_L133265_ _hd133211133251_))
                         (if (let ((__tmp137481
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L133265_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137481))
                             (___kont136172136173_ _L133264_ _L133265_)
                             (___kont136174136175_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136170136171_))
                    (let ((_e133206133232_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136170136171_))))
                      (let ((_tl133204133237_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133206133232_)))
                            (_hd133205133235_
                             (let ()
                               (declare (not safe))
                               (##car _e133206133232_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133204133237_))
                            (let ((_e133209133240_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133204133237_))))
                              (let ((_tl133207133245_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133209133240_)))
                                    (_hd133208133243_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133209133240_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133208133243_))
                                    (let ((_e133212133248_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133208133243_))))
                                      (let ((_tl133210133253_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133212133248_)))
                                            (_hd133211133251_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133212133248_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl133210133253_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl133207133245_))
                                                (let ((_e133215133256_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl133207133245_))))
                                                  (let ((_tl133213133261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e133215133256_)))
                                                        (_hd133214133259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e133215133256_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl133213133261_))
                                                        (___match136203136204_
                                                         _e133206133232_
                                                         _hd133205133235_
                                                         _tl133204133237_
                                                         _e133209133240_
                                                         _hd133208133243_
                                                         _tl133207133245_
                                                         _e133212133248_
                                                         _hd133211133251_
                                                         _tl133210133253_
                                                         _e133215133256_
                                                         _hd133214133259_
                                                         _tl133213133261_)
                                                        (___kont136174136175_))))
                                                (___kont136174136175_))
                                            (___kont136174136175_))))
                                    (___kont136174136175_))))
                            (___kont136174136175_))))
                    (___kont136174136175_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self132152_ _stx132153_)
        (let* ((___stx136206136207_ _stx132153_)
               (_g132161132383_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx136206136207_)))))
          (let ((___kont136208136209_
                 (lambda (_L133140_ _L133141_ _L133142_ _L133143_)
                   (let ((__tmp137483
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132152_ 'methods)))
                         (__tmp137482
                          (let () (declare (not safe)) (gx#stx-e _L133141_))))
                     (declare (not safe))
                     (hash-put! __tmp137483 __tmp137482 '#t))
                   (for-each
                    (lambda (_g133176133178_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132152_ _g133176133178_)))
                    (let ((__tmp137484
                           (lambda (_g133180133183_ _g133181133185_)
                             (let ()
                               (declare (not safe))
                               (cons _g133180133183_ _g133181133185_)))))
                      (declare (not safe))
                      (foldr1 __tmp137484 '() _L133140_)))))
                (___kont136212136213_
                 (lambda (_L132975_ _L132976_ _L132977_ _L132978_ _L132979_)
                   (let ((__tmp137486
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132152_ 'methods)))
                         (__tmp137485
                          (let () (declare (not safe)) (gx#stx-e _L132976_))))
                     (declare (not safe))
                     (hash-put! __tmp137486 __tmp137485 '#t))
                   (for-each
                    (lambda (_g133019133021_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132152_ _g133019133021_)))
                    (let ((__tmp137487
                           (lambda (_g133023133026_ _g133024133028_)
                             (let ()
                               (declare (not safe))
                               (cons _g133023133026_ _g133024133028_)))))
                      (declare (not safe))
                      (foldr1 __tmp137487 '() _L132975_)))))
                (___kont136216136217_
                 (lambda (_L132808_ _L132809_ _L132810_)
                   (let ((__tmp137489
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132152_ 'slots)))
                         (__tmp137488
                          (let () (declare (not safe)) (gx#stx-e _L132808_))))
                     (declare (not safe))
                     (hash-put! __tmp137489 __tmp137488 '#t))))
                (___kont136218136219_
                 (lambda (_L132685_ _L132686_ _L132687_ _L132688_)
                   (let ((__tmp137491
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132152_ 'slots)))
                         (__tmp137490
                          (let () (declare (not safe)) (gx#stx-e _L132686_))))
                     (declare (not safe))
                     (hash-put! __tmp137491 __tmp137490 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self132152_ _L132685_))))
                (___kont136220136221_
                 (lambda (_L132559_ _L132560_)
                   (let* ((_accessor132582_
                           (let ((__tmp137492
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132560_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137492)))
                          (_klass132584_
                           (let ((__tmp137493
                                  (##structure-ref
                                   _accessor132582_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132153_
                              __tmp137493)))
                          (_slot132586_
                           (##structure-ref
                            _accessor132582_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137496
                                     (##structure-ref
                                      _accessor132582_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137496))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132584_
                                     _slot132586_))
                                  (##structure-ref
                                   _klass132584_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137495
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132152_ 'slots)))
                               (__tmp137494
                                (##structure-ref
                                 _accessor132582_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137495 __tmp137494 '#t))))))
                (___kont136222136223_
                 (lambda (_L132459_ _L132460_ _L132461_)
                   (let* ((_mutator132488_
                           (let ((__tmp137497
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132461_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137497)))
                          (_klass132490_
                           (let ((__tmp137498
                                  (##structure-ref
                                   _mutator132488_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132153_
                              __tmp137498)))
                          (_slot132492_
                           (##structure-ref
                            _mutator132488_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137500
                                     (##structure-ref
                                      _mutator132488_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137500))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132490_
                                     _slot132492_))
                                  (##structure-ref
                                   _klass132490_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137499
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132152_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137499 _slot132492_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self132152_ _L132459_)))))
                (___kont136224136225_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self132152_ _stx132153_)))))
            (let* ((___match136705136706_
                    (lambda (_e132357132395_
                             _hd132356132398_
                             _tl132355132400_
                             _e132360132403_
                             _hd132359132406_
                             _tl132358132408_
                             _e132363132411_
                             _hd132362132414_
                             _tl132361132416_
                             _e132366132419_
                             _hd132365132422_
                             _tl132364132424_
                             _e132369132427_
                             _hd132368132430_
                             _tl132367132432_
                             _e132372132435_
                             _hd132371132438_
                             _tl132370132440_
                             _e132375132443_
                             _hd132374132446_
                             _tl132373132448_
                             _e132378132451_
                             _hd132377132454_
                             _tl132376132456_)
                      (let ((_L132459_ _hd132377132454_)
                            (_L132460_ _hd132374132446_)
                            (_L132461_ _hd132365132422_))
                        (if (and (let ((__tmp137502
                                        (let ((__tmp137503
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132461_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137503))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137502
                                    'gxc#!mutator::t))
                                 (let ((__tmp137501
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132152_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132460_
                                    __tmp137501)))
                            (___kont136222136223_
                             _L132459_
                             _L132460_
                             _L132461_)
                            (___kont136224136225_)))))
                   (___match136703136704_
                    (lambda (_e132357132395_
                             _hd132356132398_
                             _tl132355132400_
                             _e132360132403_
                             _hd132359132406_
                             _tl132358132408_
                             _e132363132411_
                             _hd132362132414_
                             _tl132361132416_
                             _e132366132419_
                             _hd132365132422_
                             _tl132364132424_
                             _e132369132427_
                             _hd132368132430_
                             _tl132367132432_
                             _e132372132435_
                             _hd132371132438_
                             _tl132370132440_
                             _e132375132443_
                             _hd132374132446_
                             _tl132373132448_
                             _e132378132451_
                             _hd132377132454_
                             _tl132376132456_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132376132456_))
                          (___match136705136706_
                           _e132357132395_
                           _hd132356132398_
                           _tl132355132400_
                           _e132360132403_
                           _hd132359132406_
                           _tl132358132408_
                           _e132363132411_
                           _hd132362132414_
                           _tl132361132416_
                           _e132366132419_
                           _hd132365132422_
                           _tl132364132424_
                           _e132369132427_
                           _hd132368132430_
                           _tl132367132432_
                           _e132372132435_
                           _hd132371132438_
                           _tl132370132440_
                           _e132375132443_
                           _hd132374132446_
                           _tl132373132448_
                           _e132378132451_
                           _hd132377132454_
                           _tl132376132456_)
                          (___kont136224136225_))))
                   (___match136697136698_
                    (lambda (_e132357132395_
                             _hd132356132398_
                             _tl132355132400_
                             _e132360132403_
                             _hd132359132406_
                             _tl132358132408_
                             _e132363132411_
                             _hd132362132414_
                             _tl132361132416_
                             _e132366132419_
                             _hd132365132422_
                             _tl132364132424_
                             _e132369132427_
                             _hd132368132430_
                             _tl132367132432_
                             _e132372132435_
                             _hd132371132438_
                             _tl132370132440_
                             _e132375132443_
                             _hd132374132446_
                             _tl132373132448_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132367132432_))
                          (let ((_e132378132451_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132367132432_))))
                            (let ((_tl132376132456_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132378132451_)))
                                  (_hd132377132454_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132378132451_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132376132456_))
                                  (___match136705136706_
                                   _e132357132395_
                                   _hd132356132398_
                                   _tl132355132400_
                                   _e132360132403_
                                   _hd132359132406_
                                   _tl132358132408_
                                   _e132363132411_
                                   _hd132362132414_
                                   _tl132361132416_
                                   _e132366132419_
                                   _hd132365132422_
                                   _tl132364132424_
                                   _e132369132427_
                                   _hd132368132430_
                                   _tl132367132432_
                                   _e132372132435_
                                   _hd132371132438_
                                   _tl132370132440_
                                   _e132375132443_
                                   _hd132374132446_
                                   _tl132373132448_
                                   _e132378132451_
                                   _hd132377132454_
                                   _tl132376132456_)
                                  (___kont136224136225_))))
                          (___kont136224136225_))))
                   (___match136643136644_
                    (lambda (_e132333132503_
                             _hd132332132506_
                             _tl132331132508_
                             _e132336132511_
                             _hd132335132514_
                             _tl132334132516_
                             _e132339132519_
                             _hd132338132522_
                             _tl132337132524_
                             _e132342132527_
                             _hd132341132530_
                             _tl132340132532_
                             _e132345132535_
                             _hd132344132538_
                             _tl132343132540_
                             _e132348132543_
                             _hd132347132546_
                             _tl132346132548_
                             _e132351132551_
                             _hd132350132554_
                             _tl132349132556_)
                      (let ((_L132559_ _hd132350132554_)
                            (_L132560_ _hd132341132530_))
                        (if (and (let ((__tmp137505
                                        (let ((__tmp137506
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132560_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137506))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137505
                                    'gxc#!accessor::t))
                                 (let ((__tmp137504
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132152_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132559_
                                    __tmp137504)))
                            (___kont136220136221_ _L132559_ _L132560_)
                            (___kont136224136225_)))))
                   (___match136641136642_
                    (lambda (_e132333132503_
                             _hd132332132506_
                             _tl132331132508_
                             _e132336132511_
                             _hd132335132514_
                             _tl132334132516_
                             _e132339132519_
                             _hd132338132522_
                             _tl132337132524_
                             _e132342132527_
                             _hd132341132530_
                             _tl132340132532_
                             _e132345132535_
                             _hd132344132538_
                             _tl132343132540_
                             _e132348132543_
                             _hd132347132546_
                             _tl132346132548_
                             _e132351132551_
                             _hd132350132554_
                             _tl132349132556_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132343132540_))
                          (___match136643136644_
                           _e132333132503_
                           _hd132332132506_
                           _tl132331132508_
                           _e132336132511_
                           _hd132335132514_
                           _tl132334132516_
                           _e132339132519_
                           _hd132338132522_
                           _tl132337132524_
                           _e132342132527_
                           _hd132341132530_
                           _tl132340132532_
                           _e132345132535_
                           _hd132344132538_
                           _tl132343132540_
                           _e132348132543_
                           _hd132347132546_
                           _tl132346132548_
                           _e132351132551_
                           _hd132350132554_
                           _tl132349132556_)
                          (___match136697136698_
                           _e132333132503_
                           _hd132332132506_
                           _tl132331132508_
                           _e132336132511_
                           _hd132335132514_
                           _tl132334132516_
                           _e132339132519_
                           _hd132338132522_
                           _tl132337132524_
                           _e132342132527_
                           _hd132341132530_
                           _tl132340132532_
                           _e132345132535_
                           _hd132344132538_
                           _tl132343132540_
                           _e132348132543_
                           _hd132347132546_
                           _tl132346132548_
                           _e132351132551_
                           _hd132350132554_
                           _tl132349132556_))))
                   (___match136587136588_
                    (lambda (_e132298132597_
                             _hd132297132600_
                             _tl132296132602_
                             _e132301132605_
                             _hd132300132608_
                             _tl132299132610_
                             _e132304132613_
                             _hd132303132616_
                             _tl132302132618_
                             _e132307132621_
                             _hd132306132624_
                             _tl132305132626_
                             _e132310132629_
                             _hd132309132632_
                             _tl132308132634_
                             _e132313132637_
                             _hd132312132640_
                             _tl132311132642_
                             _e132316132645_
                             _hd132315132648_
                             _tl132314132650_
                             _e132319132653_
                             _hd132318132656_
                             _tl132317132658_
                             _e132322132661_
                             _hd132321132664_
                             _tl132320132666_
                             _e132325132669_
                             _hd132324132672_
                             _tl132323132674_
                             _e132328132677_
                             _hd132327132680_
                             _tl132326132682_)
                      (let ((_L132685_ _hd132327132680_)
                            (_L132686_ _hd132324132672_)
                            (_L132687_ _hd132315132648_)
                            (_L132688_ _hd132306132624_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132688_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132688_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137507
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132152_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132687_
                                    __tmp137507)))
                            (___kont136218136219_
                             _L132685_
                             _L132686_
                             _L132687_
                             _L132688_)
                            (___kont136224136225_)))))
                   (___match136579136580_
                    (lambda (_e132298132597_
                             _hd132297132600_
                             _tl132296132602_
                             _e132301132605_
                             _hd132300132608_
                             _tl132299132610_
                             _e132304132613_
                             _hd132303132616_
                             _tl132302132618_
                             _e132307132621_
                             _hd132306132624_
                             _tl132305132626_
                             _e132310132629_
                             _hd132309132632_
                             _tl132308132634_
                             _e132313132637_
                             _hd132312132640_
                             _tl132311132642_
                             _e132316132645_
                             _hd132315132648_
                             _tl132314132650_
                             _e132319132653_
                             _hd132318132656_
                             _tl132317132658_
                             _e132322132661_
                             _hd132321132664_
                             _tl132320132666_
                             _e132325132669_
                             _hd132324132672_
                             _tl132323132674_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132317132658_))
                          (let ((_e132328132677_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132317132658_))))
                            (let ((_tl132326132682_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132328132677_)))
                                  (_hd132327132680_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132328132677_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132326132682_))
                                  (___match136587136588_
                                   _e132298132597_
                                   _hd132297132600_
                                   _tl132296132602_
                                   _e132301132605_
                                   _hd132300132608_
                                   _tl132299132610_
                                   _e132304132613_
                                   _hd132303132616_
                                   _tl132302132618_
                                   _e132307132621_
                                   _hd132306132624_
                                   _tl132305132626_
                                   _e132310132629_
                                   _hd132309132632_
                                   _tl132308132634_
                                   _e132313132637_
                                   _hd132312132640_
                                   _tl132311132642_
                                   _e132316132645_
                                   _hd132315132648_
                                   _tl132314132650_
                                   _e132319132653_
                                   _hd132318132656_
                                   _tl132317132658_
                                   _e132322132661_
                                   _hd132321132664_
                                   _tl132320132666_
                                   _e132325132669_
                                   _hd132324132672_
                                   _tl132323132674_
                                   _e132328132677_
                                   _hd132327132680_
                                   _tl132326132682_)
                                  (___kont136224136225_))))
                          (___match136703136704_
                           _e132298132597_
                           _hd132297132600_
                           _tl132296132602_
                           _e132301132605_
                           _hd132300132608_
                           _tl132299132610_
                           _e132304132613_
                           _hd132303132616_
                           _tl132302132618_
                           _e132307132621_
                           _hd132306132624_
                           _tl132305132626_
                           _e132310132629_
                           _hd132309132632_
                           _tl132308132634_
                           _e132313132637_
                           _hd132312132640_
                           _tl132311132642_
                           _e132316132645_
                           _hd132315132648_
                           _tl132314132650_
                           _e132319132653_
                           _hd132318132656_
                           _tl132317132658_))))
                   (___match136501136502_
                    (lambda (_e132264132728_
                             _hd132263132731_
                             _tl132262132733_
                             _e132267132736_
                             _hd132266132739_
                             _tl132265132741_
                             _e132270132744_
                             _hd132269132747_
                             _tl132268132749_
                             _e132273132752_
                             _hd132272132755_
                             _tl132271132757_
                             _e132276132760_
                             _hd132275132763_
                             _tl132274132765_
                             _e132279132768_
                             _hd132278132771_
                             _tl132277132773_
                             _e132282132776_
                             _hd132281132779_
                             _tl132280132781_
                             _e132285132784_
                             _hd132284132787_
                             _tl132283132789_
                             _e132288132792_
                             _hd132287132795_
                             _tl132286132797_
                             _e132291132800_
                             _hd132290132803_
                             _tl132289132805_)
                      (let ((_L132808_ _hd132290132803_)
                            (_L132809_ _hd132281132779_)
                            (_L132810_ _hd132272132755_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132810_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132810_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137508
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132152_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132809_
                                    __tmp137508)))
                            (___kont136216136217_
                             _L132808_
                             _L132809_
                             _L132810_)
                            (___match136705136706_
                             _e132264132728_
                             _hd132263132731_
                             _tl132262132733_
                             _e132267132736_
                             _hd132266132739_
                             _tl132265132741_
                             _e132270132744_
                             _hd132269132747_
                             _tl132268132749_
                             _e132273132752_
                             _hd132272132755_
                             _tl132271132757_
                             _e132276132760_
                             _hd132275132763_
                             _tl132274132765_
                             _e132279132768_
                             _hd132278132771_
                             _tl132277132773_
                             _e132282132776_
                             _hd132281132779_
                             _tl132280132781_
                             _e132285132784_
                             _hd132284132787_
                             _tl132283132789_)))))
                   (___match136499136500_
                    (lambda (_e132264132728_
                             _hd132263132731_
                             _tl132262132733_
                             _e132267132736_
                             _hd132266132739_
                             _tl132265132741_
                             _e132270132744_
                             _hd132269132747_
                             _tl132268132749_
                             _e132273132752_
                             _hd132272132755_
                             _tl132271132757_
                             _e132276132760_
                             _hd132275132763_
                             _tl132274132765_
                             _e132279132768_
                             _hd132278132771_
                             _tl132277132773_
                             _e132282132776_
                             _hd132281132779_
                             _tl132280132781_
                             _e132285132784_
                             _hd132284132787_
                             _tl132283132789_
                             _e132288132792_
                             _hd132287132795_
                             _tl132286132797_
                             _e132291132800_
                             _hd132290132803_
                             _tl132289132805_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132283132789_))
                          (___match136501136502_
                           _e132264132728_
                           _hd132263132731_
                           _tl132262132733_
                           _e132267132736_
                           _hd132266132739_
                           _tl132265132741_
                           _e132270132744_
                           _hd132269132747_
                           _tl132268132749_
                           _e132273132752_
                           _hd132272132755_
                           _tl132271132757_
                           _e132276132760_
                           _hd132275132763_
                           _tl132274132765_
                           _e132279132768_
                           _hd132278132771_
                           _tl132277132773_
                           _e132282132776_
                           _hd132281132779_
                           _tl132280132781_
                           _e132285132784_
                           _hd132284132787_
                           _tl132283132789_
                           _e132288132792_
                           _hd132287132795_
                           _tl132286132797_
                           _e132291132800_
                           _hd132290132803_
                           _tl132289132805_)
                          (___match136579136580_
                           _e132264132728_
                           _hd132263132731_
                           _tl132262132733_
                           _e132267132736_
                           _hd132266132739_
                           _tl132265132741_
                           _e132270132744_
                           _hd132269132747_
                           _tl132268132749_
                           _e132273132752_
                           _hd132272132755_
                           _tl132271132757_
                           _e132276132760_
                           _hd132275132763_
                           _tl132274132765_
                           _e132279132768_
                           _hd132278132771_
                           _tl132277132773_
                           _e132282132776_
                           _hd132281132779_
                           _tl132280132781_
                           _e132285132784_
                           _hd132284132787_
                           _tl132283132789_
                           _e132288132792_
                           _hd132287132795_
                           _tl132286132797_
                           _e132291132800_
                           _hd132290132803_
                           _tl132289132805_))))
                   (___match136489136490_
                    (lambda (_e132264132728_
                             _hd132263132731_
                             _tl132262132733_
                             _e132267132736_
                             _hd132266132739_
                             _tl132265132741_
                             _e132270132744_
                             _hd132269132747_
                             _tl132268132749_
                             _e132273132752_
                             _hd132272132755_
                             _tl132271132757_
                             _e132276132760_
                             _hd132275132763_
                             _tl132274132765_
                             _e132279132768_
                             _hd132278132771_
                             _tl132277132773_
                             _e132282132776_
                             _hd132281132779_
                             _tl132280132781_
                             _e132285132784_
                             _hd132284132787_
                             _tl132283132789_
                             _e132288132792_
                             _hd132287132795_
                             _tl132286132797_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd132287132795_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132286132797_))
                              (let ((_e132291132800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132286132797_))))
                                (let ((_tl132289132805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132291132800_)))
                                      (_hd132290132803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132291132800_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132289132805_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl132283132789_))
                                          (___match136501136502_
                                           _e132264132728_
                                           _hd132263132731_
                                           _tl132262132733_
                                           _e132267132736_
                                           _hd132266132739_
                                           _tl132265132741_
                                           _e132270132744_
                                           _hd132269132747_
                                           _tl132268132749_
                                           _e132273132752_
                                           _hd132272132755_
                                           _tl132271132757_
                                           _e132276132760_
                                           _hd132275132763_
                                           _tl132274132765_
                                           _e132279132768_
                                           _hd132278132771_
                                           _tl132277132773_
                                           _e132282132776_
                                           _hd132281132779_
                                           _tl132280132781_
                                           _e132285132784_
                                           _hd132284132787_
                                           _tl132283132789_
                                           _e132288132792_
                                           _hd132287132795_
                                           _tl132286132797_
                                           _e132291132800_
                                           _hd132290132803_
                                           _tl132289132805_)
                                          (___match136579136580_
                                           _e132264132728_
                                           _hd132263132731_
                                           _tl132262132733_
                                           _e132267132736_
                                           _hd132266132739_
                                           _tl132265132741_
                                           _e132270132744_
                                           _hd132269132747_
                                           _tl132268132749_
                                           _e132273132752_
                                           _hd132272132755_
                                           _tl132271132757_
                                           _e132276132760_
                                           _hd132275132763_
                                           _tl132274132765_
                                           _e132279132768_
                                           _hd132278132771_
                                           _tl132277132773_
                                           _e132282132776_
                                           _hd132281132779_
                                           _tl132280132781_
                                           _e132285132784_
                                           _hd132284132787_
                                           _tl132283132789_
                                           _e132288132792_
                                           _hd132287132795_
                                           _tl132286132797_
                                           _e132291132800_
                                           _hd132290132803_
                                           _tl132289132805_))
                                      (___match136703136704_
                                       _e132264132728_
                                       _hd132263132731_
                                       _tl132262132733_
                                       _e132267132736_
                                       _hd132266132739_
                                       _tl132265132741_
                                       _e132270132744_
                                       _hd132269132747_
                                       _tl132268132749_
                                       _e132273132752_
                                       _hd132272132755_
                                       _tl132271132757_
                                       _e132276132760_
                                       _hd132275132763_
                                       _tl132274132765_
                                       _e132279132768_
                                       _hd132278132771_
                                       _tl132277132773_
                                       _e132282132776_
                                       _hd132281132779_
                                       _tl132280132781_
                                       _e132285132784_
                                       _hd132284132787_
                                       _tl132283132789_))))
                              (___match136703136704_
                               _e132264132728_
                               _hd132263132731_
                               _tl132262132733_
                               _e132267132736_
                               _hd132266132739_
                               _tl132265132741_
                               _e132270132744_
                               _hd132269132747_
                               _tl132268132749_
                               _e132273132752_
                               _hd132272132755_
                               _tl132271132757_
                               _e132276132760_
                               _hd132275132763_
                               _tl132274132765_
                               _e132279132768_
                               _hd132278132771_
                               _tl132277132773_
                               _e132282132776_
                               _hd132281132779_
                               _tl132280132781_
                               _e132285132784_
                               _hd132284132787_
                               _tl132283132789_))
                          (___match136703136704_
                           _e132264132728_
                           _hd132263132731_
                           _tl132262132733_
                           _e132267132736_
                           _hd132266132739_
                           _tl132265132741_
                           _e132270132744_
                           _hd132269132747_
                           _tl132268132749_
                           _e132273132752_
                           _hd132272132755_
                           _tl132271132757_
                           _e132276132760_
                           _hd132275132763_
                           _tl132274132765_
                           _e132279132768_
                           _hd132278132771_
                           _tl132277132773_
                           _e132282132776_
                           _hd132281132779_
                           _tl132280132781_
                           _e132285132784_
                           _hd132284132787_
                           _tl132283132789_))))
                   (___match136421136422_
                    (lambda (_e132213132847_
                             _hd132212132850_
                             _tl132211132852_
                             _e132216132855_
                             _hd132215132858_
                             _tl132214132860_
                             _e132219132863_
                             _hd132218132866_
                             _tl132217132868_
                             _e132222132871_
                             _hd132221132874_
                             _tl132220132876_
                             _e132225132879_
                             _hd132224132882_
                             _tl132223132884_
                             _e132228132887_
                             _hd132227132890_
                             _tl132226132892_
                             _e132231132895_
                             _hd132230132898_
                             _tl132229132900_
                             _e132234132903_
                             _hd132233132906_
                             _tl132232132908_
                             _e132237132911_
                             _hd132236132914_
                             _tl132235132916_
                             _e132240132919_
                             _hd132239132922_
                             _tl132238132924_
                             _e132243132927_
                             _hd132242132930_
                             _tl132241132932_
                             _e132246132935_
                             _hd132245132938_
                             _tl132244132940_
                             _e132249132943_
                             _hd132248132946_
                             _tl132247132948_
                             ___splice136214136215_
                             _target132250132951_
                             _tl132252132953_)
                      (letrec ((_loop132253132956_
                                (lambda (_hd132251132959_ _args132257132961_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132251132959_))
                                      (let ((_e132254132964_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132251132959_))))
                                        (let ((_lp-tl132256132969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132254132964_)))
                                              (_lp-hd132255132967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132254132964_))))
                                          (let ((__tmp137510
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132255132967_
                                                         _args132257132961_))))
                                            (declare (not safe))
                                            (_loop132253132956_
                                             _lp-tl132256132969_
                                             __tmp137510))))
                                      (let ((_args132258132972_
                                             (reverse _args132257132961_)))
                                        (let ((_L132975_ _args132258132972_)
                                              (_L132976_ _hd132248132946_)
                                              (_L132977_ _hd132239132922_)
                                              (_L132978_ _hd132230132898_)
                                              (_L132979_ _hd132221132874_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132979_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132978_
                                                      'call-method))
                                                   (let ((__tmp137509
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132152_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132977_
                                                      __tmp137509)))
                                              (___kont136212136213_
                                               _L132975_
                                               _L132976_
                                               _L132977_
                                               _L132978_
                                               _L132979_)
                                              (___kont136224136225_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132253132956_ _target132250132951_ '())))))
                   (___match136379136380_
                    (lambda (_e132213132847_
                             _hd132212132850_
                             _tl132211132852_
                             _e132216132855_
                             _hd132215132858_
                             _tl132214132860_
                             _e132219132863_
                             _hd132218132866_
                             _tl132217132868_
                             _e132222132871_
                             _hd132221132874_
                             _tl132220132876_
                             _e132225132879_
                             _hd132224132882_
                             _tl132223132884_
                             _e132228132887_
                             _hd132227132890_
                             _tl132226132892_
                             _e132231132895_
                             _hd132230132898_
                             _tl132229132900_
                             _e132234132903_
                             _hd132233132906_
                             _tl132232132908_
                             _e132237132911_
                             _hd132236132914_
                             _tl132235132916_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd132236132914_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132235132916_))
                              (let ((_e132240132919_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132235132916_))))
                                (let ((_tl132238132924_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132240132919_)))
                                      (_hd132239132922_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132240132919_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132238132924_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132232132908_))
                                          (let ((_e132243132927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132232132908_))))
                                            (let ((_tl132241132932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132243132927_)))
                                                  (_hd132242132930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132243132927_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132242132930_))
                                                  (let ((_e132246132935_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132242132930_))))
                                                    (let ((_tl132244132940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132246132935_)))
                                                          (_hd132245132938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132246132935_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd132245132938_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd132245132938_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132244132940_))
                          (let ((_e132249132943_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132244132940_))))
                            (let ((_tl132247132948_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132249132943_)))
                                  (_hd132248132946_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132249132943_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132247132948_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl132241132932_))
                                      (let ((___splice136214136215_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl132241132932_
                                                '0))))
                                        (let ((_tl132252132953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136214136215_
                                                  '1)))
                                              (_target132250132951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136214136215_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132252132953_))
                                              (___match136421136422_
                                               _e132213132847_
                                               _hd132212132850_
                                               _tl132211132852_
                                               _e132216132855_
                                               _hd132215132858_
                                               _tl132214132860_
                                               _e132219132863_
                                               _hd132218132866_
                                               _tl132217132868_
                                               _e132222132871_
                                               _hd132221132874_
                                               _tl132220132876_
                                               _e132225132879_
                                               _hd132224132882_
                                               _tl132223132884_
                                               _e132228132887_
                                               _hd132227132890_
                                               _tl132226132892_
                                               _e132231132895_
                                               _hd132230132898_
                                               _tl132229132900_
                                               _e132234132903_
                                               _hd132233132906_
                                               _tl132232132908_
                                               _e132237132911_
                                               _hd132236132914_
                                               _tl132235132916_
                                               _e132240132919_
                                               _hd132239132922_
                                               _tl132238132924_
                                               _e132243132927_
                                               _hd132242132930_
                                               _tl132241132932_
                                               _e132246132935_
                                               _hd132245132938_
                                               _tl132244132940_
                                               _e132249132943_
                                               _hd132248132946_
                                               _tl132247132948_
                                               ___splice136214136215_
                                               _target132250132951_
                                               _tl132252132953_)
                                              (___kont136224136225_))))
                                      (___kont136224136225_))
                                  (___kont136224136225_))))
                          (___kont136224136225_))
                      (___kont136224136225_))
                  (___kont136224136225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136224136225_))))
                                          (___match136703136704_
                                           _e132213132847_
                                           _hd132212132850_
                                           _tl132211132852_
                                           _e132216132855_
                                           _hd132215132858_
                                           _tl132214132860_
                                           _e132219132863_
                                           _hd132218132866_
                                           _tl132217132868_
                                           _e132222132871_
                                           _hd132221132874_
                                           _tl132220132876_
                                           _e132225132879_
                                           _hd132224132882_
                                           _tl132223132884_
                                           _e132228132887_
                                           _hd132227132890_
                                           _tl132226132892_
                                           _e132231132895_
                                           _hd132230132898_
                                           _tl132229132900_
                                           _e132234132903_
                                           _hd132233132906_
                                           _tl132232132908_))
                                      (___match136703136704_
                                       _e132213132847_
                                       _hd132212132850_
                                       _tl132211132852_
                                       _e132216132855_
                                       _hd132215132858_
                                       _tl132214132860_
                                       _e132219132863_
                                       _hd132218132866_
                                       _tl132217132868_
                                       _e132222132871_
                                       _hd132221132874_
                                       _tl132220132876_
                                       _e132225132879_
                                       _hd132224132882_
                                       _tl132223132884_
                                       _e132228132887_
                                       _hd132227132890_
                                       _tl132226132892_
                                       _e132231132895_
                                       _hd132230132898_
                                       _tl132229132900_
                                       _e132234132903_
                                       _hd132233132906_
                                       _tl132232132908_))))
                              (___match136703136704_
                               _e132213132847_
                               _hd132212132850_
                               _tl132211132852_
                               _e132216132855_
                               _hd132215132858_
                               _tl132214132860_
                               _e132219132863_
                               _hd132218132866_
                               _tl132217132868_
                               _e132222132871_
                               _hd132221132874_
                               _tl132220132876_
                               _e132225132879_
                               _hd132224132882_
                               _tl132223132884_
                               _e132228132887_
                               _hd132227132890_
                               _tl132226132892_
                               _e132231132895_
                               _hd132230132898_
                               _tl132229132900_
                               _e132234132903_
                               _hd132233132906_
                               _tl132232132908_))
                          (___match136489136490_
                           _e132213132847_
                           _hd132212132850_
                           _tl132211132852_
                           _e132216132855_
                           _hd132215132858_
                           _tl132214132860_
                           _e132219132863_
                           _hd132218132866_
                           _tl132217132868_
                           _e132222132871_
                           _hd132221132874_
                           _tl132220132876_
                           _e132225132879_
                           _hd132224132882_
                           _tl132223132884_
                           _e132228132887_
                           _hd132227132890_
                           _tl132226132892_
                           _e132231132895_
                           _hd132230132898_
                           _tl132229132900_
                           _e132234132903_
                           _hd132233132906_
                           _tl132232132908_
                           _e132237132911_
                           _hd132236132914_
                           _tl132235132916_))))
                   (___match136311136312_
                    (lambda (_e132169133036_
                             _hd132168133039_
                             _tl132167133041_
                             _e132172133044_
                             _hd132171133047_
                             _tl132170133049_
                             _e132175133052_
                             _hd132174133055_
                             _tl132173133057_
                             _e132178133060_
                             _hd132177133063_
                             _tl132176133065_
                             _e132181133068_
                             _hd132180133071_
                             _tl132179133073_
                             _e132184133076_
                             _hd132183133079_
                             _tl132182133081_
                             _e132187133084_
                             _hd132186133087_
                             _tl132185133089_
                             _e132190133092_
                             _hd132189133095_
                             _tl132188133097_
                             _e132193133100_
                             _hd132192133103_
                             _tl132191133105_
                             _e132196133108_
                             _hd132195133111_
                             _tl132194133113_
                             ___splice136210136211_
                             _target132197133116_
                             _tl132199133118_)
                      (letrec ((_loop132200133121_
                                (lambda (_hd132198133124_ _args132204133126_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132198133124_))
                                      (let ((_e132201133129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132198133124_))))
                                        (let ((_lp-tl132203133134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132201133129_)))
                                              (_lp-hd132202133132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132201133129_))))
                                          (let ((__tmp137512
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132202133132_
                                                         _args132204133126_))))
                                            (declare (not safe))
                                            (_loop132200133121_
                                             _lp-tl132203133134_
                                             __tmp137512))))
                                      (let ((_args132205133137_
                                             (reverse _args132204133126_)))
                                        (let ((_L133140_ _args132205133137_)
                                              (_L133141_ _hd132195133111_)
                                              (_L133142_ _hd132186133087_)
                                              (_L133143_ _hd132177133063_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L133143_
                                                      'call-method))
                                                   (let ((__tmp137511
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132152_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L133142_
                                                      __tmp137511)))
                                              (___kont136208136209_
                                               _L133140_
                                               _L133141_
                                               _L133142_
                                               _L133143_)
                                              (___match136499136500_
                                               _e132169133036_
                                               _hd132168133039_
                                               _tl132167133041_
                                               _e132172133044_
                                               _hd132171133047_
                                               _tl132170133049_
                                               _e132175133052_
                                               _hd132174133055_
                                               _tl132173133057_
                                               _e132178133060_
                                               _hd132177133063_
                                               _tl132176133065_
                                               _e132181133068_
                                               _hd132180133071_
                                               _tl132179133073_
                                               _e132184133076_
                                               _hd132183133079_
                                               _tl132182133081_
                                               _e132187133084_
                                               _hd132186133087_
                                               _tl132185133089_
                                               _e132190133092_
                                               _hd132189133095_
                                               _tl132188133097_
                                               _e132193133100_
                                               _hd132192133103_
                                               _tl132191133105_
                                               _e132196133108_
                                               _hd132195133111_
                                               _tl132194133113_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132200133121_ _target132197133116_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx136206136207_))
                  (let ((_e132169133036_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx136206136207_))))
                    (let ((_tl132167133041_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132169133036_)))
                          (_hd132168133039_
                           (let ()
                             (declare (not safe))
                             (##car _e132169133036_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132167133041_))
                          (let ((_e132172133044_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132167133041_))))
                            (let ((_tl132170133049_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132172133044_)))
                                  (_hd132171133047_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132172133044_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd132171133047_))
                                  (let ((_e132175133052_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd132171133047_))))
                                    (let ((_tl132173133057_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e132175133052_)))
                                          (_hd132174133055_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e132175133052_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd132174133055_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd132174133055_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl132173133057_))
                                                  (let ((_e132178133060_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl132173133057_))))
                                                    (let ((_tl132176133065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132178133060_)))
                                                          (_hd132177133063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132178133060_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl132176133065_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl132170133049_))
                      (let ((_e132181133068_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl132170133049_))))
                        (let ((_tl132179133073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132181133068_)))
                              (_hd132180133071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132181133068_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd132180133071_))
                              (let ((_e132184133076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd132180133071_))))
                                (let ((_tl132182133081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132184133076_)))
                                      (_hd132183133079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132184133076_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd132183133079_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd132183133079_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl132182133081_))
                                              (let ((_e132187133084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl132182133081_))))
                                                (let ((_tl132185133089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e132187133084_)))
                                                      (_hd132186133087_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e132187133084_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl132185133089_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl132179133073_))
                                                          (let ((_e132190133092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl132179133073_))))
                    (let ((_tl132188133097_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132190133092_)))
                          (_hd132189133095_
                           (let ()
                             (declare (not safe))
                             (##car _e132190133092_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132189133095_))
                          (let ((_e132193133100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132189133095_))))
                            (let ((_tl132191133105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132193133100_)))
                                  (_hd132192133103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132193133100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd132192133103_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd132192133103_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132191133105_))
                                          (let ((_e132196133108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132191133105_))))
                                            (let ((_tl132194133113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132196133108_)))
                                                  (_hd132195133111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132196133108_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132194133113_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl132188133097_))
                                                      (let ((___splice136210136211_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl132188133097_ '0))))
                (let ((_tl132199133118_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136210136211_ '1)))
                      (_target132197133116_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136210136211_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl132199133118_))
                      (___match136311136312_
                       _e132169133036_
                       _hd132168133039_
                       _tl132167133041_
                       _e132172133044_
                       _hd132171133047_
                       _tl132170133049_
                       _e132175133052_
                       _hd132174133055_
                       _tl132173133057_
                       _e132178133060_
                       _hd132177133063_
                       _tl132176133065_
                       _e132181133068_
                       _hd132180133071_
                       _tl132179133073_
                       _e132184133076_
                       _hd132183133079_
                       _tl132182133081_
                       _e132187133084_
                       _hd132186133087_
                       _tl132185133089_
                       _e132190133092_
                       _hd132189133095_
                       _tl132188133097_
                       _e132193133100_
                       _hd132192133103_
                       _tl132191133105_
                       _e132196133108_
                       _hd132195133111_
                       _tl132194133113_
                       ___splice136210136211_
                       _target132197133116_
                       _tl132199133118_)
                      (___match136499136500_
                       _e132169133036_
                       _hd132168133039_
                       _tl132167133041_
                       _e132172133044_
                       _hd132171133047_
                       _tl132170133049_
                       _e132175133052_
                       _hd132174133055_
                       _tl132173133057_
                       _e132178133060_
                       _hd132177133063_
                       _tl132176133065_
                       _e132181133068_
                       _hd132180133071_
                       _tl132179133073_
                       _e132184133076_
                       _hd132183133079_
                       _tl132182133081_
                       _e132187133084_
                       _hd132186133087_
                       _tl132185133089_
                       _e132190133092_
                       _hd132189133095_
                       _tl132188133097_
                       _e132193133100_
                       _hd132192133103_
                       _tl132191133105_
                       _e132196133108_
                       _hd132195133111_
                       _tl132194133113_))))
              (___match136499136500_
               _e132169133036_
               _hd132168133039_
               _tl132167133041_
               _e132172133044_
               _hd132171133047_
               _tl132170133049_
               _e132175133052_
               _hd132174133055_
               _tl132173133057_
               _e132178133060_
               _hd132177133063_
               _tl132176133065_
               _e132181133068_
               _hd132180133071_
               _tl132179133073_
               _e132184133076_
               _hd132183133079_
               _tl132182133081_
               _e132187133084_
               _hd132186133087_
               _tl132185133089_
               _e132190133092_
               _hd132189133095_
               _tl132188133097_
               _e132193133100_
               _hd132192133103_
               _tl132191133105_
               _e132196133108_
               _hd132195133111_
               _tl132194133113_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136703136704_
                                                   _e132169133036_
                                                   _hd132168133039_
                                                   _tl132167133041_
                                                   _e132172133044_
                                                   _hd132171133047_
                                                   _tl132170133049_
                                                   _e132175133052_
                                                   _hd132174133055_
                                                   _tl132173133057_
                                                   _e132178133060_
                                                   _hd132177133063_
                                                   _tl132176133065_
                                                   _e132181133068_
                                                   _hd132180133071_
                                                   _tl132179133073_
                                                   _e132184133076_
                                                   _hd132183133079_
                                                   _tl132182133081_
                                                   _e132187133084_
                                                   _hd132186133087_
                                                   _tl132185133089_
                                                   _e132190133092_
                                                   _hd132189133095_
                                                   _tl132188133097_))))
                                          (___match136703136704_
                                           _e132169133036_
                                           _hd132168133039_
                                           _tl132167133041_
                                           _e132172133044_
                                           _hd132171133047_
                                           _tl132170133049_
                                           _e132175133052_
                                           _hd132174133055_
                                           _tl132173133057_
                                           _e132178133060_
                                           _hd132177133063_
                                           _tl132176133065_
                                           _e132181133068_
                                           _hd132180133071_
                                           _tl132179133073_
                                           _e132184133076_
                                           _hd132183133079_
                                           _tl132182133081_
                                           _e132187133084_
                                           _hd132186133087_
                                           _tl132185133089_
                                           _e132190133092_
                                           _hd132189133095_
                                           _tl132188133097_))
                                      (___match136379136380_
                                       _e132169133036_
                                       _hd132168133039_
                                       _tl132167133041_
                                       _e132172133044_
                                       _hd132171133047_
                                       _tl132170133049_
                                       _e132175133052_
                                       _hd132174133055_
                                       _tl132173133057_
                                       _e132178133060_
                                       _hd132177133063_
                                       _tl132176133065_
                                       _e132181133068_
                                       _hd132180133071_
                                       _tl132179133073_
                                       _e132184133076_
                                       _hd132183133079_
                                       _tl132182133081_
                                       _e132187133084_
                                       _hd132186133087_
                                       _tl132185133089_
                                       _e132190133092_
                                       _hd132189133095_
                                       _tl132188133097_
                                       _e132193133100_
                                       _hd132192133103_
                                       _tl132191133105_))
                                  (___match136703136704_
                                   _e132169133036_
                                   _hd132168133039_
                                   _tl132167133041_
                                   _e132172133044_
                                   _hd132171133047_
                                   _tl132170133049_
                                   _e132175133052_
                                   _hd132174133055_
                                   _tl132173133057_
                                   _e132178133060_
                                   _hd132177133063_
                                   _tl132176133065_
                                   _e132181133068_
                                   _hd132180133071_
                                   _tl132179133073_
                                   _e132184133076_
                                   _hd132183133079_
                                   _tl132182133081_
                                   _e132187133084_
                                   _hd132186133087_
                                   _tl132185133089_
                                   _e132190133092_
                                   _hd132189133095_
                                   _tl132188133097_))))
                          (___match136703136704_
                           _e132169133036_
                           _hd132168133039_
                           _tl132167133041_
                           _e132172133044_
                           _hd132171133047_
                           _tl132170133049_
                           _e132175133052_
                           _hd132174133055_
                           _tl132173133057_
                           _e132178133060_
                           _hd132177133063_
                           _tl132176133065_
                           _e132181133068_
                           _hd132180133071_
                           _tl132179133073_
                           _e132184133076_
                           _hd132183133079_
                           _tl132182133081_
                           _e132187133084_
                           _hd132186133087_
                           _tl132185133089_
                           _e132190133092_
                           _hd132189133095_
                           _tl132188133097_))))
                  (___match136641136642_
                   _e132169133036_
                   _hd132168133039_
                   _tl132167133041_
                   _e132172133044_
                   _hd132171133047_
                   _tl132170133049_
                   _e132175133052_
                   _hd132174133055_
                   _tl132173133057_
                   _e132178133060_
                   _hd132177133063_
                   _tl132176133065_
                   _e132181133068_
                   _hd132180133071_
                   _tl132179133073_
                   _e132184133076_
                   _hd132183133079_
                   _tl132182133081_
                   _e132187133084_
                   _hd132186133087_
                   _tl132185133089_))
              (___kont136224136225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont136224136225_))
                                          (___kont136224136225_))
                                      (___kont136224136225_))))
                              (___kont136224136225_))))
                      (___kont136224136225_))
                  (___kont136224136225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136224136225_))
                                              (___kont136224136225_))
                                          (___kont136224136225_))))
                                  (___kont136224136225_))))
                          (___kont136224136225_))))
                  (___kont136224136225_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self131091_ _stx131092_)
        (letrec ((_force-e131094_
                  (lambda (_target132150_)
                    (let ((__tmp137513
                           (let ((__tmp137517
                                  (let ((__tmp137518
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137518)))
                                 (__tmp137514
                                  (let ((__tmp137515
                                         (let ((__tmp137516
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target132150_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137516))))
                                    (declare (not safe))
                                    (cons __tmp137515 '()))))
                             (declare (not safe))
                             (cons __tmp137517 __tmp137514))))
                      (declare (not safe))
                      (cons '%#call __tmp137513)))))
          (let* ((___stx136708136709_ _stx131092_)
                 (_g131102131324_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136708136709_)))))
            (let ((___kont136710136711_
                   (lambda (_L132096_ _L132097_ _L132098_ _L132099_)
                     (let ((_$method132144_
                            (let ((__tmp137520
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131091_ 'methods)))
                                  (__tmp137519
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L132097_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137520 __tmp137519)))
                           (_args132145_
                            (map (lambda (_g132132132134_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131091_
                                      _g132132132134_)))
                                 (let ((__tmp137521
                                        (lambda (_g132136132139_
                                                 _g132137132141_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g132136132139_
                                                  _g132137132141_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137521 '() _L132096_)))))
                       (let ((__tmp137522
                              (let ((__tmp137523
                                     (let ((__tmp137528
                                            (let ()
                                              (declare (not safe))
                                              (_force-e131094_
                                               _$method132144_)))
                                           (__tmp137524
                                            (let ((__tmp137525
                                                   (let ((__tmp137526
                                                          (let ((__tmp137527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self131091_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137527 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137526))))
                                              (declare (not safe))
                                              (cons __tmp137525
                                                    _args132145_))))
                                       (declare (not safe))
                                       (cons __tmp137528 __tmp137524))))
                                (declare (not safe))
                                (cons '%#call __tmp137523))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137522 _stx131092_)))))
                  (___kont136714136715_
                   (lambda (_L131928_ _L131929_ _L131930_ _L131931_ _L131932_)
                     (let ((_$method131984_
                            (let ((__tmp137530
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131091_ 'methods)))
                                  (__tmp137529
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131929_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137530 __tmp137529)))
                           (_args131985_
                            (map (lambda (_g131972131974_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131091_
                                      _g131972131974_)))
                                 (let ((__tmp137531
                                        (lambda (_g131976131979_
                                                 _g131977131981_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131976131979_
                                                  _g131977131981_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137531 '() _L131928_)))))
                       (let ((__tmp137532
                              (let ((__tmp137533
                                     (let ((__tmp137540
                                            (let ((__tmp137541
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137541)))
                                           (__tmp137534
                                            (let ((__tmp137539
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e131094_
                                                      _$method131984_)))
                                                  (__tmp137535
                                                   (let ((__tmp137536
                                                          (let ((__tmp137537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137538
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131091_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137538 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137536
                                                           _args131985_))))
                                              (declare (not safe))
                                              (cons __tmp137539 __tmp137535))))
                                       (declare (not safe))
                                       (cons __tmp137540 __tmp137534))))
                                (declare (not safe))
                                (cons '%#call __tmp137533))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137532 _stx131092_)))))
                  (___kont136718136719_
                   (lambda (_L131759_ _L131760_ _L131761_)
                     (let* ((_$field131793_
                             (let ((__tmp137543
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self131091_ 'slots)))
                                   (__tmp137542
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131759_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137543 __tmp137542)))
                            (__tmp137544
                             (let ((__tmp137545
                                    (let ((__tmp137553
                                           (let ((__tmp137554
                                                  (let ((__tmp137555
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self131091_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137555 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137554)))
                                          (__tmp137546
                                           (let ((__tmp137551
                                                  (let ((__tmp137552
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137552)))
                                                 (__tmp137547
                                                  (let ((__tmp137548
                                                         (let ((__tmp137549
                                                                (let ((__tmp137550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self131091_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137550 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137548 '()))))
                                             (declare (not safe))
                                             (cons __tmp137551 __tmp137547))))
                                      (declare (not safe))
                                      (cons __tmp137553 __tmp137546))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137545))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137544 _stx131092_))))
                  (___kont136720136721_
                   (lambda (_L131633_ _L131634_ _L131635_ _L131636_)
                     (let ((_$field131671_
                            (let ((__tmp137557
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131091_ 'slots)))
                                  (__tmp137556
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131634_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137557 __tmp137556)))
                           (_expr131672_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self131091_ _L131633_))))
                       (let ((__tmp137558
                              (let ((__tmp137559
                                     (let ((__tmp137568
                                            (let ((__tmp137569
                                                   (let ((__tmp137570
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131091_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137570 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137569)))
                                           (__tmp137560
                                            (let ((__tmp137566
                                                   (let ((__tmp137567
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137567)))
                                                  (__tmp137561
                                                   (let ((__tmp137563
                                                          (let ((__tmp137564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137565
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131091_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137565 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137564)))
                 (__tmp137562
                  (let () (declare (not safe)) (cons _expr131672_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137563
                                                           __tmp137562))))
                                              (declare (not safe))
                                              (cons __tmp137566 __tmp137561))))
                                       (declare (not safe))
                                       (cons __tmp137568 __tmp137560))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137559))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137558 _stx131092_)))))
                  (___kont136722136723_
                   (lambda (_L131505_ _L131506_)
                     (let* ((_accessor131528_
                             (let ((__tmp137571
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131506_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137571)))
                            (_klass131530_
                             (let ((__tmp137572
                                    (##structure-ref
                                     _accessor131528_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131092_
                                __tmp137572)))
                            (_slot131532_
                             (##structure-ref
                              _accessor131528_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137586
                                       (##structure-ref
                                        _accessor131528_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137586))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131530_
                                       _slot131532_))
                                    (##structure-ref
                                     _klass131530_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx131092_
                           (let* ((_$field131538_
                                   (let ((__tmp137573
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131091_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137573 _slot131532_)))
                                  (__tmp137574
                                   (let ((__tmp137575
                                          (let ((__tmp137583
                                                 (let ((__tmp137584
                                                        (let ((__tmp137585
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131091_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137585 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137584)))
                                                (__tmp137576
                                                 (let ((__tmp137581
                                                        (let ((__tmp137582
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131538_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137582)))
               (__tmp137577
                (let ((__tmp137578
                       (let ((__tmp137579
                              (let ((__tmp137580
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131091_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137580 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137579))))
                  (declare (not safe))
                  (cons __tmp137578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137581
                                                         __tmp137577))))
                                            (declare (not safe))
                                            (cons __tmp137583 __tmp137576))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137575))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137574
                              _stx131092_))))))
                  (___kont136724136725_
                   (lambda (_L131400_ _L131401_ _L131402_)
                     (let* ((_mutator131430_
                             (let ((__tmp137587
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131402_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137587)))
                            (_klass131432_
                             (let ((__tmp137588
                                    (##structure-ref
                                     _mutator131430_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131092_
                                __tmp137588)))
                            (_slot131434_
                             (##structure-ref
                              _mutator131430_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131436_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self131091_ _L131400_))))
                       (if (and (let ((__tmp137613
                                       (##structure-ref
                                        _mutator131430_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137613))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131432_
                                       _slot131434_))
                                    (##structure-ref
                                     _klass131432_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137603
                                  (let ((__tmp137604
                                         (let ((__tmp137610
                                                (let ((__tmp137612
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137611
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131402_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137612
                                                        __tmp137611)))
                                               (__tmp137605
                                                (let ((__tmp137607
                                                       (let ((__tmp137609
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137608
                      (let () (declare (not safe)) (cons _L131401_ '()))))
                 (declare (not safe))
                 (cons __tmp137609 __tmp137608)))
              (__tmp137606
               (let () (declare (not safe)) (cons _expr131436_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137607
                                                        __tmp137606))))
                                           (declare (not safe))
                                           (cons __tmp137610 __tmp137605))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137604))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137603 _stx131092_))
                           (let* ((_$field131442_
                                   (let ((__tmp137589
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131091_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137589 _slot131434_)))
                                  (__tmp137590
                                   (let ((__tmp137591
                                          (let ((__tmp137600
                                                 (let ((__tmp137601
                                                        (let ((__tmp137602
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131091_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137602 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137601)))
                                                (__tmp137592
                                                 (let ((__tmp137598
                                                        (let ((__tmp137599
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131442_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137599)))
               (__tmp137593
                (let ((__tmp137595
                       (let ((__tmp137596
                              (let ((__tmp137597
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131091_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137597 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137596)))
                      (__tmp137594
                       (let () (declare (not safe)) (cons _expr131436_ '()))))
                  (declare (not safe))
                  (cons __tmp137595 __tmp137594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137598
                                                         __tmp137593))))
                                            (declare (not safe))
                                            (cons __tmp137600 __tmp137592))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137591))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137590
                              _stx131092_))))))
                  (___kont136726136727_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self131091_ _stx131092_)))))
              (let* ((___match137207137208_
                      (lambda (_e131298131336_
                               _hd131297131339_
                               _tl131296131341_
                               _e131301131344_
                               _hd131300131347_
                               _tl131299131349_
                               _e131304131352_
                               _hd131303131355_
                               _tl131302131357_
                               _e131307131360_
                               _hd131306131363_
                               _tl131305131365_
                               _e131310131368_
                               _hd131309131371_
                               _tl131308131373_
                               _e131313131376_
                               _hd131312131379_
                               _tl131311131381_
                               _e131316131384_
                               _hd131315131387_
                               _tl131314131389_
                               _e131319131392_
                               _hd131318131395_
                               _tl131317131397_)
                        (let ((_L131400_ _hd131318131395_)
                              (_L131401_ _hd131315131387_)
                              (_L131402_ _hd131306131363_))
                          (if (and (let ((__tmp137616
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131091_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131401_
                                      __tmp137616))
                                   (let ((__tmp137614
                                          (let ((__tmp137615
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131402_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137615))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137614
                                      'gxc#!mutator::t)))
                              (___kont136724136725_
                               _L131400_
                               _L131401_
                               _L131402_)
                              (___kont136726136727_)))))
                     (___match137205137206_
                      (lambda (_e131298131336_
                               _hd131297131339_
                               _tl131296131341_
                               _e131301131344_
                               _hd131300131347_
                               _tl131299131349_
                               _e131304131352_
                               _hd131303131355_
                               _tl131302131357_
                               _e131307131360_
                               _hd131306131363_
                               _tl131305131365_
                               _e131310131368_
                               _hd131309131371_
                               _tl131308131373_
                               _e131313131376_
                               _hd131312131379_
                               _tl131311131381_
                               _e131316131384_
                               _hd131315131387_
                               _tl131314131389_
                               _e131319131392_
                               _hd131318131395_
                               _tl131317131397_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131317131397_))
                            (___match137207137208_
                             _e131298131336_
                             _hd131297131339_
                             _tl131296131341_
                             _e131301131344_
                             _hd131300131347_
                             _tl131299131349_
                             _e131304131352_
                             _hd131303131355_
                             _tl131302131357_
                             _e131307131360_
                             _hd131306131363_
                             _tl131305131365_
                             _e131310131368_
                             _hd131309131371_
                             _tl131308131373_
                             _e131313131376_
                             _hd131312131379_
                             _tl131311131381_
                             _e131316131384_
                             _hd131315131387_
                             _tl131314131389_
                             _e131319131392_
                             _hd131318131395_
                             _tl131317131397_)
                            (___kont136726136727_))))
                     (___match137199137200_
                      (lambda (_e131298131336_
                               _hd131297131339_
                               _tl131296131341_
                               _e131301131344_
                               _hd131300131347_
                               _tl131299131349_
                               _e131304131352_
                               _hd131303131355_
                               _tl131302131357_
                               _e131307131360_
                               _hd131306131363_
                               _tl131305131365_
                               _e131310131368_
                               _hd131309131371_
                               _tl131308131373_
                               _e131313131376_
                               _hd131312131379_
                               _tl131311131381_
                               _e131316131384_
                               _hd131315131387_
                               _tl131314131389_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131308131373_))
                            (let ((_e131319131392_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131308131373_))))
                              (let ((_tl131317131397_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131319131392_)))
                                    (_hd131318131395_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131319131392_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131317131397_))
                                    (___match137207137208_
                                     _e131298131336_
                                     _hd131297131339_
                                     _tl131296131341_
                                     _e131301131344_
                                     _hd131300131347_
                                     _tl131299131349_
                                     _e131304131352_
                                     _hd131303131355_
                                     _tl131302131357_
                                     _e131307131360_
                                     _hd131306131363_
                                     _tl131305131365_
                                     _e131310131368_
                                     _hd131309131371_
                                     _tl131308131373_
                                     _e131313131376_
                                     _hd131312131379_
                                     _tl131311131381_
                                     _e131316131384_
                                     _hd131315131387_
                                     _tl131314131389_
                                     _e131319131392_
                                     _hd131318131395_
                                     _tl131317131397_)
                                    (___kont136726136727_))))
                            (___kont136726136727_))))
                     (___match137145137146_
                      (lambda (_e131274131449_
                               _hd131273131452_
                               _tl131272131454_
                               _e131277131457_
                               _hd131276131460_
                               _tl131275131462_
                               _e131280131465_
                               _hd131279131468_
                               _tl131278131470_
                               _e131283131473_
                               _hd131282131476_
                               _tl131281131478_
                               _e131286131481_
                               _hd131285131484_
                               _tl131284131486_
                               _e131289131489_
                               _hd131288131492_
                               _tl131287131494_
                               _e131292131497_
                               _hd131291131500_
                               _tl131290131502_)
                        (let ((_L131505_ _hd131291131500_)
                              (_L131506_ _hd131282131476_))
                          (if (and (let ((__tmp137619
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131091_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131505_
                                      __tmp137619))
                                   (let ((__tmp137617
                                          (let ((__tmp137618
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131506_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137618))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137617
                                      'gxc#!accessor::t)))
                              (___kont136722136723_ _L131505_ _L131506_)
                              (___kont136726136727_)))))
                     (___match137143137144_
                      (lambda (_e131274131449_
                               _hd131273131452_
                               _tl131272131454_
                               _e131277131457_
                               _hd131276131460_
                               _tl131275131462_
                               _e131280131465_
                               _hd131279131468_
                               _tl131278131470_
                               _e131283131473_
                               _hd131282131476_
                               _tl131281131478_
                               _e131286131481_
                               _hd131285131484_
                               _tl131284131486_
                               _e131289131489_
                               _hd131288131492_
                               _tl131287131494_
                               _e131292131497_
                               _hd131291131500_
                               _tl131290131502_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131284131486_))
                            (___match137145137146_
                             _e131274131449_
                             _hd131273131452_
                             _tl131272131454_
                             _e131277131457_
                             _hd131276131460_
                             _tl131275131462_
                             _e131280131465_
                             _hd131279131468_
                             _tl131278131470_
                             _e131283131473_
                             _hd131282131476_
                             _tl131281131478_
                             _e131286131481_
                             _hd131285131484_
                             _tl131284131486_
                             _e131289131489_
                             _hd131288131492_
                             _tl131287131494_
                             _e131292131497_
                             _hd131291131500_
                             _tl131290131502_)
                            (___match137199137200_
                             _e131274131449_
                             _hd131273131452_
                             _tl131272131454_
                             _e131277131457_
                             _hd131276131460_
                             _tl131275131462_
                             _e131280131465_
                             _hd131279131468_
                             _tl131278131470_
                             _e131283131473_
                             _hd131282131476_
                             _tl131281131478_
                             _e131286131481_
                             _hd131285131484_
                             _tl131284131486_
                             _e131289131489_
                             _hd131288131492_
                             _tl131287131494_
                             _e131292131497_
                             _hd131291131500_
                             _tl131290131502_))))
                     (___match137089137090_
                      (lambda (_e131239131545_
                               _hd131238131548_
                               _tl131237131550_
                               _e131242131553_
                               _hd131241131556_
                               _tl131240131558_
                               _e131245131561_
                               _hd131244131564_
                               _tl131243131566_
                               _e131248131569_
                               _hd131247131572_
                               _tl131246131574_
                               _e131251131577_
                               _hd131250131580_
                               _tl131249131582_
                               _e131254131585_
                               _hd131253131588_
                               _tl131252131590_
                               _e131257131593_
                               _hd131256131596_
                               _tl131255131598_
                               _e131260131601_
                               _hd131259131604_
                               _tl131258131606_
                               _e131263131609_
                               _hd131262131612_
                               _tl131261131614_
                               _e131266131617_
                               _hd131265131620_
                               _tl131264131622_
                               _e131269131625_
                               _hd131268131628_
                               _tl131267131630_)
                        (let ((_L131633_ _hd131268131628_)
                              (_L131634_ _hd131265131620_)
                              (_L131635_ _hd131256131596_)
                              (_L131636_ _hd131247131572_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131636_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131636_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137620
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131091_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131635_
                                      __tmp137620)))
                              (___kont136720136721_
                               _L131633_
                               _L131634_
                               _L131635_
                               _L131636_)
                              (___kont136726136727_)))))
                     (___match137081137082_
                      (lambda (_e131239131545_
                               _hd131238131548_
                               _tl131237131550_
                               _e131242131553_
                               _hd131241131556_
                               _tl131240131558_
                               _e131245131561_
                               _hd131244131564_
                               _tl131243131566_
                               _e131248131569_
                               _hd131247131572_
                               _tl131246131574_
                               _e131251131577_
                               _hd131250131580_
                               _tl131249131582_
                               _e131254131585_
                               _hd131253131588_
                               _tl131252131590_
                               _e131257131593_
                               _hd131256131596_
                               _tl131255131598_
                               _e131260131601_
                               _hd131259131604_
                               _tl131258131606_
                               _e131263131609_
                               _hd131262131612_
                               _tl131261131614_
                               _e131266131617_
                               _hd131265131620_
                               _tl131264131622_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131258131606_))
                            (let ((_e131269131625_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131258131606_))))
                              (let ((_tl131267131630_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131269131625_)))
                                    (_hd131268131628_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131269131625_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131267131630_))
                                    (___match137089137090_
                                     _e131239131545_
                                     _hd131238131548_
                                     _tl131237131550_
                                     _e131242131553_
                                     _hd131241131556_
                                     _tl131240131558_
                                     _e131245131561_
                                     _hd131244131564_
                                     _tl131243131566_
                                     _e131248131569_
                                     _hd131247131572_
                                     _tl131246131574_
                                     _e131251131577_
                                     _hd131250131580_
                                     _tl131249131582_
                                     _e131254131585_
                                     _hd131253131588_
                                     _tl131252131590_
                                     _e131257131593_
                                     _hd131256131596_
                                     _tl131255131598_
                                     _e131260131601_
                                     _hd131259131604_
                                     _tl131258131606_
                                     _e131263131609_
                                     _hd131262131612_
                                     _tl131261131614_
                                     _e131266131617_
                                     _hd131265131620_
                                     _tl131264131622_
                                     _e131269131625_
                                     _hd131268131628_
                                     _tl131267131630_)
                                    (___kont136726136727_))))
                            (___match137205137206_
                             _e131239131545_
                             _hd131238131548_
                             _tl131237131550_
                             _e131242131553_
                             _hd131241131556_
                             _tl131240131558_
                             _e131245131561_
                             _hd131244131564_
                             _tl131243131566_
                             _e131248131569_
                             _hd131247131572_
                             _tl131246131574_
                             _e131251131577_
                             _hd131250131580_
                             _tl131249131582_
                             _e131254131585_
                             _hd131253131588_
                             _tl131252131590_
                             _e131257131593_
                             _hd131256131596_
                             _tl131255131598_
                             _e131260131601_
                             _hd131259131604_
                             _tl131258131606_))))
                     (___match137003137004_
                      (lambda (_e131205131679_
                               _hd131204131682_
                               _tl131203131684_
                               _e131208131687_
                               _hd131207131690_
                               _tl131206131692_
                               _e131211131695_
                               _hd131210131698_
                               _tl131209131700_
                               _e131214131703_
                               _hd131213131706_
                               _tl131212131708_
                               _e131217131711_
                               _hd131216131714_
                               _tl131215131716_
                               _e131220131719_
                               _hd131219131722_
                               _tl131218131724_
                               _e131223131727_
                               _hd131222131730_
                               _tl131221131732_
                               _e131226131735_
                               _hd131225131738_
                               _tl131224131740_
                               _e131229131743_
                               _hd131228131746_
                               _tl131227131748_
                               _e131232131751_
                               _hd131231131754_
                               _tl131230131756_)
                        (let ((_L131759_ _hd131231131754_)
                              (_L131760_ _hd131222131730_)
                              (_L131761_ _hd131213131706_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131761_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131761_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137621
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131091_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131760_
                                      __tmp137621)))
                              (___kont136718136719_
                               _L131759_
                               _L131760_
                               _L131761_)
                              (___match137207137208_
                               _e131205131679_
                               _hd131204131682_
                               _tl131203131684_
                               _e131208131687_
                               _hd131207131690_
                               _tl131206131692_
                               _e131211131695_
                               _hd131210131698_
                               _tl131209131700_
                               _e131214131703_
                               _hd131213131706_
                               _tl131212131708_
                               _e131217131711_
                               _hd131216131714_
                               _tl131215131716_
                               _e131220131719_
                               _hd131219131722_
                               _tl131218131724_
                               _e131223131727_
                               _hd131222131730_
                               _tl131221131732_
                               _e131226131735_
                               _hd131225131738_
                               _tl131224131740_)))))
                     (___match137001137002_
                      (lambda (_e131205131679_
                               _hd131204131682_
                               _tl131203131684_
                               _e131208131687_
                               _hd131207131690_
                               _tl131206131692_
                               _e131211131695_
                               _hd131210131698_
                               _tl131209131700_
                               _e131214131703_
                               _hd131213131706_
                               _tl131212131708_
                               _e131217131711_
                               _hd131216131714_
                               _tl131215131716_
                               _e131220131719_
                               _hd131219131722_
                               _tl131218131724_
                               _e131223131727_
                               _hd131222131730_
                               _tl131221131732_
                               _e131226131735_
                               _hd131225131738_
                               _tl131224131740_
                               _e131229131743_
                               _hd131228131746_
                               _tl131227131748_
                               _e131232131751_
                               _hd131231131754_
                               _tl131230131756_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131224131740_))
                            (___match137003137004_
                             _e131205131679_
                             _hd131204131682_
                             _tl131203131684_
                             _e131208131687_
                             _hd131207131690_
                             _tl131206131692_
                             _e131211131695_
                             _hd131210131698_
                             _tl131209131700_
                             _e131214131703_
                             _hd131213131706_
                             _tl131212131708_
                             _e131217131711_
                             _hd131216131714_
                             _tl131215131716_
                             _e131220131719_
                             _hd131219131722_
                             _tl131218131724_
                             _e131223131727_
                             _hd131222131730_
                             _tl131221131732_
                             _e131226131735_
                             _hd131225131738_
                             _tl131224131740_
                             _e131229131743_
                             _hd131228131746_
                             _tl131227131748_
                             _e131232131751_
                             _hd131231131754_
                             _tl131230131756_)
                            (___match137081137082_
                             _e131205131679_
                             _hd131204131682_
                             _tl131203131684_
                             _e131208131687_
                             _hd131207131690_
                             _tl131206131692_
                             _e131211131695_
                             _hd131210131698_
                             _tl131209131700_
                             _e131214131703_
                             _hd131213131706_
                             _tl131212131708_
                             _e131217131711_
                             _hd131216131714_
                             _tl131215131716_
                             _e131220131719_
                             _hd131219131722_
                             _tl131218131724_
                             _e131223131727_
                             _hd131222131730_
                             _tl131221131732_
                             _e131226131735_
                             _hd131225131738_
                             _tl131224131740_
                             _e131229131743_
                             _hd131228131746_
                             _tl131227131748_
                             _e131232131751_
                             _hd131231131754_
                             _tl131230131756_))))
                     (___match136991136992_
                      (lambda (_e131205131679_
                               _hd131204131682_
                               _tl131203131684_
                               _e131208131687_
                               _hd131207131690_
                               _tl131206131692_
                               _e131211131695_
                               _hd131210131698_
                               _tl131209131700_
                               _e131214131703_
                               _hd131213131706_
                               _tl131212131708_
                               _e131217131711_
                               _hd131216131714_
                               _tl131215131716_
                               _e131220131719_
                               _hd131219131722_
                               _tl131218131724_
                               _e131223131727_
                               _hd131222131730_
                               _tl131221131732_
                               _e131226131735_
                               _hd131225131738_
                               _tl131224131740_
                               _e131229131743_
                               _hd131228131746_
                               _tl131227131748_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd131228131746_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131227131748_))
                                (let ((_e131232131751_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131227131748_))))
                                  (let ((_tl131230131756_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131232131751_)))
                                        (_hd131231131754_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131232131751_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131230131756_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131224131740_))
                                            (___match137003137004_
                                             _e131205131679_
                                             _hd131204131682_
                                             _tl131203131684_
                                             _e131208131687_
                                             _hd131207131690_
                                             _tl131206131692_
                                             _e131211131695_
                                             _hd131210131698_
                                             _tl131209131700_
                                             _e131214131703_
                                             _hd131213131706_
                                             _tl131212131708_
                                             _e131217131711_
                                             _hd131216131714_
                                             _tl131215131716_
                                             _e131220131719_
                                             _hd131219131722_
                                             _tl131218131724_
                                             _e131223131727_
                                             _hd131222131730_
                                             _tl131221131732_
                                             _e131226131735_
                                             _hd131225131738_
                                             _tl131224131740_
                                             _e131229131743_
                                             _hd131228131746_
                                             _tl131227131748_
                                             _e131232131751_
                                             _hd131231131754_
                                             _tl131230131756_)
                                            (___match137081137082_
                                             _e131205131679_
                                             _hd131204131682_
                                             _tl131203131684_
                                             _e131208131687_
                                             _hd131207131690_
                                             _tl131206131692_
                                             _e131211131695_
                                             _hd131210131698_
                                             _tl131209131700_
                                             _e131214131703_
                                             _hd131213131706_
                                             _tl131212131708_
                                             _e131217131711_
                                             _hd131216131714_
                                             _tl131215131716_
                                             _e131220131719_
                                             _hd131219131722_
                                             _tl131218131724_
                                             _e131223131727_
                                             _hd131222131730_
                                             _tl131221131732_
                                             _e131226131735_
                                             _hd131225131738_
                                             _tl131224131740_
                                             _e131229131743_
                                             _hd131228131746_
                                             _tl131227131748_
                                             _e131232131751_
                                             _hd131231131754_
                                             _tl131230131756_))
                                        (___match137205137206_
                                         _e131205131679_
                                         _hd131204131682_
                                         _tl131203131684_
                                         _e131208131687_
                                         _hd131207131690_
                                         _tl131206131692_
                                         _e131211131695_
                                         _hd131210131698_
                                         _tl131209131700_
                                         _e131214131703_
                                         _hd131213131706_
                                         _tl131212131708_
                                         _e131217131711_
                                         _hd131216131714_
                                         _tl131215131716_
                                         _e131220131719_
                                         _hd131219131722_
                                         _tl131218131724_
                                         _e131223131727_
                                         _hd131222131730_
                                         _tl131221131732_
                                         _e131226131735_
                                         _hd131225131738_
                                         _tl131224131740_))))
                                (___match137205137206_
                                 _e131205131679_
                                 _hd131204131682_
                                 _tl131203131684_
                                 _e131208131687_
                                 _hd131207131690_
                                 _tl131206131692_
                                 _e131211131695_
                                 _hd131210131698_
                                 _tl131209131700_
                                 _e131214131703_
                                 _hd131213131706_
                                 _tl131212131708_
                                 _e131217131711_
                                 _hd131216131714_
                                 _tl131215131716_
                                 _e131220131719_
                                 _hd131219131722_
                                 _tl131218131724_
                                 _e131223131727_
                                 _hd131222131730_
                                 _tl131221131732_
                                 _e131226131735_
                                 _hd131225131738_
                                 _tl131224131740_))
                            (___match137205137206_
                             _e131205131679_
                             _hd131204131682_
                             _tl131203131684_
                             _e131208131687_
                             _hd131207131690_
                             _tl131206131692_
                             _e131211131695_
                             _hd131210131698_
                             _tl131209131700_
                             _e131214131703_
                             _hd131213131706_
                             _tl131212131708_
                             _e131217131711_
                             _hd131216131714_
                             _tl131215131716_
                             _e131220131719_
                             _hd131219131722_
                             _tl131218131724_
                             _e131223131727_
                             _hd131222131730_
                             _tl131221131732_
                             _e131226131735_
                             _hd131225131738_
                             _tl131224131740_))))
                     (___match136923136924_
                      (lambda (_e131154131800_
                               _hd131153131803_
                               _tl131152131805_
                               _e131157131808_
                               _hd131156131811_
                               _tl131155131813_
                               _e131160131816_
                               _hd131159131819_
                               _tl131158131821_
                               _e131163131824_
                               _hd131162131827_
                               _tl131161131829_
                               _e131166131832_
                               _hd131165131835_
                               _tl131164131837_
                               _e131169131840_
                               _hd131168131843_
                               _tl131167131845_
                               _e131172131848_
                               _hd131171131851_
                               _tl131170131853_
                               _e131175131856_
                               _hd131174131859_
                               _tl131173131861_
                               _e131178131864_
                               _hd131177131867_
                               _tl131176131869_
                               _e131181131872_
                               _hd131180131875_
                               _tl131179131877_
                               _e131184131880_
                               _hd131183131883_
                               _tl131182131885_
                               _e131187131888_
                               _hd131186131891_
                               _tl131185131893_
                               _e131190131896_
                               _hd131189131899_
                               _tl131188131901_
                               ___splice136716136717_
                               _target131191131904_
                               _tl131193131906_)
                        (letrec ((_loop131194131909_
                                  (lambda (_hd131192131912_ _args131198131914_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131192131912_))
                                        (let ((_e131195131917_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131192131912_))))
                                          (let ((_lp-tl131197131922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131195131917_)))
                                                (_lp-hd131196131920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131195131917_))))
                                            (let ((__tmp137623
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131196131920_
                                                           _args131198131914_))))
                                              (declare (not safe))
                                              (_loop131194131909_
                                               _lp-tl131197131922_
                                               __tmp137623))))
                                        (let ((_args131199131925_
                                               (reverse _args131198131914_)))
                                          (let ((_L131928_ _args131199131925_)
                                                (_L131929_ _hd131189131899_)
                                                (_L131930_ _hd131180131875_)
                                                (_L131931_ _hd131171131851_)
                                                (_L131932_ _hd131162131827_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131932_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131931_
                                                        'call-method))
                                                     (let ((__tmp137622
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131091_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131930_
                                                        __tmp137622)))
                                                (___kont136714136715_
                                                 _L131928_
                                                 _L131929_
                                                 _L131930_
                                                 _L131931_
                                                 _L131932_)
                                                (___kont136726136727_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131194131909_ _target131191131904_ '())))))
                     (___match136881136882_
                      (lambda (_e131154131800_
                               _hd131153131803_
                               _tl131152131805_
                               _e131157131808_
                               _hd131156131811_
                               _tl131155131813_
                               _e131160131816_
                               _hd131159131819_
                               _tl131158131821_
                               _e131163131824_
                               _hd131162131827_
                               _tl131161131829_
                               _e131166131832_
                               _hd131165131835_
                               _tl131164131837_
                               _e131169131840_
                               _hd131168131843_
                               _tl131167131845_
                               _e131172131848_
                               _hd131171131851_
                               _tl131170131853_
                               _e131175131856_
                               _hd131174131859_
                               _tl131173131861_
                               _e131178131864_
                               _hd131177131867_
                               _tl131176131869_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd131177131867_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131176131869_))
                                (let ((_e131181131872_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131176131869_))))
                                  (let ((_tl131179131877_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131181131872_)))
                                        (_hd131180131875_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131181131872_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131179131877_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131173131861_))
                                            (let ((_e131184131880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131173131861_))))
                                              (let ((_tl131182131885_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131184131880_)))
                                                    (_hd131183131883_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131184131880_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd131183131883_))
                                                    (let ((_e131187131888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd131183131883_))))
                                                      (let ((_tl131185131893_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131187131888_)))
                    (_hd131186131891_
                     (let () (declare (not safe)) (##car _e131187131888_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd131186131891_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd131186131891_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131185131893_))
                            (let ((_e131190131896_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131185131893_))))
                              (let ((_tl131188131901_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131190131896_)))
                                    (_hd131189131899_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131190131896_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131188131901_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl131182131885_))
                                        (let ((___splice136716136717_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl131182131885_
                                                  '0))))
                                          (let ((_tl131193131906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136716136717_
                                                    '1)))
                                                (_target131191131904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136716136717_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131193131906_))
                                                (___match136923136924_
                                                 _e131154131800_
                                                 _hd131153131803_
                                                 _tl131152131805_
                                                 _e131157131808_
                                                 _hd131156131811_
                                                 _tl131155131813_
                                                 _e131160131816_
                                                 _hd131159131819_
                                                 _tl131158131821_
                                                 _e131163131824_
                                                 _hd131162131827_
                                                 _tl131161131829_
                                                 _e131166131832_
                                                 _hd131165131835_
                                                 _tl131164131837_
                                                 _e131169131840_
                                                 _hd131168131843_
                                                 _tl131167131845_
                                                 _e131172131848_
                                                 _hd131171131851_
                                                 _tl131170131853_
                                                 _e131175131856_
                                                 _hd131174131859_
                                                 _tl131173131861_
                                                 _e131178131864_
                                                 _hd131177131867_
                                                 _tl131176131869_
                                                 _e131181131872_
                                                 _hd131180131875_
                                                 _tl131179131877_
                                                 _e131184131880_
                                                 _hd131183131883_
                                                 _tl131182131885_
                                                 _e131187131888_
                                                 _hd131186131891_
                                                 _tl131185131893_
                                                 _e131190131896_
                                                 _hd131189131899_
                                                 _tl131188131901_
                                                 ___splice136716136717_
                                                 _target131191131904_
                                                 _tl131193131906_)
                                                (___kont136726136727_))))
                                        (___kont136726136727_))
                                    (___kont136726136727_))))
                            (___kont136726136727_))
                        (___kont136726136727_))
                    (___kont136726136727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136726136727_))))
                                            (___match137205137206_
                                             _e131154131800_
                                             _hd131153131803_
                                             _tl131152131805_
                                             _e131157131808_
                                             _hd131156131811_
                                             _tl131155131813_
                                             _e131160131816_
                                             _hd131159131819_
                                             _tl131158131821_
                                             _e131163131824_
                                             _hd131162131827_
                                             _tl131161131829_
                                             _e131166131832_
                                             _hd131165131835_
                                             _tl131164131837_
                                             _e131169131840_
                                             _hd131168131843_
                                             _tl131167131845_
                                             _e131172131848_
                                             _hd131171131851_
                                             _tl131170131853_
                                             _e131175131856_
                                             _hd131174131859_
                                             _tl131173131861_))
                                        (___match137205137206_
                                         _e131154131800_
                                         _hd131153131803_
                                         _tl131152131805_
                                         _e131157131808_
                                         _hd131156131811_
                                         _tl131155131813_
                                         _e131160131816_
                                         _hd131159131819_
                                         _tl131158131821_
                                         _e131163131824_
                                         _hd131162131827_
                                         _tl131161131829_
                                         _e131166131832_
                                         _hd131165131835_
                                         _tl131164131837_
                                         _e131169131840_
                                         _hd131168131843_
                                         _tl131167131845_
                                         _e131172131848_
                                         _hd131171131851_
                                         _tl131170131853_
                                         _e131175131856_
                                         _hd131174131859_
                                         _tl131173131861_))))
                                (___match137205137206_
                                 _e131154131800_
                                 _hd131153131803_
                                 _tl131152131805_
                                 _e131157131808_
                                 _hd131156131811_
                                 _tl131155131813_
                                 _e131160131816_
                                 _hd131159131819_
                                 _tl131158131821_
                                 _e131163131824_
                                 _hd131162131827_
                                 _tl131161131829_
                                 _e131166131832_
                                 _hd131165131835_
                                 _tl131164131837_
                                 _e131169131840_
                                 _hd131168131843_
                                 _tl131167131845_
                                 _e131172131848_
                                 _hd131171131851_
                                 _tl131170131853_
                                 _e131175131856_
                                 _hd131174131859_
                                 _tl131173131861_))
                            (___match136991136992_
                             _e131154131800_
                             _hd131153131803_
                             _tl131152131805_
                             _e131157131808_
                             _hd131156131811_
                             _tl131155131813_
                             _e131160131816_
                             _hd131159131819_
                             _tl131158131821_
                             _e131163131824_
                             _hd131162131827_
                             _tl131161131829_
                             _e131166131832_
                             _hd131165131835_
                             _tl131164131837_
                             _e131169131840_
                             _hd131168131843_
                             _tl131167131845_
                             _e131172131848_
                             _hd131171131851_
                             _tl131170131853_
                             _e131175131856_
                             _hd131174131859_
                             _tl131173131861_
                             _e131178131864_
                             _hd131177131867_
                             _tl131176131869_))))
                     (___match136813136814_
                      (lambda (_e131110131992_
                               _hd131109131995_
                               _tl131108131997_
                               _e131113132000_
                               _hd131112132003_
                               _tl131111132005_
                               _e131116132008_
                               _hd131115132011_
                               _tl131114132013_
                               _e131119132016_
                               _hd131118132019_
                               _tl131117132021_
                               _e131122132024_
                               _hd131121132027_
                               _tl131120132029_
                               _e131125132032_
                               _hd131124132035_
                               _tl131123132037_
                               _e131128132040_
                               _hd131127132043_
                               _tl131126132045_
                               _e131131132048_
                               _hd131130132051_
                               _tl131129132053_
                               _e131134132056_
                               _hd131133132059_
                               _tl131132132061_
                               _e131137132064_
                               _hd131136132067_
                               _tl131135132069_
                               ___splice136712136713_
                               _target131138132072_
                               _tl131140132074_)
                        (letrec ((_loop131141132077_
                                  (lambda (_hd131139132080_ _args131145132082_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131139132080_))
                                        (let ((_e131142132085_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131139132080_))))
                                          (let ((_lp-tl131144132090_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131142132085_)))
                                                (_lp-hd131143132088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131142132085_))))
                                            (let ((__tmp137625
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131143132088_
                                                           _args131145132082_))))
                                              (declare (not safe))
                                              (_loop131141132077_
                                               _lp-tl131144132090_
                                               __tmp137625))))
                                        (let ((_args131146132093_
                                               (reverse _args131145132082_)))
                                          (let ((_L132096_ _args131146132093_)
                                                (_L132097_ _hd131136132067_)
                                                (_L132098_ _hd131127132043_)
                                                (_L132099_ _hd131118132019_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L132099_
                                                        'call-method))
                                                     (let ((__tmp137624
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131091_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L132098_
                                                        __tmp137624)))
                                                (___kont136710136711_
                                                 _L132096_
                                                 _L132097_
                                                 _L132098_
                                                 _L132099_)
                                                (___match137001137002_
                                                 _e131110131992_
                                                 _hd131109131995_
                                                 _tl131108131997_
                                                 _e131113132000_
                                                 _hd131112132003_
                                                 _tl131111132005_
                                                 _e131116132008_
                                                 _hd131115132011_
                                                 _tl131114132013_
                                                 _e131119132016_
                                                 _hd131118132019_
                                                 _tl131117132021_
                                                 _e131122132024_
                                                 _hd131121132027_
                                                 _tl131120132029_
                                                 _e131125132032_
                                                 _hd131124132035_
                                                 _tl131123132037_
                                                 _e131128132040_
                                                 _hd131127132043_
                                                 _tl131126132045_
                                                 _e131131132048_
                                                 _hd131130132051_
                                                 _tl131129132053_
                                                 _e131134132056_
                                                 _hd131133132059_
                                                 _tl131132132061_
                                                 _e131137132064_
                                                 _hd131136132067_
                                                 _tl131135132069_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131141132077_ _target131138132072_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136708136709_))
                    (let ((_e131110131992_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136708136709_))))
                      (let ((_tl131108131997_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131110131992_)))
                            (_hd131109131995_
                             (let ()
                               (declare (not safe))
                               (##car _e131110131992_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131108131997_))
                            (let ((_e131113132000_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131108131997_))))
                              (let ((_tl131111132005_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131113132000_)))
                                    (_hd131112132003_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131113132000_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131112132003_))
                                    (let ((_e131116132008_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131112132003_))))
                                      (let ((_tl131114132013_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131116132008_)))
                                            (_hd131115132011_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131116132008_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd131115132011_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd131115132011_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl131114132013_))
                                                    (let ((_e131119132016_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl131114132013_))))
                                                      (let ((_tl131117132021_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131119132016_)))
                    (_hd131118132019_
                     (let () (declare (not safe)) (##car _e131119132016_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl131117132021_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131111132005_))
                        (let ((_e131122132024_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131111132005_))))
                          (let ((_tl131120132029_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131122132024_)))
                                (_hd131121132027_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131122132024_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131121132027_))
                                (let ((_e131125132032_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131121132027_))))
                                  (let ((_tl131123132037_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131125132032_)))
                                        (_hd131124132035_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131125132032_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd131124132035_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd131124132035_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131123132037_))
                                                (let ((_e131128132040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131123132037_))))
                                                  (let ((_tl131126132045_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131128132040_)))
                                                        (_hd131127132043_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131128132040_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131126132045_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl131120132029_))
                                                            (let ((_e131131132048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl131120132029_))))
                      (let ((_tl131129132053_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131131132048_)))
                            (_hd131130132051_
                             (let ()
                               (declare (not safe))
                               (##car _e131131132048_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd131130132051_))
                            (let ((_e131134132056_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd131130132051_))))
                              (let ((_tl131132132061_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131134132056_)))
                                    (_hd131133132059_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131134132056_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd131133132059_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd131133132059_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131132132061_))
                                            (let ((_e131137132064_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131132132061_))))
                                              (let ((_tl131135132069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131137132064_)))
                                                    (_hd131136132067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131137132064_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl131135132069_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl131129132053_))
                                                        (let ((___splice136712136713_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl131129132053_ '0))))
                  (let ((_tl131140132074_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136712136713_ '1)))
                        (_target131138132072_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136712136713_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl131140132074_))
                        (___match136813136814_
                         _e131110131992_
                         _hd131109131995_
                         _tl131108131997_
                         _e131113132000_
                         _hd131112132003_
                         _tl131111132005_
                         _e131116132008_
                         _hd131115132011_
                         _tl131114132013_
                         _e131119132016_
                         _hd131118132019_
                         _tl131117132021_
                         _e131122132024_
                         _hd131121132027_
                         _tl131120132029_
                         _e131125132032_
                         _hd131124132035_
                         _tl131123132037_
                         _e131128132040_
                         _hd131127132043_
                         _tl131126132045_
                         _e131131132048_
                         _hd131130132051_
                         _tl131129132053_
                         _e131134132056_
                         _hd131133132059_
                         _tl131132132061_
                         _e131137132064_
                         _hd131136132067_
                         _tl131135132069_
                         ___splice136712136713_
                         _target131138132072_
                         _tl131140132074_)
                        (___match137001137002_
                         _e131110131992_
                         _hd131109131995_
                         _tl131108131997_
                         _e131113132000_
                         _hd131112132003_
                         _tl131111132005_
                         _e131116132008_
                         _hd131115132011_
                         _tl131114132013_
                         _e131119132016_
                         _hd131118132019_
                         _tl131117132021_
                         _e131122132024_
                         _hd131121132027_
                         _tl131120132029_
                         _e131125132032_
                         _hd131124132035_
                         _tl131123132037_
                         _e131128132040_
                         _hd131127132043_
                         _tl131126132045_
                         _e131131132048_
                         _hd131130132051_
                         _tl131129132053_
                         _e131134132056_
                         _hd131133132059_
                         _tl131132132061_
                         _e131137132064_
                         _hd131136132067_
                         _tl131135132069_))))
                (___match137001137002_
                 _e131110131992_
                 _hd131109131995_
                 _tl131108131997_
                 _e131113132000_
                 _hd131112132003_
                 _tl131111132005_
                 _e131116132008_
                 _hd131115132011_
                 _tl131114132013_
                 _e131119132016_
                 _hd131118132019_
                 _tl131117132021_
                 _e131122132024_
                 _hd131121132027_
                 _tl131120132029_
                 _e131125132032_
                 _hd131124132035_
                 _tl131123132037_
                 _e131128132040_
                 _hd131127132043_
                 _tl131126132045_
                 _e131131132048_
                 _hd131130132051_
                 _tl131129132053_
                 _e131134132056_
                 _hd131133132059_
                 _tl131132132061_
                 _e131137132064_
                 _hd131136132067_
                 _tl131135132069_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match137205137206_
                                                     _e131110131992_
                                                     _hd131109131995_
                                                     _tl131108131997_
                                                     _e131113132000_
                                                     _hd131112132003_
                                                     _tl131111132005_
                                                     _e131116132008_
                                                     _hd131115132011_
                                                     _tl131114132013_
                                                     _e131119132016_
                                                     _hd131118132019_
                                                     _tl131117132021_
                                                     _e131122132024_
                                                     _hd131121132027_
                                                     _tl131120132029_
                                                     _e131125132032_
                                                     _hd131124132035_
                                                     _tl131123132037_
                                                     _e131128132040_
                                                     _hd131127132043_
                                                     _tl131126132045_
                                                     _e131131132048_
                                                     _hd131130132051_
                                                     _tl131129132053_))))
                                            (___match137205137206_
                                             _e131110131992_
                                             _hd131109131995_
                                             _tl131108131997_
                                             _e131113132000_
                                             _hd131112132003_
                                             _tl131111132005_
                                             _e131116132008_
                                             _hd131115132011_
                                             _tl131114132013_
                                             _e131119132016_
                                             _hd131118132019_
                                             _tl131117132021_
                                             _e131122132024_
                                             _hd131121132027_
                                             _tl131120132029_
                                             _e131125132032_
                                             _hd131124132035_
                                             _tl131123132037_
                                             _e131128132040_
                                             _hd131127132043_
                                             _tl131126132045_
                                             _e131131132048_
                                             _hd131130132051_
                                             _tl131129132053_))
                                        (___match136881136882_
                                         _e131110131992_
                                         _hd131109131995_
                                         _tl131108131997_
                                         _e131113132000_
                                         _hd131112132003_
                                         _tl131111132005_
                                         _e131116132008_
                                         _hd131115132011_
                                         _tl131114132013_
                                         _e131119132016_
                                         _hd131118132019_
                                         _tl131117132021_
                                         _e131122132024_
                                         _hd131121132027_
                                         _tl131120132029_
                                         _e131125132032_
                                         _hd131124132035_
                                         _tl131123132037_
                                         _e131128132040_
                                         _hd131127132043_
                                         _tl131126132045_
                                         _e131131132048_
                                         _hd131130132051_
                                         _tl131129132053_
                                         _e131134132056_
                                         _hd131133132059_
                                         _tl131132132061_))
                                    (___match137205137206_
                                     _e131110131992_
                                     _hd131109131995_
                                     _tl131108131997_
                                     _e131113132000_
                                     _hd131112132003_
                                     _tl131111132005_
                                     _e131116132008_
                                     _hd131115132011_
                                     _tl131114132013_
                                     _e131119132016_
                                     _hd131118132019_
                                     _tl131117132021_
                                     _e131122132024_
                                     _hd131121132027_
                                     _tl131120132029_
                                     _e131125132032_
                                     _hd131124132035_
                                     _tl131123132037_
                                     _e131128132040_
                                     _hd131127132043_
                                     _tl131126132045_
                                     _e131131132048_
                                     _hd131130132051_
                                     _tl131129132053_))))
                            (___match137205137206_
                             _e131110131992_
                             _hd131109131995_
                             _tl131108131997_
                             _e131113132000_
                             _hd131112132003_
                             _tl131111132005_
                             _e131116132008_
                             _hd131115132011_
                             _tl131114132013_
                             _e131119132016_
                             _hd131118132019_
                             _tl131117132021_
                             _e131122132024_
                             _hd131121132027_
                             _tl131120132029_
                             _e131125132032_
                             _hd131124132035_
                             _tl131123132037_
                             _e131128132040_
                             _hd131127132043_
                             _tl131126132045_
                             _e131131132048_
                             _hd131130132051_
                             _tl131129132053_))))
                    (___match137143137144_
                     _e131110131992_
                     _hd131109131995_
                     _tl131108131997_
                     _e131113132000_
                     _hd131112132003_
                     _tl131111132005_
                     _e131116132008_
                     _hd131115132011_
                     _tl131114132013_
                     _e131119132016_
                     _hd131118132019_
                     _tl131117132021_
                     _e131122132024_
                     _hd131121132027_
                     _tl131120132029_
                     _e131125132032_
                     _hd131124132035_
                     _tl131123132037_
                     _e131128132040_
                     _hd131127132043_
                     _tl131126132045_))
                (___kont136726136727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136726136727_))
                                            (___kont136726136727_))
                                        (___kont136726136727_))))
                                (___kont136726136727_))))
                        (___kont136726136727_))
                    (___kont136726136727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136726136727_))
                                                (___kont136726136727_))
                                            (___kont136726136727_))))
                                    (___kont136726136727_))))
                            (___kont136726136727_))))
                    (___kont136726136727_))))))))))
