(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710694208)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp134198 (list gxc#::identity::t))
            (__tmp134196
             (let ((__tmp134197
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp134197 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp134198
         '()
         __tmp134196
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args133062_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args133062_)))
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
      (lambda (_stx133054_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self133057_
                (let ((__obj134191
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj134191))
               (__tmp134199
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self133057_ _stx133054_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp134199
           gxc#current-compile-method
           _self133057_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp134202 (list gxc#::void::t))
            (__tmp134200
             (let ((__tmp134201
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp134201 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp134202
         '(receiver methods slots)
         __tmp134200
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args133051_
        (apply make-instance gxc#::collect-object-refs::t _$args133051_)))
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
      (lambda (_g134203_
               _receiver133012133017_
               _methods133013133019_
               _slots133014133021_
               _stx133023_)
        (let* ((_receiver133026_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver133012133017_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver133012133017_))
               (_methods133028_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods133013133019_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods133013133019_))
               (_slots133030_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots133014133021_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots133014133021_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self133032_
                  (let ((__obj134193
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
                       __obj134193
                       _receiver133026_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134193
                       _methods133028_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134193
                       _slots133030_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj134193))
                 (__tmp134204
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self133032_ _stx133023_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp134204
             gxc#current-compile-method
             _self133032_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys133011133039_ . _args133041_)
        (apply gxc#apply-collect-object-refs__%
               _keys133011133039_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133011133039_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133011133039_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys133011133039_ 'slots: absent-value))
               _args133041_)))
    (define gxc#apply-collect-object-refs
      (lambda _args133015133047_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args133015133047_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp134207 (list gxc#::basic-xform-expression::t))
            (__tmp134205
             (let ((__tmp134206
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp134206 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp134207
         '(receiver klass methods slots)
         __tmp134205
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args133007_
        (apply make-instance gxc#::subst-object-refs::t _$args133007_)))
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
      (lambda (_g134208_
               _receiver132963132969_
               _klass132964132971_
               _methods132965132973_
               _slots132966132975_
               _stx132977_)
        (let* ((_receiver132980_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver132963132969_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver132963132969_))
               (_klass132982_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass132964132971_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass132964132971_))
               (_methods132984_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods132965132973_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods132965132973_))
               (_slots132986_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots132966132975_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots132966132975_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self132988_
                  (let ((__obj134195
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
                       __obj134195
                       _receiver132980_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134195
                       _klass132982_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134195
                       _methods132984_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134195
                       _slots132986_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj134195))
                 (__tmp134209
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self132988_ _stx132977_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp134209
             gxc#current-compile-method
             _self132988_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys132962132995_ . _args132997_)
        (apply gxc#apply-subst-object-refs__%
               _keys132962132995_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys132962132995_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys132962132995_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys132962132995_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys132962132995_ 'slots: absent-value))
               _args132997_)))
    (define gxc#apply-subst-object-refs
      (lambda _args132967133003_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args132967133003_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self130172_ _stx130173_)
        (letrec ((_generate-method-bind130175_
                  (lambda (_$klass132954_
                           _$method-table132955_
                           _id132956_
                           _$id132957_)
                    (let ((_$tmp132959_
                           (let ((__tmp134210 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134210))))
                      (let ((__tmp134258
                             (let ()
                               (declare (not safe))
                               (cons _$id132957_ '())))
                            (__tmp134211
                             (let ((__tmp134212
                                    (let ((__tmp134213
                                           (let ((__tmp134256
                                                  (let ((__tmp134257
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134257)))
                                                 (__tmp134214
                                                  (let ((__tmp134215
                                                         (let ((__tmp134216
                                                                (let ((__tmp134217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134218
                                      (let ((__tmp134219
                                             (let ((__tmp134239
                                                    (let ((__tmp134240
                                                           (let ((__tmp134255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp132959_ '())))
                         (__tmp134241
                          (let ((__tmp134242
                                 (let ((__tmp134243
                                        (let ((__tmp134253
                                               (let ((__tmp134254
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134254)))
                                              (__tmp134244
                                               (let ((__tmp134251
                                                      (let ((__tmp134252
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table132955_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134252)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134245
                                                      (let ((__tmp134249
                                                             (let ((__tmp134250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id132956_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134250)))
                    (__tmp134246
                     (let ((__tmp134247
                            (let ((__tmp134248
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134248))))
                       (declare (not safe))
                       (cons __tmp134247 '()))))
                (declare (not safe))
                (cons __tmp134249 __tmp134246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134251
                                                       __tmp134245))))
                                          (declare (not safe))
                                          (cons __tmp134253 __tmp134244))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134243))))
                            (declare (not safe))
                            (cons __tmp134242 '()))))
                     (declare (not safe))
                     (cons __tmp134255 __tmp134241))))
              (declare (not safe))
              (cons __tmp134240 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134220
                                                    (let ((__tmp134221
                                                           (let ((__tmp134222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134237
                                 (let ((__tmp134238
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp132959_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134238)))
                                (__tmp134223
                                 (let ((__tmp134235
                                        (let ((__tmp134236
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp132959_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134236)))
                                       (__tmp134224
                                        (let ((__tmp134225
                                               (let ((__tmp134226
                                                      (let ((__tmp134233
                                                             (let ((__tmp134234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134234)))
                    (__tmp134227
                     (let ((__tmp134231
                            (let ((__tmp134232
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134232)))
                           (__tmp134228
                            (let ((__tmp134229
                                   (let ((__tmp134230
                                          (let ()
                                            (declare (not safe))
                                            (cons _id132956_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134230))))
                              (declare (not safe))
                              (cons __tmp134229 '()))))
                       (declare (not safe))
                       (cons __tmp134231 __tmp134228))))
                (declare (not safe))
                (cons __tmp134233 __tmp134227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134226))))
                                          (declare (not safe))
                                          (cons __tmp134225 '()))))
                                   (declare (not safe))
                                   (cons __tmp134235 __tmp134224))))
                            (declare (not safe))
                            (cons __tmp134237 __tmp134223))))
                     (declare (not safe))
                     (cons '%#if __tmp134222))))
              (declare (not safe))
              (cons __tmp134221 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134239
                                                     __tmp134220))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134219))))
                                 (declare (not safe))
                                 (cons __tmp134218 '()))))
                          (declare (not safe))
                          (cons '() __tmp134217))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134215 '()))))
                                             (declare (not safe))
                                             (cons __tmp134256 __tmp134214))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134213))))
                               (declare (not safe))
                               (cons __tmp134212 '()))))
                        (declare (not safe))
                        (cons __tmp134258 __tmp134211)))))
                 (_generate-slot-bind130176_
                  (lambda (_$klass132948_ _id132949_ _$id132950_)
                    (let ((_$tmp132952_
                           (let ((__tmp134259 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134259))))
                      (let ((__tmp134296
                             (let ()
                               (declare (not safe))
                               (cons _$id132950_ '())))
                            (__tmp134260
                             (let ((__tmp134261
                                    (let ((__tmp134262
                                           (let ((__tmp134282
                                                  (let ((__tmp134283
                                                         (let ((__tmp134295
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp132952_ '())))
                       (__tmp134284
                        (let ((__tmp134285
                               (let ((__tmp134286
                                      (let ((__tmp134293
                                             (let ((__tmp134294
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134294)))
                                            (__tmp134287
                                             (let ((__tmp134291
                                                    (let ((__tmp134292
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass132948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134292)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134288
                                                    (let ((__tmp134289
                                                           (let ((__tmp134290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id132949_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134290))))
              (declare (not safe))
              (cons __tmp134289 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134291
                                                     __tmp134288))))
                                        (declare (not safe))
                                        (cons __tmp134293 __tmp134287))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134286))))
                          (declare (not safe))
                          (cons __tmp134285 '()))))
                   (declare (not safe))
                   (cons __tmp134295 __tmp134284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134283 '())))
                                                 (__tmp134263
                                                  (let ((__tmp134264
                                                         (let ((__tmp134265
                                                                (let ((__tmp134280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134281
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp132952_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134281)))
                              (__tmp134266
                               (let ((__tmp134278
                                      (let ((__tmp134279
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp132952_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134279)))
                                     (__tmp134267
                                      (let ((__tmp134268
                                             (let ((__tmp134269
                                                    (let ((__tmp134276
                                                           (let ((__tmp134277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134277)))
                  (__tmp134270
                   (let ((__tmp134274
                          (let ((__tmp134275
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134275)))
                         (__tmp134271
                          (let ((__tmp134272
                                 (let ((__tmp134273
                                        (let ()
                                          (declare (not safe))
                                          (cons _id132949_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134273))))
                            (declare (not safe))
                            (cons __tmp134272 '()))))
                     (declare (not safe))
                     (cons __tmp134274 __tmp134271))))
              (declare (not safe))
              (cons __tmp134276 __tmp134270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134269))))
                                        (declare (not safe))
                                        (cons __tmp134268 '()))))
                                 (declare (not safe))
                                 (cons __tmp134278 __tmp134267))))
                          (declare (not safe))
                          (cons __tmp134280 __tmp134266))))
                   (declare (not safe))
                   (cons '%#if __tmp134265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134264 '()))))
                                             (declare (not safe))
                                             (cons __tmp134282 __tmp134263))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134262))))
                               (declare (not safe))
                               (cons __tmp134261 '()))))
                        (declare (not safe))
                        (cons __tmp134296 __tmp134260)))))
                 (_generate-specializer-impl130177_
                  (lambda (_$klass132942_
                           _$method-table132943_
                           _methods-bind132944_
                           _slots-bind132945_
                           _specializer-impl132946_)
                    (let ((__tmp134297
                           (let ((__tmp134298
                                  (let ((__tmp134304
                                         (let ((__tmp134305
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table132943_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass132942_ __tmp134305)))
                                        (__tmp134299
                                         (let ((__tmp134300
                                                (let ((__tmp134301
                                                       (let ((__tmp134303
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind132945_ _methods-bind132944_)))
                     (__tmp134302
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl132946_ '()))))
                 (declare (not safe))
                 (cons __tmp134303 __tmp134302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134301))))
                                           (declare (not safe))
                                           (cons __tmp134300 '()))))
                                    (declare (not safe))
                                    (cons __tmp134304 __tmp134299))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134298))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134297 _stx130173_))))
                 (_generate-specializer-def130178_
                  (lambda (_id132938_
                           _specializer-id132939_
                           _specializer-impl132940_)
                    (let ((__tmp134306
                           (let ((__tmp134307
                                  (let ((__tmp134308
                                         (let ((__tmp134321
                                                (let ((__tmp134322
                                                       (let ((__tmp134323
                                                              (let ((__tmp134325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id132939_ '())))
                            (__tmp134324
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl132940_ '()))))
                        (declare (not safe))
                        (cons __tmp134325 __tmp134324))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134322
                                                   _stx130173_)))
                                               (__tmp134309
                                                (let ((__tmp134310
                                                       (let ((__tmp134311
                                                              (let ((__tmp134312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134319
                                    (let ((__tmp134320
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp134320)))
                                   (__tmp134313
                                    (let ((__tmp134317
                                           (let ((__tmp134318
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id132938_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134318)))
                                          (__tmp134314
                                           (let ((__tmp134315
                                                  (let ((__tmp134316
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id132939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp134316))))
                                             (declare (not safe))
                                             (cons __tmp134315 '()))))
                                      (declare (not safe))
                                      (cons __tmp134317 __tmp134314))))
                               (declare (not safe))
                               (cons __tmp134319 __tmp134313))))
                        (declare (not safe))
                        (cons '%#call __tmp134312))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134311 _stx130173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134310 '()))))
                                           (declare (not safe))
                                           (cons __tmp134321 __tmp134309))))
                                    (declare (not safe))
                                    (cons _stx130173_ __tmp134308))))
                             (declare (not safe))
                             (cons '%#begin __tmp134307))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134306 _stx130173_)))))
          (let* ((___stx133151133152_ _stx130173_)
                 (_g130181130201_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133151133152_)))))
            (let ((___kont133153133154_
                   (lambda (_L130245_ _L130246_)
                     (let ((_method-calls130265_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130266_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130267_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130269_
                                 (lambda ()
                                   (if (let ((__tmp134326
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130265_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134326))
                                       (let ((__tmp134327
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs130266_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134327))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130245_))
                             (let* ((___stx133065133066_ _L130245_)
                                    (_g130656130674_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133065133066_)))))
                               (let ((___kont133067133068_
                                      (lambda (_L130710_ _L130711_ _L130712_)
                                        (for-each
                                         (lambda (_g130727130729_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g130727130729_
                                              'receiver:
                                              _L130712_
                                              'methods:
                                              _method-calls130265_
                                              'slots:
                                              _slot-refs130266_)))
                                         _L130710_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130269_))
                                            _stx130173_
                                            (let* ((_specializer-id130738_
                                                    (let* ((_id130732_
                                                            (let ((__tmp134328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130246_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp134328 '"::specialize")))
                   (_specializer-id130735_
                    (let ((__tmp134329
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130173_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id130732_ __tmp134329))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id130735_))
              _specializer-id130735_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass130740_
                                                    (let ((__tmp134330
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134330)))
                                                   (_$method-table130742_
                                                    (let ((__tmp134331
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134331)))
                                                   (_methods130744_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130265_)))
                                                   (_$methods130748_
                                                    (map (lambda (_id130746_)
                                                           (let ((__tmp134332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130746_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134332)))
                 _methods130744_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g134333_
                                                    (for-each
                                                     (lambda (_g130749130752_
                                                              _g130750130754_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130265_
                                                          _g130749130752_
                                                          _g130750130754_)))
                                                     _methods130744_
                                                     _$methods130748_))
                                                   (_methods-bind130765_
                                                    (map (lambda (_g130757130760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130758130762_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130175_
                      _$klass130740_
                      _$method-table130742_
                      _g130757130760_
                      _g130758130762_)))
                 _methods130744_
                 _$methods130748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots130767_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130266_)))
                                                   (_$slots130771_
                                                    (map (lambda (_id130769_)
                                                           (let ((__tmp134334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130769_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134334)))
                 _slots130767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g134335_
                                                    (for-each
                                                     (lambda (_g130772130775_
                                                              _g130773130777_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130266_
                                                          _g130772130775_
                                                          _g130773130777_)))
                                                     _slots130767_
                                                     _$slots130771_))
                                                   (_slots-bind130788_
                                                    (map (lambda (_g130780130783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130781130785_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130176_
                      _$klass130740_
                      _g130780130783_
                      _g130781130785_)))
                 _slots130767_
                 _$slots130771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body130794_
                                                    (map (lambda (_g130789130791_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g130789130791_
                                                              'receiver:
                                                              _L130712_
                                                              'klass:
                                                              _$klass130740_
                                                              'methods:
                                                              _method-calls130265_
                                                              'slots:
                                                              _slot-refs130266_)))
                                                         _L130710_))
                                                   (_specializer-impl130796_
                                                    (let ((__tmp134336
                                                           (let ((__tmp134337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134338
                                 (let ()
                                   (declare (not safe))
                                   (cons _L130712_ _L130711_))))
                            (declare (not safe))
                            (cons __tmp134338 _specializer-body130794_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp134337))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp134336 _stx130173_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl130798_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130177_
                                                       _$klass130740_
                                                       _$method-table130742_
                                                       _methods-bind130765_
                                                       _slots-bind130788_
                                                       _specializer-impl130796_))))
                                              (let ((__tmp134340
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130246_)))
                                                    (__tmp134339
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id130738_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp134340
                                                 '" => "
                                                 __tmp134339))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130178_
                                                 _L130246_
                                                 _specializer-id130738_
                                                 _specializer-impl130798_))))))
                                     (___kont133069133070_
                                      (lambda () _stx130173_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133065133066_))
                                     (let ((_e130661130686_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133065133066_))))
                                       (let ((_tl130663130691_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e130661130686_)))
                                             (_hd130662130689_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e130661130686_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl130663130691_))
                                             (let ((_e130664130694_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl130663130691_))))
                                               (let ((_tl130666130699_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e130664130694_)))
                                                     (_hd130665130697_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e130664130694_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd130665130697_))
                                                     (let ((_e130667130702_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd130665130697_))))
                                                       (let ((_tl130669130707_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130667130702_)))
                     (_hd130668130705_
                      (let () (declare (not safe)) (##car _e130667130702_))))
                 (___kont133067133068_
                  _tl130666130699_
                  _tl130669130707_
                  _hd130668130705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133069133070_))))
                                             (___kont133069133070_))))
                                     (___kont133069133070_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130245_))
                                 (let* ((_g130804130823_
                                         (lambda (_g130805130820_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130805130820_))))
                                        (_g130803131106_
                                         (lambda (_g130805130826_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g130805130826_))
                                               (let ((_e130807130828_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g130805130826_))))
                                                 (let ((_hd130808130831_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e130807130828_)))
                                                       (_tl130809130833_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e130807130828_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl130809130833_))
                                                       (let ((_g134341_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl130809130833_ '0))))
                 (begin
                   (let ((_g134342_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g134341_)
                                (##vector-length _g134341_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g134342_ 2)))
                         (error "Context expects 2 values" _g134342_)))
                   (let ((_target130810130836_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134341_ 0)))
                         (_tl130812130838_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134341_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl130812130838_))
                         (letrec ((_loop130813130841_
                                   (lambda (_hd130811130844_
                                            _clause130817130846_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd130811130844_))
                                         (let ((_e130814130849_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd130811130844_))))
                                           (let ((_lp-hd130815130852_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130814130849_)))
                                                 (_lp-tl130816130854_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130814130849_))))
                                             (let ((__tmp134343
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd130815130852_
                                                            _clause130817130846_))))
                                               (declare (not safe))
                                               (_loop130813130841_
                                                _lp-tl130816130854_
                                                __tmp134343))))
                                         (let ((_clause130818130857_
                                                (reverse _clause130817130846_)))
                                           ((lambda (_L130860_)
                                              (for-each
                                               (lambda (_clause130873_)
                                                 (let* ((___stx133091133092_
                                                         _clause130873_)
                                                        (_g130876130891_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133091133092_)))))
                                                   (let ((___kont133093133094_
                                                          (lambda (_L130919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130920_
                           _L130921_)
                    (for-each
                     (lambda (_g130936130938_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g130936130938_
                          'receiver:
                          _L130921_
                          'methods:
                          _method-calls130265_
                          'slots:
                          _slot-refs130266_)))
                     _L130919_)))
                 (___kont133095133096_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133091133092_))
                                                         (let ((_e130881130903_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133091133092_))))
                   (let ((_tl130883130908_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130881130903_)))
                         (_hd130882130906_
                          (let ()
                            (declare (not safe))
                            (##car _e130881130903_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd130882130906_))
                         (let ((_e130884130911_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd130882130906_))))
                           (let ((_tl130886130916_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e130884130911_)))
                                 (_hd130885130914_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e130884130911_))))
                             (___kont133093133094_
                              _tl130883130908_
                              _tl130886130916_
                              _hd130885130914_)))
                         (___kont133095133096_))))
                 (___kont133095133096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp134344
                                                      (lambda (_g130943130946_
                                                               _g130944130948_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g130943130946_
                                                                _g130944130948_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134344
                                                         '()
                                                         _L130860_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130269_))
                                                  _stx130173_
                                                  (let* ((_specializer-id130957_
                                                          (let* ((_id130951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134345
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130246_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134345 '"::specialize")))
                         (_specializer-id130954_
                          (let ((__tmp134346
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130173_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id130951_ __tmp134346))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id130954_))
                    _specializer-id130954_))
                 (_$klass130959_
                  (let ((__tmp134347 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134347)))
                 (_$method-table130961_
                  (let ((__tmp134348 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134348)))
                 (_methods130963_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130265_)))
                 (_$methods130967_
                  (map (lambda (_id130965_)
                         (let ((__tmp134349 (gensym _id130965_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134349)))
                       _methods130963_))
                 (_g134350_
                  (for-each
                   (lambda (_g130968130971_ _g130969130973_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130265_
                        _g130968130971_
                        _g130969130973_)))
                   _methods130963_
                   _$methods130967_))
                 (_methods-bind130984_
                  (map (lambda (_g130976130979_ _g130977130981_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130175_
                            _$klass130959_
                            _$method-table130961_
                            _g130976130979_
                            _g130977130981_)))
                       _methods130963_
                       _$methods130967_))
                 (_slots130986_
                  (let () (declare (not safe)) (hash-keys _slot-refs130266_)))
                 (_$slots130990_
                  (map (lambda (_id130988_)
                         (let ((__tmp134351 (gensym _id130988_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134351)))
                       _slots130986_))
                 (_g134352_
                  (for-each
                   (lambda (_g130991130994_ _g130992130996_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130266_
                        _g130991130994_
                        _g130992130996_)))
                   _slots130986_
                   _$slots130990_))
                 (_slots-bind131007_
                  (map (lambda (_g130999131002_ _g131000131004_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130176_
                            _$klass130959_
                            _g130999131002_
                            _g131000131004_)))
                       _slots130986_
                       _$slots130990_))
                 (_specializer-clauses131099_
                  (map (lambda (_clause131009_)
                         (let* ((___stx133111133112_ _clause131009_)
                                (_g131012131027_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx133111133112_)))))
                           (let ((___kont133113133114_
                                  (lambda (_L131055_ _L131056_ _L131057_)
                                    (let* ((_body131087_
                                            (map (lambda (_g131082131084_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g131082131084_
                                                      'receiver:
                                                      _L131057_
                                                      'klass:
                                                      _$klass130959_
                                                      'methods:
                                                      _method-calls130265_
                                                      'slots:
                                                      _slot-refs130266_)))
                                                 _L131055_))
                                           (__tmp134353
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131057_ _L131056_))))
                                      (declare (not safe))
                                      (cons __tmp134353 _body131087_))))
                                 (___kont133115133116_
                                  (lambda () _clause131009_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx133111133112_))
                                 (let ((_e131017131039_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx133111133112_))))
                                   (let ((_tl131019131044_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e131017131039_)))
                                         (_hd131018131042_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e131017131039_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131018131042_))
                                         (let ((_e131020131047_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131018131042_))))
                                           (let ((_tl131022131052_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131020131047_)))
                                                 (_hd131021131050_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131020131047_))))
                                             (___kont133113133114_
                                              _tl131019131044_
                                              _tl131022131052_
                                              _hd131021131050_)))
                                         (___kont133115133116_))))
                                 (___kont133115133116_)))))
                       (let ((__tmp134354
                              (lambda (_g131091131094_ _g131092131096_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g131091131094_ _g131092131096_)))))
                         (declare (not safe))
                         (foldr1 __tmp134354 '() _L130860_))))
                 (_specializer-impl131101_
                  (let ((__tmp134355
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses131099_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134355 _stx130173_)))
                 (_specializer-impl131103_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130177_
                     _$klass130959_
                     _$method-table130961_
                     _methods-bind130984_
                     _slots-bind131007_
                     _specializer-impl131101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134357
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130246_)))
                                                          (__tmp134356
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id130957_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134357
                                                       '" => "
                                                       __tmp134356))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130178_
                                                       _L130246_
                                                       _specializer-id130957_
                                                       _specializer-impl131103_)))))
                                            _clause130818130857_))))))
                           (let ()
                             (declare (not safe))
                             (_loop130813130841_ _target130810130836_ '())))
                         (let ()
                           (declare (not safe))
                           (_g130804130823_ _g130805130826_))))))
               (let ()
                 (declare (not safe))
                 (_g130804130823_ _g130805130826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g130804130823_
                                                  _g130805130826_))))))
                                   (declare (not safe))
                                   (_g130803131106_ _L130245_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130245_))
                                     (let* ((_g131109131139_
                                             (lambda (_g131110131136_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131110131136_))))
                                            (_g131108131744_
                                             (lambda (_g131110131142_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131110131142_))
                                                   (let ((_e131114131144_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131110131142_))))
                                                     (let ((_hd131115131147_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131114131144_)))
                                                           (_tl131116131149_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131114131144_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131116131149_))
                                                           (let ((_e131117131152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131116131149_))))
                     (let ((_hd131118131155_
                            (let ()
                              (declare (not safe))
                              (##car _e131117131152_)))
                           (_tl131119131157_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131117131152_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131118131155_))
                           (let ((_e131120131160_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131118131155_))))
                             (let ((_hd131121131163_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131120131160_)))
                                   (_tl131122131165_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131120131160_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131121131163_))
                                   (let ((_e131123131168_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131121131163_))))
                                     (let ((_hd131124131171_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131123131168_)))
                                           (_tl131125131173_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131123131168_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131124131171_))
                                           (let ((_e131126131176_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131124131171_))))
                                             (let ((_hd131127131179_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131126131176_)))
                                                   (_tl131128131181_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131126131176_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131128131181_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131125131173_))
                                                       (let ((_e131129131184_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131125131173_))))
                 (let ((_hd131130131187_
                        (let () (declare (not safe)) (##car _e131129131184_)))
                       (_tl131131131189_
                        (let () (declare (not safe)) (##cdr _e131129131184_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131131131189_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131122131165_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131119131157_))
                               (let ((_e131132131192_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131119131157_))))
                                 (let ((_hd131133131195_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131132131192_)))
                                       (_tl131134131197_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131132131192_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131134131197_))
                                       ((lambda (_L131200_ _L131201_ _L131202_)
                                          (let* ((_g131225131243_
                                                  (lambda (_g131226131240_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131226131240_))))
                                                 (_g131224131294_
                                                  (lambda (_g131226131246_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131226131246_))
                                                        (let ((_e131230131248_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131226131246_))))
                  (let ((_hd131231131251_
                         (let () (declare (not safe)) (##car _e131230131248_)))
                        (_tl131232131253_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131230131248_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131232131253_))
                        (let ((_e131233131256_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131232131253_))))
                          (let ((_hd131234131259_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131233131256_)))
                                (_tl131235131261_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131233131256_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131234131259_))
                                (let ((_e131236131264_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131234131259_))))
                                  (let ((_hd131237131267_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131236131264_)))
                                        (_tl131238131269_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131236131264_))))
                                    ((lambda (_L131272_ _L131273_ _L131274_)
                                       (for-each
                                        (lambda (_g131289131291_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131289131291_
                                             'receiver:
                                             _L131274_
                                             'methods:
                                             _method-calls130265_
                                             'slots:
                                             _slot-refs130266_)))
                                        _L131272_))
                                     _tl131235131261_
                                     _tl131238131269_
                                     _hd131237131267_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131225131243_ _g131226131246_)))))
                        (let ()
                          (declare (not safe))
                          (_g131225131243_ _g131226131246_)))))
                (let ()
                  (declare (not safe))
                  (_g131225131243_ _g131226131246_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131224131294_ _L131201_))
                                          (let* ((_g131297131316_
                                                  (lambda (_g131298131313_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131298131313_))))
                                                 (_g131296131435_
                                                  (lambda (_g131298131319_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131298131319_))
                                                        (let ((_e131300131321_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131298131319_))))
                  (let ((_hd131301131324_
                         (let () (declare (not safe)) (##car _e131300131321_)))
                        (_tl131302131326_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131300131321_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131302131326_))
                        (let ((_g134358_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131302131326_
                                  '0))))
                          (begin
                            (let ((_g134359_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134358_)
                                         (##vector-length _g134358_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134359_ 2)))
                                  (error "Context expects 2 values"
                                         _g134359_)))
                            (let ((_target131303131329_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134358_ 0)))
                                  (_tl131305131331_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134358_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131305131331_))
                                  (letrec ((_loop131306131334_
                                            (lambda (_hd131304131337_
                                                     _clause131310131339_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131304131337_))
                                                  (let ((_e131307131342_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131304131337_))))
                                                    (let ((_lp-hd131308131345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131307131342_)))
                                                          (_lp-tl131309131347_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131307131342_))))
                                                      (let ((__tmp134360
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd131308131345_ _clause131310131339_))))
                (declare (not safe))
                (_loop131306131334_ _lp-tl131309131347_ __tmp134360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131311131350_
                                                         (reverse _clause131310131339_)))
                                                    ((lambda (_L131353_)
                                                       (for-each
                                                        (lambda (_clause131366_)
                                                          (let* ((_g131368131383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131369131380_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131369131380_))))
                         (_g131367131425_
                          (lambda (_g131369131386_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131369131386_))
                                (let ((_e131373131388_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131369131386_))))
                                  (let ((_hd131374131391_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131373131388_)))
                                        (_tl131375131393_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131373131388_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131374131391_))
                                        (let ((_e131376131396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131374131391_))))
                                          (let ((_hd131377131399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131376131396_)))
                                                (_tl131378131401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131376131396_))))
                                            ((lambda (_L131404_
                                                      _L131405_
                                                      _L131406_)
                                               (for-each
                                                (lambda (_g131420131422_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131420131422_
                                                     'receiver:
                                                     _L131406_
                                                     'methods:
                                                     _method-calls130265_
                                                     'slots:
                                                     _slot-refs130266_)))
                                                _L131404_))
                                             _tl131375131393_
                                             _tl131378131401_
                                             _hd131377131399_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131368131383_ _g131369131386_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131368131383_ _g131369131386_))))))
                    (declare (not safe))
                    (_g131367131425_ _clause131366_)))
                (let ((__tmp134361
                       (lambda (_g131427131430_ _g131428131432_)
                         (let ()
                           (declare (not safe))
                           (cons _g131427131430_ _g131428131432_)))))
                  (declare (not safe))
                  (foldr1 __tmp134361 '() _L131353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131311131350_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131306131334_
                                       _target131303131329_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131297131316_ _g131298131319_))))))
                        (let ()
                          (declare (not safe))
                          (_g131297131316_ _g131298131319_)))))
                (let ()
                  (declare (not safe))
                  (_g131297131316_ _g131298131319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131296131435_ _L131200_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130269_))
                                              _stx130173_
                                              (let* ((_specializer-id131444_
                                                      (let* ((_id131438_
                                                              (let ((__tmp134362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130246_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp134362 '"::specialize")))
                     (_specializer-id131441_
                      (let ((__tmp134363
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130173_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131438_ __tmp134363))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131441_))
                _specializer-id131441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass131446_
                                                      (let ((__tmp134364
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp134364)))
                                                     (_$method-table131448_
                                                      (let ((__tmp134365
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp134365)))
                                                     (_methods131450_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130265_)))
                                                     (_$methods131454_
                                                      (map (lambda (_id131452_)
                                                             (let ((__tmp134366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131452_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134366)))
                   _methods131450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g134367_
                                                      (for-each
                                                       (lambda (_g131455131458_
                                                                _g131456131460_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130265_
                                                            _g131455131458_
                                                            _g131456131460_)))
                                                       _methods131450_
                                                       _$methods131454_))
                                                     (_methods-bind131471_
                                                      (map (lambda (_g131463131466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131464131468_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130175_
                        _$klass131446_
                        _$method-table131448_
                        _g131463131466_
                        _g131464131468_)))
                   _methods131450_
                   _$methods131454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131473_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130266_)))
                                                     (_$slots131477_
                                                      (map (lambda (_id131475_)
                                                             (let ((__tmp134368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131475_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134368)))
                   _slots131473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g134369_
                                                      (for-each
                                                       (lambda (_g131478131481_
                                                                _g131479131483_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130266_
                                                            _g131478131481_
                                                            _g131479131483_)))
                                                       _slots131473_
                                                       _$slots131477_))
                                                     (_slots-bind131494_
                                                      (map (lambda (_g131486131489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131487131491_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130176_
                        _$klass131446_
                        _g131486131489_
                        _g131487131491_)))
                   _slots131473_
                   _$slots131477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr131580_
                                                      (let* ((_g131496131514_
                                                              (lambda (_g131497131511_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131497131511_))))
                     (_g131495131577_
                      (lambda (_g131497131517_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131497131517_))
                            (let ((_e131501131519_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131497131517_))))
                              (let ((_hd131502131522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131501131519_)))
                                    (_tl131503131524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131501131519_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl131503131524_))
                                    (let ((_e131504131527_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl131503131524_))))
                                      (let ((_hd131505131530_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131504131527_)))
                                            (_tl131506131532_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131504131527_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd131505131530_))
                                            (let ((_e131507131535_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd131505131530_))))
                                              (let ((_hd131508131538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131507131535_)))
                                                    (_tl131509131540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131507131535_))))
                                                ((lambda (_L131543_
                                                          _L131544_
                                                          _L131545_)
                                                   (let* ((_body131575_
                                                           (map (lambda (_g131570131572_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g131570131572_
                             'receiver:
                             _L131545_
                             'klass:
                             _$klass131446_
                             'methods:
                             _method-calls130265_
                             'slots:
                             _slot-refs130266_)))
                        _L131543_))
                  (__tmp134370
                   (let ((__tmp134371
                          (let ((__tmp134372
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131545_ _L131544_))))
                            (declare (not safe))
                            (cons __tmp134372 _body131575_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp134371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134370
                                                      _L131201_)))
                                                 _tl131506131532_
                                                 _tl131509131540_
                                                 _hd131508131538_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g131496131514_
                                               _g131497131517_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131496131514_ _g131497131517_)))))
                            (let ()
                              (declare (not safe))
                              (_g131496131514_ _g131497131517_))))))
                (declare (not safe))
                (_g131495131577_ _L131201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr131737_
                                                      (let* ((_g131582131601_
                                                              (lambda (_g131583131598_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131583131598_))))
                     (_g131581131734_
                      (lambda (_g131583131604_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131583131604_))
                            (let ((_e131585131606_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131583131604_))))
                              (let ((_hd131586131609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131585131606_)))
                                    (_tl131587131611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131585131606_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl131587131611_))
                                    (let ((_g134373_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl131587131611_
                                              '0))))
                                      (begin
                                        (let ((_g134374_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134373_)
                                                     (##vector-length
                                                      _g134373_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134374_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134374_)))
                                        (let ((_target131588131614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134373_ 0)))
                                              (_tl131590131616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134373_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131590131616_))
                                              (letrec ((_loop131591131619_
                                                        (lambda (_hd131589131622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause131595131624_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd131589131622_))
                      (let ((_e131592131627_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd131589131622_))))
                        (let ((_lp-hd131593131630_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131592131627_)))
                              (_lp-tl131594131632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131592131627_))))
                          (let ((__tmp134375
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd131593131630_
                                         _clause131595131624_))))
                            (declare (not safe))
                            (_loop131591131619_
                             _lp-tl131594131632_
                             __tmp134375))))
                      (let ((_clause131596131635_
                             (reverse _clause131595131624_)))
                        ((lambda (_L131638_)
                           (let* ((_clauses131732_
                                   (map (lambda (_clause131652_)
                                          (let* ((___stx133131133132_
                                                  _clause131652_)
                                                 (_g131655131670_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133131133132_)))))
                                            (let ((___kont133133133134_
                                                   (lambda (_L131698_
                                                            _L131699_
                                                            _L131700_)
                                                     (let* ((_body131720_
                                                             (map (lambda (_g131715131717_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g131715131717_
                               'receiver:
                               _L131700_
                               'klass:
                               _$klass131446_
                               'methods:
                               _method-calls130265_
                               'slots:
                               _slot-refs130266_)))
                          _L131698_))
                    (__tmp134376
                     (let () (declare (not safe)) (cons _L131700_ _L131699_))))
               (declare (not safe))
               (cons __tmp134376 _body131720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133135133136_
                                                   (lambda () _clause131652_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx133131133132_))
                                                  (let ((_e131660131682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx133131133132_))))
                                                    (let ((_tl131662131687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131660131682_)))
                                                          (_hd131661131685_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131660131682_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd131661131685_))
                                                          (let ((_e131663131690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd131661131685_))))
                    (let ((_tl131665131695_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131663131690_)))
                          (_hd131664131693_
                           (let ()
                             (declare (not safe))
                             (##car _e131663131690_))))
                      (___kont133133133134_
                       _tl131662131687_
                       _tl131665131695_
                       _hd131664131693_)))
                  (___kont133135133136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133135133136_)))))
                                        (let ((__tmp134377
                                               (lambda (_g131724131727_
                                                        _g131725131729_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g131724131727_
                                                         _g131725131729_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp134377 '() _L131638_))))
                                  (__tmp134378
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses131732_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp134378 _L131200_)))
                         _clause131596131635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop131591131619_
                                                   _target131588131614_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g131582131601_
                                                 _g131583131604_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131582131601_ _g131583131604_)))))
                            (let ()
                              (declare (not safe))
                              (_g131582131601_ _g131583131604_))))))
                (declare (not safe))
                (_g131581131734_ _L131200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl131739_
                                                      (let ((__tmp134379
                                                             (let ((__tmp134380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp134382
                                   (let ((__tmp134383
                                          (let ((__tmp134385
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L131202_ '())))
                                                (__tmp134384
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr131580_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp134385 __tmp134384))))
                                     (declare (not safe))
                                     (cons __tmp134383 '())))
                                  (__tmp134381
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr131737_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp134382 __tmp134381))))
                       (declare (not safe))
                       (cons '%#let-values __tmp134380))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp134379 _stx130173_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl131741_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130177_
                                                         _$klass131446_
                                                         _$method-table131448_
                                                         _methods-bind131471_
                                                         _slots-bind131494_
                                                         _specializer-impl131739_))))
                                                (let ((__tmp134387
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130246_)))
                                                      (__tmp134386
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131444_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp134387
                                                   '" => "
                                                   __tmp134386))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130178_
                                                   _L130246_
                                                   _specializer-id131444_
                                                   _specializer-impl131741_)))))
                                        _hd131133131195_
                                        _hd131130131187_
                                        _hd131127131179_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131109131139_ _g131110131142_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131109131139_ _g131110131142_)))
                           (let ()
                             (declare (not safe))
                             (_g131109131139_ _g131110131142_)))
                       (let ()
                         (declare (not safe))
                         (_g131109131139_ _g131110131142_)))))
               (let () (declare (not safe)) (_g131109131139_ _g131110131142_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131109131139_
                                                      _g131110131142_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131109131139_
                                              _g131110131142_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131109131139_ _g131110131142_)))))
                           (let ()
                             (declare (not safe))
                             (_g131109131139_ _g131110131142_)))))
                   (let ()
                     (declare (not safe))
                     (_g131109131139_ _g131110131142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131109131139_
                                                      _g131110131142_))))))
                                       (declare (not safe))
                                       (_g131108131744_ _L130245_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130245_))
                                         (let* ((_g131747131800_
                                                 (lambda (_g131748131797_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g131748131797_))))
                                                (_g131746132931_
                                                 (lambda (_g131748131803_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g131748131803_))
                                                       (let ((_e131754131805_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g131748131803_))))
                 (let ((_hd131755131808_
                        (let () (declare (not safe)) (##car _e131754131805_)))
                       (_tl131756131810_
                        (let () (declare (not safe)) (##cdr _e131754131805_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd131755131808_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd131755131808_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131756131810_))
                               (let ((_e131757131813_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131756131810_))))
                                 (let ((_hd131758131816_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131757131813_)))
                                       (_tl131759131818_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131757131813_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd131758131816_))
                                       (let ((_e131760131821_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd131758131816_))))
                                         (let ((_hd131761131824_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e131760131821_)))
                                               (_tl131762131826_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e131760131821_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd131761131824_))
                                               (let ((_e131763131829_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd131761131824_))))
                                                 (let ((_hd131764131832_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131763131829_)))
                                                       (_tl131765131834_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131763131829_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd131764131832_))
                                                       (let ((_e131766131837_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd131764131832_))))
                 (let ((_hd131767131840_
                        (let () (declare (not safe)) (##car _e131766131837_)))
                       (_tl131768131842_
                        (let () (declare (not safe)) (##cdr _e131766131837_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131768131842_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl131765131834_))
                           (let ((_e131769131845_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl131765131834_))))
                             (let ((_hd131770131848_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131769131845_)))
                                   (_tl131771131850_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131769131845_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131770131848_))
                                   (let ((_e131772131853_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131770131848_))))
                                     (let ((_hd131773131856_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131772131853_)))
                                           (_tl131774131858_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131772131853_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd131773131856_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd131773131856_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl131774131858_))
                                                   (let ((_e131775131861_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl131774131858_))))
                                                     (let ((_hd131776131864_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131775131861_)))
                                                           (_tl131777131866_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131775131861_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd131776131864_))
                                                           (let ((_e131778131869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd131776131864_))))
                     (let ((_hd131779131872_
                            (let ()
                              (declare (not safe))
                              (##car _e131778131869_)))
                           (_tl131780131874_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131778131869_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131779131872_))
                           (let ((_e131781131877_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131779131872_))))
                             (let ((_hd131782131880_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131781131877_)))
                                   (_tl131783131882_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131781131877_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131782131880_))
                                   (let ((_e131784131885_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131782131880_))))
                                     (let ((_hd131785131888_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131784131885_)))
                                           (_tl131786131890_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131784131885_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl131786131890_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl131783131882_))
                                               (let ((_e131787131893_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl131783131882_))))
                                                 (let ((_hd131788131896_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131787131893_)))
                                                       (_tl131789131898_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131787131893_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl131789131898_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl131780131874_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl131777131866_))
                       (let ((_e131790131901_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl131777131866_))))
                         (let ((_hd131791131904_
                                (let ()
                                  (declare (not safe))
                                  (##car _e131790131901_)))
                               (_tl131792131906_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e131790131901_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl131792131906_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl131771131850_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131762131826_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl131759131818_))
                                           (let ((_e131793131909_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl131759131818_))))
                                             (let ((_hd131794131912_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131793131909_)))
                                                   (_tl131795131914_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131793131909_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131795131914_))
                                                   ((lambda (_L131917_
                                                             _L131918_
                                                             _L131919_
                                                             _L131920_
                                                             _L131921_)
                                                      (let* ((_g131960132022_
                                                              (lambda (_g131961132019_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131961132019_))))
                     (_g131959132928_
                      (lambda (_g131961132025_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131961132025_))
                            (let ((_e131967132027_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131961132025_))))
                              (let ((_hd131968132030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131967132027_)))
                                    (_tl131969132032_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131967132027_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd131968132030_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd131968132030_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131969132032_))
                                            (let ((_e131970132035_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131969132032_))))
                                              (let ((_hd131971132038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131970132035_)))
                                                    (_tl131972132040_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131970132035_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl131972132040_))
                                                    (let ((_e131973132043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl131972132040_))))
                                                      (let ((_hd131974132046_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e131973132043_)))
                    (_tl131975132048_
                     (let () (declare (not safe)) (##cdr _e131973132043_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd131974132046_))
                    (let ((_e131976132051_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd131974132046_))))
                      (let ((_hd131977132054_
                             (let ()
                               (declare (not safe))
                               (##car _e131976132051_)))
                            (_tl131978132056_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131976132051_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd131977132054_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd131977132054_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl131978132056_))
                                    (let ((_e131979132059_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl131978132056_))))
                                      (let ((_hd131980132062_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131979132059_)))
                                            (_tl131981132064_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131979132059_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd131980132062_))
                                            (let ((_e131982132067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd131980132062_))))
                                              (let ((_hd131983132070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131982132067_)))
                                                    (_tl131984132072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131982132067_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd131983132070_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd131983132070_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl131984132072_))
                                                            (let ((_e131985132075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl131984132072_))))
                      (let ((_hd131986132078_
                             (let ()
                               (declare (not safe))
                               (##car _e131985132075_)))
                            (_tl131987132080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131985132075_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131987132080_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131981132064_))
                                (let ((_e131988132083_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131981132064_))))
                                  (let ((_hd131989132086_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131988132083_)))
                                        (_tl131990132088_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131988132083_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131989132086_))
                                        (let ((_e131991132091_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131989132086_))))
                                          (let ((_hd131992132094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131991132091_)))
                                                (_tl131993132096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131991132091_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd131992132094_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd131992132094_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl131993132096_))
                                                        (let ((_e131994132099_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl131993132096_))))
                  (let ((_hd131995132102_
                         (let () (declare (not safe)) (##car _e131994132099_)))
                        (_tl131996132104_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131994132099_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl131996132104_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131990132088_))
                            (let ((_e131997132107_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131990132088_))))
                              (let ((_hd131998132110_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131997132107_)))
                                    (_tl131999132112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131997132107_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131998132110_))
                                    (let ((_e132000132115_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131998132110_))))
                                      (let ((_hd132001132118_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132000132115_)))
                                            (_tl132002132120_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132000132115_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132001132118_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132001132118_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132002132120_))
                                                    (let ((_e132003132123_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132002132120_))))
                                                      (let ((_hd132004132126_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132003132123_)))
                    (_tl132005132128_
                     (let () (declare (not safe)) (##cdr _e132003132123_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132005132128_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131999132112_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl131999132112_))
                                  '1)
                            (let ((_g134388_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl131999132112_
                                      '1))))
                              (begin
                                (let ((_g134389_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134388_)
                                             (##vector-length _g134388_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134389_ 2)))
                                      (error "Context expects 2 values"
                                             _g134389_)))
                                (let ((_target132006132131_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134388_ 0)))
                                      (_tl132008132133_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134388_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132008132133_))
                                      (let ((_e132015132136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132008132133_))))
                                        (let ((_hd132016132139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132015132136_)))
                                              (_tl132017132141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132015132136_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132017132141_))
                                              (letrec ((_loop132009132144_
                                                        (lambda (_hd132007132147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132013132149_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132007132147_))
                      (let ((_e132010132152_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132007132147_))))
                        (let ((_lp-hd132011132155_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132010132152_)))
                              (_lp-tl132012132157_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132010132152_))))
                          (let ((__tmp134390
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132011132155_
                                         _kw-ref132013132149_))))
                            (declare (not safe))
                            (_loop132009132144_
                             _lp-tl132012132157_
                             __tmp134390))))
                      (let ((_kw-ref132014132160_
                             (reverse _kw-ref132013132149_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131975132048_))
                            ((lambda (_L132163_
                                      _L132164_
                                      _L132165_
                                      _L132166_
                                      _L132167_)
                               (let* ((_kw-count132218_
                                       (length (let ((__tmp134391
                                                      (lambda (_g132210132213_
                                                               _g132211132215_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132210132213_
                                                                _g132211132215_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134391
                                                         '()
                                                         _L132164_))))
                                      (_self-index132220_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132218_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L131919_))
                                     (let* ((_g132223132237_
                                             (lambda (_g132224132234_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132224132234_))))
                                            (_g132222132350_
                                             (lambda (_g132224132240_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132224132240_))
                                                   (let ((_e132227132242_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132224132240_))))
                                                     (let ((_hd132228132245_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132227132242_)))
                                                           (_tl132229132247_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132227132242_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132229132247_))
                                                           (let ((_e132230132250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132229132247_))))
                     (let ((_hd132231132253_
                            (let ()
                              (declare (not safe))
                              (##car _e132230132250_)))
                           (_tl132232132255_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132230132250_))))
                       ((lambda (_L132258_ _L132259_)
                          (let ((_self132275_
                                 (list-ref _L132259_ _self-index132220_)))
                            (for-each
                             (lambda (_g132276132278_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132276132278_
                                  'receiver:
                                  _self132275_
                                  'methods:
                                  _method-calls130265_
                                  'slots:
                                  _slot-refs130266_)))
                             _L132258_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130269_))
                                _stx130173_
                                (let* ((_specializer-id132287_
                                        (let* ((_id132281_
                                                (let ((__tmp134392
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130246_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp134392
                                                   '"::specialize")))
                                               (_specializer-id132284_
                                                (let ((__tmp134393
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130173_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132281_
                                                   __tmp134393))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132284_))
                                          _specializer-id132284_))
                                       (_$klass132289_
                                        (let ((__tmp134394 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134394)))
                                       (_$method-table132291_
                                        (let ((__tmp134395
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134395)))
                                       (_methods132293_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130265_)))
                                       (_$methods132297_
                                        (map (lambda (_id132295_)
                                               (let ((__tmp134396
                                                      (gensym _id132295_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134396)))
                                             _methods132293_))
                                       (_g134397_
                                        (for-each
                                         (lambda (_g132298132301_
                                                  _g132299132303_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130265_
                                              _g132298132301_
                                              _g132299132303_)))
                                         _methods132293_
                                         _$methods132297_))
                                       (_methods-bind132314_
                                        (map (lambda (_g132306132309_
                                                      _g132307132311_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130175_
                                                  _$klass132289_
                                                  _$method-table132291_
                                                  _g132306132309_
                                                  _g132307132311_)))
                                             _methods132293_
                                             _$methods132297_))
                                       (_slots132316_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130266_)))
                                       (_$slots132320_
                                        (map (lambda (_id132318_)
                                               (let ((__tmp134398
                                                      (gensym _id132318_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134398)))
                                             _slots132316_))
                                       (_g134399_
                                        (for-each
                                         (lambda (_g132321132324_
                                                  _g132322132326_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130266_
                                              _g132321132324_
                                              _g132322132326_)))
                                         _slots132316_
                                         _$slots132320_))
                                       (_slots-bind132337_
                                        (map (lambda (_g132329132332_
                                                      _g132330132334_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130176_
                                                  _$klass132289_
                                                  _g132329132332_
                                                  _g132330132334_)))
                                             _slots132316_
                                             _$slots132320_))
                                       (_specializer-impl132345_
                                        (let* ((_specializer-body132343_
                                                (map (lambda (_g132338132340_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g132338132340_
                                                          'receiver:
                                                          _self132275_
                                                          'klass:
                                                          _$klass132289_
                                                          'methods:
                                                          _method-calls130265_
                                                          'slots:
                                                          _slot-refs130266_)))
                                                     _L132258_))
                                               (__tmp134400
                                                (let ((__tmp134401
                                                       (let ((__tmp134403
                                                              (let ((__tmp134404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134416
                                    (let ()
                                      (declare (not safe))
                                      (cons _L131921_ '())))
                                   (__tmp134405
                                    (let ((__tmp134406
                                           (let ((__tmp134407
                                                  (let ((__tmp134409
                                                         (let ((__tmp134410
                                                                (let ((__tmp134415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L131920_ '())))
                              (__tmp134411
                               (let ((__tmp134412
                                      (let ((__tmp134413
                                             (let ((__tmp134414
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132259_
                                                            _specializer-body132343_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp134414))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134413
                                         _L131919_))))
                                 (declare (not safe))
                                 (cons __tmp134412 '()))))
                          (declare (not safe))
                          (cons __tmp134415 __tmp134411))))
                   (declare (not safe))
                   (cons __tmp134410 '())))
                (__tmp134408
                 (let () (declare (not safe)) (cons _L131918_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134409
                                                          __tmp134408))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp134407))))
                                      (declare (not safe))
                                      (cons __tmp134406 '()))))
                               (declare (not safe))
                               (cons __tmp134416 __tmp134405))))
                        (declare (not safe))
                        (cons __tmp134404 '())))
                     (__tmp134402
                      (let () (declare (not safe)) (cons _L131917_ '()))))
                 (declare (not safe))
                 (cons __tmp134403 __tmp134402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134401))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp134400
                                           _stx130173_)))
                                       (_specializer-impl132347_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130177_
                                           _$klass132289_
                                           _$method-table132291_
                                           _methods-bind132314_
                                           _slots-bind132337_
                                           _specializer-impl132345_))))
                                  (let ((__tmp134418
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130246_)))
                                        (__tmp134417
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132287_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp134418
                                     '" => "
                                     __tmp134417))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130178_
                                     _L130246_
                                     _specializer-id132287_
                                     _specializer-impl132347_))))))
                        _tl132232132255_
                        _hd132231132253_)))
                   (let ()
                     (declare (not safe))
                     (_g132223132237_ _g132224132240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132223132237_
                                                      _g132224132240_))))))
                                       (declare (not safe))
                                       (_g132222132350_ _L131919_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L131919_))
                                         (let* ((_g132353132383_
                                                 (lambda (_g132354132380_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132354132380_))))
                                                (_g132352132925_
                                                 (lambda (_g132354132386_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132354132386_))
                                                       (let ((_e132358132388_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132354132386_))))
                 (let ((_hd132359132391_
                        (let () (declare (not safe)) (##car _e132358132388_)))
                       (_tl132360132393_
                        (let () (declare (not safe)) (##cdr _e132358132388_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132360132393_))
                       (let ((_e132361132396_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132360132393_))))
                         (let ((_hd132362132399_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132361132396_)))
                               (_tl132363132401_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132361132396_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132362132399_))
                               (let ((_e132364132404_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132362132399_))))
                                 (let ((_hd132365132407_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132364132404_)))
                                       (_tl132366132409_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132364132404_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132365132407_))
                                       (let ((_e132367132412_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132365132407_))))
                                         (let ((_hd132368132415_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132367132412_)))
                                               (_tl132369132417_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132367132412_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132368132415_))
                                               (let ((_e132370132420_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132368132415_))))
                                                 (let ((_hd132371132423_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132370132420_)))
                                                       (_tl132372132425_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132370132420_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132372132425_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132369132417_))
                                                           (let ((_e132373132428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132369132417_))))
                     (let ((_hd132374132431_
                            (let ()
                              (declare (not safe))
                              (##car _e132373132428_)))
                           (_tl132375132433_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132373132428_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132375132433_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132366132409_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132363132401_))
                                   (let ((_e132376132436_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132363132401_))))
                                     (let ((_hd132377132439_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132376132436_)))
                                           (_tl132378132441_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132376132436_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132378132441_))
                                           ((lambda (_L132444_
                                                     _L132445_
                                                     _L132446_)
                                              (let* ((_g132469132483_
                                                      (lambda (_g132470132480_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132470132480_))))
                                                     (_g132468132524_
                                                      (lambda (_g132470132486_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132470132486_))
                                                            (let ((_e132473132488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132470132486_))))
                      (let ((_hd132474132491_
                             (let ()
                               (declare (not safe))
                               (##car _e132473132488_)))
                            (_tl132475132493_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132473132488_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132475132493_))
                            (let ((_e132476132496_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132475132493_))))
                              (let ((_hd132477132499_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132476132496_)))
                                    (_tl132478132501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132476132496_))))
                                ((lambda (_L132504_ _L132505_)
                                   (let ((_self132518_
                                          (list-ref
                                           _L132505_
                                           _self-index132220_)))
                                     (for-each
                                      (lambda (_g132519132521_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g132519132521_
                                           'receiver:
                                           _self132518_
                                           'methods:
                                           _method-calls130265_
                                           'slots:
                                           _slot-refs130266_)))
                                      _L132504_)))
                                 _tl132478132501_
                                 _hd132477132499_)))
                            (let ()
                              (declare (not safe))
                              (_g132469132483_ _g132470132486_)))))
                    (let ()
                      (declare (not safe))
                      (_g132469132483_ _g132470132486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132468132524_ _L132445_))
                                              (let* ((_g132527132546_
                                                      (lambda (_g132528132543_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132528132543_))))
                                                     (_g132526132651_
                                                      (lambda (_g132528132549_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132528132549_))
                                                            (let ((_e132530132551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132528132549_))))
                      (let ((_hd132531132554_
                             (let ()
                               (declare (not safe))
                               (##car _e132530132551_)))
                            (_tl132532132556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132530132551_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl132532132556_))
                            (let ((_g134419_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132532132556_
                                      '0))))
                              (begin
                                (let ((_g134420_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134419_)
                                             (##vector-length _g134419_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134420_ 2)))
                                      (error "Context expects 2 values"
                                             _g134420_)))
                                (let ((_target132533132559_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134419_ 0)))
                                      (_tl132535132561_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134419_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132535132561_))
                                      (letrec ((_loop132536132564_
                                                (lambda (_hd132534132567_
                                                         _clause132540132569_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd132534132567_))
                                                      (let ((_e132537132572_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd132534132567_))))
                (let ((_lp-hd132538132575_
                       (let () (declare (not safe)) (##car _e132537132572_)))
                      (_lp-tl132539132577_
                       (let () (declare (not safe)) (##cdr _e132537132572_))))
                  (let ((__tmp134421
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd132538132575_ _clause132540132569_))))
                    (declare (not safe))
                    (_loop132536132564_ _lp-tl132539132577_ __tmp134421))))
              (let ((_clause132541132580_ (reverse _clause132540132569_)))
                ((lambda (_L132583_)
                   (for-each
                    (lambda (_clause132596_)
                      (let* ((_g132598132609_
                              (lambda (_g132599132606_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g132599132606_))))
                             (_g132597132641_
                              (lambda (_g132599132612_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g132599132612_))
                                    (let ((_e132602132614_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g132599132612_))))
                                      (let ((_hd132603132617_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132602132614_)))
                                            (_tl132604132619_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132602132614_))))
                                        ((lambda (_L132622_ _L132623_)
                                           (let ((_self132635_
                                                  (list-ref
                                                   _L132623_
                                                   _self-index132220_)))
                                             (for-each
                                              (lambda (_g132636132638_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g132636132638_
                                                   'receiver:
                                                   _self132635_
                                                   'methods:
                                                   _method-calls130265_
                                                   'slots:
                                                   _slot-refs130266_)))
                                              _L132622_)))
                                         _tl132604132619_
                                         _hd132603132617_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132598132609_ _g132599132612_))))))
                        (declare (not safe))
                        (_g132597132641_ _clause132596_)))
                    (let ((__tmp134422
                           (lambda (_g132643132646_ _g132644132648_)
                             (let ()
                               (declare (not safe))
                               (cons _g132643132646_ _g132644132648_)))))
                      (declare (not safe))
                      (foldr1 __tmp134422 '() _L132583_))))
                 _clause132541132580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop132536132564_
                                           _target132533132559_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g132527132546_ _g132528132549_))))))
                            (let ()
                              (declare (not safe))
                              (_g132527132546_ _g132528132549_)))))
                    (let ()
                      (declare (not safe))
                      (_g132527132546_ _g132528132549_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132526132651_ _L132444_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130269_))
                                                  _stx130173_
                                                  (let* ((_specializer-id132660_
                                                          (let* ((_id132654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134423
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130246_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134423 '"::specialize")))
                         (_specializer-id132657_
                          (let ((__tmp134424
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130173_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132654_ __tmp134424))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132657_))
                    _specializer-id132657_))
                 (_$klass132662_
                  (let ((__tmp134425 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134425)))
                 (_$method-table132664_
                  (let ((__tmp134426 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134426)))
                 (_methods132666_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130265_)))
                 (_$methods132670_
                  (map (lambda (_id132668_)
                         (let ((__tmp134427 (gensym _id132668_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134427)))
                       _methods132666_))
                 (_g134428_
                  (for-each
                   (lambda (_g132671132674_ _g132672132676_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130265_
                        _g132671132674_
                        _g132672132676_)))
                   _methods132666_
                   _$methods132670_))
                 (_methods-bind132687_
                  (map (lambda (_g132679132682_ _g132680132684_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130175_
                            _$klass132662_
                            _$method-table132664_
                            _g132679132682_
                            _g132680132684_)))
                       _methods132666_
                       _$methods132670_))
                 (_slots132689_
                  (let () (declare (not safe)) (hash-keys _slot-refs130266_)))
                 (_$slots132693_
                  (map (lambda (_id132691_)
                         (let ((__tmp134429 (gensym _id132691_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134429)))
                       _slots132689_))
                 (_g134430_
                  (for-each
                   (lambda (_g132694132697_ _g132695132699_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130266_
                        _g132694132697_
                        _g132695132699_)))
                   _slots132689_
                   _$slots132693_))
                 (_slots-bind132710_
                  (map (lambda (_g132702132705_ _g132703132707_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130176_
                            _$klass132662_
                            _g132702132705_
                            _g132703132707_)))
                       _slots132689_
                       _$slots132693_))
                 (_specializer-lambda-expr132783_
                  (let* ((_g132712132726_
                          (lambda (_g132713132723_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132713132723_))))
                         (_g132711132780_
                          (lambda (_g132713132729_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132713132729_))
                                (let ((_e132716132731_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132713132729_))))
                                  (let ((_hd132717132734_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132716132731_)))
                                        (_tl132718132736_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132716132731_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl132718132736_))
                                        (let ((_e132719132739_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl132718132736_))))
                                          (let ((_hd132720132742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132719132739_)))
                                                (_tl132721132744_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132719132739_))))
                                            ((lambda (_L132747_ _L132748_)
                                               (let* ((_self132771_
                                                       (list-ref
                                                        _L132748_
                                                        _self-index132220_))
                                                      (_body132777_
                                                       (map (lambda (_g132772132774_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g132772132774_
                         'receiver:
                         _self132771_
                         'klass:
                         _$klass132662_
                         'methods:
                         _method-calls130265_
                         'slots:
                         _slot-refs130266_)))
                    _L132747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp134431
                                                        (let ((__tmp134432
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L132748_ _body132777_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp134432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134431
                                                    _L132445_))))
                                             _tl132721132744_
                                             _hd132720132742_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132712132726_ _g132713132729_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132712132726_ _g132713132729_))))))
                    (declare (not safe))
                    (_g132711132780_ _L132445_)))
                 (_specializer-case-lambda-expr132918_
                  (let* ((_g132785132804_
                          (lambda (_g132786132801_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132786132801_))))
                         (_g132784132915_
                          (lambda (_g132786132807_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132786132807_))
                                (let ((_e132788132809_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132786132807_))))
                                  (let ((_hd132789132812_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132788132809_)))
                                        (_tl132790132814_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132788132809_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl132790132814_))
                                        (let ((_g134433_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl132790132814_
                                                  '0))))
                                          (begin
                                            (let ((_g134434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g134433_)
                                                         (##vector-length
                                                          _g134433_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g134434_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g134434_)))
                                            (let ((_target132791132817_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134433_
                                                      0)))
                                                  (_tl132793132819_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134433_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132793132819_))
                                                  (letrec ((_loop132794132822_
                                                            (lambda (_hd132792132825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause132798132827_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132792132825_))
                          (let ((_e132795132830_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132792132825_))))
                            (let ((_lp-hd132796132833_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132795132830_)))
                                  (_lp-tl132797132835_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132795132830_))))
                              (let ((__tmp134435
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd132796132833_
                                             _clause132798132827_))))
                                (declare (not safe))
                                (_loop132794132822_
                                 _lp-tl132797132835_
                                 __tmp134435))))
                          (let ((_clause132799132838_
                                 (reverse _clause132798132827_)))
                            ((lambda (_L132841_)
                               (let* ((_clauses132913_
                                       (map (lambda (_clause132855_)
                                              (let* ((_g132857132868_
                                                      (lambda (_g132858132865_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132858132865_))))
                                                     (_g132856132903_
                                                      (lambda (_g132858132871_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132858132871_))
                                                            (let ((_e132861132873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132858132871_))))
                      (let ((_hd132862132876_
                             (let ()
                               (declare (not safe))
                               (##car _e132861132873_)))
                            (_tl132863132878_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132861132873_))))
                        ((lambda (_L132881_ _L132882_)
                           (let* ((_self132894_
                                   (list-ref _L132882_ _self-index132220_))
                                  (_body132900_
                                   (map (lambda (_g132895132897_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g132895132897_
                                             'receiver:
                                             _self132894_
                                             'klass:
                                             _$klass132662_
                                             'methods:
                                             _method-calls130265_
                                             'slots:
                                             _slot-refs130266_)))
                                        _L132881_)))
                             (let ()
                               (declare (not safe))
                               (cons _L132882_ _body132900_))))
                         _tl132863132878_
                         _hd132862132876_)))
                    (let ()
                      (declare (not safe))
                      (_g132857132868_ _g132858132871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132856132903_
                                                 _clause132855_)))
                                            (let ((__tmp134436
                                                   (lambda (_g132905132908_
                                                            _g132906132910_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g132905132908_
                                                             _g132906132910_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp134436
                                                      '()
                                                      _L132841_))))
                                      (__tmp134437
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses132913_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134437
                                  _L132444_)))
                             _clause132799132838_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop132794132822_
                                                       _target132791132817_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g132785132804_
                                                     _g132786132807_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132785132804_ _g132786132807_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132785132804_ _g132786132807_))))))
                    (declare (not safe))
                    (_g132784132915_ _L132444_)))
                 (_specializer-impl132920_
                  (let ((__tmp134438
                         (let ((__tmp134439
                                (let ((__tmp134441
                                       (let ((__tmp134442
                                              (let ((__tmp134459
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L131921_ '())))
                                                    (__tmp134443
                                                     (let ((__tmp134444
                                                            (let ((__tmp134445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134447
                                  (let ((__tmp134448
                                         (let ((__tmp134458
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L131920_ '())))
                                               (__tmp134449
                                                (let ((__tmp134450
                                                       (let ((__tmp134451
                                                              (let ((__tmp134452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134454
                                    (let ((__tmp134455
                                           (let ((__tmp134457
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132446_ '())))
                                                 (__tmp134456
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr132783_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp134457 __tmp134456))))
                                      (declare (not safe))
                                      (cons __tmp134455 '())))
                                   (__tmp134453
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr132918_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp134454 __tmp134453))))
                        (declare (not safe))
                        (cons '%#let-values __tmp134452))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134451 _stx130173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134450 '()))))
                                           (declare (not safe))
                                           (cons __tmp134458 __tmp134449))))
                                    (declare (not safe))
                                    (cons __tmp134448 '())))
                                 (__tmp134446
                                  (let ()
                                    (declare (not safe))
                                    (cons _L131918_ '()))))
                             (declare (not safe))
                             (cons __tmp134447 __tmp134446))))
                      (declare (not safe))
                      (cons '%#let-values __tmp134445))))
               (declare (not safe))
               (cons __tmp134444 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134459
                                                      __tmp134443))))
                                         (declare (not safe))
                                         (cons __tmp134442 '())))
                                      (__tmp134440
                                       (let ()
                                         (declare (not safe))
                                         (cons _L131917_ '()))))
                                  (declare (not safe))
                                  (cons __tmp134441 __tmp134440))))
                           (declare (not safe))
                           (cons '%#let-values __tmp134439))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134438 _stx130173_)))
                 (_specializer-impl132922_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130177_
                     _$klass132662_
                     _$method-table132664_
                     _methods-bind132687_
                     _slots-bind132710_
                     _specializer-impl132920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134461
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130246_)))
                                                          (__tmp134460
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132660_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134461
                                                       '" => "
                                                       __tmp134460))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130178_
                                                       _L130246_
                                                       _specializer-id132660_
                                                       _specializer-impl132922_)))))
                                            _hd132377132439_
                                            _hd132374132431_
                                            _hd132371132423_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132353132383_
                                              _g132354132386_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132353132383_ _g132354132386_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132353132383_ _g132354132386_)))
                           (let ()
                             (declare (not safe))
                             (_g132353132383_ _g132354132386_)))))
                   (let ()
                     (declare (not safe))
                     (_g132353132383_ _g132354132386_)))
               (let ()
                 (declare (not safe))
                 (_g132353132383_ _g132354132386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132353132383_
                                                  _g132354132386_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132353132383_ _g132354132386_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132353132383_ _g132354132386_)))))
                       (let ()
                         (declare (not safe))
                         (_g132353132383_ _g132354132386_)))))
               (let ()
                 (declare (not safe))
                 (_g132353132383_ _g132354132386_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132352132925_ _L131919_))
                                         _stx130173_))))
                             _hd132016132139_
                             _kw-ref132014132160_
                             _hd132004132126_
                             _hd131995132102_
                             _hd131986132078_)
                            (let ()
                              (declare (not safe))
                              (_g131960132022_ _g131961132025_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132009132144_
                                                   _target132006132131_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g131960132022_
                                                 _g131961132025_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131960132022_ _g131961132025_))))))
                            (let ()
                              (declare (not safe))
                              (_g131960132022_ _g131961132025_)))
                        (let ()
                          (declare (not safe))
                          (_g131960132022_ _g131961132025_)))
                    (let ()
                      (declare (not safe))
                      (_g131960132022_ _g131961132025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g131960132022_
                                                       _g131961132025_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g131960132022_
                                                   _g131961132025_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g131960132022_
                                               _g131961132025_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131960132022_ _g131961132025_)))))
                            (let ()
                              (declare (not safe))
                              (_g131960132022_ _g131961132025_)))
                        (let ()
                          (declare (not safe))
                          (_g131960132022_ _g131961132025_)))))
                (let ()
                  (declare (not safe))
                  (_g131960132022_ _g131961132025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g131960132022_
                                                       _g131961132025_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g131960132022_
                                                   _g131961132025_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g131960132022_ _g131961132025_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131960132022_ _g131961132025_)))
                            (let ()
                              (declare (not safe))
                              (_g131960132022_ _g131961132025_)))))
                    (let ()
                      (declare (not safe))
                      (_g131960132022_ _g131961132025_)))
                (let ()
                  (declare (not safe))
                  (_g131960132022_ _g131961132025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g131960132022_
                                                       _g131961132025_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g131960132022_
                                               _g131961132025_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131960132022_ _g131961132025_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131960132022_ _g131961132025_)))
                            (let ()
                              (declare (not safe))
                              (_g131960132022_ _g131961132025_)))))
                    (let ()
                      (declare (not safe))
                      (_g131960132022_ _g131961132025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g131960132022_
                                                       _g131961132025_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g131960132022_
                                               _g131961132025_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131960132022_ _g131961132025_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g131960132022_ _g131961132025_)))))
                            (let ()
                              (declare (not safe))
                              (_g131960132022_ _g131961132025_))))))
                (declare (not safe))
                (_g131959132928_ _L131918_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd131794131912_
                                                    _hd131791131904_
                                                    _hd131788131896_
                                                    _hd131785131888_
                                                    _hd131767131840_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131747131800_
                                                      _g131748131803_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131747131800_
                                              _g131748131803_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g131747131800_ _g131748131803_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g131747131800_ _g131748131803_)))
                               (let ()
                                 (declare (not safe))
                                 (_g131747131800_ _g131748131803_)))))
                       (let ()
                         (declare (not safe))
                         (_g131747131800_ _g131748131803_)))
                   (let ()
                     (declare (not safe))
                     (_g131747131800_ _g131748131803_)))
               (let ()
                 (declare (not safe))
                 (_g131747131800_ _g131748131803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131747131800_
                                                  _g131748131803_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g131747131800_
                                              _g131748131803_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131747131800_ _g131748131803_)))))
                           (let ()
                             (declare (not safe))
                             (_g131747131800_ _g131748131803_)))))
                   (let ()
                     (declare (not safe))
                     (_g131747131800_ _g131748131803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131747131800_
                                                      _g131748131803_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131747131800_
                                                  _g131748131803_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g131747131800_
                                              _g131748131803_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131747131800_ _g131748131803_)))))
                           (let ()
                             (declare (not safe))
                             (_g131747131800_ _g131748131803_)))
                       (let ()
                         (declare (not safe))
                         (_g131747131800_ _g131748131803_)))))
               (let ()
                 (declare (not safe))
                 (_g131747131800_ _g131748131803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131747131800_
                                                  _g131748131803_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g131747131800_ _g131748131803_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131747131800_ _g131748131803_)))
                           (let ()
                             (declare (not safe))
                             (_g131747131800_ _g131748131803_)))
                       (let ()
                         (declare (not safe))
                         (_g131747131800_ _g131748131803_)))))
               (let ()
                 (declare (not safe))
                 (_g131747131800_ _g131748131803_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g131746132931_ _L130245_))
                                         _stx130173_))))))))
                  (___kont133155133156_ (lambda () _stx130173_)))
              (let ((___match133184133185_
                     (lambda (_e130185130213_
                              _hd130186130216_
                              _tl130187130218_
                              _e130188130221_
                              _hd130189130224_
                              _tl130190130226_
                              _e130191130229_
                              _hd130192130232_
                              _tl130193130234_
                              _e130194130237_
                              _hd130195130240_
                              _tl130196130242_)
                       (let ((_L130245_ _hd130195130240_)
                             (_L130246_ _hd130192130232_))
                         (if (let ((__tmp134462
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130246_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp134462))
                             (___kont133153133154_ _L130245_ _L130246_)
                             (___kont133155133156_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133151133152_))
                    (let ((_e130185130213_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133151133152_))))
                      (let ((_tl130187130218_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130185130213_)))
                            (_hd130186130216_
                             (let ()
                               (declare (not safe))
                               (##car _e130185130213_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130187130218_))
                            (let ((_e130188130221_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130187130218_))))
                              (let ((_tl130190130226_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130188130221_)))
                                    (_hd130189130224_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130188130221_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130189130224_))
                                    (let ((_e130191130229_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130189130224_))))
                                      (let ((_tl130193130234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130191130229_)))
                                            (_hd130192130232_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130191130229_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130193130234_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130190130226_))
                                                (let ((_e130194130237_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130190130226_))))
                                                  (let ((_tl130196130242_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130194130237_)))
                                                        (_hd130195130240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130194130237_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130196130242_))
                                                        (___match133184133185_
                                                         _e130185130213_
                                                         _hd130186130216_
                                                         _tl130187130218_
                                                         _e130188130221_
                                                         _hd130189130224_
                                                         _tl130190130226_
                                                         _e130191130229_
                                                         _hd130192130232_
                                                         _tl130193130234_
                                                         _e130194130237_
                                                         _hd130195130240_
                                                         _tl130196130242_)
                                                        (___kont133155133156_))))
                                                (___kont133155133156_))
                                            (___kont133155133156_))))
                                    (___kont133155133156_))))
                            (___kont133155133156_))))
                    (___kont133155133156_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self129133_ _stx129134_)
        (let* ((___stx133187133188_ _stx129134_)
               (_g129142129364_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133187133188_)))))
          (let ((___kont133189133190_
                 (lambda (_L130121_ _L130122_ _L130123_ _L130124_)
                   (let ((__tmp134464
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129133_ 'methods)))
                         (__tmp134463
                          (let () (declare (not safe)) (gx#stx-e _L130122_))))
                     (declare (not safe))
                     (hash-put! __tmp134464 __tmp134463 '#t))
                   (for-each
                    (lambda (_g130157130159_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self129133_ _g130157130159_)))
                    (let ((__tmp134465
                           (lambda (_g130161130164_ _g130162130166_)
                             (let ()
                               (declare (not safe))
                               (cons _g130161130164_ _g130162130166_)))))
                      (declare (not safe))
                      (foldr1 __tmp134465 '() _L130121_)))))
                (___kont133193133194_
                 (lambda (_L129956_ _L129957_ _L129958_ _L129959_ _L129960_)
                   (let ((__tmp134467
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129133_ 'methods)))
                         (__tmp134466
                          (let () (declare (not safe)) (gx#stx-e _L129957_))))
                     (declare (not safe))
                     (hash-put! __tmp134467 __tmp134466 '#t))
                   (for-each
                    (lambda (_g130000130002_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self129133_ _g130000130002_)))
                    (let ((__tmp134468
                           (lambda (_g130004130007_ _g130005130009_)
                             (let ()
                               (declare (not safe))
                               (cons _g130004130007_ _g130005130009_)))))
                      (declare (not safe))
                      (foldr1 __tmp134468 '() _L129956_)))))
                (___kont133197133198_
                 (lambda (_L129789_ _L129790_ _L129791_)
                   (let ((__tmp134470
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129133_ 'slots)))
                         (__tmp134469
                          (let () (declare (not safe)) (gx#stx-e _L129789_))))
                     (declare (not safe))
                     (hash-put! __tmp134470 __tmp134469 '#t))))
                (___kont133199133200_
                 (lambda (_L129666_ _L129667_ _L129668_ _L129669_)
                   (let ((__tmp134472
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129133_ 'slots)))
                         (__tmp134471
                          (let () (declare (not safe)) (gx#stx-e _L129667_))))
                     (declare (not safe))
                     (hash-put! __tmp134472 __tmp134471 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self129133_ _L129666_))))
                (___kont133201133202_
                 (lambda (_L129540_ _L129541_)
                   (let* ((_accessor129563_
                           (let ((__tmp134473
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129541_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134473)))
                          (_klass129565_
                           (let ((__tmp134474
                                  (##structure-ref
                                   _accessor129563_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129134_
                              __tmp134474)))
                          (_slot129567_
                           (##structure-ref
                            _accessor129563_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp134475
                                     (##structure-ref
                                      _accessor129563_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134475))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass129565_
                                     _slot129567_))
                                  (##structure-ref
                                   _klass129565_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp134477
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129133_ 'slots)))
                               (__tmp134476
                                (##structure-ref
                                 _accessor129563_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp134477 __tmp134476 '#t))))))
                (___kont133203133204_
                 (lambda (_L129440_ _L129441_ _L129442_)
                   (let* ((_mutator129469_
                           (let ((__tmp134478
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129442_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134478)))
                          (_klass129471_
                           (let ((__tmp134479
                                  (##structure-ref
                                   _mutator129469_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129134_
                              __tmp134479)))
                          (_slot129473_
                           (##structure-ref
                            _mutator129469_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp134480
                                     (##structure-ref
                                      _mutator129469_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134480))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass129471_
                                     _slot129473_))
                                  (##structure-ref
                                   _klass129471_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp134481
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129133_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp134481 _slot129473_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self129133_ _L129440_)))))
                (___kont133205133206_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self129133_ _stx129134_)))))
            (let* ((___match133686133687_
                    (lambda (_e129336129376_
                             _hd129337129379_
                             _tl129338129381_
                             _e129339129384_
                             _hd129340129387_
                             _tl129341129389_
                             _e129342129392_
                             _hd129343129395_
                             _tl129344129397_
                             _e129345129400_
                             _hd129346129403_
                             _tl129347129405_
                             _e129348129408_
                             _hd129349129411_
                             _tl129350129413_
                             _e129351129416_
                             _hd129352129419_
                             _tl129353129421_
                             _e129354129424_
                             _hd129355129427_
                             _tl129356129429_
                             _e129357129432_
                             _hd129358129435_
                             _tl129359129437_)
                      (let ((_L129440_ _hd129358129435_)
                            (_L129441_ _hd129355129427_)
                            (_L129442_ _hd129346129403_))
                        (if (and (let ((__tmp134482
                                        (let ((__tmp134483
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129442_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134483))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134482
                                    'gxc#!mutator::t))
                                 (let ((__tmp134484
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129133_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129441_
                                    __tmp134484)))
                            (___kont133203133204_
                             _L129440_
                             _L129441_
                             _L129442_)
                            (___kont133205133206_)))))
                   (___match133684133685_
                    (lambda (_e129336129376_
                             _hd129337129379_
                             _tl129338129381_
                             _e129339129384_
                             _hd129340129387_
                             _tl129341129389_
                             _e129342129392_
                             _hd129343129395_
                             _tl129344129397_
                             _e129345129400_
                             _hd129346129403_
                             _tl129347129405_
                             _e129348129408_
                             _hd129349129411_
                             _tl129350129413_
                             _e129351129416_
                             _hd129352129419_
                             _tl129353129421_
                             _e129354129424_
                             _hd129355129427_
                             _tl129356129429_
                             _e129357129432_
                             _hd129358129435_
                             _tl129359129437_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129359129437_))
                          (___match133686133687_
                           _e129336129376_
                           _hd129337129379_
                           _tl129338129381_
                           _e129339129384_
                           _hd129340129387_
                           _tl129341129389_
                           _e129342129392_
                           _hd129343129395_
                           _tl129344129397_
                           _e129345129400_
                           _hd129346129403_
                           _tl129347129405_
                           _e129348129408_
                           _hd129349129411_
                           _tl129350129413_
                           _e129351129416_
                           _hd129352129419_
                           _tl129353129421_
                           _e129354129424_
                           _hd129355129427_
                           _tl129356129429_
                           _e129357129432_
                           _hd129358129435_
                           _tl129359129437_)
                          (___kont133205133206_))))
                   (___match133678133679_
                    (lambda (_e129336129376_
                             _hd129337129379_
                             _tl129338129381_
                             _e129339129384_
                             _hd129340129387_
                             _tl129341129389_
                             _e129342129392_
                             _hd129343129395_
                             _tl129344129397_
                             _e129345129400_
                             _hd129346129403_
                             _tl129347129405_
                             _e129348129408_
                             _hd129349129411_
                             _tl129350129413_
                             _e129351129416_
                             _hd129352129419_
                             _tl129353129421_
                             _e129354129424_
                             _hd129355129427_
                             _tl129356129429_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129350129413_))
                          (let ((_e129357129432_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129350129413_))))
                            (let ((_tl129359129437_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129357129432_)))
                                  (_hd129358129435_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129357129432_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129359129437_))
                                  (___match133686133687_
                                   _e129336129376_
                                   _hd129337129379_
                                   _tl129338129381_
                                   _e129339129384_
                                   _hd129340129387_
                                   _tl129341129389_
                                   _e129342129392_
                                   _hd129343129395_
                                   _tl129344129397_
                                   _e129345129400_
                                   _hd129346129403_
                                   _tl129347129405_
                                   _e129348129408_
                                   _hd129349129411_
                                   _tl129350129413_
                                   _e129351129416_
                                   _hd129352129419_
                                   _tl129353129421_
                                   _e129354129424_
                                   _hd129355129427_
                                   _tl129356129429_
                                   _e129357129432_
                                   _hd129358129435_
                                   _tl129359129437_)
                                  (___kont133205133206_))))
                          (___kont133205133206_))))
                   (___match133624133625_
                    (lambda (_e129312129484_
                             _hd129313129487_
                             _tl129314129489_
                             _e129315129492_
                             _hd129316129495_
                             _tl129317129497_
                             _e129318129500_
                             _hd129319129503_
                             _tl129320129505_
                             _e129321129508_
                             _hd129322129511_
                             _tl129323129513_
                             _e129324129516_
                             _hd129325129519_
                             _tl129326129521_
                             _e129327129524_
                             _hd129328129527_
                             _tl129329129529_
                             _e129330129532_
                             _hd129331129535_
                             _tl129332129537_)
                      (let ((_L129540_ _hd129331129535_)
                            (_L129541_ _hd129322129511_))
                        (if (and (let ((__tmp134485
                                        (let ((__tmp134486
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129541_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134486))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134485
                                    'gxc#!accessor::t))
                                 (let ((__tmp134487
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129133_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129540_
                                    __tmp134487)))
                            (___kont133201133202_ _L129540_ _L129541_)
                            (___kont133205133206_)))))
                   (___match133622133623_
                    (lambda (_e129312129484_
                             _hd129313129487_
                             _tl129314129489_
                             _e129315129492_
                             _hd129316129495_
                             _tl129317129497_
                             _e129318129500_
                             _hd129319129503_
                             _tl129320129505_
                             _e129321129508_
                             _hd129322129511_
                             _tl129323129513_
                             _e129324129516_
                             _hd129325129519_
                             _tl129326129521_
                             _e129327129524_
                             _hd129328129527_
                             _tl129329129529_
                             _e129330129532_
                             _hd129331129535_
                             _tl129332129537_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129326129521_))
                          (___match133624133625_
                           _e129312129484_
                           _hd129313129487_
                           _tl129314129489_
                           _e129315129492_
                           _hd129316129495_
                           _tl129317129497_
                           _e129318129500_
                           _hd129319129503_
                           _tl129320129505_
                           _e129321129508_
                           _hd129322129511_
                           _tl129323129513_
                           _e129324129516_
                           _hd129325129519_
                           _tl129326129521_
                           _e129327129524_
                           _hd129328129527_
                           _tl129329129529_
                           _e129330129532_
                           _hd129331129535_
                           _tl129332129537_)
                          (___match133678133679_
                           _e129312129484_
                           _hd129313129487_
                           _tl129314129489_
                           _e129315129492_
                           _hd129316129495_
                           _tl129317129497_
                           _e129318129500_
                           _hd129319129503_
                           _tl129320129505_
                           _e129321129508_
                           _hd129322129511_
                           _tl129323129513_
                           _e129324129516_
                           _hd129325129519_
                           _tl129326129521_
                           _e129327129524_
                           _hd129328129527_
                           _tl129329129529_
                           _e129330129532_
                           _hd129331129535_
                           _tl129332129537_))))
                   (___match133568133569_
                    (lambda (_e129277129578_
                             _hd129278129581_
                             _tl129279129583_
                             _e129280129586_
                             _hd129281129589_
                             _tl129282129591_
                             _e129283129594_
                             _hd129284129597_
                             _tl129285129599_
                             _e129286129602_
                             _hd129287129605_
                             _tl129288129607_
                             _e129289129610_
                             _hd129290129613_
                             _tl129291129615_
                             _e129292129618_
                             _hd129293129621_
                             _tl129294129623_
                             _e129295129626_
                             _hd129296129629_
                             _tl129297129631_
                             _e129298129634_
                             _hd129299129637_
                             _tl129300129639_
                             _e129301129642_
                             _hd129302129645_
                             _tl129303129647_
                             _e129304129650_
                             _hd129305129653_
                             _tl129306129655_
                             _e129307129658_
                             _hd129308129661_
                             _tl129309129663_)
                      (let ((_L129666_ _hd129308129661_)
                            (_L129667_ _hd129305129653_)
                            (_L129668_ _hd129296129629_)
                            (_L129669_ _hd129287129605_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129669_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129669_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp134488
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129133_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129668_
                                    __tmp134488)))
                            (___kont133199133200_
                             _L129666_
                             _L129667_
                             _L129668_
                             _L129669_)
                            (___kont133205133206_)))))
                   (___match133560133561_
                    (lambda (_e129277129578_
                             _hd129278129581_
                             _tl129279129583_
                             _e129280129586_
                             _hd129281129589_
                             _tl129282129591_
                             _e129283129594_
                             _hd129284129597_
                             _tl129285129599_
                             _e129286129602_
                             _hd129287129605_
                             _tl129288129607_
                             _e129289129610_
                             _hd129290129613_
                             _tl129291129615_
                             _e129292129618_
                             _hd129293129621_
                             _tl129294129623_
                             _e129295129626_
                             _hd129296129629_
                             _tl129297129631_
                             _e129298129634_
                             _hd129299129637_
                             _tl129300129639_
                             _e129301129642_
                             _hd129302129645_
                             _tl129303129647_
                             _e129304129650_
                             _hd129305129653_
                             _tl129306129655_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129300129639_))
                          (let ((_e129307129658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129300129639_))))
                            (let ((_tl129309129663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129307129658_)))
                                  (_hd129308129661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129307129658_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129309129663_))
                                  (___match133568133569_
                                   _e129277129578_
                                   _hd129278129581_
                                   _tl129279129583_
                                   _e129280129586_
                                   _hd129281129589_
                                   _tl129282129591_
                                   _e129283129594_
                                   _hd129284129597_
                                   _tl129285129599_
                                   _e129286129602_
                                   _hd129287129605_
                                   _tl129288129607_
                                   _e129289129610_
                                   _hd129290129613_
                                   _tl129291129615_
                                   _e129292129618_
                                   _hd129293129621_
                                   _tl129294129623_
                                   _e129295129626_
                                   _hd129296129629_
                                   _tl129297129631_
                                   _e129298129634_
                                   _hd129299129637_
                                   _tl129300129639_
                                   _e129301129642_
                                   _hd129302129645_
                                   _tl129303129647_
                                   _e129304129650_
                                   _hd129305129653_
                                   _tl129306129655_
                                   _e129307129658_
                                   _hd129308129661_
                                   _tl129309129663_)
                                  (___kont133205133206_))))
                          (___match133684133685_
                           _e129277129578_
                           _hd129278129581_
                           _tl129279129583_
                           _e129280129586_
                           _hd129281129589_
                           _tl129282129591_
                           _e129283129594_
                           _hd129284129597_
                           _tl129285129599_
                           _e129286129602_
                           _hd129287129605_
                           _tl129288129607_
                           _e129289129610_
                           _hd129290129613_
                           _tl129291129615_
                           _e129292129618_
                           _hd129293129621_
                           _tl129294129623_
                           _e129295129626_
                           _hd129296129629_
                           _tl129297129631_
                           _e129298129634_
                           _hd129299129637_
                           _tl129300129639_))))
                   (___match133482133483_
                    (lambda (_e129243129709_
                             _hd129244129712_
                             _tl129245129714_
                             _e129246129717_
                             _hd129247129720_
                             _tl129248129722_
                             _e129249129725_
                             _hd129250129728_
                             _tl129251129730_
                             _e129252129733_
                             _hd129253129736_
                             _tl129254129738_
                             _e129255129741_
                             _hd129256129744_
                             _tl129257129746_
                             _e129258129749_
                             _hd129259129752_
                             _tl129260129754_
                             _e129261129757_
                             _hd129262129760_
                             _tl129263129762_
                             _e129264129765_
                             _hd129265129768_
                             _tl129266129770_
                             _e129267129773_
                             _hd129268129776_
                             _tl129269129778_
                             _e129270129781_
                             _hd129271129784_
                             _tl129272129786_)
                      (let ((_L129789_ _hd129271129784_)
                            (_L129790_ _hd129262129760_)
                            (_L129791_ _hd129253129736_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129791_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129791_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp134489
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129133_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129790_
                                    __tmp134489)))
                            (___kont133197133198_
                             _L129789_
                             _L129790_
                             _L129791_)
                            (___match133686133687_
                             _e129243129709_
                             _hd129244129712_
                             _tl129245129714_
                             _e129246129717_
                             _hd129247129720_
                             _tl129248129722_
                             _e129249129725_
                             _hd129250129728_
                             _tl129251129730_
                             _e129252129733_
                             _hd129253129736_
                             _tl129254129738_
                             _e129255129741_
                             _hd129256129744_
                             _tl129257129746_
                             _e129258129749_
                             _hd129259129752_
                             _tl129260129754_
                             _e129261129757_
                             _hd129262129760_
                             _tl129263129762_
                             _e129264129765_
                             _hd129265129768_
                             _tl129266129770_)))))
                   (___match133480133481_
                    (lambda (_e129243129709_
                             _hd129244129712_
                             _tl129245129714_
                             _e129246129717_
                             _hd129247129720_
                             _tl129248129722_
                             _e129249129725_
                             _hd129250129728_
                             _tl129251129730_
                             _e129252129733_
                             _hd129253129736_
                             _tl129254129738_
                             _e129255129741_
                             _hd129256129744_
                             _tl129257129746_
                             _e129258129749_
                             _hd129259129752_
                             _tl129260129754_
                             _e129261129757_
                             _hd129262129760_
                             _tl129263129762_
                             _e129264129765_
                             _hd129265129768_
                             _tl129266129770_
                             _e129267129773_
                             _hd129268129776_
                             _tl129269129778_
                             _e129270129781_
                             _hd129271129784_
                             _tl129272129786_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129266129770_))
                          (___match133482133483_
                           _e129243129709_
                           _hd129244129712_
                           _tl129245129714_
                           _e129246129717_
                           _hd129247129720_
                           _tl129248129722_
                           _e129249129725_
                           _hd129250129728_
                           _tl129251129730_
                           _e129252129733_
                           _hd129253129736_
                           _tl129254129738_
                           _e129255129741_
                           _hd129256129744_
                           _tl129257129746_
                           _e129258129749_
                           _hd129259129752_
                           _tl129260129754_
                           _e129261129757_
                           _hd129262129760_
                           _tl129263129762_
                           _e129264129765_
                           _hd129265129768_
                           _tl129266129770_
                           _e129267129773_
                           _hd129268129776_
                           _tl129269129778_
                           _e129270129781_
                           _hd129271129784_
                           _tl129272129786_)
                          (___match133560133561_
                           _e129243129709_
                           _hd129244129712_
                           _tl129245129714_
                           _e129246129717_
                           _hd129247129720_
                           _tl129248129722_
                           _e129249129725_
                           _hd129250129728_
                           _tl129251129730_
                           _e129252129733_
                           _hd129253129736_
                           _tl129254129738_
                           _e129255129741_
                           _hd129256129744_
                           _tl129257129746_
                           _e129258129749_
                           _hd129259129752_
                           _tl129260129754_
                           _e129261129757_
                           _hd129262129760_
                           _tl129263129762_
                           _e129264129765_
                           _hd129265129768_
                           _tl129266129770_
                           _e129267129773_
                           _hd129268129776_
                           _tl129269129778_
                           _e129270129781_
                           _hd129271129784_
                           _tl129272129786_))))
                   (___match133470133471_
                    (lambda (_e129243129709_
                             _hd129244129712_
                             _tl129245129714_
                             _e129246129717_
                             _hd129247129720_
                             _tl129248129722_
                             _e129249129725_
                             _hd129250129728_
                             _tl129251129730_
                             _e129252129733_
                             _hd129253129736_
                             _tl129254129738_
                             _e129255129741_
                             _hd129256129744_
                             _tl129257129746_
                             _e129258129749_
                             _hd129259129752_
                             _tl129260129754_
                             _e129261129757_
                             _hd129262129760_
                             _tl129263129762_
                             _e129264129765_
                             _hd129265129768_
                             _tl129266129770_
                             _e129267129773_
                             _hd129268129776_
                             _tl129269129778_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129268129776_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129269129778_))
                              (let ((_e129270129781_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129269129778_))))
                                (let ((_tl129272129786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129270129781_)))
                                      (_hd129271129784_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129270129781_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129272129786_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129266129770_))
                                          (___match133482133483_
                                           _e129243129709_
                                           _hd129244129712_
                                           _tl129245129714_
                                           _e129246129717_
                                           _hd129247129720_
                                           _tl129248129722_
                                           _e129249129725_
                                           _hd129250129728_
                                           _tl129251129730_
                                           _e129252129733_
                                           _hd129253129736_
                                           _tl129254129738_
                                           _e129255129741_
                                           _hd129256129744_
                                           _tl129257129746_
                                           _e129258129749_
                                           _hd129259129752_
                                           _tl129260129754_
                                           _e129261129757_
                                           _hd129262129760_
                                           _tl129263129762_
                                           _e129264129765_
                                           _hd129265129768_
                                           _tl129266129770_
                                           _e129267129773_
                                           _hd129268129776_
                                           _tl129269129778_
                                           _e129270129781_
                                           _hd129271129784_
                                           _tl129272129786_)
                                          (___match133560133561_
                                           _e129243129709_
                                           _hd129244129712_
                                           _tl129245129714_
                                           _e129246129717_
                                           _hd129247129720_
                                           _tl129248129722_
                                           _e129249129725_
                                           _hd129250129728_
                                           _tl129251129730_
                                           _e129252129733_
                                           _hd129253129736_
                                           _tl129254129738_
                                           _e129255129741_
                                           _hd129256129744_
                                           _tl129257129746_
                                           _e129258129749_
                                           _hd129259129752_
                                           _tl129260129754_
                                           _e129261129757_
                                           _hd129262129760_
                                           _tl129263129762_
                                           _e129264129765_
                                           _hd129265129768_
                                           _tl129266129770_
                                           _e129267129773_
                                           _hd129268129776_
                                           _tl129269129778_
                                           _e129270129781_
                                           _hd129271129784_
                                           _tl129272129786_))
                                      (___match133684133685_
                                       _e129243129709_
                                       _hd129244129712_
                                       _tl129245129714_
                                       _e129246129717_
                                       _hd129247129720_
                                       _tl129248129722_
                                       _e129249129725_
                                       _hd129250129728_
                                       _tl129251129730_
                                       _e129252129733_
                                       _hd129253129736_
                                       _tl129254129738_
                                       _e129255129741_
                                       _hd129256129744_
                                       _tl129257129746_
                                       _e129258129749_
                                       _hd129259129752_
                                       _tl129260129754_
                                       _e129261129757_
                                       _hd129262129760_
                                       _tl129263129762_
                                       _e129264129765_
                                       _hd129265129768_
                                       _tl129266129770_))))
                              (___match133684133685_
                               _e129243129709_
                               _hd129244129712_
                               _tl129245129714_
                               _e129246129717_
                               _hd129247129720_
                               _tl129248129722_
                               _e129249129725_
                               _hd129250129728_
                               _tl129251129730_
                               _e129252129733_
                               _hd129253129736_
                               _tl129254129738_
                               _e129255129741_
                               _hd129256129744_
                               _tl129257129746_
                               _e129258129749_
                               _hd129259129752_
                               _tl129260129754_
                               _e129261129757_
                               _hd129262129760_
                               _tl129263129762_
                               _e129264129765_
                               _hd129265129768_
                               _tl129266129770_))
                          (___match133684133685_
                           _e129243129709_
                           _hd129244129712_
                           _tl129245129714_
                           _e129246129717_
                           _hd129247129720_
                           _tl129248129722_
                           _e129249129725_
                           _hd129250129728_
                           _tl129251129730_
                           _e129252129733_
                           _hd129253129736_
                           _tl129254129738_
                           _e129255129741_
                           _hd129256129744_
                           _tl129257129746_
                           _e129258129749_
                           _hd129259129752_
                           _tl129260129754_
                           _e129261129757_
                           _hd129262129760_
                           _tl129263129762_
                           _e129264129765_
                           _hd129265129768_
                           _tl129266129770_))))
                   (___match133402133403_
                    (lambda (_e129192129828_
                             _hd129193129831_
                             _tl129194129833_
                             _e129195129836_
                             _hd129196129839_
                             _tl129197129841_
                             _e129198129844_
                             _hd129199129847_
                             _tl129200129849_
                             _e129201129852_
                             _hd129202129855_
                             _tl129203129857_
                             _e129204129860_
                             _hd129205129863_
                             _tl129206129865_
                             _e129207129868_
                             _hd129208129871_
                             _tl129209129873_
                             _e129210129876_
                             _hd129211129879_
                             _tl129212129881_
                             _e129213129884_
                             _hd129214129887_
                             _tl129215129889_
                             _e129216129892_
                             _hd129217129895_
                             _tl129218129897_
                             _e129219129900_
                             _hd129220129903_
                             _tl129221129905_
                             _e129222129908_
                             _hd129223129911_
                             _tl129224129913_
                             _e129225129916_
                             _hd129226129919_
                             _tl129227129921_
                             _e129228129924_
                             _hd129229129927_
                             _tl129230129929_
                             ___splice133195133196_
                             _target129231129932_
                             _tl129233129934_)
                      (letrec ((_loop129234129937_
                                (lambda (_hd129232129940_ _args129238129942_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129232129940_))
                                      (let ((_e129235129945_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129232129940_))))
                                        (let ((_lp-tl129237129950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129235129945_)))
                                              (_lp-hd129236129948_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129235129945_))))
                                          (let ((__tmp134490
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129236129948_
                                                         _args129238129942_))))
                                            (declare (not safe))
                                            (_loop129234129937_
                                             _lp-tl129237129950_
                                             __tmp134490))))
                                      (let ((_args129239129953_
                                             (reverse _args129238129942_)))
                                        (let ((_L129956_ _args129239129953_)
                                              (_L129957_ _hd129229129927_)
                                              (_L129958_ _hd129220129903_)
                                              (_L129959_ _hd129211129879_)
                                              (_L129960_ _hd129202129855_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L129960_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L129959_
                                                      'call-method))
                                                   (let ((__tmp134491
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129133_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L129958_
                                                      __tmp134491)))
                                              (___kont133193133194_
                                               _L129956_
                                               _L129957_
                                               _L129958_
                                               _L129959_
                                               _L129960_)
                                              (___kont133205133206_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129234129937_ _target129231129932_ '())))))
                   (___match133360133361_
                    (lambda (_e129192129828_
                             _hd129193129831_
                             _tl129194129833_
                             _e129195129836_
                             _hd129196129839_
                             _tl129197129841_
                             _e129198129844_
                             _hd129199129847_
                             _tl129200129849_
                             _e129201129852_
                             _hd129202129855_
                             _tl129203129857_
                             _e129204129860_
                             _hd129205129863_
                             _tl129206129865_
                             _e129207129868_
                             _hd129208129871_
                             _tl129209129873_
                             _e129210129876_
                             _hd129211129879_
                             _tl129212129881_
                             _e129213129884_
                             _hd129214129887_
                             _tl129215129889_
                             _e129216129892_
                             _hd129217129895_
                             _tl129218129897_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129217129895_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129218129897_))
                              (let ((_e129219129900_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129218129897_))))
                                (let ((_tl129221129905_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129219129900_)))
                                      (_hd129220129903_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129219129900_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129221129905_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129215129889_))
                                          (let ((_e129222129908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129215129889_))))
                                            (let ((_tl129224129913_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129222129908_)))
                                                  (_hd129223129911_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129222129908_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129223129911_))
                                                  (let ((_e129225129916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129223129911_))))
                                                    (let ((_tl129227129921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129225129916_)))
                                                          (_hd129226129919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129225129916_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129226129919_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129226129919_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129227129921_))
                          (let ((_e129228129924_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129227129921_))))
                            (let ((_tl129230129929_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129228129924_)))
                                  (_hd129229129927_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129228129924_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129230129929_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129224129913_))
                                      (let ((___splice133195133196_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129224129913_
                                                '0))))
                                        (let ((_tl129233129934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133195133196_
                                                  '1)))
                                              (_target129231129932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133195133196_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129233129934_))
                                              (___match133402133403_
                                               _e129192129828_
                                               _hd129193129831_
                                               _tl129194129833_
                                               _e129195129836_
                                               _hd129196129839_
                                               _tl129197129841_
                                               _e129198129844_
                                               _hd129199129847_
                                               _tl129200129849_
                                               _e129201129852_
                                               _hd129202129855_
                                               _tl129203129857_
                                               _e129204129860_
                                               _hd129205129863_
                                               _tl129206129865_
                                               _e129207129868_
                                               _hd129208129871_
                                               _tl129209129873_
                                               _e129210129876_
                                               _hd129211129879_
                                               _tl129212129881_
                                               _e129213129884_
                                               _hd129214129887_
                                               _tl129215129889_
                                               _e129216129892_
                                               _hd129217129895_
                                               _tl129218129897_
                                               _e129219129900_
                                               _hd129220129903_
                                               _tl129221129905_
                                               _e129222129908_
                                               _hd129223129911_
                                               _tl129224129913_
                                               _e129225129916_
                                               _hd129226129919_
                                               _tl129227129921_
                                               _e129228129924_
                                               _hd129229129927_
                                               _tl129230129929_
                                               ___splice133195133196_
                                               _target129231129932_
                                               _tl129233129934_)
                                              (___kont133205133206_))))
                                      (___kont133205133206_))
                                  (___kont133205133206_))))
                          (___kont133205133206_))
                      (___kont133205133206_))
                  (___kont133205133206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133205133206_))))
                                          (___match133684133685_
                                           _e129192129828_
                                           _hd129193129831_
                                           _tl129194129833_
                                           _e129195129836_
                                           _hd129196129839_
                                           _tl129197129841_
                                           _e129198129844_
                                           _hd129199129847_
                                           _tl129200129849_
                                           _e129201129852_
                                           _hd129202129855_
                                           _tl129203129857_
                                           _e129204129860_
                                           _hd129205129863_
                                           _tl129206129865_
                                           _e129207129868_
                                           _hd129208129871_
                                           _tl129209129873_
                                           _e129210129876_
                                           _hd129211129879_
                                           _tl129212129881_
                                           _e129213129884_
                                           _hd129214129887_
                                           _tl129215129889_))
                                      (___match133684133685_
                                       _e129192129828_
                                       _hd129193129831_
                                       _tl129194129833_
                                       _e129195129836_
                                       _hd129196129839_
                                       _tl129197129841_
                                       _e129198129844_
                                       _hd129199129847_
                                       _tl129200129849_
                                       _e129201129852_
                                       _hd129202129855_
                                       _tl129203129857_
                                       _e129204129860_
                                       _hd129205129863_
                                       _tl129206129865_
                                       _e129207129868_
                                       _hd129208129871_
                                       _tl129209129873_
                                       _e129210129876_
                                       _hd129211129879_
                                       _tl129212129881_
                                       _e129213129884_
                                       _hd129214129887_
                                       _tl129215129889_))))
                              (___match133684133685_
                               _e129192129828_
                               _hd129193129831_
                               _tl129194129833_
                               _e129195129836_
                               _hd129196129839_
                               _tl129197129841_
                               _e129198129844_
                               _hd129199129847_
                               _tl129200129849_
                               _e129201129852_
                               _hd129202129855_
                               _tl129203129857_
                               _e129204129860_
                               _hd129205129863_
                               _tl129206129865_
                               _e129207129868_
                               _hd129208129871_
                               _tl129209129873_
                               _e129210129876_
                               _hd129211129879_
                               _tl129212129881_
                               _e129213129884_
                               _hd129214129887_
                               _tl129215129889_))
                          (___match133470133471_
                           _e129192129828_
                           _hd129193129831_
                           _tl129194129833_
                           _e129195129836_
                           _hd129196129839_
                           _tl129197129841_
                           _e129198129844_
                           _hd129199129847_
                           _tl129200129849_
                           _e129201129852_
                           _hd129202129855_
                           _tl129203129857_
                           _e129204129860_
                           _hd129205129863_
                           _tl129206129865_
                           _e129207129868_
                           _hd129208129871_
                           _tl129209129873_
                           _e129210129876_
                           _hd129211129879_
                           _tl129212129881_
                           _e129213129884_
                           _hd129214129887_
                           _tl129215129889_
                           _e129216129892_
                           _hd129217129895_
                           _tl129218129897_))))
                   (___match133292133293_
                    (lambda (_e129148130017_
                             _hd129149130020_
                             _tl129150130022_
                             _e129151130025_
                             _hd129152130028_
                             _tl129153130030_
                             _e129154130033_
                             _hd129155130036_
                             _tl129156130038_
                             _e129157130041_
                             _hd129158130044_
                             _tl129159130046_
                             _e129160130049_
                             _hd129161130052_
                             _tl129162130054_
                             _e129163130057_
                             _hd129164130060_
                             _tl129165130062_
                             _e129166130065_
                             _hd129167130068_
                             _tl129168130070_
                             _e129169130073_
                             _hd129170130076_
                             _tl129171130078_
                             _e129172130081_
                             _hd129173130084_
                             _tl129174130086_
                             _e129175130089_
                             _hd129176130092_
                             _tl129177130094_
                             ___splice133191133192_
                             _target129178130097_
                             _tl129180130099_)
                      (letrec ((_loop129181130102_
                                (lambda (_hd129179130105_ _args129185130107_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129179130105_))
                                      (let ((_e129182130110_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129179130105_))))
                                        (let ((_lp-tl129184130115_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129182130110_)))
                                              (_lp-hd129183130113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129182130110_))))
                                          (let ((__tmp134492
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129183130113_
                                                         _args129185130107_))))
                                            (declare (not safe))
                                            (_loop129181130102_
                                             _lp-tl129184130115_
                                             __tmp134492))))
                                      (let ((_args129186130118_
                                             (reverse _args129185130107_)))
                                        (let ((_L130121_ _args129186130118_)
                                              (_L130122_ _hd129176130092_)
                                              (_L130123_ _hd129167130068_)
                                              (_L130124_ _hd129158130044_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130124_
                                                      'call-method))
                                                   (let ((__tmp134493
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129133_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130123_
                                                      __tmp134493)))
                                              (___kont133189133190_
                                               _L130121_
                                               _L130122_
                                               _L130123_
                                               _L130124_)
                                              (___match133480133481_
                                               _e129148130017_
                                               _hd129149130020_
                                               _tl129150130022_
                                               _e129151130025_
                                               _hd129152130028_
                                               _tl129153130030_
                                               _e129154130033_
                                               _hd129155130036_
                                               _tl129156130038_
                                               _e129157130041_
                                               _hd129158130044_
                                               _tl129159130046_
                                               _e129160130049_
                                               _hd129161130052_
                                               _tl129162130054_
                                               _e129163130057_
                                               _hd129164130060_
                                               _tl129165130062_
                                               _e129166130065_
                                               _hd129167130068_
                                               _tl129168130070_
                                               _e129169130073_
                                               _hd129170130076_
                                               _tl129171130078_
                                               _e129172130081_
                                               _hd129173130084_
                                               _tl129174130086_
                                               _e129175130089_
                                               _hd129176130092_
                                               _tl129177130094_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129181130102_ _target129178130097_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133187133188_))
                  (let ((_e129148130017_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133187133188_))))
                    (let ((_tl129150130022_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129148130017_)))
                          (_hd129149130020_
                           (let ()
                             (declare (not safe))
                             (##car _e129148130017_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129150130022_))
                          (let ((_e129151130025_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129150130022_))))
                            (let ((_tl129153130030_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129151130025_)))
                                  (_hd129152130028_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129151130025_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129152130028_))
                                  (let ((_e129154130033_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129152130028_))))
                                    (let ((_tl129156130038_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129154130033_)))
                                          (_hd129155130036_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129154130033_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129155130036_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129155130036_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129156130038_))
                                                  (let ((_e129157130041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129156130038_))))
                                                    (let ((_tl129159130046_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129157130041_)))
                                                          (_hd129158130044_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129157130041_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129159130046_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129153130030_))
                      (let ((_e129160130049_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129153130030_))))
                        (let ((_tl129162130054_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129160130049_)))
                              (_hd129161130052_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129160130049_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129161130052_))
                              (let ((_e129163130057_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129161130052_))))
                                (let ((_tl129165130062_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129163130057_)))
                                      (_hd129164130060_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129163130057_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129164130060_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129164130060_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129165130062_))
                                              (let ((_e129166130065_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129165130062_))))
                                                (let ((_tl129168130070_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129166130065_)))
                                                      (_hd129167130068_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129166130065_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129168130070_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129162130054_))
                                                          (let ((_e129169130073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129162130054_))))
                    (let ((_tl129171130078_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129169130073_)))
                          (_hd129170130076_
                           (let ()
                             (declare (not safe))
                             (##car _e129169130073_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129170130076_))
                          (let ((_e129172130081_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129170130076_))))
                            (let ((_tl129174130086_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129172130081_)))
                                  (_hd129173130084_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129172130081_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129173130084_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129173130084_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129174130086_))
                                          (let ((_e129175130089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129174130086_))))
                                            (let ((_tl129177130094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129175130089_)))
                                                  (_hd129176130092_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129175130089_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129177130094_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129171130078_))
                                                      (let ((___splice133191133192_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129171130078_ '0))))
                (let ((_tl129180130099_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133191133192_ '1)))
                      (_target129178130097_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133191133192_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129180130099_))
                      (___match133292133293_
                       _e129148130017_
                       _hd129149130020_
                       _tl129150130022_
                       _e129151130025_
                       _hd129152130028_
                       _tl129153130030_
                       _e129154130033_
                       _hd129155130036_
                       _tl129156130038_
                       _e129157130041_
                       _hd129158130044_
                       _tl129159130046_
                       _e129160130049_
                       _hd129161130052_
                       _tl129162130054_
                       _e129163130057_
                       _hd129164130060_
                       _tl129165130062_
                       _e129166130065_
                       _hd129167130068_
                       _tl129168130070_
                       _e129169130073_
                       _hd129170130076_
                       _tl129171130078_
                       _e129172130081_
                       _hd129173130084_
                       _tl129174130086_
                       _e129175130089_
                       _hd129176130092_
                       _tl129177130094_
                       ___splice133191133192_
                       _target129178130097_
                       _tl129180130099_)
                      (___match133480133481_
                       _e129148130017_
                       _hd129149130020_
                       _tl129150130022_
                       _e129151130025_
                       _hd129152130028_
                       _tl129153130030_
                       _e129154130033_
                       _hd129155130036_
                       _tl129156130038_
                       _e129157130041_
                       _hd129158130044_
                       _tl129159130046_
                       _e129160130049_
                       _hd129161130052_
                       _tl129162130054_
                       _e129163130057_
                       _hd129164130060_
                       _tl129165130062_
                       _e129166130065_
                       _hd129167130068_
                       _tl129168130070_
                       _e129169130073_
                       _hd129170130076_
                       _tl129171130078_
                       _e129172130081_
                       _hd129173130084_
                       _tl129174130086_
                       _e129175130089_
                       _hd129176130092_
                       _tl129177130094_))))
              (___match133480133481_
               _e129148130017_
               _hd129149130020_
               _tl129150130022_
               _e129151130025_
               _hd129152130028_
               _tl129153130030_
               _e129154130033_
               _hd129155130036_
               _tl129156130038_
               _e129157130041_
               _hd129158130044_
               _tl129159130046_
               _e129160130049_
               _hd129161130052_
               _tl129162130054_
               _e129163130057_
               _hd129164130060_
               _tl129165130062_
               _e129166130065_
               _hd129167130068_
               _tl129168130070_
               _e129169130073_
               _hd129170130076_
               _tl129171130078_
               _e129172130081_
               _hd129173130084_
               _tl129174130086_
               _e129175130089_
               _hd129176130092_
               _tl129177130094_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match133684133685_
                                                   _e129148130017_
                                                   _hd129149130020_
                                                   _tl129150130022_
                                                   _e129151130025_
                                                   _hd129152130028_
                                                   _tl129153130030_
                                                   _e129154130033_
                                                   _hd129155130036_
                                                   _tl129156130038_
                                                   _e129157130041_
                                                   _hd129158130044_
                                                   _tl129159130046_
                                                   _e129160130049_
                                                   _hd129161130052_
                                                   _tl129162130054_
                                                   _e129163130057_
                                                   _hd129164130060_
                                                   _tl129165130062_
                                                   _e129166130065_
                                                   _hd129167130068_
                                                   _tl129168130070_
                                                   _e129169130073_
                                                   _hd129170130076_
                                                   _tl129171130078_))))
                                          (___match133684133685_
                                           _e129148130017_
                                           _hd129149130020_
                                           _tl129150130022_
                                           _e129151130025_
                                           _hd129152130028_
                                           _tl129153130030_
                                           _e129154130033_
                                           _hd129155130036_
                                           _tl129156130038_
                                           _e129157130041_
                                           _hd129158130044_
                                           _tl129159130046_
                                           _e129160130049_
                                           _hd129161130052_
                                           _tl129162130054_
                                           _e129163130057_
                                           _hd129164130060_
                                           _tl129165130062_
                                           _e129166130065_
                                           _hd129167130068_
                                           _tl129168130070_
                                           _e129169130073_
                                           _hd129170130076_
                                           _tl129171130078_))
                                      (___match133360133361_
                                       _e129148130017_
                                       _hd129149130020_
                                       _tl129150130022_
                                       _e129151130025_
                                       _hd129152130028_
                                       _tl129153130030_
                                       _e129154130033_
                                       _hd129155130036_
                                       _tl129156130038_
                                       _e129157130041_
                                       _hd129158130044_
                                       _tl129159130046_
                                       _e129160130049_
                                       _hd129161130052_
                                       _tl129162130054_
                                       _e129163130057_
                                       _hd129164130060_
                                       _tl129165130062_
                                       _e129166130065_
                                       _hd129167130068_
                                       _tl129168130070_
                                       _e129169130073_
                                       _hd129170130076_
                                       _tl129171130078_
                                       _e129172130081_
                                       _hd129173130084_
                                       _tl129174130086_))
                                  (___match133684133685_
                                   _e129148130017_
                                   _hd129149130020_
                                   _tl129150130022_
                                   _e129151130025_
                                   _hd129152130028_
                                   _tl129153130030_
                                   _e129154130033_
                                   _hd129155130036_
                                   _tl129156130038_
                                   _e129157130041_
                                   _hd129158130044_
                                   _tl129159130046_
                                   _e129160130049_
                                   _hd129161130052_
                                   _tl129162130054_
                                   _e129163130057_
                                   _hd129164130060_
                                   _tl129165130062_
                                   _e129166130065_
                                   _hd129167130068_
                                   _tl129168130070_
                                   _e129169130073_
                                   _hd129170130076_
                                   _tl129171130078_))))
                          (___match133684133685_
                           _e129148130017_
                           _hd129149130020_
                           _tl129150130022_
                           _e129151130025_
                           _hd129152130028_
                           _tl129153130030_
                           _e129154130033_
                           _hd129155130036_
                           _tl129156130038_
                           _e129157130041_
                           _hd129158130044_
                           _tl129159130046_
                           _e129160130049_
                           _hd129161130052_
                           _tl129162130054_
                           _e129163130057_
                           _hd129164130060_
                           _tl129165130062_
                           _e129166130065_
                           _hd129167130068_
                           _tl129168130070_
                           _e129169130073_
                           _hd129170130076_
                           _tl129171130078_))))
                  (___match133622133623_
                   _e129148130017_
                   _hd129149130020_
                   _tl129150130022_
                   _e129151130025_
                   _hd129152130028_
                   _tl129153130030_
                   _e129154130033_
                   _hd129155130036_
                   _tl129156130038_
                   _e129157130041_
                   _hd129158130044_
                   _tl129159130046_
                   _e129160130049_
                   _hd129161130052_
                   _tl129162130054_
                   _e129163130057_
                   _hd129164130060_
                   _tl129165130062_
                   _e129166130065_
                   _hd129167130068_
                   _tl129168130070_))
              (___kont133205133206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133205133206_))
                                          (___kont133205133206_))
                                      (___kont133205133206_))))
                              (___kont133205133206_))))
                      (___kont133205133206_))
                  (___kont133205133206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133205133206_))
                                              (___kont133205133206_))
                                          (___kont133205133206_))))
                                  (___kont133205133206_))))
                          (___kont133205133206_))))
                  (___kont133205133206_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self128072_ _stx128073_)
        (letrec ((_force-e128075_
                  (lambda (_target129131_)
                    (let ((__tmp134494
                           (let ((__tmp134498
                                  (let ((__tmp134499
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp134499)))
                                 (__tmp134495
                                  (let ((__tmp134496
                                         (let ((__tmp134497
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target129131_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp134497))))
                                    (declare (not safe))
                                    (cons __tmp134496 '()))))
                             (declare (not safe))
                             (cons __tmp134498 __tmp134495))))
                      (declare (not safe))
                      (cons '%#call __tmp134494)))))
          (let* ((___stx133689133690_ _stx128073_)
                 (_g128083128305_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133689133690_)))))
            (let ((___kont133691133692_
                   (lambda (_L129077_ _L129078_ _L129079_ _L129080_)
                     (let ((_$method129125_
                            (let ((__tmp134501
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128072_ 'methods)))
                                  (__tmp134500
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129078_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134501 __tmp134500)))
                           (_args129126_
                            (map (lambda (_g129113129115_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self128072_
                                      _g129113129115_)))
                                 (let ((__tmp134502
                                        (lambda (_g129117129120_
                                                 _g129118129122_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129117129120_
                                                  _g129118129122_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp134502 '() _L129077_)))))
                       (let ((__tmp134503
                              (let ((__tmp134504
                                     (let ((__tmp134509
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128075_
                                               _$method129125_)))
                                           (__tmp134505
                                            (let ((__tmp134506
                                                   (let ((__tmp134507
                                                          (let ((__tmp134508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self128072_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp134508 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp134507))))
                                              (declare (not safe))
                                              (cons __tmp134506
                                                    _args129126_))))
                                       (declare (not safe))
                                       (cons __tmp134509 __tmp134505))))
                                (declare (not safe))
                                (cons '%#call __tmp134504))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134503 _stx128073_)))))
                  (___kont133695133696_
                   (lambda (_L128909_ _L128910_ _L128911_ _L128912_ _L128913_)
                     (let ((_$method128965_
                            (let ((__tmp134511
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128072_ 'methods)))
                                  (__tmp134510
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128910_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134511 __tmp134510)))
                           (_args128966_
                            (map (lambda (_g128953128955_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self128072_
                                      _g128953128955_)))
                                 (let ((__tmp134512
                                        (lambda (_g128957128960_
                                                 _g128958128962_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g128957128960_
                                                  _g128958128962_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp134512 '() _L128909_)))))
                       (let ((__tmp134513
                              (let ((__tmp134514
                                     (let ((__tmp134521
                                            (let ((__tmp134522
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp134522)))
                                           (__tmp134515
                                            (let ((__tmp134520
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128075_
                                                      _$method128965_)))
                                                  (__tmp134516
                                                   (let ((__tmp134517
                                                          (let ((__tmp134518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp134519
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self128072_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp134519 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp134518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134517
                                                           _args128966_))))
                                              (declare (not safe))
                                              (cons __tmp134520 __tmp134516))))
                                       (declare (not safe))
                                       (cons __tmp134521 __tmp134515))))
                                (declare (not safe))
                                (cons '%#call __tmp134514))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134513 _stx128073_)))))
                  (___kont133699133700_
                   (lambda (_L128740_ _L128741_ _L128742_)
                     (let* ((_$field128774_
                             (let ((__tmp134524
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self128072_ 'slots)))
                                   (__tmp134523
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L128740_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp134524 __tmp134523)))
                            (__tmp134525
                             (let ((__tmp134526
                                    (let ((__tmp134534
                                           (let ((__tmp134535
                                                  (let ((__tmp134536
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self128072_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp134536 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134535)))
                                          (__tmp134527
                                           (let ((__tmp134532
                                                  (let ((__tmp134533
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field128774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134533)))
                                                 (__tmp134528
                                                  (let ((__tmp134529
                                                         (let ((__tmp134530
                                                                (let ((__tmp134531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self128072_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp134531 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp134530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134529 '()))))
                                             (declare (not safe))
                                             (cons __tmp134532 __tmp134528))))
                                      (declare (not safe))
                                      (cons __tmp134534 __tmp134527))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp134526))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp134525 _stx128073_))))
                  (___kont133701133702_
                   (lambda (_L128614_ _L128615_ _L128616_ _L128617_)
                     (let ((_$field128652_
                            (let ((__tmp134538
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128072_ 'slots)))
                                  (__tmp134537
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128615_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134538 __tmp134537)))
                           (_expr128653_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self128072_ _L128614_))))
                       (let ((__tmp134539
                              (let ((__tmp134540
                                     (let ((__tmp134549
                                            (let ((__tmp134550
                                                   (let ((__tmp134551
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self128072_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp134551 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp134550)))
                                           (__tmp134541
                                            (let ((__tmp134547
                                                   (let ((__tmp134548
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp134548)))
                                                  (__tmp134542
                                                   (let ((__tmp134544
                                                          (let ((__tmp134545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp134546
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self128072_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp134546 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp134545)))
                 (__tmp134543
                  (let () (declare (not safe)) (cons _expr128653_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134544
                                                           __tmp134543))))
                                              (declare (not safe))
                                              (cons __tmp134547 __tmp134542))))
                                       (declare (not safe))
                                       (cons __tmp134549 __tmp134541))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp134540))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134539 _stx128073_)))))
                  (___kont133703133704_
                   (lambda (_L128486_ _L128487_)
                     (let* ((_accessor128509_
                             (let ((__tmp134552
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128487_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134552)))
                            (_klass128511_
                             (let ((__tmp134553
                                    (##structure-ref
                                     _accessor128509_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128073_
                                __tmp134553)))
                            (_slot128513_
                             (##structure-ref
                              _accessor128509_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp134554
                                       (##structure-ref
                                        _accessor128509_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp134554))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass128511_
                                       _slot128513_))
                                    (##structure-ref
                                     _klass128511_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx128073_
                           (let* ((_$field128519_
                                   (let ((__tmp134555
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128072_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp134555 _slot128513_)))
                                  (__tmp134556
                                   (let ((__tmp134557
                                          (let ((__tmp134565
                                                 (let ((__tmp134566
                                                        (let ((__tmp134567
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self128072_ 'klass))))
                  (declare (not safe))
                  (cons __tmp134567 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp134566)))
                                                (__tmp134558
                                                 (let ((__tmp134563
                                                        (let ((__tmp134564
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field128519_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp134564)))
               (__tmp134559
                (let ((__tmp134560
                       (let ((__tmp134561
                              (let ((__tmp134562
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self128072_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp134562 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp134561))))
                  (declare (not safe))
                  (cons __tmp134560 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp134563
                                                         __tmp134559))))
                                            (declare (not safe))
                                            (cons __tmp134565 __tmp134558))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp134557))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134556
                              _stx128073_))))))
                  (___kont133705133706_
                   (lambda (_L128381_ _L128382_ _L128383_)
                     (let* ((_mutator128411_
                             (let ((__tmp134568
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128383_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134568)))
                            (_klass128413_
                             (let ((__tmp134569
                                    (##structure-ref
                                     _mutator128411_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128073_
                                __tmp134569)))
                            (_slot128415_
                             (##structure-ref
                              _mutator128411_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr128417_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self128072_ _L128381_))))
                       (if (and (let ((__tmp134570
                                       (##structure-ref
                                        _mutator128411_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp134570))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass128413_
                                       _slot128415_))
                                    (##structure-ref
                                     _klass128413_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp134571
                                  (let ((__tmp134572
                                         (let ((__tmp134578
                                                (let ((__tmp134580
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp134579
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L128383_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp134580
                                                        __tmp134579)))
                                               (__tmp134573
                                                (let ((__tmp134575
                                                       (let ((__tmp134577
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp134576
                      (let () (declare (not safe)) (cons _L128382_ '()))))
                 (declare (not safe))
                 (cons __tmp134577 __tmp134576)))
              (__tmp134574
               (let () (declare (not safe)) (cons _expr128417_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134575
                                                        __tmp134574))))
                                           (declare (not safe))
                                           (cons __tmp134578 __tmp134573))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134572))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp134571 _stx128073_))
                           (let* ((_$field128423_
                                   (let ((__tmp134581
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128072_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp134581 _slot128415_)))
                                  (__tmp134582
                                   (let ((__tmp134583
                                          (let ((__tmp134592
                                                 (let ((__tmp134593
                                                        (let ((__tmp134594
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self128072_ 'klass))))
                  (declare (not safe))
                  (cons __tmp134594 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp134593)))
                                                (__tmp134584
                                                 (let ((__tmp134590
                                                        (let ((__tmp134591
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field128423_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp134591)))
               (__tmp134585
                (let ((__tmp134587
                       (let ((__tmp134588
                              (let ((__tmp134589
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self128072_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp134589 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp134588)))
                      (__tmp134586
                       (let () (declare (not safe)) (cons _expr128417_ '()))))
                  (declare (not safe))
                  (cons __tmp134587 __tmp134586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp134590
                                                         __tmp134585))))
                                            (declare (not safe))
                                            (cons __tmp134592 __tmp134584))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp134583))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134582
                              _stx128073_))))))
                  (___kont133707133708_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self128072_ _stx128073_)))))
              (let* ((___match134188134189_
                      (lambda (_e128277128317_
                               _hd128278128320_
                               _tl128279128322_
                               _e128280128325_
                               _hd128281128328_
                               _tl128282128330_
                               _e128283128333_
                               _hd128284128336_
                               _tl128285128338_
                               _e128286128341_
                               _hd128287128344_
                               _tl128288128346_
                               _e128289128349_
                               _hd128290128352_
                               _tl128291128354_
                               _e128292128357_
                               _hd128293128360_
                               _tl128294128362_
                               _e128295128365_
                               _hd128296128368_
                               _tl128297128370_
                               _e128298128373_
                               _hd128299128376_
                               _tl128300128378_)
                        (let ((_L128381_ _hd128299128376_)
                              (_L128382_ _hd128296128368_)
                              (_L128383_ _hd128287128344_))
                          (if (and (let ((__tmp134595
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128072_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128382_
                                      __tmp134595))
                                   (let ((__tmp134596
                                          (let ((__tmp134597
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128383_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp134597))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp134596
                                      'gxc#!mutator::t)))
                              (___kont133705133706_
                               _L128381_
                               _L128382_
                               _L128383_)
                              (___kont133707133708_)))))
                     (___match134186134187_
                      (lambda (_e128277128317_
                               _hd128278128320_
                               _tl128279128322_
                               _e128280128325_
                               _hd128281128328_
                               _tl128282128330_
                               _e128283128333_
                               _hd128284128336_
                               _tl128285128338_
                               _e128286128341_
                               _hd128287128344_
                               _tl128288128346_
                               _e128289128349_
                               _hd128290128352_
                               _tl128291128354_
                               _e128292128357_
                               _hd128293128360_
                               _tl128294128362_
                               _e128295128365_
                               _hd128296128368_
                               _tl128297128370_
                               _e128298128373_
                               _hd128299128376_
                               _tl128300128378_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128300128378_))
                            (___match134188134189_
                             _e128277128317_
                             _hd128278128320_
                             _tl128279128322_
                             _e128280128325_
                             _hd128281128328_
                             _tl128282128330_
                             _e128283128333_
                             _hd128284128336_
                             _tl128285128338_
                             _e128286128341_
                             _hd128287128344_
                             _tl128288128346_
                             _e128289128349_
                             _hd128290128352_
                             _tl128291128354_
                             _e128292128357_
                             _hd128293128360_
                             _tl128294128362_
                             _e128295128365_
                             _hd128296128368_
                             _tl128297128370_
                             _e128298128373_
                             _hd128299128376_
                             _tl128300128378_)
                            (___kont133707133708_))))
                     (___match134180134181_
                      (lambda (_e128277128317_
                               _hd128278128320_
                               _tl128279128322_
                               _e128280128325_
                               _hd128281128328_
                               _tl128282128330_
                               _e128283128333_
                               _hd128284128336_
                               _tl128285128338_
                               _e128286128341_
                               _hd128287128344_
                               _tl128288128346_
                               _e128289128349_
                               _hd128290128352_
                               _tl128291128354_
                               _e128292128357_
                               _hd128293128360_
                               _tl128294128362_
                               _e128295128365_
                               _hd128296128368_
                               _tl128297128370_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128291128354_))
                            (let ((_e128298128373_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128291128354_))))
                              (let ((_tl128300128378_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128298128373_)))
                                    (_hd128299128376_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128298128373_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128300128378_))
                                    (___match134188134189_
                                     _e128277128317_
                                     _hd128278128320_
                                     _tl128279128322_
                                     _e128280128325_
                                     _hd128281128328_
                                     _tl128282128330_
                                     _e128283128333_
                                     _hd128284128336_
                                     _tl128285128338_
                                     _e128286128341_
                                     _hd128287128344_
                                     _tl128288128346_
                                     _e128289128349_
                                     _hd128290128352_
                                     _tl128291128354_
                                     _e128292128357_
                                     _hd128293128360_
                                     _tl128294128362_
                                     _e128295128365_
                                     _hd128296128368_
                                     _tl128297128370_
                                     _e128298128373_
                                     _hd128299128376_
                                     _tl128300128378_)
                                    (___kont133707133708_))))
                            (___kont133707133708_))))
                     (___match134126134127_
                      (lambda (_e128253128430_
                               _hd128254128433_
                               _tl128255128435_
                               _e128256128438_
                               _hd128257128441_
                               _tl128258128443_
                               _e128259128446_
                               _hd128260128449_
                               _tl128261128451_
                               _e128262128454_
                               _hd128263128457_
                               _tl128264128459_
                               _e128265128462_
                               _hd128266128465_
                               _tl128267128467_
                               _e128268128470_
                               _hd128269128473_
                               _tl128270128475_
                               _e128271128478_
                               _hd128272128481_
                               _tl128273128483_)
                        (let ((_L128486_ _hd128272128481_)
                              (_L128487_ _hd128263128457_))
                          (if (and (let ((__tmp134598
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128072_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128486_
                                      __tmp134598))
                                   (let ((__tmp134599
                                          (let ((__tmp134600
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128487_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp134600))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp134599
                                      'gxc#!accessor::t)))
                              (___kont133703133704_ _L128486_ _L128487_)
                              (___kont133707133708_)))))
                     (___match134124134125_
                      (lambda (_e128253128430_
                               _hd128254128433_
                               _tl128255128435_
                               _e128256128438_
                               _hd128257128441_
                               _tl128258128443_
                               _e128259128446_
                               _hd128260128449_
                               _tl128261128451_
                               _e128262128454_
                               _hd128263128457_
                               _tl128264128459_
                               _e128265128462_
                               _hd128266128465_
                               _tl128267128467_
                               _e128268128470_
                               _hd128269128473_
                               _tl128270128475_
                               _e128271128478_
                               _hd128272128481_
                               _tl128273128483_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128267128467_))
                            (___match134126134127_
                             _e128253128430_
                             _hd128254128433_
                             _tl128255128435_
                             _e128256128438_
                             _hd128257128441_
                             _tl128258128443_
                             _e128259128446_
                             _hd128260128449_
                             _tl128261128451_
                             _e128262128454_
                             _hd128263128457_
                             _tl128264128459_
                             _e128265128462_
                             _hd128266128465_
                             _tl128267128467_
                             _e128268128470_
                             _hd128269128473_
                             _tl128270128475_
                             _e128271128478_
                             _hd128272128481_
                             _tl128273128483_)
                            (___match134180134181_
                             _e128253128430_
                             _hd128254128433_
                             _tl128255128435_
                             _e128256128438_
                             _hd128257128441_
                             _tl128258128443_
                             _e128259128446_
                             _hd128260128449_
                             _tl128261128451_
                             _e128262128454_
                             _hd128263128457_
                             _tl128264128459_
                             _e128265128462_
                             _hd128266128465_
                             _tl128267128467_
                             _e128268128470_
                             _hd128269128473_
                             _tl128270128475_
                             _e128271128478_
                             _hd128272128481_
                             _tl128273128483_))))
                     (___match134070134071_
                      (lambda (_e128218128526_
                               _hd128219128529_
                               _tl128220128531_
                               _e128221128534_
                               _hd128222128537_
                               _tl128223128539_
                               _e128224128542_
                               _hd128225128545_
                               _tl128226128547_
                               _e128227128550_
                               _hd128228128553_
                               _tl128229128555_
                               _e128230128558_
                               _hd128231128561_
                               _tl128232128563_
                               _e128233128566_
                               _hd128234128569_
                               _tl128235128571_
                               _e128236128574_
                               _hd128237128577_
                               _tl128238128579_
                               _e128239128582_
                               _hd128240128585_
                               _tl128241128587_
                               _e128242128590_
                               _hd128243128593_
                               _tl128244128595_
                               _e128245128598_
                               _hd128246128601_
                               _tl128247128603_
                               _e128248128606_
                               _hd128249128609_
                               _tl128250128611_)
                        (let ((_L128614_ _hd128249128609_)
                              (_L128615_ _hd128246128601_)
                              (_L128616_ _hd128237128577_)
                              (_L128617_ _hd128228128553_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128617_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128617_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp134601
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128072_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128616_
                                      __tmp134601)))
                              (___kont133701133702_
                               _L128614_
                               _L128615_
                               _L128616_
                               _L128617_)
                              (___kont133707133708_)))))
                     (___match134062134063_
                      (lambda (_e128218128526_
                               _hd128219128529_
                               _tl128220128531_
                               _e128221128534_
                               _hd128222128537_
                               _tl128223128539_
                               _e128224128542_
                               _hd128225128545_
                               _tl128226128547_
                               _e128227128550_
                               _hd128228128553_
                               _tl128229128555_
                               _e128230128558_
                               _hd128231128561_
                               _tl128232128563_
                               _e128233128566_
                               _hd128234128569_
                               _tl128235128571_
                               _e128236128574_
                               _hd128237128577_
                               _tl128238128579_
                               _e128239128582_
                               _hd128240128585_
                               _tl128241128587_
                               _e128242128590_
                               _hd128243128593_
                               _tl128244128595_
                               _e128245128598_
                               _hd128246128601_
                               _tl128247128603_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128241128587_))
                            (let ((_e128248128606_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128241128587_))))
                              (let ((_tl128250128611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128248128606_)))
                                    (_hd128249128609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128248128606_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128250128611_))
                                    (___match134070134071_
                                     _e128218128526_
                                     _hd128219128529_
                                     _tl128220128531_
                                     _e128221128534_
                                     _hd128222128537_
                                     _tl128223128539_
                                     _e128224128542_
                                     _hd128225128545_
                                     _tl128226128547_
                                     _e128227128550_
                                     _hd128228128553_
                                     _tl128229128555_
                                     _e128230128558_
                                     _hd128231128561_
                                     _tl128232128563_
                                     _e128233128566_
                                     _hd128234128569_
                                     _tl128235128571_
                                     _e128236128574_
                                     _hd128237128577_
                                     _tl128238128579_
                                     _e128239128582_
                                     _hd128240128585_
                                     _tl128241128587_
                                     _e128242128590_
                                     _hd128243128593_
                                     _tl128244128595_
                                     _e128245128598_
                                     _hd128246128601_
                                     _tl128247128603_
                                     _e128248128606_
                                     _hd128249128609_
                                     _tl128250128611_)
                                    (___kont133707133708_))))
                            (___match134186134187_
                             _e128218128526_
                             _hd128219128529_
                             _tl128220128531_
                             _e128221128534_
                             _hd128222128537_
                             _tl128223128539_
                             _e128224128542_
                             _hd128225128545_
                             _tl128226128547_
                             _e128227128550_
                             _hd128228128553_
                             _tl128229128555_
                             _e128230128558_
                             _hd128231128561_
                             _tl128232128563_
                             _e128233128566_
                             _hd128234128569_
                             _tl128235128571_
                             _e128236128574_
                             _hd128237128577_
                             _tl128238128579_
                             _e128239128582_
                             _hd128240128585_
                             _tl128241128587_))))
                     (___match133984133985_
                      (lambda (_e128184128660_
                               _hd128185128663_
                               _tl128186128665_
                               _e128187128668_
                               _hd128188128671_
                               _tl128189128673_
                               _e128190128676_
                               _hd128191128679_
                               _tl128192128681_
                               _e128193128684_
                               _hd128194128687_
                               _tl128195128689_
                               _e128196128692_
                               _hd128197128695_
                               _tl128198128697_
                               _e128199128700_
                               _hd128200128703_
                               _tl128201128705_
                               _e128202128708_
                               _hd128203128711_
                               _tl128204128713_
                               _e128205128716_
                               _hd128206128719_
                               _tl128207128721_
                               _e128208128724_
                               _hd128209128727_
                               _tl128210128729_
                               _e128211128732_
                               _hd128212128735_
                               _tl128213128737_)
                        (let ((_L128740_ _hd128212128735_)
                              (_L128741_ _hd128203128711_)
                              (_L128742_ _hd128194128687_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128742_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128742_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp134602
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128072_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128741_
                                      __tmp134602)))
                              (___kont133699133700_
                               _L128740_
                               _L128741_
                               _L128742_)
                              (___match134188134189_
                               _e128184128660_
                               _hd128185128663_
                               _tl128186128665_
                               _e128187128668_
                               _hd128188128671_
                               _tl128189128673_
                               _e128190128676_
                               _hd128191128679_
                               _tl128192128681_
                               _e128193128684_
                               _hd128194128687_
                               _tl128195128689_
                               _e128196128692_
                               _hd128197128695_
                               _tl128198128697_
                               _e128199128700_
                               _hd128200128703_
                               _tl128201128705_
                               _e128202128708_
                               _hd128203128711_
                               _tl128204128713_
                               _e128205128716_
                               _hd128206128719_
                               _tl128207128721_)))))
                     (___match133982133983_
                      (lambda (_e128184128660_
                               _hd128185128663_
                               _tl128186128665_
                               _e128187128668_
                               _hd128188128671_
                               _tl128189128673_
                               _e128190128676_
                               _hd128191128679_
                               _tl128192128681_
                               _e128193128684_
                               _hd128194128687_
                               _tl128195128689_
                               _e128196128692_
                               _hd128197128695_
                               _tl128198128697_
                               _e128199128700_
                               _hd128200128703_
                               _tl128201128705_
                               _e128202128708_
                               _hd128203128711_
                               _tl128204128713_
                               _e128205128716_
                               _hd128206128719_
                               _tl128207128721_
                               _e128208128724_
                               _hd128209128727_
                               _tl128210128729_
                               _e128211128732_
                               _hd128212128735_
                               _tl128213128737_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128207128721_))
                            (___match133984133985_
                             _e128184128660_
                             _hd128185128663_
                             _tl128186128665_
                             _e128187128668_
                             _hd128188128671_
                             _tl128189128673_
                             _e128190128676_
                             _hd128191128679_
                             _tl128192128681_
                             _e128193128684_
                             _hd128194128687_
                             _tl128195128689_
                             _e128196128692_
                             _hd128197128695_
                             _tl128198128697_
                             _e128199128700_
                             _hd128200128703_
                             _tl128201128705_
                             _e128202128708_
                             _hd128203128711_
                             _tl128204128713_
                             _e128205128716_
                             _hd128206128719_
                             _tl128207128721_
                             _e128208128724_
                             _hd128209128727_
                             _tl128210128729_
                             _e128211128732_
                             _hd128212128735_
                             _tl128213128737_)
                            (___match134062134063_
                             _e128184128660_
                             _hd128185128663_
                             _tl128186128665_
                             _e128187128668_
                             _hd128188128671_
                             _tl128189128673_
                             _e128190128676_
                             _hd128191128679_
                             _tl128192128681_
                             _e128193128684_
                             _hd128194128687_
                             _tl128195128689_
                             _e128196128692_
                             _hd128197128695_
                             _tl128198128697_
                             _e128199128700_
                             _hd128200128703_
                             _tl128201128705_
                             _e128202128708_
                             _hd128203128711_
                             _tl128204128713_
                             _e128205128716_
                             _hd128206128719_
                             _tl128207128721_
                             _e128208128724_
                             _hd128209128727_
                             _tl128210128729_
                             _e128211128732_
                             _hd128212128735_
                             _tl128213128737_))))
                     (___match133972133973_
                      (lambda (_e128184128660_
                               _hd128185128663_
                               _tl128186128665_
                               _e128187128668_
                               _hd128188128671_
                               _tl128189128673_
                               _e128190128676_
                               _hd128191128679_
                               _tl128192128681_
                               _e128193128684_
                               _hd128194128687_
                               _tl128195128689_
                               _e128196128692_
                               _hd128197128695_
                               _tl128198128697_
                               _e128199128700_
                               _hd128200128703_
                               _tl128201128705_
                               _e128202128708_
                               _hd128203128711_
                               _tl128204128713_
                               _e128205128716_
                               _hd128206128719_
                               _tl128207128721_
                               _e128208128724_
                               _hd128209128727_
                               _tl128210128729_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128209128727_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128210128729_))
                                (let ((_e128211128732_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128210128729_))))
                                  (let ((_tl128213128737_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128211128732_)))
                                        (_hd128212128735_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128211128732_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128213128737_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128207128721_))
                                            (___match133984133985_
                                             _e128184128660_
                                             _hd128185128663_
                                             _tl128186128665_
                                             _e128187128668_
                                             _hd128188128671_
                                             _tl128189128673_
                                             _e128190128676_
                                             _hd128191128679_
                                             _tl128192128681_
                                             _e128193128684_
                                             _hd128194128687_
                                             _tl128195128689_
                                             _e128196128692_
                                             _hd128197128695_
                                             _tl128198128697_
                                             _e128199128700_
                                             _hd128200128703_
                                             _tl128201128705_
                                             _e128202128708_
                                             _hd128203128711_
                                             _tl128204128713_
                                             _e128205128716_
                                             _hd128206128719_
                                             _tl128207128721_
                                             _e128208128724_
                                             _hd128209128727_
                                             _tl128210128729_
                                             _e128211128732_
                                             _hd128212128735_
                                             _tl128213128737_)
                                            (___match134062134063_
                                             _e128184128660_
                                             _hd128185128663_
                                             _tl128186128665_
                                             _e128187128668_
                                             _hd128188128671_
                                             _tl128189128673_
                                             _e128190128676_
                                             _hd128191128679_
                                             _tl128192128681_
                                             _e128193128684_
                                             _hd128194128687_
                                             _tl128195128689_
                                             _e128196128692_
                                             _hd128197128695_
                                             _tl128198128697_
                                             _e128199128700_
                                             _hd128200128703_
                                             _tl128201128705_
                                             _e128202128708_
                                             _hd128203128711_
                                             _tl128204128713_
                                             _e128205128716_
                                             _hd128206128719_
                                             _tl128207128721_
                                             _e128208128724_
                                             _hd128209128727_
                                             _tl128210128729_
                                             _e128211128732_
                                             _hd128212128735_
                                             _tl128213128737_))
                                        (___match134186134187_
                                         _e128184128660_
                                         _hd128185128663_
                                         _tl128186128665_
                                         _e128187128668_
                                         _hd128188128671_
                                         _tl128189128673_
                                         _e128190128676_
                                         _hd128191128679_
                                         _tl128192128681_
                                         _e128193128684_
                                         _hd128194128687_
                                         _tl128195128689_
                                         _e128196128692_
                                         _hd128197128695_
                                         _tl128198128697_
                                         _e128199128700_
                                         _hd128200128703_
                                         _tl128201128705_
                                         _e128202128708_
                                         _hd128203128711_
                                         _tl128204128713_
                                         _e128205128716_
                                         _hd128206128719_
                                         _tl128207128721_))))
                                (___match134186134187_
                                 _e128184128660_
                                 _hd128185128663_
                                 _tl128186128665_
                                 _e128187128668_
                                 _hd128188128671_
                                 _tl128189128673_
                                 _e128190128676_
                                 _hd128191128679_
                                 _tl128192128681_
                                 _e128193128684_
                                 _hd128194128687_
                                 _tl128195128689_
                                 _e128196128692_
                                 _hd128197128695_
                                 _tl128198128697_
                                 _e128199128700_
                                 _hd128200128703_
                                 _tl128201128705_
                                 _e128202128708_
                                 _hd128203128711_
                                 _tl128204128713_
                                 _e128205128716_
                                 _hd128206128719_
                                 _tl128207128721_))
                            (___match134186134187_
                             _e128184128660_
                             _hd128185128663_
                             _tl128186128665_
                             _e128187128668_
                             _hd128188128671_
                             _tl128189128673_
                             _e128190128676_
                             _hd128191128679_
                             _tl128192128681_
                             _e128193128684_
                             _hd128194128687_
                             _tl128195128689_
                             _e128196128692_
                             _hd128197128695_
                             _tl128198128697_
                             _e128199128700_
                             _hd128200128703_
                             _tl128201128705_
                             _e128202128708_
                             _hd128203128711_
                             _tl128204128713_
                             _e128205128716_
                             _hd128206128719_
                             _tl128207128721_))))
                     (___match133904133905_
                      (lambda (_e128133128781_
                               _hd128134128784_
                               _tl128135128786_
                               _e128136128789_
                               _hd128137128792_
                               _tl128138128794_
                               _e128139128797_
                               _hd128140128800_
                               _tl128141128802_
                               _e128142128805_
                               _hd128143128808_
                               _tl128144128810_
                               _e128145128813_
                               _hd128146128816_
                               _tl128147128818_
                               _e128148128821_
                               _hd128149128824_
                               _tl128150128826_
                               _e128151128829_
                               _hd128152128832_
                               _tl128153128834_
                               _e128154128837_
                               _hd128155128840_
                               _tl128156128842_
                               _e128157128845_
                               _hd128158128848_
                               _tl128159128850_
                               _e128160128853_
                               _hd128161128856_
                               _tl128162128858_
                               _e128163128861_
                               _hd128164128864_
                               _tl128165128866_
                               _e128166128869_
                               _hd128167128872_
                               _tl128168128874_
                               _e128169128877_
                               _hd128170128880_
                               _tl128171128882_
                               ___splice133697133698_
                               _target128172128885_
                               _tl128174128887_)
                        (letrec ((_loop128175128890_
                                  (lambda (_hd128173128893_ _args128179128895_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128173128893_))
                                        (let ((_e128176128898_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128173128893_))))
                                          (let ((_lp-tl128178128903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128176128898_)))
                                                (_lp-hd128177128901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128176128898_))))
                                            (let ((__tmp134603
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128177128901_
                                                           _args128179128895_))))
                                              (declare (not safe))
                                              (_loop128175128890_
                                               _lp-tl128178128903_
                                               __tmp134603))))
                                        (let ((_args128180128906_
                                               (reverse _args128179128895_)))
                                          (let ((_L128909_ _args128180128906_)
                                                (_L128910_ _hd128170128880_)
                                                (_L128911_ _hd128161128856_)
                                                (_L128912_ _hd128152128832_)
                                                (_L128913_ _hd128143128808_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128913_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128912_
                                                        'call-method))
                                                     (let ((__tmp134604
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self128072_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L128911_
                                                        __tmp134604)))
                                                (___kont133695133696_
                                                 _L128909_
                                                 _L128910_
                                                 _L128911_
                                                 _L128912_
                                                 _L128913_)
                                                (___kont133707133708_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128175128890_ _target128172128885_ '())))))
                     (___match133862133863_
                      (lambda (_e128133128781_
                               _hd128134128784_
                               _tl128135128786_
                               _e128136128789_
                               _hd128137128792_
                               _tl128138128794_
                               _e128139128797_
                               _hd128140128800_
                               _tl128141128802_
                               _e128142128805_
                               _hd128143128808_
                               _tl128144128810_
                               _e128145128813_
                               _hd128146128816_
                               _tl128147128818_
                               _e128148128821_
                               _hd128149128824_
                               _tl128150128826_
                               _e128151128829_
                               _hd128152128832_
                               _tl128153128834_
                               _e128154128837_
                               _hd128155128840_
                               _tl128156128842_
                               _e128157128845_
                               _hd128158128848_
                               _tl128159128850_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128158128848_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128159128850_))
                                (let ((_e128160128853_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128159128850_))))
                                  (let ((_tl128162128858_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128160128853_)))
                                        (_hd128161128856_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128160128853_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128162128858_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128156128842_))
                                            (let ((_e128163128861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128156128842_))))
                                              (let ((_tl128165128866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128163128861_)))
                                                    (_hd128164128864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128163128861_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128164128864_))
                                                    (let ((_e128166128869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128164128864_))))
                                                      (let ((_tl128168128874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128166128869_)))
                    (_hd128167128872_
                     (let () (declare (not safe)) (##car _e128166128869_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128167128872_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128167128872_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128168128874_))
                            (let ((_e128169128877_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128168128874_))))
                              (let ((_tl128171128882_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128169128877_)))
                                    (_hd128170128880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128169128877_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128171128882_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128165128866_))
                                        (let ((___splice133697133698_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128165128866_
                                                  '0))))
                                          (let ((_tl128174128887_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice133697133698_
                                                    '1)))
                                                (_target128172128885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice133697133698_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128174128887_))
                                                (___match133904133905_
                                                 _e128133128781_
                                                 _hd128134128784_
                                                 _tl128135128786_
                                                 _e128136128789_
                                                 _hd128137128792_
                                                 _tl128138128794_
                                                 _e128139128797_
                                                 _hd128140128800_
                                                 _tl128141128802_
                                                 _e128142128805_
                                                 _hd128143128808_
                                                 _tl128144128810_
                                                 _e128145128813_
                                                 _hd128146128816_
                                                 _tl128147128818_
                                                 _e128148128821_
                                                 _hd128149128824_
                                                 _tl128150128826_
                                                 _e128151128829_
                                                 _hd128152128832_
                                                 _tl128153128834_
                                                 _e128154128837_
                                                 _hd128155128840_
                                                 _tl128156128842_
                                                 _e128157128845_
                                                 _hd128158128848_
                                                 _tl128159128850_
                                                 _e128160128853_
                                                 _hd128161128856_
                                                 _tl128162128858_
                                                 _e128163128861_
                                                 _hd128164128864_
                                                 _tl128165128866_
                                                 _e128166128869_
                                                 _hd128167128872_
                                                 _tl128168128874_
                                                 _e128169128877_
                                                 _hd128170128880_
                                                 _tl128171128882_
                                                 ___splice133697133698_
                                                 _target128172128885_
                                                 _tl128174128887_)
                                                (___kont133707133708_))))
                                        (___kont133707133708_))
                                    (___kont133707133708_))))
                            (___kont133707133708_))
                        (___kont133707133708_))
                    (___kont133707133708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133707133708_))))
                                            (___match134186134187_
                                             _e128133128781_
                                             _hd128134128784_
                                             _tl128135128786_
                                             _e128136128789_
                                             _hd128137128792_
                                             _tl128138128794_
                                             _e128139128797_
                                             _hd128140128800_
                                             _tl128141128802_
                                             _e128142128805_
                                             _hd128143128808_
                                             _tl128144128810_
                                             _e128145128813_
                                             _hd128146128816_
                                             _tl128147128818_
                                             _e128148128821_
                                             _hd128149128824_
                                             _tl128150128826_
                                             _e128151128829_
                                             _hd128152128832_
                                             _tl128153128834_
                                             _e128154128837_
                                             _hd128155128840_
                                             _tl128156128842_))
                                        (___match134186134187_
                                         _e128133128781_
                                         _hd128134128784_
                                         _tl128135128786_
                                         _e128136128789_
                                         _hd128137128792_
                                         _tl128138128794_
                                         _e128139128797_
                                         _hd128140128800_
                                         _tl128141128802_
                                         _e128142128805_
                                         _hd128143128808_
                                         _tl128144128810_
                                         _e128145128813_
                                         _hd128146128816_
                                         _tl128147128818_
                                         _e128148128821_
                                         _hd128149128824_
                                         _tl128150128826_
                                         _e128151128829_
                                         _hd128152128832_
                                         _tl128153128834_
                                         _e128154128837_
                                         _hd128155128840_
                                         _tl128156128842_))))
                                (___match134186134187_
                                 _e128133128781_
                                 _hd128134128784_
                                 _tl128135128786_
                                 _e128136128789_
                                 _hd128137128792_
                                 _tl128138128794_
                                 _e128139128797_
                                 _hd128140128800_
                                 _tl128141128802_
                                 _e128142128805_
                                 _hd128143128808_
                                 _tl128144128810_
                                 _e128145128813_
                                 _hd128146128816_
                                 _tl128147128818_
                                 _e128148128821_
                                 _hd128149128824_
                                 _tl128150128826_
                                 _e128151128829_
                                 _hd128152128832_
                                 _tl128153128834_
                                 _e128154128837_
                                 _hd128155128840_
                                 _tl128156128842_))
                            (___match133972133973_
                             _e128133128781_
                             _hd128134128784_
                             _tl128135128786_
                             _e128136128789_
                             _hd128137128792_
                             _tl128138128794_
                             _e128139128797_
                             _hd128140128800_
                             _tl128141128802_
                             _e128142128805_
                             _hd128143128808_
                             _tl128144128810_
                             _e128145128813_
                             _hd128146128816_
                             _tl128147128818_
                             _e128148128821_
                             _hd128149128824_
                             _tl128150128826_
                             _e128151128829_
                             _hd128152128832_
                             _tl128153128834_
                             _e128154128837_
                             _hd128155128840_
                             _tl128156128842_
                             _e128157128845_
                             _hd128158128848_
                             _tl128159128850_))))
                     (___match133794133795_
                      (lambda (_e128089128973_
                               _hd128090128976_
                               _tl128091128978_
                               _e128092128981_
                               _hd128093128984_
                               _tl128094128986_
                               _e128095128989_
                               _hd128096128992_
                               _tl128097128994_
                               _e128098128997_
                               _hd128099129000_
                               _tl128100129002_
                               _e128101129005_
                               _hd128102129008_
                               _tl128103129010_
                               _e128104129013_
                               _hd128105129016_
                               _tl128106129018_
                               _e128107129021_
                               _hd128108129024_
                               _tl128109129026_
                               _e128110129029_
                               _hd128111129032_
                               _tl128112129034_
                               _e128113129037_
                               _hd128114129040_
                               _tl128115129042_
                               _e128116129045_
                               _hd128117129048_
                               _tl128118129050_
                               ___splice133693133694_
                               _target128119129053_
                               _tl128121129055_)
                        (letrec ((_loop128122129058_
                                  (lambda (_hd128120129061_ _args128126129063_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128120129061_))
                                        (let ((_e128123129066_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128120129061_))))
                                          (let ((_lp-tl128125129071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128123129066_)))
                                                (_lp-hd128124129069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128123129066_))))
                                            (let ((__tmp134605
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128124129069_
                                                           _args128126129063_))))
                                              (declare (not safe))
                                              (_loop128122129058_
                                               _lp-tl128125129071_
                                               __tmp134605))))
                                        (let ((_args128127129074_
                                               (reverse _args128126129063_)))
                                          (let ((_L129077_ _args128127129074_)
                                                (_L129078_ _hd128117129048_)
                                                (_L129079_ _hd128108129024_)
                                                (_L129080_ _hd128099129000_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129080_
                                                        'call-method))
                                                     (let ((__tmp134606
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self128072_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129079_
                                                        __tmp134606)))
                                                (___kont133691133692_
                                                 _L129077_
                                                 _L129078_
                                                 _L129079_
                                                 _L129080_)
                                                (___match133982133983_
                                                 _e128089128973_
                                                 _hd128090128976_
                                                 _tl128091128978_
                                                 _e128092128981_
                                                 _hd128093128984_
                                                 _tl128094128986_
                                                 _e128095128989_
                                                 _hd128096128992_
                                                 _tl128097128994_
                                                 _e128098128997_
                                                 _hd128099129000_
                                                 _tl128100129002_
                                                 _e128101129005_
                                                 _hd128102129008_
                                                 _tl128103129010_
                                                 _e128104129013_
                                                 _hd128105129016_
                                                 _tl128106129018_
                                                 _e128107129021_
                                                 _hd128108129024_
                                                 _tl128109129026_
                                                 _e128110129029_
                                                 _hd128111129032_
                                                 _tl128112129034_
                                                 _e128113129037_
                                                 _hd128114129040_
                                                 _tl128115129042_
                                                 _e128116129045_
                                                 _hd128117129048_
                                                 _tl128118129050_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128122129058_ _target128119129053_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133689133690_))
                    (let ((_e128089128973_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133689133690_))))
                      (let ((_tl128091128978_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128089128973_)))
                            (_hd128090128976_
                             (let ()
                               (declare (not safe))
                               (##car _e128089128973_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128091128978_))
                            (let ((_e128092128981_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128091128978_))))
                              (let ((_tl128094128986_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128092128981_)))
                                    (_hd128093128984_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128092128981_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128093128984_))
                                    (let ((_e128095128989_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128093128984_))))
                                      (let ((_tl128097128994_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128095128989_)))
                                            (_hd128096128992_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128095128989_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128096128992_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128096128992_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128097128994_))
                                                    (let ((_e128098128997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128097128994_))))
                                                      (let ((_tl128100129002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128098128997_)))
                    (_hd128099129000_
                     (let () (declare (not safe)) (##car _e128098128997_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128100129002_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128094128986_))
                        (let ((_e128101129005_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128094128986_))))
                          (let ((_tl128103129010_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128101129005_)))
                                (_hd128102129008_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128101129005_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128102129008_))
                                (let ((_e128104129013_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128102129008_))))
                                  (let ((_tl128106129018_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128104129013_)))
                                        (_hd128105129016_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128104129013_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128105129016_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128105129016_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128106129018_))
                                                (let ((_e128107129021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128106129018_))))
                                                  (let ((_tl128109129026_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128107129021_)))
                                                        (_hd128108129024_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128107129021_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128109129026_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128103129010_))
                                                            (let ((_e128110129029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128103129010_))))
                      (let ((_tl128112129034_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128110129029_)))
                            (_hd128111129032_
                             (let ()
                               (declare (not safe))
                               (##car _e128110129029_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128111129032_))
                            (let ((_e128113129037_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128111129032_))))
                              (let ((_tl128115129042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128113129037_)))
                                    (_hd128114129040_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128113129037_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128114129040_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128114129040_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128115129042_))
                                            (let ((_e128116129045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128115129042_))))
                                              (let ((_tl128118129050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128116129045_)))
                                                    (_hd128117129048_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128116129045_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128118129050_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128112129034_))
                                                        (let ((___splice133693133694_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128112129034_ '0))))
                  (let ((_tl128121129055_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice133693133694_ '1)))
                        (_target128119129053_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice133693133694_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128121129055_))
                        (___match133794133795_
                         _e128089128973_
                         _hd128090128976_
                         _tl128091128978_
                         _e128092128981_
                         _hd128093128984_
                         _tl128094128986_
                         _e128095128989_
                         _hd128096128992_
                         _tl128097128994_
                         _e128098128997_
                         _hd128099129000_
                         _tl128100129002_
                         _e128101129005_
                         _hd128102129008_
                         _tl128103129010_
                         _e128104129013_
                         _hd128105129016_
                         _tl128106129018_
                         _e128107129021_
                         _hd128108129024_
                         _tl128109129026_
                         _e128110129029_
                         _hd128111129032_
                         _tl128112129034_
                         _e128113129037_
                         _hd128114129040_
                         _tl128115129042_
                         _e128116129045_
                         _hd128117129048_
                         _tl128118129050_
                         ___splice133693133694_
                         _target128119129053_
                         _tl128121129055_)
                        (___match133982133983_
                         _e128089128973_
                         _hd128090128976_
                         _tl128091128978_
                         _e128092128981_
                         _hd128093128984_
                         _tl128094128986_
                         _e128095128989_
                         _hd128096128992_
                         _tl128097128994_
                         _e128098128997_
                         _hd128099129000_
                         _tl128100129002_
                         _e128101129005_
                         _hd128102129008_
                         _tl128103129010_
                         _e128104129013_
                         _hd128105129016_
                         _tl128106129018_
                         _e128107129021_
                         _hd128108129024_
                         _tl128109129026_
                         _e128110129029_
                         _hd128111129032_
                         _tl128112129034_
                         _e128113129037_
                         _hd128114129040_
                         _tl128115129042_
                         _e128116129045_
                         _hd128117129048_
                         _tl128118129050_))))
                (___match133982133983_
                 _e128089128973_
                 _hd128090128976_
                 _tl128091128978_
                 _e128092128981_
                 _hd128093128984_
                 _tl128094128986_
                 _e128095128989_
                 _hd128096128992_
                 _tl128097128994_
                 _e128098128997_
                 _hd128099129000_
                 _tl128100129002_
                 _e128101129005_
                 _hd128102129008_
                 _tl128103129010_
                 _e128104129013_
                 _hd128105129016_
                 _tl128106129018_
                 _e128107129021_
                 _hd128108129024_
                 _tl128109129026_
                 _e128110129029_
                 _hd128111129032_
                 _tl128112129034_
                 _e128113129037_
                 _hd128114129040_
                 _tl128115129042_
                 _e128116129045_
                 _hd128117129048_
                 _tl128118129050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134186134187_
                                                     _e128089128973_
                                                     _hd128090128976_
                                                     _tl128091128978_
                                                     _e128092128981_
                                                     _hd128093128984_
                                                     _tl128094128986_
                                                     _e128095128989_
                                                     _hd128096128992_
                                                     _tl128097128994_
                                                     _e128098128997_
                                                     _hd128099129000_
                                                     _tl128100129002_
                                                     _e128101129005_
                                                     _hd128102129008_
                                                     _tl128103129010_
                                                     _e128104129013_
                                                     _hd128105129016_
                                                     _tl128106129018_
                                                     _e128107129021_
                                                     _hd128108129024_
                                                     _tl128109129026_
                                                     _e128110129029_
                                                     _hd128111129032_
                                                     _tl128112129034_))))
                                            (___match134186134187_
                                             _e128089128973_
                                             _hd128090128976_
                                             _tl128091128978_
                                             _e128092128981_
                                             _hd128093128984_
                                             _tl128094128986_
                                             _e128095128989_
                                             _hd128096128992_
                                             _tl128097128994_
                                             _e128098128997_
                                             _hd128099129000_
                                             _tl128100129002_
                                             _e128101129005_
                                             _hd128102129008_
                                             _tl128103129010_
                                             _e128104129013_
                                             _hd128105129016_
                                             _tl128106129018_
                                             _e128107129021_
                                             _hd128108129024_
                                             _tl128109129026_
                                             _e128110129029_
                                             _hd128111129032_
                                             _tl128112129034_))
                                        (___match133862133863_
                                         _e128089128973_
                                         _hd128090128976_
                                         _tl128091128978_
                                         _e128092128981_
                                         _hd128093128984_
                                         _tl128094128986_
                                         _e128095128989_
                                         _hd128096128992_
                                         _tl128097128994_
                                         _e128098128997_
                                         _hd128099129000_
                                         _tl128100129002_
                                         _e128101129005_
                                         _hd128102129008_
                                         _tl128103129010_
                                         _e128104129013_
                                         _hd128105129016_
                                         _tl128106129018_
                                         _e128107129021_
                                         _hd128108129024_
                                         _tl128109129026_
                                         _e128110129029_
                                         _hd128111129032_
                                         _tl128112129034_
                                         _e128113129037_
                                         _hd128114129040_
                                         _tl128115129042_))
                                    (___match134186134187_
                                     _e128089128973_
                                     _hd128090128976_
                                     _tl128091128978_
                                     _e128092128981_
                                     _hd128093128984_
                                     _tl128094128986_
                                     _e128095128989_
                                     _hd128096128992_
                                     _tl128097128994_
                                     _e128098128997_
                                     _hd128099129000_
                                     _tl128100129002_
                                     _e128101129005_
                                     _hd128102129008_
                                     _tl128103129010_
                                     _e128104129013_
                                     _hd128105129016_
                                     _tl128106129018_
                                     _e128107129021_
                                     _hd128108129024_
                                     _tl128109129026_
                                     _e128110129029_
                                     _hd128111129032_
                                     _tl128112129034_))))
                            (___match134186134187_
                             _e128089128973_
                             _hd128090128976_
                             _tl128091128978_
                             _e128092128981_
                             _hd128093128984_
                             _tl128094128986_
                             _e128095128989_
                             _hd128096128992_
                             _tl128097128994_
                             _e128098128997_
                             _hd128099129000_
                             _tl128100129002_
                             _e128101129005_
                             _hd128102129008_
                             _tl128103129010_
                             _e128104129013_
                             _hd128105129016_
                             _tl128106129018_
                             _e128107129021_
                             _hd128108129024_
                             _tl128109129026_
                             _e128110129029_
                             _hd128111129032_
                             _tl128112129034_))))
                    (___match134124134125_
                     _e128089128973_
                     _hd128090128976_
                     _tl128091128978_
                     _e128092128981_
                     _hd128093128984_
                     _tl128094128986_
                     _e128095128989_
                     _hd128096128992_
                     _tl128097128994_
                     _e128098128997_
                     _hd128099129000_
                     _tl128100129002_
                     _e128101129005_
                     _hd128102129008_
                     _tl128103129010_
                     _e128104129013_
                     _hd128105129016_
                     _tl128106129018_
                     _e128107129021_
                     _hd128108129024_
                     _tl128109129026_))
                (___kont133707133708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont133707133708_))
                                            (___kont133707133708_))
                                        (___kont133707133708_))))
                                (___kont133707133708_))))
                        (___kont133707133708_))
                    (___kont133707133708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133707133708_))
                                                (___kont133707133708_))
                                            (___kont133707133708_))))
                                    (___kont133707133708_))))
                            (___kont133707133708_))))
                    (___kont133707133708_))))))))))
