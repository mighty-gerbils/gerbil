(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710770271)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp137184 (list gxc#::identity::t))
            (__tmp137182
             (let ((__tmp137183
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137183 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp137184
         '()
         __tmp137182
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args136048_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args136048_)))
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
      (lambda (_stx136040_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self136043_
                (let ((__obj137177
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj137177))
               (__tmp137185
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self136043_ _stx136040_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp137185
           gxc#current-compile-method
           _self136043_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp137188 (list gxc#::void::t))
            (__tmp137186
             (let ((__tmp137187
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137187 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp137188
         '(receiver methods slots)
         __tmp137186
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args136037_
        (apply make-instance gxc#::collect-object-refs::t _$args136037_)))
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
      (lambda (_g137189_
               _receiver135998136003_
               _methods135999136005_
               _slots136000136007_
               _stx136009_)
        (let* ((_receiver136012_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135998136003_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135998136003_))
               (_methods136014_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135999136005_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135999136005_))
               (_slots136016_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136000136007_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136000136007_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self136018_
                  (let ((__obj137179
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
                       __obj137179
                       _receiver136012_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137179
                       _methods136014_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137179
                       _slots136016_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj137179))
                 (__tmp137190
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136018_ _stx136009_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137190
             gxc#current-compile-method
             _self136018_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys135997136025_ . _args136027_)
        (apply gxc#apply-collect-object-refs__%
               _keys135997136025_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135997136025_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135997136025_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135997136025_ 'slots: absent-value))
               _args136027_)))
    (define gxc#apply-collect-object-refs
      (lambda _args136001136033_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args136001136033_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp137193 (list gxc#::basic-xform-expression::t))
            (__tmp137191
             (let ((__tmp137192
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137192 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp137193
         '(receiver klass methods slots)
         __tmp137191
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args135993_
        (apply make-instance gxc#::subst-object-refs::t _$args135993_)))
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
      (lambda (_g137194_
               _receiver135949135955_
               _klass135950135957_
               _methods135951135959_
               _slots135952135961_
               _stx135963_)
        (let* ((_receiver135966_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135949135955_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135949135955_))
               (_klass135968_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass135950135957_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass135950135957_))
               (_methods135970_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135951135959_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135951135959_))
               (_slots135972_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135952135961_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135952135961_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self135974_
                  (let ((__obj137181
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
                       __obj137181
                       _receiver135966_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137181
                       _klass135968_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137181
                       _methods135970_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137181
                       _slots135972_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj137181))
                 (__tmp137195
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self135974_ _stx135963_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137195
             gxc#current-compile-method
             _self135974_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135948135981_ . _args135983_)
        (apply gxc#apply-subst-object-refs__%
               _keys135948135981_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135948135981_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135948135981_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135948135981_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135948135981_ 'slots: absent-value))
               _args135983_)))
    (define gxc#apply-subst-object-refs
      (lambda _args135953135989_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args135953135989_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self133158_ _stx133159_)
        (letrec ((_generate-method-bind133161_
                  (lambda (_$klass135940_
                           _$method-table135941_
                           _id135942_
                           _$id135943_)
                    (let ((_$tmp135945_
                           (let ((__tmp137196 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137196))))
                      (let ((__tmp137244
                             (let ()
                               (declare (not safe))
                               (cons _$id135943_ '())))
                            (__tmp137197
                             (let ((__tmp137198
                                    (let ((__tmp137199
                                           (let ((__tmp137242
                                                  (let ((__tmp137243
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137243)))
                                                 (__tmp137200
                                                  (let ((__tmp137201
                                                         (let ((__tmp137202
                                                                (let ((__tmp137203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137204
                                      (let ((__tmp137205
                                             (let ((__tmp137225
                                                    (let ((__tmp137226
                                                           (let ((__tmp137241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135945_ '())))
                         (__tmp137227
                          (let ((__tmp137228
                                 (let ((__tmp137229
                                        (let ((__tmp137239
                                               (let ((__tmp137240
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp137240)))
                                              (__tmp137230
                                               (let ((__tmp137237
                                                      (let ((__tmp137238
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135941_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp137238)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137231
                                                      (let ((__tmp137235
                                                             (let ((__tmp137236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135942_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp137236)))
                    (__tmp137232
                     (let ((__tmp137233
                            (let ((__tmp137234
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137234))))
                       (declare (not safe))
                       (cons __tmp137233 '()))))
                (declare (not safe))
                (cons __tmp137235 __tmp137232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp137237
                                                       __tmp137231))))
                                          (declare (not safe))
                                          (cons __tmp137239 __tmp137230))))
                                   (declare (not safe))
                                   (cons '%#call __tmp137229))))
                            (declare (not safe))
                            (cons __tmp137228 '()))))
                     (declare (not safe))
                     (cons __tmp137241 __tmp137227))))
              (declare (not safe))
              (cons __tmp137226 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137206
                                                    (let ((__tmp137207
                                                           (let ((__tmp137208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137223
                                 (let ((__tmp137224
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135945_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp137224)))
                                (__tmp137209
                                 (let ((__tmp137221
                                        (let ((__tmp137222
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135945_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp137222)))
                                       (__tmp137210
                                        (let ((__tmp137211
                                               (let ((__tmp137212
                                                      (let ((__tmp137219
                                                             (let ((__tmp137220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp137220)))
                    (__tmp137213
                     (let ((__tmp137217
                            (let ((__tmp137218
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137218)))
                           (__tmp137214
                            (let ((__tmp137215
                                   (let ((__tmp137216
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135942_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp137216))))
                              (declare (not safe))
                              (cons __tmp137215 '()))))
                       (declare (not safe))
                       (cons __tmp137217 __tmp137214))))
                (declare (not safe))
                (cons __tmp137219 __tmp137213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp137212))))
                                          (declare (not safe))
                                          (cons __tmp137211 '()))))
                                   (declare (not safe))
                                   (cons __tmp137221 __tmp137210))))
                            (declare (not safe))
                            (cons __tmp137223 __tmp137209))))
                     (declare (not safe))
                     (cons '%#if __tmp137208))))
              (declare (not safe))
              (cons __tmp137207 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137225
                                                     __tmp137206))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp137205))))
                                 (declare (not safe))
                                 (cons __tmp137204 '()))))
                          (declare (not safe))
                          (cons '() __tmp137203))))
                   (declare (not safe))
                   (cons '%#lambda __tmp137202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137201 '()))))
                                             (declare (not safe))
                                             (cons __tmp137242 __tmp137200))))
                                      (declare (not safe))
                                      (cons '%#call __tmp137199))))
                               (declare (not safe))
                               (cons __tmp137198 '()))))
                        (declare (not safe))
                        (cons __tmp137244 __tmp137197)))))
                 (_generate-slot-bind133162_
                  (lambda (_$klass135934_ _id135935_ _$id135936_)
                    (let ((_$tmp135938_
                           (let ((__tmp137245 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137245))))
                      (let ((__tmp137282
                             (let ()
                               (declare (not safe))
                               (cons _$id135936_ '())))
                            (__tmp137246
                             (let ((__tmp137247
                                    (let ((__tmp137248
                                           (let ((__tmp137268
                                                  (let ((__tmp137269
                                                         (let ((__tmp137281
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135938_ '())))
                       (__tmp137270
                        (let ((__tmp137271
                               (let ((__tmp137272
                                      (let ((__tmp137279
                                             (let ((__tmp137280
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp137280)))
                                            (__tmp137273
                                             (let ((__tmp137277
                                                    (let ((__tmp137278
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp137278)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137274
                                                    (let ((__tmp137275
                                                           (let ((__tmp137276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135935_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp137276))))
              (declare (not safe))
              (cons __tmp137275 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137277
                                                     __tmp137274))))
                                        (declare (not safe))
                                        (cons __tmp137279 __tmp137273))))
                                 (declare (not safe))
                                 (cons '%#call __tmp137272))))
                          (declare (not safe))
                          (cons __tmp137271 '()))))
                   (declare (not safe))
                   (cons __tmp137281 __tmp137270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137269 '())))
                                                 (__tmp137249
                                                  (let ((__tmp137250
                                                         (let ((__tmp137251
                                                                (let ((__tmp137266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137267
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135938_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp137267)))
                              (__tmp137252
                               (let ((__tmp137264
                                      (let ((__tmp137265
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135938_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp137265)))
                                     (__tmp137253
                                      (let ((__tmp137254
                                             (let ((__tmp137255
                                                    (let ((__tmp137262
                                                           (let ((__tmp137263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp137263)))
                  (__tmp137256
                   (let ((__tmp137260
                          (let ((__tmp137261
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp137261)))
                         (__tmp137257
                          (let ((__tmp137258
                                 (let ((__tmp137259
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135935_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp137259))))
                            (declare (not safe))
                            (cons __tmp137258 '()))))
                     (declare (not safe))
                     (cons __tmp137260 __tmp137257))))
              (declare (not safe))
              (cons __tmp137262 __tmp137256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp137255))))
                                        (declare (not safe))
                                        (cons __tmp137254 '()))))
                                 (declare (not safe))
                                 (cons __tmp137264 __tmp137253))))
                          (declare (not safe))
                          (cons __tmp137266 __tmp137252))))
                   (declare (not safe))
                   (cons '%#if __tmp137251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137250 '()))))
                                             (declare (not safe))
                                             (cons __tmp137268 __tmp137249))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp137248))))
                               (declare (not safe))
                               (cons __tmp137247 '()))))
                        (declare (not safe))
                        (cons __tmp137282 __tmp137246)))))
                 (_generate-specializer-impl133163_
                  (lambda (_$klass135928_
                           _$method-table135929_
                           _methods-bind135930_
                           _slots-bind135931_
                           _specializer-impl135932_)
                    (let ((__tmp137283
                           (let ((__tmp137284
                                  (let ((__tmp137290
                                         (let ((__tmp137291
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135929_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135928_ __tmp137291)))
                                        (__tmp137285
                                         (let ((__tmp137286
                                                (let ((__tmp137287
                                                       (let ((__tmp137289
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135931_ _methods-bind135930_)))
                     (__tmp137288
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135932_ '()))))
                 (declare (not safe))
                 (cons __tmp137289 __tmp137288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137287))))
                                           (declare (not safe))
                                           (cons __tmp137286 '()))))
                                    (declare (not safe))
                                    (cons __tmp137290 __tmp137285))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137284))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137283 _stx133159_))))
                 (_generate-specializer-def133164_
                  (lambda (_id135924_
                           _specializer-id135925_
                           _specializer-impl135926_)
                    (let ((__tmp137292
                           (let ((__tmp137293
                                  (let ((__tmp137294
                                         (let ((__tmp137307
                                                (let ((__tmp137308
                                                       (let ((__tmp137309
                                                              (let ((__tmp137311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135925_ '())))
                            (__tmp137310
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135926_ '()))))
                        (declare (not safe))
                        (cons __tmp137311 __tmp137310))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137308
                                                   _stx133159_)))
                                               (__tmp137295
                                                (let ((__tmp137296
                                                       (let ((__tmp137297
                                                              (let ((__tmp137298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137305
                                    (let ((__tmp137306
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137306)))
                                   (__tmp137299
                                    (let ((__tmp137303
                                           (let ((__tmp137304
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135924_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137304)))
                                          (__tmp137300
                                           (let ((__tmp137301
                                                  (let ((__tmp137302
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137302))))
                                             (declare (not safe))
                                             (cons __tmp137301 '()))))
                                      (declare (not safe))
                                      (cons __tmp137303 __tmp137300))))
                               (declare (not safe))
                               (cons __tmp137305 __tmp137299))))
                        (declare (not safe))
                        (cons '%#call __tmp137298))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137297 _stx133159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137296 '()))))
                                           (declare (not safe))
                                           (cons __tmp137307 __tmp137295))))
                                    (declare (not safe))
                                    (cons _stx133159_ __tmp137294))))
                             (declare (not safe))
                             (cons '%#begin __tmp137293))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137292 _stx133159_)))))
          (let* ((___stx136137136138_ _stx133159_)
                 (_g133167133187_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136137136138_)))))
            (let ((___kont136139136140_
                   (lambda (_L133231_ _L133232_)
                     (let ((_method-calls133251_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs133252_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty133253_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?133255_
                                 (lambda ()
                                   (if (let ((__tmp137313
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls133251_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137313))
                                       (let ((__tmp137312
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs133252_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137312))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L133231_))
                             (let* ((___stx136051136052_ _L133231_)
                                    (_g133642133660_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx136051136052_)))))
                               (let ((___kont136053136054_
                                      (lambda (_L133696_ _L133697_ _L133698_)
                                        (for-each
                                         (lambda (_g133713133715_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133713133715_
                                              'receiver:
                                              _L133698_
                                              'methods:
                                              _method-calls133251_
                                              'slots:
                                              _slot-refs133252_)))
                                         _L133696_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?133255_))
                                            _stx133159_
                                            (let* ((_specializer-id133724_
                                                    (let* ((_id133718_
                                                            (let ((__tmp137435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L133232_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137435 '"::specialize")))
                   (_specializer-id133721_
                    (let ((__tmp137436
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx133159_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133718_ __tmp137436))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133721_))
              _specializer-id133721_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133726_
                                                    (let ((__tmp137437
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137437)))
                                                   (_$method-table133728_
                                                    (let ((__tmp137438
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137438)))
                                                   (_methods133730_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls133251_)))
                                                   (_$methods133734_
                                                    (map (lambda (_id133732_)
                                                           (let ((__tmp137439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133732_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137439)))
                 _methods133730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137440_
                                                    (for-each
                                                     (lambda (_g133735133738_
                                                              _g133736133740_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls133251_
                                                          _g133735133738_
                                                          _g133736133740_)))
                                                     _methods133730_
                                                     _$methods133734_))
                                                   (_methods-bind133751_
                                                    (map (lambda (_g133743133746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133744133748_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind133161_
                      _$klass133726_
                      _$method-table133728_
                      _g133743133746_
                      _g133744133748_)))
                 _methods133730_
                 _$methods133734_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133753_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs133252_)))
                                                   (_$slots133757_
                                                    (map (lambda (_id133755_)
                                                           (let ((__tmp137441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133755_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137441)))
                 _slots133753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137442_
                                                    (for-each
                                                     (lambda (_g133758133761_
                                                              _g133759133763_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs133252_
                                                          _g133758133761_
                                                          _g133759133763_)))
                                                     _slots133753_
                                                     _$slots133757_))
                                                   (_slots-bind133774_
                                                    (map (lambda (_g133766133769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133767133771_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind133162_
                      _$klass133726_
                      _g133766133769_
                      _g133767133771_)))
                 _slots133753_
                 _$slots133757_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133780_
                                                    (map (lambda (_g133775133777_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133775133777_
                                                              'receiver:
                                                              _L133698_
                                                              'klass:
                                                              _$klass133726_
                                                              'methods:
                                                              _method-calls133251_
                                                              'slots:
                                                              _slot-refs133252_)))
                                                         _L133696_))
                                                   (_specializer-impl133782_
                                                    (let ((__tmp137443
                                                           (let ((__tmp137444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137445
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133698_ _L133697_))))
                            (declare (not safe))
                            (cons __tmp137445 _specializer-body133780_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137444))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137443 _stx133159_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133784_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl133163_
                                                       _$klass133726_
                                                       _$method-table133728_
                                                       _methods-bind133751_
                                                       _slots-bind133774_
                                                       _specializer-impl133782_))))
                                              (let ((__tmp137447
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L133232_)))
                                                    (__tmp137446
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133724_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137447
                                                 '" => "
                                                 __tmp137446))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def133164_
                                                 _L133232_
                                                 _specializer-id133724_
                                                 _specializer-impl133784_))))))
                                     (___kont136055136056_
                                      (lambda () _stx133159_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx136051136052_))
                                     (let ((_e133649133672_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx136051136052_))))
                                       (let ((_tl133647133677_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133649133672_)))
                                             (_hd133648133675_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133649133672_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133647133677_))
                                             (let ((_e133652133680_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133647133677_))))
                                               (let ((_tl133650133685_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133652133680_)))
                                                     (_hd133651133683_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133652133680_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133651133683_))
                                                     (let ((_e133655133688_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133651133683_))))
                                                       (let ((_tl133653133693_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133655133688_)))
                     (_hd133654133691_
                      (let () (declare (not safe)) (##car _e133655133688_))))
                 (___kont136053136054_
                  _tl133650133685_
                  _tl133653133693_
                  _hd133654133691_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136055136056_))))
                                             (___kont136055136056_))))
                                     (___kont136055136056_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L133231_))
                                 (let* ((_g133790133809_
                                         (lambda (_g133791133806_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133791133806_))))
                                        (_g133789134092_
                                         (lambda (_g133791133812_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133791133812_))
                                               (let ((_e133795133814_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133791133812_))))
                                                 (let ((_hd133794133817_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133795133814_)))
                                                       (_tl133793133819_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133795133814_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133793133819_))
                                                       (let ((_g137418_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133793133819_ '0))))
                 (begin
                   (let ((_g137419_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137418_)
                                (##vector-length _g137418_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137419_ 2)))
                         (error "Context expects 2 values" _g137419_)))
                   (let ((_target133796133822_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137418_ 0)))
                         (_tl133798133824_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137418_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133798133824_))
                         (letrec ((_loop133799133827_
                                   (lambda (_hd133797133830_
                                            _clause133803133832_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133797133830_))
                                         (let ((_e133800133835_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133797133830_))))
                                           (let ((_lp-hd133801133838_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133800133835_)))
                                                 (_lp-tl133802133840_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133800133835_))))
                                             (let ((__tmp137434
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133801133838_
                                                            _clause133803133832_))))
                                               (declare (not safe))
                                               (_loop133799133827_
                                                _lp-tl133802133840_
                                                __tmp137434))))
                                         (let ((_clause133804133843_
                                                (reverse _clause133803133832_)))
                                           ((lambda (_L133846_)
                                              (for-each
                                               (lambda (_clause133859_)
                                                 (let* ((___stx136077136078_
                                                         _clause133859_)
                                                        (_g133862133877_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx136077136078_)))))
                                                   (let ((___kont136079136080_
                                                          (lambda (_L133905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133906_
                           _L133907_)
                    (for-each
                     (lambda (_g133922133924_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133922133924_
                          'receiver:
                          _L133907_
                          'methods:
                          _method-calls133251_
                          'slots:
                          _slot-refs133252_)))
                     _L133905_)))
                 (___kont136081136082_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx136077136078_))
                                                         (let ((_e133869133889_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx136077136078_))))
                   (let ((_tl133867133894_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133869133889_)))
                         (_hd133868133892_
                          (let ()
                            (declare (not safe))
                            (##car _e133869133889_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133868133892_))
                         (let ((_e133872133897_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133868133892_))))
                           (let ((_tl133870133902_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133872133897_)))
                                 (_hd133871133900_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133872133897_))))
                             (___kont136079136080_
                              _tl133867133894_
                              _tl133870133902_
                              _hd133871133900_)))
                         (___kont136081136082_))))
                 (___kont136081136082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137420
                                                      (lambda (_g133929133932_
                                                               _g133930133934_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133929133932_
                                                                _g133930133934_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137420
                                                         '()
                                                         _L133846_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133255_))
                                                  _stx133159_
                                                  (let* ((_specializer-id133943_
                                                          (let* ((_id133937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137421
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133232_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137421 '"::specialize")))
                         (_specializer-id133940_
                          (let ((__tmp137422
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133159_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133937_ __tmp137422))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133940_))
                    _specializer-id133940_))
                 (_$klass133945_
                  (let ((__tmp137423 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137423)))
                 (_$method-table133947_
                  (let ((__tmp137424 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137424)))
                 (_methods133949_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133251_)))
                 (_$methods133953_
                  (map (lambda (_id133951_)
                         (let ((__tmp137425 (gensym _id133951_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137425)))
                       _methods133949_))
                 (_g137426_
                  (for-each
                   (lambda (_g133954133957_ _g133955133959_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133251_
                        _g133954133957_
                        _g133955133959_)))
                   _methods133949_
                   _$methods133953_))
                 (_methods-bind133970_
                  (map (lambda (_g133962133965_ _g133963133967_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133161_
                            _$klass133945_
                            _$method-table133947_
                            _g133962133965_
                            _g133963133967_)))
                       _methods133949_
                       _$methods133953_))
                 (_slots133972_
                  (let () (declare (not safe)) (hash-keys _slot-refs133252_)))
                 (_$slots133976_
                  (map (lambda (_id133974_)
                         (let ((__tmp137427 (gensym _id133974_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137427)))
                       _slots133972_))
                 (_g137428_
                  (for-each
                   (lambda (_g133977133980_ _g133978133982_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133252_
                        _g133977133980_
                        _g133978133982_)))
                   _slots133972_
                   _$slots133976_))
                 (_slots-bind133993_
                  (map (lambda (_g133985133988_ _g133986133990_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133162_
                            _$klass133945_
                            _g133985133988_
                            _g133986133990_)))
                       _slots133972_
                       _$slots133976_))
                 (_specializer-clauses134085_
                  (map (lambda (_clause133995_)
                         (let* ((___stx136097136098_ _clause133995_)
                                (_g133998134013_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx136097136098_)))))
                           (let ((___kont136099136100_
                                  (lambda (_L134041_ _L134042_ _L134043_)
                                    (let* ((_body134073_
                                            (map (lambda (_g134068134070_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g134068134070_
                                                      'receiver:
                                                      _L134043_
                                                      'klass:
                                                      _$klass133945_
                                                      'methods:
                                                      _method-calls133251_
                                                      'slots:
                                                      _slot-refs133252_)))
                                                 _L134041_))
                                           (__tmp137429
                                            (let ()
                                              (declare (not safe))
                                              (cons _L134043_ _L134042_))))
                                      (declare (not safe))
                                      (cons __tmp137429 _body134073_))))
                                 (___kont136101136102_
                                  (lambda () _clause133995_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx136097136098_))
                                 (let ((_e134005134025_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx136097136098_))))
                                   (let ((_tl134003134030_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e134005134025_)))
                                         (_hd134004134028_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e134005134025_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd134004134028_))
                                         (let ((_e134008134033_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd134004134028_))))
                                           (let ((_tl134006134038_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e134008134033_)))
                                                 (_hd134007134036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e134008134033_))))
                                             (___kont136099136100_
                                              _tl134003134030_
                                              _tl134006134038_
                                              _hd134007134036_)))
                                         (___kont136101136102_))))
                                 (___kont136101136102_)))))
                       (let ((__tmp137430
                              (lambda (_g134077134080_ _g134078134082_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g134077134080_ _g134078134082_)))))
                         (declare (not safe))
                         (foldr1 __tmp137430 '() _L133846_))))
                 (_specializer-impl134087_
                  (let ((__tmp137431
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses134085_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137431 _stx133159_)))
                 (_specializer-impl134089_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133163_
                     _$klass133945_
                     _$method-table133947_
                     _methods-bind133970_
                     _slots-bind133993_
                     _specializer-impl134087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137433
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133232_)))
                                                          (__tmp137432
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133943_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137433
                                                       '" => "
                                                       __tmp137432))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133164_
                                                       _L133232_
                                                       _specializer-id133943_
                                                       _specializer-impl134089_)))))
                                            _clause133804133843_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133799133827_ _target133796133822_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133790133809_ _g133791133812_))))))
               (let ()
                 (declare (not safe))
                 (_g133790133809_ _g133791133812_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133790133809_
                                                  _g133791133812_))))))
                                   (declare (not safe))
                                   (_g133789134092_ _L133231_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L133231_))
                                     (let* ((_g134095134125_
                                             (lambda (_g134096134122_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134096134122_))))
                                            (_g134094134730_
                                             (lambda (_g134096134128_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134096134128_))
                                                   (let ((_e134102134130_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134096134128_))))
                                                     (let ((_hd134101134133_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134102134130_)))
                                                           (_tl134100134135_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134102134130_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134100134135_))
                                                           (let ((_e134105134138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134100134135_))))
                     (let ((_hd134104134141_
                            (let ()
                              (declare (not safe))
                              (##car _e134105134138_)))
                           (_tl134103134143_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134105134138_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134104134141_))
                           (let ((_e134108134146_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134104134141_))))
                             (let ((_hd134107134149_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134108134146_)))
                                   (_tl134106134151_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134108134146_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134107134149_))
                                   (let ((_e134111134154_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134107134149_))))
                                     (let ((_hd134110134157_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134111134154_)))
                                           (_tl134109134159_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134111134154_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd134110134157_))
                                           (let ((_e134114134162_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd134110134157_))))
                                             (let ((_hd134113134165_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134114134162_)))
                                                   (_tl134112134167_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134114134162_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134112134167_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl134109134159_))
                                                       (let ((_e134117134170_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl134109134159_))))
                 (let ((_hd134116134173_
                        (let () (declare (not safe)) (##car _e134117134170_)))
                       (_tl134115134175_
                        (let () (declare (not safe)) (##cdr _e134117134170_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134115134175_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134106134151_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134103134143_))
                               (let ((_e134120134178_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134103134143_))))
                                 (let ((_hd134119134181_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134120134178_)))
                                       (_tl134118134183_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134120134178_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134118134183_))
                                       ((lambda (_L134186_ _L134187_ _L134188_)
                                          (let* ((_g134211134229_
                                                  (lambda (_g134212134226_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134212134226_))))
                                                 (_g134210134280_
                                                  (lambda (_g134212134232_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134212134232_))
                                                        (let ((_e134218134234_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134212134232_))))
                  (let ((_hd134217134237_
                         (let () (declare (not safe)) (##car _e134218134234_)))
                        (_tl134216134239_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134218134234_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl134216134239_))
                        (let ((_e134221134242_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl134216134239_))))
                          (let ((_hd134220134245_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e134221134242_)))
                                (_tl134219134247_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e134221134242_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd134220134245_))
                                (let ((_e134224134250_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd134220134245_))))
                                  (let ((_hd134223134253_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134224134250_)))
                                        (_tl134222134255_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134224134250_))))
                                    ((lambda (_L134258_ _L134259_ _L134260_)
                                       (for-each
                                        (lambda (_g134275134277_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g134275134277_
                                             'receiver:
                                             _L134260_
                                             'methods:
                                             _method-calls133251_
                                             'slots:
                                             _slot-refs133252_)))
                                        _L134258_))
                                     _tl134219134247_
                                     _tl134222134255_
                                     _hd134223134253_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134211134229_ _g134212134232_)))))
                        (let ()
                          (declare (not safe))
                          (_g134211134229_ _g134212134232_)))))
                (let ()
                  (declare (not safe))
                  (_g134211134229_ _g134212134232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134210134280_ _L134187_))
                                          (let* ((_g134283134302_
                                                  (lambda (_g134284134299_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134284134299_))))
                                                 (_g134282134421_
                                                  (lambda (_g134284134305_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134284134305_))
                                                        (let ((_e134288134307_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134284134305_))))
                  (let ((_hd134287134310_
                         (let () (declare (not safe)) (##car _e134288134307_)))
                        (_tl134286134312_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134288134307_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134286134312_))
                        (let ((_g137388_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134286134312_
                                  '0))))
                          (begin
                            (let ((_g137389_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137388_)
                                         (##vector-length _g137388_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137389_ 2)))
                                  (error "Context expects 2 values"
                                         _g137389_)))
                            (let ((_target134289134315_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137388_ 0)))
                                  (_tl134291134317_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137388_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134291134317_))
                                  (letrec ((_loop134292134320_
                                            (lambda (_hd134290134323_
                                                     _clause134296134325_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134290134323_))
                                                  (let ((_e134293134328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134290134323_))))
                                                    (let ((_lp-hd134294134331_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134293134328_)))
                                                          (_lp-tl134295134333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134293134328_))))
                                                      (let ((__tmp137391
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134294134331_ _clause134296134325_))))
                (declare (not safe))
                (_loop134292134320_ _lp-tl134295134333_ __tmp137391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134297134336_
                                                         (reverse _clause134296134325_)))
                                                    ((lambda (_L134339_)
                                                       (for-each
                                                        (lambda (_clause134352_)
                                                          (let* ((_g134354134369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134355134366_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134355134366_))))
                         (_g134353134411_
                          (lambda (_g134355134372_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134355134372_))
                                (let ((_e134361134374_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134355134372_))))
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
                                          (gx#stx-pair? _hd134360134377_))
                                        (let ((_e134364134382_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134360134377_))))
                                          (let ((_hd134363134385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134364134382_)))
                                                (_tl134362134387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134364134382_))))
                                            ((lambda (_L134390_
                                                      _L134391_
                                                      _L134392_)
                                               (for-each
                                                (lambda (_g134406134408_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134406134408_
                                                     'receiver:
                                                     _L134392_
                                                     'methods:
                                                     _method-calls133251_
                                                     'slots:
                                                     _slot-refs133252_)))
                                                _L134390_))
                                             _tl134359134379_
                                             _tl134362134387_
                                             _hd134363134385_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134354134369_ _g134355134372_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134354134369_ _g134355134372_))))))
                    (declare (not safe))
                    (_g134353134411_ _clause134352_)))
                (let ((__tmp137390
                       (lambda (_g134413134416_ _g134414134418_)
                         (let ()
                           (declare (not safe))
                           (cons _g134413134416_ _g134414134418_)))))
                  (declare (not safe))
                  (foldr1 __tmp137390 '() _L134339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134297134336_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134292134320_
                                       _target134289134315_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g134283134302_ _g134284134305_))))))
                        (let ()
                          (declare (not safe))
                          (_g134283134302_ _g134284134305_)))))
                (let ()
                  (declare (not safe))
                  (_g134283134302_ _g134284134305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134282134421_ _L134186_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?133255_))
                                              _stx133159_
                                              (let* ((_specializer-id134430_
                                                      (let* ((_id134424_
                                                              (let ((__tmp137392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L133232_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137392 '"::specialize")))
                     (_specializer-id134427_
                      (let ((__tmp137393
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx133159_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134424_ __tmp137393))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134427_))
                _specializer-id134427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134432_
                                                      (let ((__tmp137394
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137394)))
                                                     (_$method-table134434_
                                                      (let ((__tmp137395
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137395)))
                                                     (_methods134436_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls133251_)))
                                                     (_$methods134440_
                                                      (map (lambda (_id134438_)
                                                             (let ((__tmp137396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134438_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137396)))
                   _methods134436_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137397_
                                                      (for-each
                                                       (lambda (_g134441134444_
                                                                _g134442134446_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls133251_
                                                            _g134441134444_
                                                            _g134442134446_)))
                                                       _methods134436_
                                                       _$methods134440_))
                                                     (_methods-bind134457_
                                                      (map (lambda (_g134449134452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134450134454_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind133161_
                        _$klass134432_
                        _$method-table134434_
                        _g134449134452_
                        _g134450134454_)))
                   _methods134436_
                   _$methods134440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134459_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs133252_)))
                                                     (_$slots134463_
                                                      (map (lambda (_id134461_)
                                                             (let ((__tmp137398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134461_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137398)))
                   _slots134459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137399_
                                                      (for-each
                                                       (lambda (_g134464134467_
                                                                _g134465134469_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs133252_
                                                            _g134464134467_
                                                            _g134465134469_)))
                                                       _slots134459_
                                                       _$slots134463_))
                                                     (_slots-bind134480_
                                                      (map (lambda (_g134472134475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134473134477_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind133162_
                        _$klass134432_
                        _g134472134475_
                        _g134473134477_)))
                   _slots134459_
                   _$slots134463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134566_
                                                      (let* ((_g134482134500_
                                                              (lambda (_g134483134497_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134483134497_))))
                     (_g134481134563_
                      (lambda (_g134483134503_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134483134503_))
                            (let ((_e134489134505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134483134503_))))
                              (let ((_hd134488134508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134489134505_)))
                                    (_tl134487134510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134489134505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134487134510_))
                                    (let ((_e134492134513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134487134510_))))
                                      (let ((_hd134491134516_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134492134513_)))
                                            (_tl134490134518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134492134513_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134491134516_))
                                            (let ((_e134495134521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134491134516_))))
                                              (let ((_hd134494134524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134495134521_)))
                                                    (_tl134493134526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134495134521_))))
                                                ((lambda (_L134529_
                                                          _L134530_
                                                          _L134531_)
                                                   (let* ((_body134561_
                                                           (map (lambda (_g134556134558_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134556134558_
                             'receiver:
                             _L134531_
                             'klass:
                             _$klass134432_
                             'methods:
                             _method-calls133251_
                             'slots:
                             _slot-refs133252_)))
                        _L134529_))
                  (__tmp137400
                   (let ((__tmp137401
                          (let ((__tmp137402
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134531_ _L134530_))))
                            (declare (not safe))
                            (cons __tmp137402 _body134561_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137400
                                                      _L134187_)))
                                                 _tl134490134518_
                                                 _tl134493134526_
                                                 _hd134494134524_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134482134500_
                                               _g134483134503_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134482134500_ _g134483134503_)))))
                            (let ()
                              (declare (not safe))
                              (_g134482134500_ _g134483134503_))))))
                (declare (not safe))
                (_g134481134563_ _L134187_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134723_
                                                      (let* ((_g134568134587_
                                                              (lambda (_g134569134584_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134569134584_))))
                     (_g134567134720_
                      (lambda (_g134569134590_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134569134590_))
                            (let ((_e134573134592_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134569134590_))))
                              (let ((_hd134572134595_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134573134592_)))
                                    (_tl134571134597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134573134592_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134571134597_))
                                    (let ((_g137403_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134571134597_
                                              '0))))
                                      (begin
                                        (let ((_g137404_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137403_)
                                                     (##vector-length
                                                      _g137403_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137404_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137404_)))
                                        (let ((_target134574134600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137403_ 0)))
                                              (_tl134576134602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137403_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134576134602_))
                                              (letrec ((_loop134577134605_
                                                        (lambda (_hd134575134608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134581134610_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134575134608_))
                      (let ((_e134578134613_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134575134608_))))
                        (let ((_lp-hd134579134616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134578134613_)))
                              (_lp-tl134580134618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134578134613_))))
                          (let ((__tmp137408
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134579134616_
                                         _clause134581134610_))))
                            (declare (not safe))
                            (_loop134577134605_
                             _lp-tl134580134618_
                             __tmp137408))))
                      (let ((_clause134582134621_
                             (reverse _clause134581134610_)))
                        ((lambda (_L134624_)
                           (let* ((_clauses134718_
                                   (map (lambda (_clause134638_)
                                          (let* ((___stx136117136118_
                                                  _clause134638_)
                                                 (_g134641134656_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136117136118_)))))
                                            (let ((___kont136119136120_
                                                   (lambda (_L134684_
                                                            _L134685_
                                                            _L134686_)
                                                     (let* ((_body134706_
                                                             (map (lambda (_g134701134703_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134701134703_
                               'receiver:
                               _L134686_
                               'klass:
                               _$klass134432_
                               'methods:
                               _method-calls133251_
                               'slots:
                               _slot-refs133252_)))
                          _L134684_))
                    (__tmp137405
                     (let () (declare (not safe)) (cons _L134686_ _L134685_))))
               (declare (not safe))
               (cons __tmp137405 _body134706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136121136122_
                                                   (lambda () _clause134638_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx136117136118_))
                                                  (let ((_e134648134668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx136117136118_))))
                                                    (let ((_tl134646134673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134648134668_)))
                                                          (_hd134647134671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134648134668_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134647134671_))
                                                          (let ((_e134651134676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134647134671_))))
                    (let ((_tl134649134681_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134651134676_)))
                          (_hd134650134679_
                           (let ()
                             (declare (not safe))
                             (##car _e134651134676_))))
                      (___kont136119136120_
                       _tl134646134673_
                       _tl134649134681_
                       _hd134650134679_)))
                  (___kont136121136122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136121136122_)))))
                                        (let ((__tmp137406
                                               (lambda (_g134710134713_
                                                        _g134711134715_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134710134713_
                                                         _g134711134715_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137406 '() _L134624_))))
                                  (__tmp137407
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134718_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137407 _L134186_)))
                         _clause134582134621_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134577134605_
                                                   _target134574134600_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134568134587_
                                                 _g134569134590_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134568134587_ _g134569134590_)))))
                            (let ()
                              (declare (not safe))
                              (_g134568134587_ _g134569134590_))))))
                (declare (not safe))
                (_g134567134720_ _L134186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134725_
                                                      (let ((__tmp137409
                                                             (let ((__tmp137410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137412
                                   (let ((__tmp137413
                                          (let ((__tmp137415
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L134188_ '())))
                                                (__tmp137414
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134566_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137415 __tmp137414))))
                                     (declare (not safe))
                                     (cons __tmp137413 '())))
                                  (__tmp137411
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134723_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137412 __tmp137411))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137410))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137409 _stx133159_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134727_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl133163_
                                                         _$klass134432_
                                                         _$method-table134434_
                                                         _methods-bind134457_
                                                         _slots-bind134480_
                                                         _specializer-impl134725_))))
                                                (let ((__tmp137417
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L133232_)))
                                                      (__tmp137416
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134430_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137417
                                                   '" => "
                                                   __tmp137416))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def133164_
                                                   _L133232_
                                                   _specializer-id134430_
                                                   _specializer-impl134727_)))))
                                        _hd134119134181_
                                        _hd134116134173_
                                        _hd134113134165_)
                                       (let ()
                                         (declare (not safe))
                                         (_g134095134125_ _g134096134128_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134095134125_ _g134096134128_)))
                           (let ()
                             (declare (not safe))
                             (_g134095134125_ _g134096134128_)))
                       (let ()
                         (declare (not safe))
                         (_g134095134125_ _g134096134128_)))))
               (let () (declare (not safe)) (_g134095134125_ _g134096134128_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134095134125_
                                                      _g134096134128_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134095134125_
                                              _g134096134128_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134095134125_ _g134096134128_)))))
                           (let ()
                             (declare (not safe))
                             (_g134095134125_ _g134096134128_)))))
                   (let ()
                     (declare (not safe))
                     (_g134095134125_ _g134096134128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134095134125_
                                                      _g134096134128_))))))
                                       (declare (not safe))
                                       (_g134094134730_ _L133231_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L133231_))
                                         (let* ((_g134733134786_
                                                 (lambda (_g134734134783_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134734134783_))))
                                                (_g134732135917_
                                                 (lambda (_g134734134789_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134734134789_))
                                                       (let ((_e134742134791_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134734134789_))))
                 (let ((_hd134741134794_
                        (let () (declare (not safe)) (##car _e134742134791_)))
                       (_tl134740134796_
                        (let () (declare (not safe)) (##cdr _e134742134791_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134741134794_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134741134794_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134740134796_))
                               (let ((_e134745134799_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134740134796_))))
                                 (let ((_hd134744134802_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134745134799_)))
                                       (_tl134743134804_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134745134799_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134744134802_))
                                       (let ((_e134748134807_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134744134802_))))
                                         (let ((_hd134747134810_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134748134807_)))
                                               (_tl134746134812_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134748134807_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134747134810_))
                                               (let ((_e134751134815_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134747134810_))))
                                                 (let ((_hd134750134818_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134751134815_)))
                                                       (_tl134749134820_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134751134815_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134750134818_))
                                                       (let ((_e134754134823_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134750134818_))))
                 (let ((_hd134753134826_
                        (let () (declare (not safe)) (##car _e134754134823_)))
                       (_tl134752134828_
                        (let () (declare (not safe)) (##cdr _e134754134823_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134752134828_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134749134820_))
                           (let ((_e134757134831_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134749134820_))))
                             (let ((_hd134756134834_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134757134831_)))
                                   (_tl134755134836_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134757134831_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134756134834_))
                                   (let ((_e134760134839_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134756134834_))))
                                     (let ((_hd134759134842_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134760134839_)))
                                           (_tl134758134844_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134760134839_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134759134842_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134759134842_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134758134844_))
                                                   (let ((_e134763134847_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134758134844_))))
                                                     (let ((_hd134762134850_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134763134847_)))
                                                           (_tl134761134852_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134763134847_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134762134850_))
                                                           (let ((_e134766134855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134762134850_))))
                     (let ((_hd134765134858_
                            (let ()
                              (declare (not safe))
                              (##car _e134766134855_)))
                           (_tl134764134860_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134766134855_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134765134858_))
                           (let ((_e134769134863_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134765134858_))))
                             (let ((_hd134768134866_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134769134863_)))
                                   (_tl134767134868_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134769134863_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134768134866_))
                                   (let ((_e134772134871_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134768134866_))))
                                     (let ((_hd134771134874_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134772134871_)))
                                           (_tl134770134876_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134772134871_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134770134876_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134767134868_))
                                               (let ((_e134775134879_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134767134868_))))
                                                 (let ((_hd134774134882_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134775134879_)))
                                                       (_tl134773134884_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134775134879_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134773134884_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134764134860_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134761134852_))
                       (let ((_e134778134887_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134761134852_))))
                         (let ((_hd134777134890_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134778134887_)))
                               (_tl134776134892_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134778134887_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134776134892_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134755134836_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134746134812_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134743134804_))
                                           (let ((_e134781134895_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134743134804_))))
                                             (let ((_hd134780134898_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134781134895_)))
                                                   (_tl134779134900_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134781134895_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134779134900_))
                                                   ((lambda (_L134903_
                                                             _L134904_
                                                             _L134905_
                                                             _L134906_
                                                             _L134907_)
                                                      (let* ((_g134946135008_
                                                              (lambda (_g134947135005_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134947135005_))))
                     (_g134945135914_
                      (lambda (_g134947135011_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134947135011_))
                            (let ((_e134955135013_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134947135011_))))
                              (let ((_hd134954135016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134955135013_)))
                                    (_tl134953135018_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134955135013_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd134954135016_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd134954135016_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl134953135018_))
                                            (let ((_e134958135021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl134953135018_))))
                                              (let ((_hd134957135024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134958135021_)))
                                                    (_tl134956135026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134958135021_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134956135026_))
                                                    (let ((_e134961135029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134956135026_))))
                                                      (let ((_hd134960135032_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134961135029_)))
                    (_tl134959135034_
                     (let () (declare (not safe)) (##cdr _e134961135029_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd134960135032_))
                    (let ((_e134964135037_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd134960135032_))))
                      (let ((_hd134963135040_
                             (let ()
                               (declare (not safe))
                               (##car _e134964135037_)))
                            (_tl134962135042_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134964135037_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd134963135040_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd134963135040_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134962135042_))
                                    (let ((_e134967135045_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134962135042_))))
                                      (let ((_hd134966135048_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134967135045_)))
                                            (_tl134965135050_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134967135045_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134966135048_))
                                            (let ((_e134970135053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134966135048_))))
                                              (let ((_hd134969135056_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134970135053_)))
                                                    (_tl134968135058_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134970135053_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd134969135056_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd134969135056_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl134968135058_))
                                                            (let ((_e134973135061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl134968135058_))))
                      (let ((_hd134972135064_
                             (let ()
                               (declare (not safe))
                               (##car _e134973135061_)))
                            (_tl134971135066_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134973135061_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134971135066_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl134965135050_))
                                (let ((_e134976135069_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl134965135050_))))
                                  (let ((_hd134975135072_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134976135069_)))
                                        (_tl134974135074_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134976135069_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134975135072_))
                                        (let ((_e134979135077_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134975135072_))))
                                          (let ((_hd134978135080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134979135077_)))
                                                (_tl134977135082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134979135077_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd134978135080_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd134978135080_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl134977135082_))
                                                        (let ((_e134982135085_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl134977135082_))))
                  (let ((_hd134981135088_
                         (let () (declare (not safe)) (##car _e134982135085_)))
                        (_tl134980135090_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134982135085_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl134980135090_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl134974135074_))
                            (let ((_e134985135093_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl134974135074_))))
                              (let ((_hd134984135096_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134985135093_)))
                                    (_tl134983135098_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134985135093_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd134984135096_))
                                    (let ((_e134988135101_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd134984135096_))))
                                      (let ((_hd134987135104_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134988135101_)))
                                            (_tl134986135106_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134988135101_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd134987135104_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd134987135104_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134986135106_))
                                                    (let ((_e134991135109_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134986135106_))))
                                                      (let ((_hd134990135112_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134991135109_)))
                    (_tl134989135114_
                     (let () (declare (not safe)) (##cdr _e134991135109_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl134989135114_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134983135098_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl134983135098_))
                                  '1)
                            (let ((_g137314_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl134983135098_
                                      '1))))
                              (begin
                                (let ((_g137315_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137314_)
                                             (##vector-length _g137314_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137315_ 2)))
                                      (error "Context expects 2 values"
                                             _g137315_)))
                                (let ((_target134992135117_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137314_ 0)))
                                      (_tl134994135119_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137314_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl134994135119_))
                                      (let ((_e135003135122_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl134994135119_))))
                                        (let ((_hd135002135125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e135003135122_)))
                                              (_tl135001135127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e135003135122_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl135001135127_))
                                              (letrec ((_loop134995135130_
                                                        (lambda (_hd134993135133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref134999135135_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134993135133_))
                      (let ((_e134996135138_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134993135133_))))
                        (let ((_lp-hd134997135141_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134996135138_)))
                              (_lp-tl134998135143_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134996135138_))))
                          (let ((__tmp137387
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134997135141_
                                         _kw-ref134999135135_))))
                            (declare (not safe))
                            (_loop134995135130_
                             _lp-tl134998135143_
                             __tmp137387))))
                      (let ((_kw-ref135000135146_
                             (reverse _kw-ref134999135135_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134959135034_))
                            ((lambda (_L135149_
                                      _L135150_
                                      _L135151_
                                      _L135152_
                                      _L135153_)
                               (let* ((_kw-count135204_
                                       (length (let ((__tmp137316
                                                      (lambda (_g135196135199_
                                                               _g135197135201_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g135196135199_
                                                                _g135197135201_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137316
                                                         '()
                                                         _L135150_))))
                                      (_self-index135206_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count135204_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134905_))
                                     (let* ((_g135209135223_
                                             (lambda (_g135210135220_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g135210135220_))))
                                            (_g135208135336_
                                             (lambda (_g135210135226_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g135210135226_))
                                                   (let ((_e135215135228_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g135210135226_))))
                                                     (let ((_hd135214135231_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e135215135228_)))
                                                           (_tl135213135233_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e135215135228_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135213135233_))
                                                           (let ((_e135218135236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135213135233_))))
                     (let ((_hd135217135239_
                            (let ()
                              (declare (not safe))
                              (##car _e135218135236_)))
                           (_tl135216135241_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135218135236_))))
                       ((lambda (_L135244_ _L135245_)
                          (let ((_self135261_
                                 (list-ref _L135245_ _self-index135206_)))
                            (for-each
                             (lambda (_g135262135264_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g135262135264_
                                  'receiver:
                                  _self135261_
                                  'methods:
                                  _method-calls133251_
                                  'slots:
                                  _slot-refs133252_)))
                             _L135244_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?133255_))
                                _stx133159_
                                (let* ((_specializer-id135273_
                                        (let* ((_id135267_
                                                (let ((__tmp137360
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L133232_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137360
                                                   '"::specialize")))
                                               (_specializer-id135270_
                                                (let ((__tmp137361
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx133159_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id135267_
                                                   __tmp137361))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id135270_))
                                          _specializer-id135270_))
                                       (_$klass135275_
                                        (let ((__tmp137362 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137362)))
                                       (_$method-table135277_
                                        (let ((__tmp137363
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137363)))
                                       (_methods135279_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls133251_)))
                                       (_$methods135283_
                                        (map (lambda (_id135281_)
                                               (let ((__tmp137364
                                                      (gensym _id135281_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137364)))
                                             _methods135279_))
                                       (_g137365_
                                        (for-each
                                         (lambda (_g135284135287_
                                                  _g135285135289_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls133251_
                                              _g135284135287_
                                              _g135285135289_)))
                                         _methods135279_
                                         _$methods135283_))
                                       (_methods-bind135300_
                                        (map (lambda (_g135292135295_
                                                      _g135293135297_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind133161_
                                                  _$klass135275_
                                                  _$method-table135277_
                                                  _g135292135295_
                                                  _g135293135297_)))
                                             _methods135279_
                                             _$methods135283_))
                                       (_slots135302_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs133252_)))
                                       (_$slots135306_
                                        (map (lambda (_id135304_)
                                               (let ((__tmp137366
                                                      (gensym _id135304_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137366)))
                                             _slots135302_))
                                       (_g137367_
                                        (for-each
                                         (lambda (_g135307135310_
                                                  _g135308135312_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs133252_
                                              _g135307135310_
                                              _g135308135312_)))
                                         _slots135302_
                                         _$slots135306_))
                                       (_slots-bind135323_
                                        (map (lambda (_g135315135318_
                                                      _g135316135320_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind133162_
                                                  _$klass135275_
                                                  _g135315135318_
                                                  _g135316135320_)))
                                             _slots135302_
                                             _$slots135306_))
                                       (_specializer-impl135331_
                                        (let* ((_specializer-body135329_
                                                (map (lambda (_g135324135326_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135324135326_
                                                          'receiver:
                                                          _self135261_
                                                          'klass:
                                                          _$klass135275_
                                                          'methods:
                                                          _method-calls133251_
                                                          'slots:
                                                          _slot-refs133252_)))
                                                     _L135244_))
                                               (__tmp137368
                                                (let ((__tmp137369
                                                       (let ((__tmp137371
                                                              (let ((__tmp137372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137384
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134907_ '())))
                                   (__tmp137373
                                    (let ((__tmp137374
                                           (let ((__tmp137375
                                                  (let ((__tmp137377
                                                         (let ((__tmp137378
                                                                (let ((__tmp137383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134906_ '())))
                              (__tmp137379
                               (let ((__tmp137380
                                      (let ((__tmp137381
                                             (let ((__tmp137382
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L135245_
                                                            _specializer-body135329_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137382))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137381
                                         _L134905_))))
                                 (declare (not safe))
                                 (cons __tmp137380 '()))))
                          (declare (not safe))
                          (cons __tmp137383 __tmp137379))))
                   (declare (not safe))
                   (cons __tmp137378 '())))
                (__tmp137376
                 (let () (declare (not safe)) (cons _L134904_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137377
                                                          __tmp137376))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137375))))
                                      (declare (not safe))
                                      (cons __tmp137374 '()))))
                               (declare (not safe))
                               (cons __tmp137384 __tmp137373))))
                        (declare (not safe))
                        (cons __tmp137372 '())))
                     (__tmp137370
                      (let () (declare (not safe)) (cons _L134903_ '()))))
                 (declare (not safe))
                 (cons __tmp137371 __tmp137370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137369))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137368
                                           _stx133159_)))
                                       (_specializer-impl135333_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl133163_
                                           _$klass135275_
                                           _$method-table135277_
                                           _methods-bind135300_
                                           _slots-bind135323_
                                           _specializer-impl135331_))))
                                  (let ((__tmp137386
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L133232_)))
                                        (__tmp137385
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id135273_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137386
                                     '" => "
                                     __tmp137385))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def133164_
                                     _L133232_
                                     _specializer-id135273_
                                     _specializer-impl135333_))))))
                        _tl135216135241_
                        _hd135217135239_)))
                   (let ()
                     (declare (not safe))
                     (_g135209135223_ _g135210135226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g135209135223_
                                                      _g135210135226_))))))
                                       (declare (not safe))
                                       (_g135208135336_ _L134905_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134905_))
                                         (let* ((_g135339135369_
                                                 (lambda (_g135340135366_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135340135366_))))
                                                (_g135338135911_
                                                 (lambda (_g135340135372_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135340135372_))
                                                       (let ((_e135346135374_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135340135372_))))
                 (let ((_hd135345135377_
                        (let () (declare (not safe)) (##car _e135346135374_)))
                       (_tl135344135379_
                        (let () (declare (not safe)) (##cdr _e135346135374_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135344135379_))
                       (let ((_e135349135382_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135344135379_))))
                         (let ((_hd135348135385_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135349135382_)))
                               (_tl135347135387_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135349135382_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135348135385_))
                               (let ((_e135352135390_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135348135385_))))
                                 (let ((_hd135351135393_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135352135390_)))
                                       (_tl135350135395_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135352135390_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135351135393_))
                                       (let ((_e135355135398_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135351135393_))))
                                         (let ((_hd135354135401_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135355135398_)))
                                               (_tl135353135403_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135355135398_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135354135401_))
                                               (let ((_e135358135406_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135354135401_))))
                                                 (let ((_hd135357135409_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135358135406_)))
                                                       (_tl135356135411_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135358135406_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135356135411_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135353135403_))
                                                           (let ((_e135361135414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135353135403_))))
                     (let ((_hd135360135417_
                            (let ()
                              (declare (not safe))
                              (##car _e135361135414_)))
                           (_tl135359135419_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135361135414_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135359135419_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135350135395_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135347135387_))
                                   (let ((_e135364135422_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135347135387_))))
                                     (let ((_hd135363135425_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135364135422_)))
                                           (_tl135362135427_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135364135422_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135362135427_))
                                           ((lambda (_L135430_
                                                     _L135431_
                                                     _L135432_)
                                              (let* ((_g135455135469_
                                                      (lambda (_g135456135466_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135456135466_))))
                                                     (_g135454135510_
                                                      (lambda (_g135456135472_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135456135472_))
                                                            (let ((_e135461135474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135456135472_))))
                      (let ((_hd135460135477_
                             (let ()
                               (declare (not safe))
                               (##car _e135461135474_)))
                            (_tl135459135479_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135461135474_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135459135479_))
                            (let ((_e135464135482_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135459135479_))))
                              (let ((_hd135463135485_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135464135482_)))
                                    (_tl135462135487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135464135482_))))
                                ((lambda (_L135490_ _L135491_)
                                   (let ((_self135504_
                                          (list-ref
                                           _L135491_
                                           _self-index135206_)))
                                     (for-each
                                      (lambda (_g135505135507_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135505135507_
                                           'receiver:
                                           _self135504_
                                           'methods:
                                           _method-calls133251_
                                           'slots:
                                           _slot-refs133252_)))
                                      _L135490_)))
                                 _tl135462135487_
                                 _hd135463135485_)))
                            (let ()
                              (declare (not safe))
                              (_g135455135469_ _g135456135472_)))))
                    (let ()
                      (declare (not safe))
                      (_g135455135469_ _g135456135472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135454135510_ _L135431_))
                                              (let* ((_g135513135532_
                                                      (lambda (_g135514135529_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135514135529_))))
                                                     (_g135512135637_
                                                      (lambda (_g135514135535_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135514135535_))
                                                            (let ((_e135518135537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135514135535_))))
                      (let ((_hd135517135540_
                             (let ()
                               (declare (not safe))
                               (##car _e135518135537_)))
                            (_tl135516135542_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135518135537_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135516135542_))
                            (let ((_g137317_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135516135542_
                                      '0))))
                              (begin
                                (let ((_g137318_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137317_)
                                             (##vector-length _g137317_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137318_ 2)))
                                      (error "Context expects 2 values"
                                             _g137318_)))
                                (let ((_target135519135545_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137317_ 0)))
                                      (_tl135521135547_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137317_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135521135547_))
                                      (letrec ((_loop135522135550_
                                                (lambda (_hd135520135553_
                                                         _clause135526135555_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135520135553_))
                                                      (let ((_e135523135558_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135520135553_))))
                (let ((_lp-hd135524135561_
                       (let () (declare (not safe)) (##car _e135523135558_)))
                      (_lp-tl135525135563_
                       (let () (declare (not safe)) (##cdr _e135523135558_))))
                  (let ((__tmp137320
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135524135561_ _clause135526135555_))))
                    (declare (not safe))
                    (_loop135522135550_ _lp-tl135525135563_ __tmp137320))))
              (let ((_clause135527135566_ (reverse _clause135526135555_)))
                ((lambda (_L135569_)
                   (for-each
                    (lambda (_clause135582_)
                      (let* ((_g135584135595_
                              (lambda (_g135585135592_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135585135592_))))
                             (_g135583135627_
                              (lambda (_g135585135598_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135585135598_))
                                    (let ((_e135590135600_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135585135598_))))
                                      (let ((_hd135589135603_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135590135600_)))
                                            (_tl135588135605_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135590135600_))))
                                        ((lambda (_L135608_ _L135609_)
                                           (let ((_self135621_
                                                  (list-ref
                                                   _L135609_
                                                   _self-index135206_)))
                                             (for-each
                                              (lambda (_g135622135624_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135622135624_
                                                   'receiver:
                                                   _self135621_
                                                   'methods:
                                                   _method-calls133251_
                                                   'slots:
                                                   _slot-refs133252_)))
                                              _L135608_)))
                                         _tl135588135605_
                                         _hd135589135603_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135584135595_ _g135585135598_))))))
                        (declare (not safe))
                        (_g135583135627_ _clause135582_)))
                    (let ((__tmp137319
                           (lambda (_g135629135632_ _g135630135634_)
                             (let ()
                               (declare (not safe))
                               (cons _g135629135632_ _g135630135634_)))))
                      (declare (not safe))
                      (foldr1 __tmp137319 '() _L135569_))))
                 _clause135527135566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135522135550_
                                           _target135519135545_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135513135532_ _g135514135535_))))))
                            (let ()
                              (declare (not safe))
                              (_g135513135532_ _g135514135535_)))))
                    (let ()
                      (declare (not safe))
                      (_g135513135532_ _g135514135535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135512135637_ _L135430_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133255_))
                                                  _stx133159_
                                                  (let* ((_specializer-id135646_
                                                          (let* ((_id135640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137321
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133232_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137321 '"::specialize")))
                         (_specializer-id135643_
                          (let ((__tmp137322
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133159_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135640_ __tmp137322))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135643_))
                    _specializer-id135643_))
                 (_$klass135648_
                  (let ((__tmp137323 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137323)))
                 (_$method-table135650_
                  (let ((__tmp137324 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137324)))
                 (_methods135652_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133251_)))
                 (_$methods135656_
                  (map (lambda (_id135654_)
                         (let ((__tmp137325 (gensym _id135654_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137325)))
                       _methods135652_))
                 (_g137326_
                  (for-each
                   (lambda (_g135657135660_ _g135658135662_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133251_
                        _g135657135660_
                        _g135658135662_)))
                   _methods135652_
                   _$methods135656_))
                 (_methods-bind135673_
                  (map (lambda (_g135665135668_ _g135666135670_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133161_
                            _$klass135648_
                            _$method-table135650_
                            _g135665135668_
                            _g135666135670_)))
                       _methods135652_
                       _$methods135656_))
                 (_slots135675_
                  (let () (declare (not safe)) (hash-keys _slot-refs133252_)))
                 (_$slots135679_
                  (map (lambda (_id135677_)
                         (let ((__tmp137327 (gensym _id135677_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137327)))
                       _slots135675_))
                 (_g137328_
                  (for-each
                   (lambda (_g135680135683_ _g135681135685_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133252_
                        _g135680135683_
                        _g135681135685_)))
                   _slots135675_
                   _$slots135679_))
                 (_slots-bind135696_
                  (map (lambda (_g135688135691_ _g135689135693_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133162_
                            _$klass135648_
                            _g135688135691_
                            _g135689135693_)))
                       _slots135675_
                       _$slots135679_))
                 (_specializer-lambda-expr135769_
                  (let* ((_g135698135712_
                          (lambda (_g135699135709_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135699135709_))))
                         (_g135697135766_
                          (lambda (_g135699135715_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135699135715_))
                                (let ((_e135704135717_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135699135715_))))
                                  (let ((_hd135703135720_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135704135717_)))
                                        (_tl135702135722_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135704135717_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135702135722_))
                                        (let ((_e135707135725_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135702135722_))))
                                          (let ((_hd135706135728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135707135725_)))
                                                (_tl135705135730_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135707135725_))))
                                            ((lambda (_L135733_ _L135734_)
                                               (let* ((_self135757_
                                                       (list-ref
                                                        _L135734_
                                                        _self-index135206_))
                                                      (_body135763_
                                                       (map (lambda (_g135758135760_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135758135760_
                         'receiver:
                         _self135757_
                         'klass:
                         _$klass135648_
                         'methods:
                         _method-calls133251_
                         'slots:
                         _slot-refs133252_)))
                    _L135733_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137329
                                                        (let ((__tmp137330
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135734_ _body135763_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137329
                                                    _L135431_))))
                                             _tl135705135730_
                                             _hd135706135728_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135698135712_ _g135699135715_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135698135712_ _g135699135715_))))))
                    (declare (not safe))
                    (_g135697135766_ _L135431_)))
                 (_specializer-case-lambda-expr135904_
                  (let* ((_g135771135790_
                          (lambda (_g135772135787_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135772135787_))))
                         (_g135770135901_
                          (lambda (_g135772135793_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135772135793_))
                                (let ((_e135776135795_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135772135793_))))
                                  (let ((_hd135775135798_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135776135795_)))
                                        (_tl135774135800_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135776135795_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135774135800_))
                                        (let ((_g137331_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135774135800_
                                                  '0))))
                                          (begin
                                            (let ((_g137332_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137331_)
                                                         (##vector-length
                                                          _g137331_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137332_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137332_)))
                                            (let ((_target135777135803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137331_
                                                      0)))
                                                  (_tl135779135805_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137331_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135779135805_))
                                                  (letrec ((_loop135780135808_
                                                            (lambda (_hd135778135811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135784135813_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135778135811_))
                          (let ((_e135781135816_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135778135811_))))
                            (let ((_lp-hd135782135819_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135781135816_)))
                                  (_lp-tl135783135821_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135781135816_))))
                              (let ((__tmp137335
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135782135819_
                                             _clause135784135813_))))
                                (declare (not safe))
                                (_loop135780135808_
                                 _lp-tl135783135821_
                                 __tmp137335))))
                          (let ((_clause135785135824_
                                 (reverse _clause135784135813_)))
                            ((lambda (_L135827_)
                               (let* ((_clauses135899_
                                       (map (lambda (_clause135841_)
                                              (let* ((_g135843135854_
                                                      (lambda (_g135844135851_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135844135851_))))
                                                     (_g135842135889_
                                                      (lambda (_g135844135857_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135844135857_))
                                                            (let ((_e135849135859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135844135857_))))
                      (let ((_hd135848135862_
                             (let ()
                               (declare (not safe))
                               (##car _e135849135859_)))
                            (_tl135847135864_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135849135859_))))
                        ((lambda (_L135867_ _L135868_)
                           (let* ((_self135880_
                                   (list-ref _L135868_ _self-index135206_))
                                  (_body135886_
                                   (map (lambda (_g135881135883_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135881135883_
                                             'receiver:
                                             _self135880_
                                             'klass:
                                             _$klass135648_
                                             'methods:
                                             _method-calls133251_
                                             'slots:
                                             _slot-refs133252_)))
                                        _L135867_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135868_ _body135886_))))
                         _tl135847135864_
                         _hd135848135862_)))
                    (let ()
                      (declare (not safe))
                      (_g135843135854_ _g135844135857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135842135889_
                                                 _clause135841_)))
                                            (let ((__tmp137333
                                                   (lambda (_g135891135894_
                                                            _g135892135896_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135891135894_
                                                             _g135892135896_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137333
                                                      '()
                                                      _L135827_))))
                                      (__tmp137334
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135899_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137334
                                  _L135430_)))
                             _clause135785135824_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135780135808_
                                                       _target135777135803_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135771135790_
                                                     _g135772135793_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135771135790_ _g135772135793_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135771135790_ _g135772135793_))))))
                    (declare (not safe))
                    (_g135770135901_ _L135430_)))
                 (_specializer-impl135906_
                  (let ((__tmp137336
                         (let ((__tmp137337
                                (let ((__tmp137339
                                       (let ((__tmp137340
                                              (let ((__tmp137357
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134907_ '())))
                                                    (__tmp137341
                                                     (let ((__tmp137342
                                                            (let ((__tmp137343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137345
                                  (let ((__tmp137346
                                         (let ((__tmp137356
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134906_ '())))
                                               (__tmp137347
                                                (let ((__tmp137348
                                                       (let ((__tmp137349
                                                              (let ((__tmp137350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137352
                                    (let ((__tmp137353
                                           (let ((__tmp137355
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135432_ '())))
                                                 (__tmp137354
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135769_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137355 __tmp137354))))
                                      (declare (not safe))
                                      (cons __tmp137353 '())))
                                   (__tmp137351
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135904_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137352 __tmp137351))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137350))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137349 _stx133159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137348 '()))))
                                           (declare (not safe))
                                           (cons __tmp137356 __tmp137347))))
                                    (declare (not safe))
                                    (cons __tmp137346 '())))
                                 (__tmp137344
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134904_ '()))))
                             (declare (not safe))
                             (cons __tmp137345 __tmp137344))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137343))))
               (declare (not safe))
               (cons __tmp137342 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137357
                                                      __tmp137341))))
                                         (declare (not safe))
                                         (cons __tmp137340 '())))
                                      (__tmp137338
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134903_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137339 __tmp137338))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137337))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137336 _stx133159_)))
                 (_specializer-impl135908_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133163_
                     _$klass135648_
                     _$method-table135650_
                     _methods-bind135673_
                     _slots-bind135696_
                     _specializer-impl135906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137359
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133232_)))
                                                          (__tmp137358
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135646_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137359
                                                       '" => "
                                                       __tmp137358))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133164_
                                                       _L133232_
                                                       _specializer-id135646_
                                                       _specializer-impl135908_)))))
                                            _hd135363135425_
                                            _hd135360135417_
                                            _hd135357135409_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135339135369_
                                              _g135340135372_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135339135369_ _g135340135372_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135339135369_ _g135340135372_)))
                           (let ()
                             (declare (not safe))
                             (_g135339135369_ _g135340135372_)))))
                   (let ()
                     (declare (not safe))
                     (_g135339135369_ _g135340135372_)))
               (let ()
                 (declare (not safe))
                 (_g135339135369_ _g135340135372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135339135369_
                                                  _g135340135372_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135339135369_ _g135340135372_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135339135369_ _g135340135372_)))))
                       (let ()
                         (declare (not safe))
                         (_g135339135369_ _g135340135372_)))))
               (let ()
                 (declare (not safe))
                 (_g135339135369_ _g135340135372_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135338135911_ _L134905_))
                                         _stx133159_))))
                             _hd135002135125_
                             _kw-ref135000135146_
                             _hd134990135112_
                             _hd134981135088_
                             _hd134972135064_)
                            (let ()
                              (declare (not safe))
                              (_g134946135008_ _g134947135011_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134995135130_
                                                   _target134992135117_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134946135008_
                                                 _g134947135011_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134946135008_ _g134947135011_))))))
                            (let ()
                              (declare (not safe))
                              (_g134946135008_ _g134947135011_)))
                        (let ()
                          (declare (not safe))
                          (_g134946135008_ _g134947135011_)))
                    (let ()
                      (declare (not safe))
                      (_g134946135008_ _g134947135011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134946135008_
                                                       _g134947135011_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134946135008_
                                                   _g134947135011_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134946135008_
                                               _g134947135011_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134946135008_ _g134947135011_)))))
                            (let ()
                              (declare (not safe))
                              (_g134946135008_ _g134947135011_)))
                        (let ()
                          (declare (not safe))
                          (_g134946135008_ _g134947135011_)))))
                (let ()
                  (declare (not safe))
                  (_g134946135008_ _g134947135011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134946135008_
                                                       _g134947135011_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134946135008_
                                                   _g134947135011_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134946135008_ _g134947135011_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134946135008_ _g134947135011_)))
                            (let ()
                              (declare (not safe))
                              (_g134946135008_ _g134947135011_)))))
                    (let ()
                      (declare (not safe))
                      (_g134946135008_ _g134947135011_)))
                (let ()
                  (declare (not safe))
                  (_g134946135008_ _g134947135011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134946135008_
                                                       _g134947135011_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134946135008_
                                               _g134947135011_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134946135008_ _g134947135011_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134946135008_ _g134947135011_)))
                            (let ()
                              (declare (not safe))
                              (_g134946135008_ _g134947135011_)))))
                    (let ()
                      (declare (not safe))
                      (_g134946135008_ _g134947135011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134946135008_
                                                       _g134947135011_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134946135008_
                                               _g134947135011_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134946135008_ _g134947135011_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134946135008_ _g134947135011_)))))
                            (let ()
                              (declare (not safe))
                              (_g134946135008_ _g134947135011_))))))
                (declare (not safe))
                (_g134945135914_ _L134904_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134780134898_
                                                    _hd134777134890_
                                                    _hd134774134882_
                                                    _hd134771134874_
                                                    _hd134753134826_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134733134786_
                                                      _g134734134789_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134733134786_
                                              _g134734134789_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134733134786_ _g134734134789_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134733134786_ _g134734134789_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134733134786_ _g134734134789_)))))
                       (let ()
                         (declare (not safe))
                         (_g134733134786_ _g134734134789_)))
                   (let ()
                     (declare (not safe))
                     (_g134733134786_ _g134734134789_)))
               (let ()
                 (declare (not safe))
                 (_g134733134786_ _g134734134789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134733134786_
                                                  _g134734134789_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134733134786_
                                              _g134734134789_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134733134786_ _g134734134789_)))))
                           (let ()
                             (declare (not safe))
                             (_g134733134786_ _g134734134789_)))))
                   (let ()
                     (declare (not safe))
                     (_g134733134786_ _g134734134789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134733134786_
                                                      _g134734134789_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134733134786_
                                                  _g134734134789_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134733134786_
                                              _g134734134789_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134733134786_ _g134734134789_)))))
                           (let ()
                             (declare (not safe))
                             (_g134733134786_ _g134734134789_)))
                       (let ()
                         (declare (not safe))
                         (_g134733134786_ _g134734134789_)))))
               (let ()
                 (declare (not safe))
                 (_g134733134786_ _g134734134789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134733134786_
                                                  _g134734134789_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134733134786_ _g134734134789_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134733134786_ _g134734134789_)))
                           (let ()
                             (declare (not safe))
                             (_g134733134786_ _g134734134789_)))
                       (let ()
                         (declare (not safe))
                         (_g134733134786_ _g134734134789_)))))
               (let ()
                 (declare (not safe))
                 (_g134733134786_ _g134734134789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134732135917_ _L133231_))
                                         _stx133159_))))))))
                  (___kont136141136142_ (lambda () _stx133159_)))
              (let ((___match136170136171_
                     (lambda (_e133173133199_
                              _hd133172133202_
                              _tl133171133204_
                              _e133176133207_
                              _hd133175133210_
                              _tl133174133212_
                              _e133179133215_
                              _hd133178133218_
                              _tl133177133220_
                              _e133182133223_
                              _hd133181133226_
                              _tl133180133228_)
                       (let ((_L133231_ _hd133181133226_)
                             (_L133232_ _hd133178133218_))
                         (if (let ((__tmp137448
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L133232_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137448))
                             (___kont136139136140_ _L133231_ _L133232_)
                             (___kont136141136142_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136137136138_))
                    (let ((_e133173133199_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136137136138_))))
                      (let ((_tl133171133204_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133173133199_)))
                            (_hd133172133202_
                             (let ()
                               (declare (not safe))
                               (##car _e133173133199_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133171133204_))
                            (let ((_e133176133207_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133171133204_))))
                              (let ((_tl133174133212_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133176133207_)))
                                    (_hd133175133210_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133176133207_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133175133210_))
                                    (let ((_e133179133215_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133175133210_))))
                                      (let ((_tl133177133220_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133179133215_)))
                                            (_hd133178133218_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133179133215_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl133177133220_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl133174133212_))
                                                (let ((_e133182133223_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl133174133212_))))
                                                  (let ((_tl133180133228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e133182133223_)))
                                                        (_hd133181133226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e133182133223_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl133180133228_))
                                                        (___match136170136171_
                                                         _e133173133199_
                                                         _hd133172133202_
                                                         _tl133171133204_
                                                         _e133176133207_
                                                         _hd133175133210_
                                                         _tl133174133212_
                                                         _e133179133215_
                                                         _hd133178133218_
                                                         _tl133177133220_
                                                         _e133182133223_
                                                         _hd133181133226_
                                                         _tl133180133228_)
                                                        (___kont136141136142_))))
                                                (___kont136141136142_))
                                            (___kont136141136142_))))
                                    (___kont136141136142_))))
                            (___kont136141136142_))))
                    (___kont136141136142_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self132119_ _stx132120_)
        (let* ((___stx136173136174_ _stx132120_)
               (_g132128132350_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx136173136174_)))))
          (let ((___kont136175136176_
                 (lambda (_L133107_ _L133108_ _L133109_ _L133110_)
                   (let ((__tmp137450
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132119_ 'methods)))
                         (__tmp137449
                          (let () (declare (not safe)) (gx#stx-e _L133108_))))
                     (declare (not safe))
                     (hash-put! __tmp137450 __tmp137449 '#t))
                   (for-each
                    (lambda (_g133143133145_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132119_ _g133143133145_)))
                    (let ((__tmp137451
                           (lambda (_g133147133150_ _g133148133152_)
                             (let ()
                               (declare (not safe))
                               (cons _g133147133150_ _g133148133152_)))))
                      (declare (not safe))
                      (foldr1 __tmp137451 '() _L133107_)))))
                (___kont136179136180_
                 (lambda (_L132942_ _L132943_ _L132944_ _L132945_ _L132946_)
                   (let ((__tmp137453
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132119_ 'methods)))
                         (__tmp137452
                          (let () (declare (not safe)) (gx#stx-e _L132943_))))
                     (declare (not safe))
                     (hash-put! __tmp137453 __tmp137452 '#t))
                   (for-each
                    (lambda (_g132986132988_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132119_ _g132986132988_)))
                    (let ((__tmp137454
                           (lambda (_g132990132993_ _g132991132995_)
                             (let ()
                               (declare (not safe))
                               (cons _g132990132993_ _g132991132995_)))))
                      (declare (not safe))
                      (foldr1 __tmp137454 '() _L132942_)))))
                (___kont136183136184_
                 (lambda (_L132775_ _L132776_ _L132777_)
                   (let ((__tmp137456
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132119_ 'slots)))
                         (__tmp137455
                          (let () (declare (not safe)) (gx#stx-e _L132775_))))
                     (declare (not safe))
                     (hash-put! __tmp137456 __tmp137455 '#t))))
                (___kont136185136186_
                 (lambda (_L132652_ _L132653_ _L132654_ _L132655_)
                   (let ((__tmp137458
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132119_ 'slots)))
                         (__tmp137457
                          (let () (declare (not safe)) (gx#stx-e _L132653_))))
                     (declare (not safe))
                     (hash-put! __tmp137458 __tmp137457 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self132119_ _L132652_))))
                (___kont136187136188_
                 (lambda (_L132526_ _L132527_)
                   (let* ((_accessor132549_
                           (let ((__tmp137459
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132527_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137459)))
                          (_klass132551_
                           (let ((__tmp137460
                                  (##structure-ref
                                   _accessor132549_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132120_
                              __tmp137460)))
                          (_slot132553_
                           (##structure-ref
                            _accessor132549_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137463
                                     (##structure-ref
                                      _accessor132549_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137463))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132551_
                                     _slot132553_))
                                  (##structure-ref
                                   _klass132551_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137462
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132119_ 'slots)))
                               (__tmp137461
                                (##structure-ref
                                 _accessor132549_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137462 __tmp137461 '#t))))))
                (___kont136189136190_
                 (lambda (_L132426_ _L132427_ _L132428_)
                   (let* ((_mutator132455_
                           (let ((__tmp137464
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132428_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137464)))
                          (_klass132457_
                           (let ((__tmp137465
                                  (##structure-ref
                                   _mutator132455_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132120_
                              __tmp137465)))
                          (_slot132459_
                           (##structure-ref
                            _mutator132455_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137467
                                     (##structure-ref
                                      _mutator132455_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137467))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132457_
                                     _slot132459_))
                                  (##structure-ref
                                   _klass132457_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137466
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132119_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137466 _slot132459_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self132119_ _L132426_)))))
                (___kont136191136192_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self132119_ _stx132120_)))))
            (let* ((___match136672136673_
                    (lambda (_e132324132362_
                             _hd132323132365_
                             _tl132322132367_
                             _e132327132370_
                             _hd132326132373_
                             _tl132325132375_
                             _e132330132378_
                             _hd132329132381_
                             _tl132328132383_
                             _e132333132386_
                             _hd132332132389_
                             _tl132331132391_
                             _e132336132394_
                             _hd132335132397_
                             _tl132334132399_
                             _e132339132402_
                             _hd132338132405_
                             _tl132337132407_
                             _e132342132410_
                             _hd132341132413_
                             _tl132340132415_
                             _e132345132418_
                             _hd132344132421_
                             _tl132343132423_)
                      (let ((_L132426_ _hd132344132421_)
                            (_L132427_ _hd132341132413_)
                            (_L132428_ _hd132332132389_))
                        (if (and (let ((__tmp137469
                                        (let ((__tmp137470
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132428_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137470))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137469
                                    'gxc#!mutator::t))
                                 (let ((__tmp137468
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132119_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132427_
                                    __tmp137468)))
                            (___kont136189136190_
                             _L132426_
                             _L132427_
                             _L132428_)
                            (___kont136191136192_)))))
                   (___match136670136671_
                    (lambda (_e132324132362_
                             _hd132323132365_
                             _tl132322132367_
                             _e132327132370_
                             _hd132326132373_
                             _tl132325132375_
                             _e132330132378_
                             _hd132329132381_
                             _tl132328132383_
                             _e132333132386_
                             _hd132332132389_
                             _tl132331132391_
                             _e132336132394_
                             _hd132335132397_
                             _tl132334132399_
                             _e132339132402_
                             _hd132338132405_
                             _tl132337132407_
                             _e132342132410_
                             _hd132341132413_
                             _tl132340132415_
                             _e132345132418_
                             _hd132344132421_
                             _tl132343132423_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132343132423_))
                          (___match136672136673_
                           _e132324132362_
                           _hd132323132365_
                           _tl132322132367_
                           _e132327132370_
                           _hd132326132373_
                           _tl132325132375_
                           _e132330132378_
                           _hd132329132381_
                           _tl132328132383_
                           _e132333132386_
                           _hd132332132389_
                           _tl132331132391_
                           _e132336132394_
                           _hd132335132397_
                           _tl132334132399_
                           _e132339132402_
                           _hd132338132405_
                           _tl132337132407_
                           _e132342132410_
                           _hd132341132413_
                           _tl132340132415_
                           _e132345132418_
                           _hd132344132421_
                           _tl132343132423_)
                          (___kont136191136192_))))
                   (___match136664136665_
                    (lambda (_e132324132362_
                             _hd132323132365_
                             _tl132322132367_
                             _e132327132370_
                             _hd132326132373_
                             _tl132325132375_
                             _e132330132378_
                             _hd132329132381_
                             _tl132328132383_
                             _e132333132386_
                             _hd132332132389_
                             _tl132331132391_
                             _e132336132394_
                             _hd132335132397_
                             _tl132334132399_
                             _e132339132402_
                             _hd132338132405_
                             _tl132337132407_
                             _e132342132410_
                             _hd132341132413_
                             _tl132340132415_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132334132399_))
                          (let ((_e132345132418_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132334132399_))))
                            (let ((_tl132343132423_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132345132418_)))
                                  (_hd132344132421_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132345132418_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132343132423_))
                                  (___match136672136673_
                                   _e132324132362_
                                   _hd132323132365_
                                   _tl132322132367_
                                   _e132327132370_
                                   _hd132326132373_
                                   _tl132325132375_
                                   _e132330132378_
                                   _hd132329132381_
                                   _tl132328132383_
                                   _e132333132386_
                                   _hd132332132389_
                                   _tl132331132391_
                                   _e132336132394_
                                   _hd132335132397_
                                   _tl132334132399_
                                   _e132339132402_
                                   _hd132338132405_
                                   _tl132337132407_
                                   _e132342132410_
                                   _hd132341132413_
                                   _tl132340132415_
                                   _e132345132418_
                                   _hd132344132421_
                                   _tl132343132423_)
                                  (___kont136191136192_))))
                          (___kont136191136192_))))
                   (___match136610136611_
                    (lambda (_e132300132470_
                             _hd132299132473_
                             _tl132298132475_
                             _e132303132478_
                             _hd132302132481_
                             _tl132301132483_
                             _e132306132486_
                             _hd132305132489_
                             _tl132304132491_
                             _e132309132494_
                             _hd132308132497_
                             _tl132307132499_
                             _e132312132502_
                             _hd132311132505_
                             _tl132310132507_
                             _e132315132510_
                             _hd132314132513_
                             _tl132313132515_
                             _e132318132518_
                             _hd132317132521_
                             _tl132316132523_)
                      (let ((_L132526_ _hd132317132521_)
                            (_L132527_ _hd132308132497_))
                        (if (and (let ((__tmp137472
                                        (let ((__tmp137473
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132527_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137473))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137472
                                    'gxc#!accessor::t))
                                 (let ((__tmp137471
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132119_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132526_
                                    __tmp137471)))
                            (___kont136187136188_ _L132526_ _L132527_)
                            (___kont136191136192_)))))
                   (___match136608136609_
                    (lambda (_e132300132470_
                             _hd132299132473_
                             _tl132298132475_
                             _e132303132478_
                             _hd132302132481_
                             _tl132301132483_
                             _e132306132486_
                             _hd132305132489_
                             _tl132304132491_
                             _e132309132494_
                             _hd132308132497_
                             _tl132307132499_
                             _e132312132502_
                             _hd132311132505_
                             _tl132310132507_
                             _e132315132510_
                             _hd132314132513_
                             _tl132313132515_
                             _e132318132518_
                             _hd132317132521_
                             _tl132316132523_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132310132507_))
                          (___match136610136611_
                           _e132300132470_
                           _hd132299132473_
                           _tl132298132475_
                           _e132303132478_
                           _hd132302132481_
                           _tl132301132483_
                           _e132306132486_
                           _hd132305132489_
                           _tl132304132491_
                           _e132309132494_
                           _hd132308132497_
                           _tl132307132499_
                           _e132312132502_
                           _hd132311132505_
                           _tl132310132507_
                           _e132315132510_
                           _hd132314132513_
                           _tl132313132515_
                           _e132318132518_
                           _hd132317132521_
                           _tl132316132523_)
                          (___match136664136665_
                           _e132300132470_
                           _hd132299132473_
                           _tl132298132475_
                           _e132303132478_
                           _hd132302132481_
                           _tl132301132483_
                           _e132306132486_
                           _hd132305132489_
                           _tl132304132491_
                           _e132309132494_
                           _hd132308132497_
                           _tl132307132499_
                           _e132312132502_
                           _hd132311132505_
                           _tl132310132507_
                           _e132315132510_
                           _hd132314132513_
                           _tl132313132515_
                           _e132318132518_
                           _hd132317132521_
                           _tl132316132523_))))
                   (___match136554136555_
                    (lambda (_e132265132564_
                             _hd132264132567_
                             _tl132263132569_
                             _e132268132572_
                             _hd132267132575_
                             _tl132266132577_
                             _e132271132580_
                             _hd132270132583_
                             _tl132269132585_
                             _e132274132588_
                             _hd132273132591_
                             _tl132272132593_
                             _e132277132596_
                             _hd132276132599_
                             _tl132275132601_
                             _e132280132604_
                             _hd132279132607_
                             _tl132278132609_
                             _e132283132612_
                             _hd132282132615_
                             _tl132281132617_
                             _e132286132620_
                             _hd132285132623_
                             _tl132284132625_
                             _e132289132628_
                             _hd132288132631_
                             _tl132287132633_
                             _e132292132636_
                             _hd132291132639_
                             _tl132290132641_
                             _e132295132644_
                             _hd132294132647_
                             _tl132293132649_)
                      (let ((_L132652_ _hd132294132647_)
                            (_L132653_ _hd132291132639_)
                            (_L132654_ _hd132282132615_)
                            (_L132655_ _hd132273132591_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132655_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132655_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137474
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132119_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132654_
                                    __tmp137474)))
                            (___kont136185136186_
                             _L132652_
                             _L132653_
                             _L132654_
                             _L132655_)
                            (___kont136191136192_)))))
                   (___match136546136547_
                    (lambda (_e132265132564_
                             _hd132264132567_
                             _tl132263132569_
                             _e132268132572_
                             _hd132267132575_
                             _tl132266132577_
                             _e132271132580_
                             _hd132270132583_
                             _tl132269132585_
                             _e132274132588_
                             _hd132273132591_
                             _tl132272132593_
                             _e132277132596_
                             _hd132276132599_
                             _tl132275132601_
                             _e132280132604_
                             _hd132279132607_
                             _tl132278132609_
                             _e132283132612_
                             _hd132282132615_
                             _tl132281132617_
                             _e132286132620_
                             _hd132285132623_
                             _tl132284132625_
                             _e132289132628_
                             _hd132288132631_
                             _tl132287132633_
                             _e132292132636_
                             _hd132291132639_
                             _tl132290132641_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132284132625_))
                          (let ((_e132295132644_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132284132625_))))
                            (let ((_tl132293132649_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132295132644_)))
                                  (_hd132294132647_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132295132644_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132293132649_))
                                  (___match136554136555_
                                   _e132265132564_
                                   _hd132264132567_
                                   _tl132263132569_
                                   _e132268132572_
                                   _hd132267132575_
                                   _tl132266132577_
                                   _e132271132580_
                                   _hd132270132583_
                                   _tl132269132585_
                                   _e132274132588_
                                   _hd132273132591_
                                   _tl132272132593_
                                   _e132277132596_
                                   _hd132276132599_
                                   _tl132275132601_
                                   _e132280132604_
                                   _hd132279132607_
                                   _tl132278132609_
                                   _e132283132612_
                                   _hd132282132615_
                                   _tl132281132617_
                                   _e132286132620_
                                   _hd132285132623_
                                   _tl132284132625_
                                   _e132289132628_
                                   _hd132288132631_
                                   _tl132287132633_
                                   _e132292132636_
                                   _hd132291132639_
                                   _tl132290132641_
                                   _e132295132644_
                                   _hd132294132647_
                                   _tl132293132649_)
                                  (___kont136191136192_))))
                          (___match136670136671_
                           _e132265132564_
                           _hd132264132567_
                           _tl132263132569_
                           _e132268132572_
                           _hd132267132575_
                           _tl132266132577_
                           _e132271132580_
                           _hd132270132583_
                           _tl132269132585_
                           _e132274132588_
                           _hd132273132591_
                           _tl132272132593_
                           _e132277132596_
                           _hd132276132599_
                           _tl132275132601_
                           _e132280132604_
                           _hd132279132607_
                           _tl132278132609_
                           _e132283132612_
                           _hd132282132615_
                           _tl132281132617_
                           _e132286132620_
                           _hd132285132623_
                           _tl132284132625_))))
                   (___match136468136469_
                    (lambda (_e132231132695_
                             _hd132230132698_
                             _tl132229132700_
                             _e132234132703_
                             _hd132233132706_
                             _tl132232132708_
                             _e132237132711_
                             _hd132236132714_
                             _tl132235132716_
                             _e132240132719_
                             _hd132239132722_
                             _tl132238132724_
                             _e132243132727_
                             _hd132242132730_
                             _tl132241132732_
                             _e132246132735_
                             _hd132245132738_
                             _tl132244132740_
                             _e132249132743_
                             _hd132248132746_
                             _tl132247132748_
                             _e132252132751_
                             _hd132251132754_
                             _tl132250132756_
                             _e132255132759_
                             _hd132254132762_
                             _tl132253132764_
                             _e132258132767_
                             _hd132257132770_
                             _tl132256132772_)
                      (let ((_L132775_ _hd132257132770_)
                            (_L132776_ _hd132248132746_)
                            (_L132777_ _hd132239132722_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132777_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132777_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137475
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132119_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132776_
                                    __tmp137475)))
                            (___kont136183136184_
                             _L132775_
                             _L132776_
                             _L132777_)
                            (___match136672136673_
                             _e132231132695_
                             _hd132230132698_
                             _tl132229132700_
                             _e132234132703_
                             _hd132233132706_
                             _tl132232132708_
                             _e132237132711_
                             _hd132236132714_
                             _tl132235132716_
                             _e132240132719_
                             _hd132239132722_
                             _tl132238132724_
                             _e132243132727_
                             _hd132242132730_
                             _tl132241132732_
                             _e132246132735_
                             _hd132245132738_
                             _tl132244132740_
                             _e132249132743_
                             _hd132248132746_
                             _tl132247132748_
                             _e132252132751_
                             _hd132251132754_
                             _tl132250132756_)))))
                   (___match136466136467_
                    (lambda (_e132231132695_
                             _hd132230132698_
                             _tl132229132700_
                             _e132234132703_
                             _hd132233132706_
                             _tl132232132708_
                             _e132237132711_
                             _hd132236132714_
                             _tl132235132716_
                             _e132240132719_
                             _hd132239132722_
                             _tl132238132724_
                             _e132243132727_
                             _hd132242132730_
                             _tl132241132732_
                             _e132246132735_
                             _hd132245132738_
                             _tl132244132740_
                             _e132249132743_
                             _hd132248132746_
                             _tl132247132748_
                             _e132252132751_
                             _hd132251132754_
                             _tl132250132756_
                             _e132255132759_
                             _hd132254132762_
                             _tl132253132764_
                             _e132258132767_
                             _hd132257132770_
                             _tl132256132772_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132250132756_))
                          (___match136468136469_
                           _e132231132695_
                           _hd132230132698_
                           _tl132229132700_
                           _e132234132703_
                           _hd132233132706_
                           _tl132232132708_
                           _e132237132711_
                           _hd132236132714_
                           _tl132235132716_
                           _e132240132719_
                           _hd132239132722_
                           _tl132238132724_
                           _e132243132727_
                           _hd132242132730_
                           _tl132241132732_
                           _e132246132735_
                           _hd132245132738_
                           _tl132244132740_
                           _e132249132743_
                           _hd132248132746_
                           _tl132247132748_
                           _e132252132751_
                           _hd132251132754_
                           _tl132250132756_
                           _e132255132759_
                           _hd132254132762_
                           _tl132253132764_
                           _e132258132767_
                           _hd132257132770_
                           _tl132256132772_)
                          (___match136546136547_
                           _e132231132695_
                           _hd132230132698_
                           _tl132229132700_
                           _e132234132703_
                           _hd132233132706_
                           _tl132232132708_
                           _e132237132711_
                           _hd132236132714_
                           _tl132235132716_
                           _e132240132719_
                           _hd132239132722_
                           _tl132238132724_
                           _e132243132727_
                           _hd132242132730_
                           _tl132241132732_
                           _e132246132735_
                           _hd132245132738_
                           _tl132244132740_
                           _e132249132743_
                           _hd132248132746_
                           _tl132247132748_
                           _e132252132751_
                           _hd132251132754_
                           _tl132250132756_
                           _e132255132759_
                           _hd132254132762_
                           _tl132253132764_
                           _e132258132767_
                           _hd132257132770_
                           _tl132256132772_))))
                   (___match136456136457_
                    (lambda (_e132231132695_
                             _hd132230132698_
                             _tl132229132700_
                             _e132234132703_
                             _hd132233132706_
                             _tl132232132708_
                             _e132237132711_
                             _hd132236132714_
                             _tl132235132716_
                             _e132240132719_
                             _hd132239132722_
                             _tl132238132724_
                             _e132243132727_
                             _hd132242132730_
                             _tl132241132732_
                             _e132246132735_
                             _hd132245132738_
                             _tl132244132740_
                             _e132249132743_
                             _hd132248132746_
                             _tl132247132748_
                             _e132252132751_
                             _hd132251132754_
                             _tl132250132756_
                             _e132255132759_
                             _hd132254132762_
                             _tl132253132764_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd132254132762_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132253132764_))
                              (let ((_e132258132767_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132253132764_))))
                                (let ((_tl132256132772_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132258132767_)))
                                      (_hd132257132770_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132258132767_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132256132772_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl132250132756_))
                                          (___match136468136469_
                                           _e132231132695_
                                           _hd132230132698_
                                           _tl132229132700_
                                           _e132234132703_
                                           _hd132233132706_
                                           _tl132232132708_
                                           _e132237132711_
                                           _hd132236132714_
                                           _tl132235132716_
                                           _e132240132719_
                                           _hd132239132722_
                                           _tl132238132724_
                                           _e132243132727_
                                           _hd132242132730_
                                           _tl132241132732_
                                           _e132246132735_
                                           _hd132245132738_
                                           _tl132244132740_
                                           _e132249132743_
                                           _hd132248132746_
                                           _tl132247132748_
                                           _e132252132751_
                                           _hd132251132754_
                                           _tl132250132756_
                                           _e132255132759_
                                           _hd132254132762_
                                           _tl132253132764_
                                           _e132258132767_
                                           _hd132257132770_
                                           _tl132256132772_)
                                          (___match136546136547_
                                           _e132231132695_
                                           _hd132230132698_
                                           _tl132229132700_
                                           _e132234132703_
                                           _hd132233132706_
                                           _tl132232132708_
                                           _e132237132711_
                                           _hd132236132714_
                                           _tl132235132716_
                                           _e132240132719_
                                           _hd132239132722_
                                           _tl132238132724_
                                           _e132243132727_
                                           _hd132242132730_
                                           _tl132241132732_
                                           _e132246132735_
                                           _hd132245132738_
                                           _tl132244132740_
                                           _e132249132743_
                                           _hd132248132746_
                                           _tl132247132748_
                                           _e132252132751_
                                           _hd132251132754_
                                           _tl132250132756_
                                           _e132255132759_
                                           _hd132254132762_
                                           _tl132253132764_
                                           _e132258132767_
                                           _hd132257132770_
                                           _tl132256132772_))
                                      (___match136670136671_
                                       _e132231132695_
                                       _hd132230132698_
                                       _tl132229132700_
                                       _e132234132703_
                                       _hd132233132706_
                                       _tl132232132708_
                                       _e132237132711_
                                       _hd132236132714_
                                       _tl132235132716_
                                       _e132240132719_
                                       _hd132239132722_
                                       _tl132238132724_
                                       _e132243132727_
                                       _hd132242132730_
                                       _tl132241132732_
                                       _e132246132735_
                                       _hd132245132738_
                                       _tl132244132740_
                                       _e132249132743_
                                       _hd132248132746_
                                       _tl132247132748_
                                       _e132252132751_
                                       _hd132251132754_
                                       _tl132250132756_))))
                              (___match136670136671_
                               _e132231132695_
                               _hd132230132698_
                               _tl132229132700_
                               _e132234132703_
                               _hd132233132706_
                               _tl132232132708_
                               _e132237132711_
                               _hd132236132714_
                               _tl132235132716_
                               _e132240132719_
                               _hd132239132722_
                               _tl132238132724_
                               _e132243132727_
                               _hd132242132730_
                               _tl132241132732_
                               _e132246132735_
                               _hd132245132738_
                               _tl132244132740_
                               _e132249132743_
                               _hd132248132746_
                               _tl132247132748_
                               _e132252132751_
                               _hd132251132754_
                               _tl132250132756_))
                          (___match136670136671_
                           _e132231132695_
                           _hd132230132698_
                           _tl132229132700_
                           _e132234132703_
                           _hd132233132706_
                           _tl132232132708_
                           _e132237132711_
                           _hd132236132714_
                           _tl132235132716_
                           _e132240132719_
                           _hd132239132722_
                           _tl132238132724_
                           _e132243132727_
                           _hd132242132730_
                           _tl132241132732_
                           _e132246132735_
                           _hd132245132738_
                           _tl132244132740_
                           _e132249132743_
                           _hd132248132746_
                           _tl132247132748_
                           _e132252132751_
                           _hd132251132754_
                           _tl132250132756_))))
                   (___match136388136389_
                    (lambda (_e132180132814_
                             _hd132179132817_
                             _tl132178132819_
                             _e132183132822_
                             _hd132182132825_
                             _tl132181132827_
                             _e132186132830_
                             _hd132185132833_
                             _tl132184132835_
                             _e132189132838_
                             _hd132188132841_
                             _tl132187132843_
                             _e132192132846_
                             _hd132191132849_
                             _tl132190132851_
                             _e132195132854_
                             _hd132194132857_
                             _tl132193132859_
                             _e132198132862_
                             _hd132197132865_
                             _tl132196132867_
                             _e132201132870_
                             _hd132200132873_
                             _tl132199132875_
                             _e132204132878_
                             _hd132203132881_
                             _tl132202132883_
                             _e132207132886_
                             _hd132206132889_
                             _tl132205132891_
                             _e132210132894_
                             _hd132209132897_
                             _tl132208132899_
                             _e132213132902_
                             _hd132212132905_
                             _tl132211132907_
                             _e132216132910_
                             _hd132215132913_
                             _tl132214132915_
                             ___splice136181136182_
                             _target132217132918_
                             _tl132219132920_)
                      (letrec ((_loop132220132923_
                                (lambda (_hd132218132926_ _args132224132928_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132218132926_))
                                      (let ((_e132221132931_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132218132926_))))
                                        (let ((_lp-tl132223132936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132221132931_)))
                                              (_lp-hd132222132934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132221132931_))))
                                          (let ((__tmp137477
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132222132934_
                                                         _args132224132928_))))
                                            (declare (not safe))
                                            (_loop132220132923_
                                             _lp-tl132223132936_
                                             __tmp137477))))
                                      (let ((_args132225132939_
                                             (reverse _args132224132928_)))
                                        (let ((_L132942_ _args132225132939_)
                                              (_L132943_ _hd132215132913_)
                                              (_L132944_ _hd132206132889_)
                                              (_L132945_ _hd132197132865_)
                                              (_L132946_ _hd132188132841_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132946_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132945_
                                                      'call-method))
                                                   (let ((__tmp137476
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132119_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132944_
                                                      __tmp137476)))
                                              (___kont136179136180_
                                               _L132942_
                                               _L132943_
                                               _L132944_
                                               _L132945_
                                               _L132946_)
                                              (___kont136191136192_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132220132923_ _target132217132918_ '())))))
                   (___match136346136347_
                    (lambda (_e132180132814_
                             _hd132179132817_
                             _tl132178132819_
                             _e132183132822_
                             _hd132182132825_
                             _tl132181132827_
                             _e132186132830_
                             _hd132185132833_
                             _tl132184132835_
                             _e132189132838_
                             _hd132188132841_
                             _tl132187132843_
                             _e132192132846_
                             _hd132191132849_
                             _tl132190132851_
                             _e132195132854_
                             _hd132194132857_
                             _tl132193132859_
                             _e132198132862_
                             _hd132197132865_
                             _tl132196132867_
                             _e132201132870_
                             _hd132200132873_
                             _tl132199132875_
                             _e132204132878_
                             _hd132203132881_
                             _tl132202132883_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd132203132881_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132202132883_))
                              (let ((_e132207132886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132202132883_))))
                                (let ((_tl132205132891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132207132886_)))
                                      (_hd132206132889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132207132886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132205132891_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132199132875_))
                                          (let ((_e132210132894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132199132875_))))
                                            (let ((_tl132208132899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132210132894_)))
                                                  (_hd132209132897_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132210132894_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132209132897_))
                                                  (let ((_e132213132902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132209132897_))))
                                                    (let ((_tl132211132907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132213132902_)))
                                                          (_hd132212132905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132213132902_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd132212132905_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd132212132905_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132211132907_))
                          (let ((_e132216132910_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132211132907_))))
                            (let ((_tl132214132915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132216132910_)))
                                  (_hd132215132913_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132216132910_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132214132915_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl132208132899_))
                                      (let ((___splice136181136182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl132208132899_
                                                '0))))
                                        (let ((_tl132219132920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136181136182_
                                                  '1)))
                                              (_target132217132918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136181136182_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132219132920_))
                                              (___match136388136389_
                                               _e132180132814_
                                               _hd132179132817_
                                               _tl132178132819_
                                               _e132183132822_
                                               _hd132182132825_
                                               _tl132181132827_
                                               _e132186132830_
                                               _hd132185132833_
                                               _tl132184132835_
                                               _e132189132838_
                                               _hd132188132841_
                                               _tl132187132843_
                                               _e132192132846_
                                               _hd132191132849_
                                               _tl132190132851_
                                               _e132195132854_
                                               _hd132194132857_
                                               _tl132193132859_
                                               _e132198132862_
                                               _hd132197132865_
                                               _tl132196132867_
                                               _e132201132870_
                                               _hd132200132873_
                                               _tl132199132875_
                                               _e132204132878_
                                               _hd132203132881_
                                               _tl132202132883_
                                               _e132207132886_
                                               _hd132206132889_
                                               _tl132205132891_
                                               _e132210132894_
                                               _hd132209132897_
                                               _tl132208132899_
                                               _e132213132902_
                                               _hd132212132905_
                                               _tl132211132907_
                                               _e132216132910_
                                               _hd132215132913_
                                               _tl132214132915_
                                               ___splice136181136182_
                                               _target132217132918_
                                               _tl132219132920_)
                                              (___kont136191136192_))))
                                      (___kont136191136192_))
                                  (___kont136191136192_))))
                          (___kont136191136192_))
                      (___kont136191136192_))
                  (___kont136191136192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136191136192_))))
                                          (___match136670136671_
                                           _e132180132814_
                                           _hd132179132817_
                                           _tl132178132819_
                                           _e132183132822_
                                           _hd132182132825_
                                           _tl132181132827_
                                           _e132186132830_
                                           _hd132185132833_
                                           _tl132184132835_
                                           _e132189132838_
                                           _hd132188132841_
                                           _tl132187132843_
                                           _e132192132846_
                                           _hd132191132849_
                                           _tl132190132851_
                                           _e132195132854_
                                           _hd132194132857_
                                           _tl132193132859_
                                           _e132198132862_
                                           _hd132197132865_
                                           _tl132196132867_
                                           _e132201132870_
                                           _hd132200132873_
                                           _tl132199132875_))
                                      (___match136670136671_
                                       _e132180132814_
                                       _hd132179132817_
                                       _tl132178132819_
                                       _e132183132822_
                                       _hd132182132825_
                                       _tl132181132827_
                                       _e132186132830_
                                       _hd132185132833_
                                       _tl132184132835_
                                       _e132189132838_
                                       _hd132188132841_
                                       _tl132187132843_
                                       _e132192132846_
                                       _hd132191132849_
                                       _tl132190132851_
                                       _e132195132854_
                                       _hd132194132857_
                                       _tl132193132859_
                                       _e132198132862_
                                       _hd132197132865_
                                       _tl132196132867_
                                       _e132201132870_
                                       _hd132200132873_
                                       _tl132199132875_))))
                              (___match136670136671_
                               _e132180132814_
                               _hd132179132817_
                               _tl132178132819_
                               _e132183132822_
                               _hd132182132825_
                               _tl132181132827_
                               _e132186132830_
                               _hd132185132833_
                               _tl132184132835_
                               _e132189132838_
                               _hd132188132841_
                               _tl132187132843_
                               _e132192132846_
                               _hd132191132849_
                               _tl132190132851_
                               _e132195132854_
                               _hd132194132857_
                               _tl132193132859_
                               _e132198132862_
                               _hd132197132865_
                               _tl132196132867_
                               _e132201132870_
                               _hd132200132873_
                               _tl132199132875_))
                          (___match136456136457_
                           _e132180132814_
                           _hd132179132817_
                           _tl132178132819_
                           _e132183132822_
                           _hd132182132825_
                           _tl132181132827_
                           _e132186132830_
                           _hd132185132833_
                           _tl132184132835_
                           _e132189132838_
                           _hd132188132841_
                           _tl132187132843_
                           _e132192132846_
                           _hd132191132849_
                           _tl132190132851_
                           _e132195132854_
                           _hd132194132857_
                           _tl132193132859_
                           _e132198132862_
                           _hd132197132865_
                           _tl132196132867_
                           _e132201132870_
                           _hd132200132873_
                           _tl132199132875_
                           _e132204132878_
                           _hd132203132881_
                           _tl132202132883_))))
                   (___match136278136279_
                    (lambda (_e132136133003_
                             _hd132135133006_
                             _tl132134133008_
                             _e132139133011_
                             _hd132138133014_
                             _tl132137133016_
                             _e132142133019_
                             _hd132141133022_
                             _tl132140133024_
                             _e132145133027_
                             _hd132144133030_
                             _tl132143133032_
                             _e132148133035_
                             _hd132147133038_
                             _tl132146133040_
                             _e132151133043_
                             _hd132150133046_
                             _tl132149133048_
                             _e132154133051_
                             _hd132153133054_
                             _tl132152133056_
                             _e132157133059_
                             _hd132156133062_
                             _tl132155133064_
                             _e132160133067_
                             _hd132159133070_
                             _tl132158133072_
                             _e132163133075_
                             _hd132162133078_
                             _tl132161133080_
                             ___splice136177136178_
                             _target132164133083_
                             _tl132166133085_)
                      (letrec ((_loop132167133088_
                                (lambda (_hd132165133091_ _args132171133093_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132165133091_))
                                      (let ((_e132168133096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132165133091_))))
                                        (let ((_lp-tl132170133101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132168133096_)))
                                              (_lp-hd132169133099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132168133096_))))
                                          (let ((__tmp137479
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132169133099_
                                                         _args132171133093_))))
                                            (declare (not safe))
                                            (_loop132167133088_
                                             _lp-tl132170133101_
                                             __tmp137479))))
                                      (let ((_args132172133104_
                                             (reverse _args132171133093_)))
                                        (let ((_L133107_ _args132172133104_)
                                              (_L133108_ _hd132162133078_)
                                              (_L133109_ _hd132153133054_)
                                              (_L133110_ _hd132144133030_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L133110_
                                                      'call-method))
                                                   (let ((__tmp137478
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132119_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L133109_
                                                      __tmp137478)))
                                              (___kont136175136176_
                                               _L133107_
                                               _L133108_
                                               _L133109_
                                               _L133110_)
                                              (___match136466136467_
                                               _e132136133003_
                                               _hd132135133006_
                                               _tl132134133008_
                                               _e132139133011_
                                               _hd132138133014_
                                               _tl132137133016_
                                               _e132142133019_
                                               _hd132141133022_
                                               _tl132140133024_
                                               _e132145133027_
                                               _hd132144133030_
                                               _tl132143133032_
                                               _e132148133035_
                                               _hd132147133038_
                                               _tl132146133040_
                                               _e132151133043_
                                               _hd132150133046_
                                               _tl132149133048_
                                               _e132154133051_
                                               _hd132153133054_
                                               _tl132152133056_
                                               _e132157133059_
                                               _hd132156133062_
                                               _tl132155133064_
                                               _e132160133067_
                                               _hd132159133070_
                                               _tl132158133072_
                                               _e132163133075_
                                               _hd132162133078_
                                               _tl132161133080_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132167133088_ _target132164133083_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx136173136174_))
                  (let ((_e132136133003_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx136173136174_))))
                    (let ((_tl132134133008_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132136133003_)))
                          (_hd132135133006_
                           (let ()
                             (declare (not safe))
                             (##car _e132136133003_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132134133008_))
                          (let ((_e132139133011_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132134133008_))))
                            (let ((_tl132137133016_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132139133011_)))
                                  (_hd132138133014_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132139133011_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd132138133014_))
                                  (let ((_e132142133019_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd132138133014_))))
                                    (let ((_tl132140133024_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e132142133019_)))
                                          (_hd132141133022_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e132142133019_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd132141133022_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd132141133022_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl132140133024_))
                                                  (let ((_e132145133027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl132140133024_))))
                                                    (let ((_tl132143133032_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132145133027_)))
                                                          (_hd132144133030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132145133027_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl132143133032_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl132137133016_))
                      (let ((_e132148133035_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl132137133016_))))
                        (let ((_tl132146133040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132148133035_)))
                              (_hd132147133038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132148133035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd132147133038_))
                              (let ((_e132151133043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd132147133038_))))
                                (let ((_tl132149133048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132151133043_)))
                                      (_hd132150133046_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132151133043_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd132150133046_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd132150133046_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl132149133048_))
                                              (let ((_e132154133051_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl132149133048_))))
                                                (let ((_tl132152133056_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e132154133051_)))
                                                      (_hd132153133054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e132154133051_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl132152133056_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl132146133040_))
                                                          (let ((_e132157133059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl132146133040_))))
                    (let ((_tl132155133064_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132157133059_)))
                          (_hd132156133062_
                           (let ()
                             (declare (not safe))
                             (##car _e132157133059_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132156133062_))
                          (let ((_e132160133067_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132156133062_))))
                            (let ((_tl132158133072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132160133067_)))
                                  (_hd132159133070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132160133067_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd132159133070_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd132159133070_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132158133072_))
                                          (let ((_e132163133075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132158133072_))))
                                            (let ((_tl132161133080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132163133075_)))
                                                  (_hd132162133078_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132163133075_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132161133080_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl132155133064_))
                                                      (let ((___splice136177136178_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl132155133064_ '0))))
                (let ((_tl132166133085_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136177136178_ '1)))
                      (_target132164133083_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136177136178_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl132166133085_))
                      (___match136278136279_
                       _e132136133003_
                       _hd132135133006_
                       _tl132134133008_
                       _e132139133011_
                       _hd132138133014_
                       _tl132137133016_
                       _e132142133019_
                       _hd132141133022_
                       _tl132140133024_
                       _e132145133027_
                       _hd132144133030_
                       _tl132143133032_
                       _e132148133035_
                       _hd132147133038_
                       _tl132146133040_
                       _e132151133043_
                       _hd132150133046_
                       _tl132149133048_
                       _e132154133051_
                       _hd132153133054_
                       _tl132152133056_
                       _e132157133059_
                       _hd132156133062_
                       _tl132155133064_
                       _e132160133067_
                       _hd132159133070_
                       _tl132158133072_
                       _e132163133075_
                       _hd132162133078_
                       _tl132161133080_
                       ___splice136177136178_
                       _target132164133083_
                       _tl132166133085_)
                      (___match136466136467_
                       _e132136133003_
                       _hd132135133006_
                       _tl132134133008_
                       _e132139133011_
                       _hd132138133014_
                       _tl132137133016_
                       _e132142133019_
                       _hd132141133022_
                       _tl132140133024_
                       _e132145133027_
                       _hd132144133030_
                       _tl132143133032_
                       _e132148133035_
                       _hd132147133038_
                       _tl132146133040_
                       _e132151133043_
                       _hd132150133046_
                       _tl132149133048_
                       _e132154133051_
                       _hd132153133054_
                       _tl132152133056_
                       _e132157133059_
                       _hd132156133062_
                       _tl132155133064_
                       _e132160133067_
                       _hd132159133070_
                       _tl132158133072_
                       _e132163133075_
                       _hd132162133078_
                       _tl132161133080_))))
              (___match136466136467_
               _e132136133003_
               _hd132135133006_
               _tl132134133008_
               _e132139133011_
               _hd132138133014_
               _tl132137133016_
               _e132142133019_
               _hd132141133022_
               _tl132140133024_
               _e132145133027_
               _hd132144133030_
               _tl132143133032_
               _e132148133035_
               _hd132147133038_
               _tl132146133040_
               _e132151133043_
               _hd132150133046_
               _tl132149133048_
               _e132154133051_
               _hd132153133054_
               _tl132152133056_
               _e132157133059_
               _hd132156133062_
               _tl132155133064_
               _e132160133067_
               _hd132159133070_
               _tl132158133072_
               _e132163133075_
               _hd132162133078_
               _tl132161133080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136670136671_
                                                   _e132136133003_
                                                   _hd132135133006_
                                                   _tl132134133008_
                                                   _e132139133011_
                                                   _hd132138133014_
                                                   _tl132137133016_
                                                   _e132142133019_
                                                   _hd132141133022_
                                                   _tl132140133024_
                                                   _e132145133027_
                                                   _hd132144133030_
                                                   _tl132143133032_
                                                   _e132148133035_
                                                   _hd132147133038_
                                                   _tl132146133040_
                                                   _e132151133043_
                                                   _hd132150133046_
                                                   _tl132149133048_
                                                   _e132154133051_
                                                   _hd132153133054_
                                                   _tl132152133056_
                                                   _e132157133059_
                                                   _hd132156133062_
                                                   _tl132155133064_))))
                                          (___match136670136671_
                                           _e132136133003_
                                           _hd132135133006_
                                           _tl132134133008_
                                           _e132139133011_
                                           _hd132138133014_
                                           _tl132137133016_
                                           _e132142133019_
                                           _hd132141133022_
                                           _tl132140133024_
                                           _e132145133027_
                                           _hd132144133030_
                                           _tl132143133032_
                                           _e132148133035_
                                           _hd132147133038_
                                           _tl132146133040_
                                           _e132151133043_
                                           _hd132150133046_
                                           _tl132149133048_
                                           _e132154133051_
                                           _hd132153133054_
                                           _tl132152133056_
                                           _e132157133059_
                                           _hd132156133062_
                                           _tl132155133064_))
                                      (___match136346136347_
                                       _e132136133003_
                                       _hd132135133006_
                                       _tl132134133008_
                                       _e132139133011_
                                       _hd132138133014_
                                       _tl132137133016_
                                       _e132142133019_
                                       _hd132141133022_
                                       _tl132140133024_
                                       _e132145133027_
                                       _hd132144133030_
                                       _tl132143133032_
                                       _e132148133035_
                                       _hd132147133038_
                                       _tl132146133040_
                                       _e132151133043_
                                       _hd132150133046_
                                       _tl132149133048_
                                       _e132154133051_
                                       _hd132153133054_
                                       _tl132152133056_
                                       _e132157133059_
                                       _hd132156133062_
                                       _tl132155133064_
                                       _e132160133067_
                                       _hd132159133070_
                                       _tl132158133072_))
                                  (___match136670136671_
                                   _e132136133003_
                                   _hd132135133006_
                                   _tl132134133008_
                                   _e132139133011_
                                   _hd132138133014_
                                   _tl132137133016_
                                   _e132142133019_
                                   _hd132141133022_
                                   _tl132140133024_
                                   _e132145133027_
                                   _hd132144133030_
                                   _tl132143133032_
                                   _e132148133035_
                                   _hd132147133038_
                                   _tl132146133040_
                                   _e132151133043_
                                   _hd132150133046_
                                   _tl132149133048_
                                   _e132154133051_
                                   _hd132153133054_
                                   _tl132152133056_
                                   _e132157133059_
                                   _hd132156133062_
                                   _tl132155133064_))))
                          (___match136670136671_
                           _e132136133003_
                           _hd132135133006_
                           _tl132134133008_
                           _e132139133011_
                           _hd132138133014_
                           _tl132137133016_
                           _e132142133019_
                           _hd132141133022_
                           _tl132140133024_
                           _e132145133027_
                           _hd132144133030_
                           _tl132143133032_
                           _e132148133035_
                           _hd132147133038_
                           _tl132146133040_
                           _e132151133043_
                           _hd132150133046_
                           _tl132149133048_
                           _e132154133051_
                           _hd132153133054_
                           _tl132152133056_
                           _e132157133059_
                           _hd132156133062_
                           _tl132155133064_))))
                  (___match136608136609_
                   _e132136133003_
                   _hd132135133006_
                   _tl132134133008_
                   _e132139133011_
                   _hd132138133014_
                   _tl132137133016_
                   _e132142133019_
                   _hd132141133022_
                   _tl132140133024_
                   _e132145133027_
                   _hd132144133030_
                   _tl132143133032_
                   _e132148133035_
                   _hd132147133038_
                   _tl132146133040_
                   _e132151133043_
                   _hd132150133046_
                   _tl132149133048_
                   _e132154133051_
                   _hd132153133054_
                   _tl132152133056_))
              (___kont136191136192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont136191136192_))
                                          (___kont136191136192_))
                                      (___kont136191136192_))))
                              (___kont136191136192_))))
                      (___kont136191136192_))
                  (___kont136191136192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136191136192_))
                                              (___kont136191136192_))
                                          (___kont136191136192_))))
                                  (___kont136191136192_))))
                          (___kont136191136192_))))
                  (___kont136191136192_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self131058_ _stx131059_)
        (letrec ((_force-e131061_
                  (lambda (_target132117_)
                    (let ((__tmp137480
                           (let ((__tmp137484
                                  (let ((__tmp137485
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137485)))
                                 (__tmp137481
                                  (let ((__tmp137482
                                         (let ((__tmp137483
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target132117_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137483))))
                                    (declare (not safe))
                                    (cons __tmp137482 '()))))
                             (declare (not safe))
                             (cons __tmp137484 __tmp137481))))
                      (declare (not safe))
                      (cons '%#call __tmp137480)))))
          (let* ((___stx136675136676_ _stx131059_)
                 (_g131069131291_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136675136676_)))))
            (let ((___kont136677136678_
                   (lambda (_L132063_ _L132064_ _L132065_ _L132066_)
                     (let ((_$method132111_
                            (let ((__tmp137487
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131058_ 'methods)))
                                  (__tmp137486
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L132064_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137487 __tmp137486)))
                           (_args132112_
                            (map (lambda (_g132099132101_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131058_
                                      _g132099132101_)))
                                 (let ((__tmp137488
                                        (lambda (_g132103132106_
                                                 _g132104132108_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g132103132106_
                                                  _g132104132108_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137488 '() _L132063_)))))
                       (let ((__tmp137489
                              (let ((__tmp137490
                                     (let ((__tmp137495
                                            (let ()
                                              (declare (not safe))
                                              (_force-e131061_
                                               _$method132111_)))
                                           (__tmp137491
                                            (let ((__tmp137492
                                                   (let ((__tmp137493
                                                          (let ((__tmp137494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self131058_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137494 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137493))))
                                              (declare (not safe))
                                              (cons __tmp137492
                                                    _args132112_))))
                                       (declare (not safe))
                                       (cons __tmp137495 __tmp137491))))
                                (declare (not safe))
                                (cons '%#call __tmp137490))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137489 _stx131059_)))))
                  (___kont136681136682_
                   (lambda (_L131895_ _L131896_ _L131897_ _L131898_ _L131899_)
                     (let ((_$method131951_
                            (let ((__tmp137497
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131058_ 'methods)))
                                  (__tmp137496
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131896_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137497 __tmp137496)))
                           (_args131952_
                            (map (lambda (_g131939131941_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131058_
                                      _g131939131941_)))
                                 (let ((__tmp137498
                                        (lambda (_g131943131946_
                                                 _g131944131948_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131943131946_
                                                  _g131944131948_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137498 '() _L131895_)))))
                       (let ((__tmp137499
                              (let ((__tmp137500
                                     (let ((__tmp137507
                                            (let ((__tmp137508
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137508)))
                                           (__tmp137501
                                            (let ((__tmp137506
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e131061_
                                                      _$method131951_)))
                                                  (__tmp137502
                                                   (let ((__tmp137503
                                                          (let ((__tmp137504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137505
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131058_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137505 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137503
                                                           _args131952_))))
                                              (declare (not safe))
                                              (cons __tmp137506 __tmp137502))))
                                       (declare (not safe))
                                       (cons __tmp137507 __tmp137501))))
                                (declare (not safe))
                                (cons '%#call __tmp137500))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137499 _stx131059_)))))
                  (___kont136685136686_
                   (lambda (_L131726_ _L131727_ _L131728_)
                     (let* ((_$field131760_
                             (let ((__tmp137510
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self131058_ 'slots)))
                                   (__tmp137509
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131726_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137510 __tmp137509)))
                            (__tmp137511
                             (let ((__tmp137512
                                    (let ((__tmp137520
                                           (let ((__tmp137521
                                                  (let ((__tmp137522
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self131058_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137522 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137521)))
                                          (__tmp137513
                                           (let ((__tmp137518
                                                  (let ((__tmp137519
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137519)))
                                                 (__tmp137514
                                                  (let ((__tmp137515
                                                         (let ((__tmp137516
                                                                (let ((__tmp137517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self131058_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137517 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137515 '()))))
                                             (declare (not safe))
                                             (cons __tmp137518 __tmp137514))))
                                      (declare (not safe))
                                      (cons __tmp137520 __tmp137513))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137512))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137511 _stx131059_))))
                  (___kont136687136688_
                   (lambda (_L131600_ _L131601_ _L131602_ _L131603_)
                     (let ((_$field131638_
                            (let ((__tmp137524
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131058_ 'slots)))
                                  (__tmp137523
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131601_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137524 __tmp137523)))
                           (_expr131639_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self131058_ _L131600_))))
                       (let ((__tmp137525
                              (let ((__tmp137526
                                     (let ((__tmp137535
                                            (let ((__tmp137536
                                                   (let ((__tmp137537
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131058_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137537 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137536)))
                                           (__tmp137527
                                            (let ((__tmp137533
                                                   (let ((__tmp137534
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137534)))
                                                  (__tmp137528
                                                   (let ((__tmp137530
                                                          (let ((__tmp137531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137532
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131058_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137532 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137531)))
                 (__tmp137529
                  (let () (declare (not safe)) (cons _expr131639_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137530
                                                           __tmp137529))))
                                              (declare (not safe))
                                              (cons __tmp137533 __tmp137528))))
                                       (declare (not safe))
                                       (cons __tmp137535 __tmp137527))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137526))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137525 _stx131059_)))))
                  (___kont136689136690_
                   (lambda (_L131472_ _L131473_)
                     (let* ((_accessor131495_
                             (let ((__tmp137538
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131473_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137538)))
                            (_klass131497_
                             (let ((__tmp137539
                                    (##structure-ref
                                     _accessor131495_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131059_
                                __tmp137539)))
                            (_slot131499_
                             (##structure-ref
                              _accessor131495_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137553
                                       (##structure-ref
                                        _accessor131495_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137553))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131497_
                                       _slot131499_))
                                    (##structure-ref
                                     _klass131497_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx131059_
                           (let* ((_$field131505_
                                   (let ((__tmp137540
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131058_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137540 _slot131499_)))
                                  (__tmp137541
                                   (let ((__tmp137542
                                          (let ((__tmp137550
                                                 (let ((__tmp137551
                                                        (let ((__tmp137552
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131058_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137552 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137551)))
                                                (__tmp137543
                                                 (let ((__tmp137548
                                                        (let ((__tmp137549
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131505_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137549)))
               (__tmp137544
                (let ((__tmp137545
                       (let ((__tmp137546
                              (let ((__tmp137547
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131058_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137547 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137546))))
                  (declare (not safe))
                  (cons __tmp137545 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137548
                                                         __tmp137544))))
                                            (declare (not safe))
                                            (cons __tmp137550 __tmp137543))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137542))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137541
                              _stx131059_))))))
                  (___kont136691136692_
                   (lambda (_L131367_ _L131368_ _L131369_)
                     (let* ((_mutator131397_
                             (let ((__tmp137554
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131369_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137554)))
                            (_klass131399_
                             (let ((__tmp137555
                                    (##structure-ref
                                     _mutator131397_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131059_
                                __tmp137555)))
                            (_slot131401_
                             (##structure-ref
                              _mutator131397_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131403_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self131058_ _L131367_))))
                       (if (and (let ((__tmp137580
                                       (##structure-ref
                                        _mutator131397_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137580))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131399_
                                       _slot131401_))
                                    (##structure-ref
                                     _klass131399_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137570
                                  (let ((__tmp137571
                                         (let ((__tmp137577
                                                (let ((__tmp137579
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137578
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131369_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137579
                                                        __tmp137578)))
                                               (__tmp137572
                                                (let ((__tmp137574
                                                       (let ((__tmp137576
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137575
                      (let () (declare (not safe)) (cons _L131368_ '()))))
                 (declare (not safe))
                 (cons __tmp137576 __tmp137575)))
              (__tmp137573
               (let () (declare (not safe)) (cons _expr131403_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137574
                                                        __tmp137573))))
                                           (declare (not safe))
                                           (cons __tmp137577 __tmp137572))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137571))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137570 _stx131059_))
                           (let* ((_$field131409_
                                   (let ((__tmp137556
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131058_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137556 _slot131401_)))
                                  (__tmp137557
                                   (let ((__tmp137558
                                          (let ((__tmp137567
                                                 (let ((__tmp137568
                                                        (let ((__tmp137569
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131058_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137569 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137568)))
                                                (__tmp137559
                                                 (let ((__tmp137565
                                                        (let ((__tmp137566
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131409_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137566)))
               (__tmp137560
                (let ((__tmp137562
                       (let ((__tmp137563
                              (let ((__tmp137564
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131058_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137564 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137563)))
                      (__tmp137561
                       (let () (declare (not safe)) (cons _expr131403_ '()))))
                  (declare (not safe))
                  (cons __tmp137562 __tmp137561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137565
                                                         __tmp137560))))
                                            (declare (not safe))
                                            (cons __tmp137567 __tmp137559))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137558))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137557
                              _stx131059_))))))
                  (___kont136693136694_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self131058_ _stx131059_)))))
              (let* ((___match137174137175_
                      (lambda (_e131265131303_
                               _hd131264131306_
                               _tl131263131308_
                               _e131268131311_
                               _hd131267131314_
                               _tl131266131316_
                               _e131271131319_
                               _hd131270131322_
                               _tl131269131324_
                               _e131274131327_
                               _hd131273131330_
                               _tl131272131332_
                               _e131277131335_
                               _hd131276131338_
                               _tl131275131340_
                               _e131280131343_
                               _hd131279131346_
                               _tl131278131348_
                               _e131283131351_
                               _hd131282131354_
                               _tl131281131356_
                               _e131286131359_
                               _hd131285131362_
                               _tl131284131364_)
                        (let ((_L131367_ _hd131285131362_)
                              (_L131368_ _hd131282131354_)
                              (_L131369_ _hd131273131330_))
                          (if (and (let ((__tmp137583
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131058_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131368_
                                      __tmp137583))
                                   (let ((__tmp137581
                                          (let ((__tmp137582
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131369_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137582))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137581
                                      'gxc#!mutator::t)))
                              (___kont136691136692_
                               _L131367_
                               _L131368_
                               _L131369_)
                              (___kont136693136694_)))))
                     (___match137172137173_
                      (lambda (_e131265131303_
                               _hd131264131306_
                               _tl131263131308_
                               _e131268131311_
                               _hd131267131314_
                               _tl131266131316_
                               _e131271131319_
                               _hd131270131322_
                               _tl131269131324_
                               _e131274131327_
                               _hd131273131330_
                               _tl131272131332_
                               _e131277131335_
                               _hd131276131338_
                               _tl131275131340_
                               _e131280131343_
                               _hd131279131346_
                               _tl131278131348_
                               _e131283131351_
                               _hd131282131354_
                               _tl131281131356_
                               _e131286131359_
                               _hd131285131362_
                               _tl131284131364_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131284131364_))
                            (___match137174137175_
                             _e131265131303_
                             _hd131264131306_
                             _tl131263131308_
                             _e131268131311_
                             _hd131267131314_
                             _tl131266131316_
                             _e131271131319_
                             _hd131270131322_
                             _tl131269131324_
                             _e131274131327_
                             _hd131273131330_
                             _tl131272131332_
                             _e131277131335_
                             _hd131276131338_
                             _tl131275131340_
                             _e131280131343_
                             _hd131279131346_
                             _tl131278131348_
                             _e131283131351_
                             _hd131282131354_
                             _tl131281131356_
                             _e131286131359_
                             _hd131285131362_
                             _tl131284131364_)
                            (___kont136693136694_))))
                     (___match137166137167_
                      (lambda (_e131265131303_
                               _hd131264131306_
                               _tl131263131308_
                               _e131268131311_
                               _hd131267131314_
                               _tl131266131316_
                               _e131271131319_
                               _hd131270131322_
                               _tl131269131324_
                               _e131274131327_
                               _hd131273131330_
                               _tl131272131332_
                               _e131277131335_
                               _hd131276131338_
                               _tl131275131340_
                               _e131280131343_
                               _hd131279131346_
                               _tl131278131348_
                               _e131283131351_
                               _hd131282131354_
                               _tl131281131356_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131275131340_))
                            (let ((_e131286131359_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131275131340_))))
                              (let ((_tl131284131364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131286131359_)))
                                    (_hd131285131362_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131286131359_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131284131364_))
                                    (___match137174137175_
                                     _e131265131303_
                                     _hd131264131306_
                                     _tl131263131308_
                                     _e131268131311_
                                     _hd131267131314_
                                     _tl131266131316_
                                     _e131271131319_
                                     _hd131270131322_
                                     _tl131269131324_
                                     _e131274131327_
                                     _hd131273131330_
                                     _tl131272131332_
                                     _e131277131335_
                                     _hd131276131338_
                                     _tl131275131340_
                                     _e131280131343_
                                     _hd131279131346_
                                     _tl131278131348_
                                     _e131283131351_
                                     _hd131282131354_
                                     _tl131281131356_
                                     _e131286131359_
                                     _hd131285131362_
                                     _tl131284131364_)
                                    (___kont136693136694_))))
                            (___kont136693136694_))))
                     (___match137112137113_
                      (lambda (_e131241131416_
                               _hd131240131419_
                               _tl131239131421_
                               _e131244131424_
                               _hd131243131427_
                               _tl131242131429_
                               _e131247131432_
                               _hd131246131435_
                               _tl131245131437_
                               _e131250131440_
                               _hd131249131443_
                               _tl131248131445_
                               _e131253131448_
                               _hd131252131451_
                               _tl131251131453_
                               _e131256131456_
                               _hd131255131459_
                               _tl131254131461_
                               _e131259131464_
                               _hd131258131467_
                               _tl131257131469_)
                        (let ((_L131472_ _hd131258131467_)
                              (_L131473_ _hd131249131443_))
                          (if (and (let ((__tmp137586
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131058_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131472_
                                      __tmp137586))
                                   (let ((__tmp137584
                                          (let ((__tmp137585
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131473_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137585))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137584
                                      'gxc#!accessor::t)))
                              (___kont136689136690_ _L131472_ _L131473_)
                              (___kont136693136694_)))))
                     (___match137110137111_
                      (lambda (_e131241131416_
                               _hd131240131419_
                               _tl131239131421_
                               _e131244131424_
                               _hd131243131427_
                               _tl131242131429_
                               _e131247131432_
                               _hd131246131435_
                               _tl131245131437_
                               _e131250131440_
                               _hd131249131443_
                               _tl131248131445_
                               _e131253131448_
                               _hd131252131451_
                               _tl131251131453_
                               _e131256131456_
                               _hd131255131459_
                               _tl131254131461_
                               _e131259131464_
                               _hd131258131467_
                               _tl131257131469_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131251131453_))
                            (___match137112137113_
                             _e131241131416_
                             _hd131240131419_
                             _tl131239131421_
                             _e131244131424_
                             _hd131243131427_
                             _tl131242131429_
                             _e131247131432_
                             _hd131246131435_
                             _tl131245131437_
                             _e131250131440_
                             _hd131249131443_
                             _tl131248131445_
                             _e131253131448_
                             _hd131252131451_
                             _tl131251131453_
                             _e131256131456_
                             _hd131255131459_
                             _tl131254131461_
                             _e131259131464_
                             _hd131258131467_
                             _tl131257131469_)
                            (___match137166137167_
                             _e131241131416_
                             _hd131240131419_
                             _tl131239131421_
                             _e131244131424_
                             _hd131243131427_
                             _tl131242131429_
                             _e131247131432_
                             _hd131246131435_
                             _tl131245131437_
                             _e131250131440_
                             _hd131249131443_
                             _tl131248131445_
                             _e131253131448_
                             _hd131252131451_
                             _tl131251131453_
                             _e131256131456_
                             _hd131255131459_
                             _tl131254131461_
                             _e131259131464_
                             _hd131258131467_
                             _tl131257131469_))))
                     (___match137056137057_
                      (lambda (_e131206131512_
                               _hd131205131515_
                               _tl131204131517_
                               _e131209131520_
                               _hd131208131523_
                               _tl131207131525_
                               _e131212131528_
                               _hd131211131531_
                               _tl131210131533_
                               _e131215131536_
                               _hd131214131539_
                               _tl131213131541_
                               _e131218131544_
                               _hd131217131547_
                               _tl131216131549_
                               _e131221131552_
                               _hd131220131555_
                               _tl131219131557_
                               _e131224131560_
                               _hd131223131563_
                               _tl131222131565_
                               _e131227131568_
                               _hd131226131571_
                               _tl131225131573_
                               _e131230131576_
                               _hd131229131579_
                               _tl131228131581_
                               _e131233131584_
                               _hd131232131587_
                               _tl131231131589_
                               _e131236131592_
                               _hd131235131595_
                               _tl131234131597_)
                        (let ((_L131600_ _hd131235131595_)
                              (_L131601_ _hd131232131587_)
                              (_L131602_ _hd131223131563_)
                              (_L131603_ _hd131214131539_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131603_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131603_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137587
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131058_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131602_
                                      __tmp137587)))
                              (___kont136687136688_
                               _L131600_
                               _L131601_
                               _L131602_
                               _L131603_)
                              (___kont136693136694_)))))
                     (___match137048137049_
                      (lambda (_e131206131512_
                               _hd131205131515_
                               _tl131204131517_
                               _e131209131520_
                               _hd131208131523_
                               _tl131207131525_
                               _e131212131528_
                               _hd131211131531_
                               _tl131210131533_
                               _e131215131536_
                               _hd131214131539_
                               _tl131213131541_
                               _e131218131544_
                               _hd131217131547_
                               _tl131216131549_
                               _e131221131552_
                               _hd131220131555_
                               _tl131219131557_
                               _e131224131560_
                               _hd131223131563_
                               _tl131222131565_
                               _e131227131568_
                               _hd131226131571_
                               _tl131225131573_
                               _e131230131576_
                               _hd131229131579_
                               _tl131228131581_
                               _e131233131584_
                               _hd131232131587_
                               _tl131231131589_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131225131573_))
                            (let ((_e131236131592_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131225131573_))))
                              (let ((_tl131234131597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131236131592_)))
                                    (_hd131235131595_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131236131592_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131234131597_))
                                    (___match137056137057_
                                     _e131206131512_
                                     _hd131205131515_
                                     _tl131204131517_
                                     _e131209131520_
                                     _hd131208131523_
                                     _tl131207131525_
                                     _e131212131528_
                                     _hd131211131531_
                                     _tl131210131533_
                                     _e131215131536_
                                     _hd131214131539_
                                     _tl131213131541_
                                     _e131218131544_
                                     _hd131217131547_
                                     _tl131216131549_
                                     _e131221131552_
                                     _hd131220131555_
                                     _tl131219131557_
                                     _e131224131560_
                                     _hd131223131563_
                                     _tl131222131565_
                                     _e131227131568_
                                     _hd131226131571_
                                     _tl131225131573_
                                     _e131230131576_
                                     _hd131229131579_
                                     _tl131228131581_
                                     _e131233131584_
                                     _hd131232131587_
                                     _tl131231131589_
                                     _e131236131592_
                                     _hd131235131595_
                                     _tl131234131597_)
                                    (___kont136693136694_))))
                            (___match137172137173_
                             _e131206131512_
                             _hd131205131515_
                             _tl131204131517_
                             _e131209131520_
                             _hd131208131523_
                             _tl131207131525_
                             _e131212131528_
                             _hd131211131531_
                             _tl131210131533_
                             _e131215131536_
                             _hd131214131539_
                             _tl131213131541_
                             _e131218131544_
                             _hd131217131547_
                             _tl131216131549_
                             _e131221131552_
                             _hd131220131555_
                             _tl131219131557_
                             _e131224131560_
                             _hd131223131563_
                             _tl131222131565_
                             _e131227131568_
                             _hd131226131571_
                             _tl131225131573_))))
                     (___match136970136971_
                      (lambda (_e131172131646_
                               _hd131171131649_
                               _tl131170131651_
                               _e131175131654_
                               _hd131174131657_
                               _tl131173131659_
                               _e131178131662_
                               _hd131177131665_
                               _tl131176131667_
                               _e131181131670_
                               _hd131180131673_
                               _tl131179131675_
                               _e131184131678_
                               _hd131183131681_
                               _tl131182131683_
                               _e131187131686_
                               _hd131186131689_
                               _tl131185131691_
                               _e131190131694_
                               _hd131189131697_
                               _tl131188131699_
                               _e131193131702_
                               _hd131192131705_
                               _tl131191131707_
                               _e131196131710_
                               _hd131195131713_
                               _tl131194131715_
                               _e131199131718_
                               _hd131198131721_
                               _tl131197131723_)
                        (let ((_L131726_ _hd131198131721_)
                              (_L131727_ _hd131189131697_)
                              (_L131728_ _hd131180131673_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131728_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131728_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137588
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131058_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131727_
                                      __tmp137588)))
                              (___kont136685136686_
                               _L131726_
                               _L131727_
                               _L131728_)
                              (___match137174137175_
                               _e131172131646_
                               _hd131171131649_
                               _tl131170131651_
                               _e131175131654_
                               _hd131174131657_
                               _tl131173131659_
                               _e131178131662_
                               _hd131177131665_
                               _tl131176131667_
                               _e131181131670_
                               _hd131180131673_
                               _tl131179131675_
                               _e131184131678_
                               _hd131183131681_
                               _tl131182131683_
                               _e131187131686_
                               _hd131186131689_
                               _tl131185131691_
                               _e131190131694_
                               _hd131189131697_
                               _tl131188131699_
                               _e131193131702_
                               _hd131192131705_
                               _tl131191131707_)))))
                     (___match136968136969_
                      (lambda (_e131172131646_
                               _hd131171131649_
                               _tl131170131651_
                               _e131175131654_
                               _hd131174131657_
                               _tl131173131659_
                               _e131178131662_
                               _hd131177131665_
                               _tl131176131667_
                               _e131181131670_
                               _hd131180131673_
                               _tl131179131675_
                               _e131184131678_
                               _hd131183131681_
                               _tl131182131683_
                               _e131187131686_
                               _hd131186131689_
                               _tl131185131691_
                               _e131190131694_
                               _hd131189131697_
                               _tl131188131699_
                               _e131193131702_
                               _hd131192131705_
                               _tl131191131707_
                               _e131196131710_
                               _hd131195131713_
                               _tl131194131715_
                               _e131199131718_
                               _hd131198131721_
                               _tl131197131723_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131191131707_))
                            (___match136970136971_
                             _e131172131646_
                             _hd131171131649_
                             _tl131170131651_
                             _e131175131654_
                             _hd131174131657_
                             _tl131173131659_
                             _e131178131662_
                             _hd131177131665_
                             _tl131176131667_
                             _e131181131670_
                             _hd131180131673_
                             _tl131179131675_
                             _e131184131678_
                             _hd131183131681_
                             _tl131182131683_
                             _e131187131686_
                             _hd131186131689_
                             _tl131185131691_
                             _e131190131694_
                             _hd131189131697_
                             _tl131188131699_
                             _e131193131702_
                             _hd131192131705_
                             _tl131191131707_
                             _e131196131710_
                             _hd131195131713_
                             _tl131194131715_
                             _e131199131718_
                             _hd131198131721_
                             _tl131197131723_)
                            (___match137048137049_
                             _e131172131646_
                             _hd131171131649_
                             _tl131170131651_
                             _e131175131654_
                             _hd131174131657_
                             _tl131173131659_
                             _e131178131662_
                             _hd131177131665_
                             _tl131176131667_
                             _e131181131670_
                             _hd131180131673_
                             _tl131179131675_
                             _e131184131678_
                             _hd131183131681_
                             _tl131182131683_
                             _e131187131686_
                             _hd131186131689_
                             _tl131185131691_
                             _e131190131694_
                             _hd131189131697_
                             _tl131188131699_
                             _e131193131702_
                             _hd131192131705_
                             _tl131191131707_
                             _e131196131710_
                             _hd131195131713_
                             _tl131194131715_
                             _e131199131718_
                             _hd131198131721_
                             _tl131197131723_))))
                     (___match136958136959_
                      (lambda (_e131172131646_
                               _hd131171131649_
                               _tl131170131651_
                               _e131175131654_
                               _hd131174131657_
                               _tl131173131659_
                               _e131178131662_
                               _hd131177131665_
                               _tl131176131667_
                               _e131181131670_
                               _hd131180131673_
                               _tl131179131675_
                               _e131184131678_
                               _hd131183131681_
                               _tl131182131683_
                               _e131187131686_
                               _hd131186131689_
                               _tl131185131691_
                               _e131190131694_
                               _hd131189131697_
                               _tl131188131699_
                               _e131193131702_
                               _hd131192131705_
                               _tl131191131707_
                               _e131196131710_
                               _hd131195131713_
                               _tl131194131715_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd131195131713_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131194131715_))
                                (let ((_e131199131718_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131194131715_))))
                                  (let ((_tl131197131723_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131199131718_)))
                                        (_hd131198131721_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131199131718_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131197131723_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131191131707_))
                                            (___match136970136971_
                                             _e131172131646_
                                             _hd131171131649_
                                             _tl131170131651_
                                             _e131175131654_
                                             _hd131174131657_
                                             _tl131173131659_
                                             _e131178131662_
                                             _hd131177131665_
                                             _tl131176131667_
                                             _e131181131670_
                                             _hd131180131673_
                                             _tl131179131675_
                                             _e131184131678_
                                             _hd131183131681_
                                             _tl131182131683_
                                             _e131187131686_
                                             _hd131186131689_
                                             _tl131185131691_
                                             _e131190131694_
                                             _hd131189131697_
                                             _tl131188131699_
                                             _e131193131702_
                                             _hd131192131705_
                                             _tl131191131707_
                                             _e131196131710_
                                             _hd131195131713_
                                             _tl131194131715_
                                             _e131199131718_
                                             _hd131198131721_
                                             _tl131197131723_)
                                            (___match137048137049_
                                             _e131172131646_
                                             _hd131171131649_
                                             _tl131170131651_
                                             _e131175131654_
                                             _hd131174131657_
                                             _tl131173131659_
                                             _e131178131662_
                                             _hd131177131665_
                                             _tl131176131667_
                                             _e131181131670_
                                             _hd131180131673_
                                             _tl131179131675_
                                             _e131184131678_
                                             _hd131183131681_
                                             _tl131182131683_
                                             _e131187131686_
                                             _hd131186131689_
                                             _tl131185131691_
                                             _e131190131694_
                                             _hd131189131697_
                                             _tl131188131699_
                                             _e131193131702_
                                             _hd131192131705_
                                             _tl131191131707_
                                             _e131196131710_
                                             _hd131195131713_
                                             _tl131194131715_
                                             _e131199131718_
                                             _hd131198131721_
                                             _tl131197131723_))
                                        (___match137172137173_
                                         _e131172131646_
                                         _hd131171131649_
                                         _tl131170131651_
                                         _e131175131654_
                                         _hd131174131657_
                                         _tl131173131659_
                                         _e131178131662_
                                         _hd131177131665_
                                         _tl131176131667_
                                         _e131181131670_
                                         _hd131180131673_
                                         _tl131179131675_
                                         _e131184131678_
                                         _hd131183131681_
                                         _tl131182131683_
                                         _e131187131686_
                                         _hd131186131689_
                                         _tl131185131691_
                                         _e131190131694_
                                         _hd131189131697_
                                         _tl131188131699_
                                         _e131193131702_
                                         _hd131192131705_
                                         _tl131191131707_))))
                                (___match137172137173_
                                 _e131172131646_
                                 _hd131171131649_
                                 _tl131170131651_
                                 _e131175131654_
                                 _hd131174131657_
                                 _tl131173131659_
                                 _e131178131662_
                                 _hd131177131665_
                                 _tl131176131667_
                                 _e131181131670_
                                 _hd131180131673_
                                 _tl131179131675_
                                 _e131184131678_
                                 _hd131183131681_
                                 _tl131182131683_
                                 _e131187131686_
                                 _hd131186131689_
                                 _tl131185131691_
                                 _e131190131694_
                                 _hd131189131697_
                                 _tl131188131699_
                                 _e131193131702_
                                 _hd131192131705_
                                 _tl131191131707_))
                            (___match137172137173_
                             _e131172131646_
                             _hd131171131649_
                             _tl131170131651_
                             _e131175131654_
                             _hd131174131657_
                             _tl131173131659_
                             _e131178131662_
                             _hd131177131665_
                             _tl131176131667_
                             _e131181131670_
                             _hd131180131673_
                             _tl131179131675_
                             _e131184131678_
                             _hd131183131681_
                             _tl131182131683_
                             _e131187131686_
                             _hd131186131689_
                             _tl131185131691_
                             _e131190131694_
                             _hd131189131697_
                             _tl131188131699_
                             _e131193131702_
                             _hd131192131705_
                             _tl131191131707_))))
                     (___match136890136891_
                      (lambda (_e131121131767_
                               _hd131120131770_
                               _tl131119131772_
                               _e131124131775_
                               _hd131123131778_
                               _tl131122131780_
                               _e131127131783_
                               _hd131126131786_
                               _tl131125131788_
                               _e131130131791_
                               _hd131129131794_
                               _tl131128131796_
                               _e131133131799_
                               _hd131132131802_
                               _tl131131131804_
                               _e131136131807_
                               _hd131135131810_
                               _tl131134131812_
                               _e131139131815_
                               _hd131138131818_
                               _tl131137131820_
                               _e131142131823_
                               _hd131141131826_
                               _tl131140131828_
                               _e131145131831_
                               _hd131144131834_
                               _tl131143131836_
                               _e131148131839_
                               _hd131147131842_
                               _tl131146131844_
                               _e131151131847_
                               _hd131150131850_
                               _tl131149131852_
                               _e131154131855_
                               _hd131153131858_
                               _tl131152131860_
                               _e131157131863_
                               _hd131156131866_
                               _tl131155131868_
                               ___splice136683136684_
                               _target131158131871_
                               _tl131160131873_)
                        (letrec ((_loop131161131876_
                                  (lambda (_hd131159131879_ _args131165131881_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131159131879_))
                                        (let ((_e131162131884_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131159131879_))))
                                          (let ((_lp-tl131164131889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131162131884_)))
                                                (_lp-hd131163131887_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131162131884_))))
                                            (let ((__tmp137590
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131163131887_
                                                           _args131165131881_))))
                                              (declare (not safe))
                                              (_loop131161131876_
                                               _lp-tl131164131889_
                                               __tmp137590))))
                                        (let ((_args131166131892_
                                               (reverse _args131165131881_)))
                                          (let ((_L131895_ _args131166131892_)
                                                (_L131896_ _hd131156131866_)
                                                (_L131897_ _hd131147131842_)
                                                (_L131898_ _hd131138131818_)
                                                (_L131899_ _hd131129131794_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131899_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131898_
                                                        'call-method))
                                                     (let ((__tmp137589
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131058_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131897_
                                                        __tmp137589)))
                                                (___kont136681136682_
                                                 _L131895_
                                                 _L131896_
                                                 _L131897_
                                                 _L131898_
                                                 _L131899_)
                                                (___kont136693136694_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131161131876_ _target131158131871_ '())))))
                     (___match136848136849_
                      (lambda (_e131121131767_
                               _hd131120131770_
                               _tl131119131772_
                               _e131124131775_
                               _hd131123131778_
                               _tl131122131780_
                               _e131127131783_
                               _hd131126131786_
                               _tl131125131788_
                               _e131130131791_
                               _hd131129131794_
                               _tl131128131796_
                               _e131133131799_
                               _hd131132131802_
                               _tl131131131804_
                               _e131136131807_
                               _hd131135131810_
                               _tl131134131812_
                               _e131139131815_
                               _hd131138131818_
                               _tl131137131820_
                               _e131142131823_
                               _hd131141131826_
                               _tl131140131828_
                               _e131145131831_
                               _hd131144131834_
                               _tl131143131836_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd131144131834_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131143131836_))
                                (let ((_e131148131839_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131143131836_))))
                                  (let ((_tl131146131844_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131148131839_)))
                                        (_hd131147131842_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131148131839_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131146131844_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131140131828_))
                                            (let ((_e131151131847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131140131828_))))
                                              (let ((_tl131149131852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131151131847_)))
                                                    (_hd131150131850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131151131847_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd131150131850_))
                                                    (let ((_e131154131855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd131150131850_))))
                                                      (let ((_tl131152131860_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131154131855_)))
                    (_hd131153131858_
                     (let () (declare (not safe)) (##car _e131154131855_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd131153131858_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd131153131858_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131152131860_))
                            (let ((_e131157131863_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131152131860_))))
                              (let ((_tl131155131868_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131157131863_)))
                                    (_hd131156131866_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131157131863_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131155131868_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl131149131852_))
                                        (let ((___splice136683136684_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl131149131852_
                                                  '0))))
                                          (let ((_tl131160131873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136683136684_
                                                    '1)))
                                                (_target131158131871_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136683136684_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131160131873_))
                                                (___match136890136891_
                                                 _e131121131767_
                                                 _hd131120131770_
                                                 _tl131119131772_
                                                 _e131124131775_
                                                 _hd131123131778_
                                                 _tl131122131780_
                                                 _e131127131783_
                                                 _hd131126131786_
                                                 _tl131125131788_
                                                 _e131130131791_
                                                 _hd131129131794_
                                                 _tl131128131796_
                                                 _e131133131799_
                                                 _hd131132131802_
                                                 _tl131131131804_
                                                 _e131136131807_
                                                 _hd131135131810_
                                                 _tl131134131812_
                                                 _e131139131815_
                                                 _hd131138131818_
                                                 _tl131137131820_
                                                 _e131142131823_
                                                 _hd131141131826_
                                                 _tl131140131828_
                                                 _e131145131831_
                                                 _hd131144131834_
                                                 _tl131143131836_
                                                 _e131148131839_
                                                 _hd131147131842_
                                                 _tl131146131844_
                                                 _e131151131847_
                                                 _hd131150131850_
                                                 _tl131149131852_
                                                 _e131154131855_
                                                 _hd131153131858_
                                                 _tl131152131860_
                                                 _e131157131863_
                                                 _hd131156131866_
                                                 _tl131155131868_
                                                 ___splice136683136684_
                                                 _target131158131871_
                                                 _tl131160131873_)
                                                (___kont136693136694_))))
                                        (___kont136693136694_))
                                    (___kont136693136694_))))
                            (___kont136693136694_))
                        (___kont136693136694_))
                    (___kont136693136694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136693136694_))))
                                            (___match137172137173_
                                             _e131121131767_
                                             _hd131120131770_
                                             _tl131119131772_
                                             _e131124131775_
                                             _hd131123131778_
                                             _tl131122131780_
                                             _e131127131783_
                                             _hd131126131786_
                                             _tl131125131788_
                                             _e131130131791_
                                             _hd131129131794_
                                             _tl131128131796_
                                             _e131133131799_
                                             _hd131132131802_
                                             _tl131131131804_
                                             _e131136131807_
                                             _hd131135131810_
                                             _tl131134131812_
                                             _e131139131815_
                                             _hd131138131818_
                                             _tl131137131820_
                                             _e131142131823_
                                             _hd131141131826_
                                             _tl131140131828_))
                                        (___match137172137173_
                                         _e131121131767_
                                         _hd131120131770_
                                         _tl131119131772_
                                         _e131124131775_
                                         _hd131123131778_
                                         _tl131122131780_
                                         _e131127131783_
                                         _hd131126131786_
                                         _tl131125131788_
                                         _e131130131791_
                                         _hd131129131794_
                                         _tl131128131796_
                                         _e131133131799_
                                         _hd131132131802_
                                         _tl131131131804_
                                         _e131136131807_
                                         _hd131135131810_
                                         _tl131134131812_
                                         _e131139131815_
                                         _hd131138131818_
                                         _tl131137131820_
                                         _e131142131823_
                                         _hd131141131826_
                                         _tl131140131828_))))
                                (___match137172137173_
                                 _e131121131767_
                                 _hd131120131770_
                                 _tl131119131772_
                                 _e131124131775_
                                 _hd131123131778_
                                 _tl131122131780_
                                 _e131127131783_
                                 _hd131126131786_
                                 _tl131125131788_
                                 _e131130131791_
                                 _hd131129131794_
                                 _tl131128131796_
                                 _e131133131799_
                                 _hd131132131802_
                                 _tl131131131804_
                                 _e131136131807_
                                 _hd131135131810_
                                 _tl131134131812_
                                 _e131139131815_
                                 _hd131138131818_
                                 _tl131137131820_
                                 _e131142131823_
                                 _hd131141131826_
                                 _tl131140131828_))
                            (___match136958136959_
                             _e131121131767_
                             _hd131120131770_
                             _tl131119131772_
                             _e131124131775_
                             _hd131123131778_
                             _tl131122131780_
                             _e131127131783_
                             _hd131126131786_
                             _tl131125131788_
                             _e131130131791_
                             _hd131129131794_
                             _tl131128131796_
                             _e131133131799_
                             _hd131132131802_
                             _tl131131131804_
                             _e131136131807_
                             _hd131135131810_
                             _tl131134131812_
                             _e131139131815_
                             _hd131138131818_
                             _tl131137131820_
                             _e131142131823_
                             _hd131141131826_
                             _tl131140131828_
                             _e131145131831_
                             _hd131144131834_
                             _tl131143131836_))))
                     (___match136780136781_
                      (lambda (_e131077131959_
                               _hd131076131962_
                               _tl131075131964_
                               _e131080131967_
                               _hd131079131970_
                               _tl131078131972_
                               _e131083131975_
                               _hd131082131978_
                               _tl131081131980_
                               _e131086131983_
                               _hd131085131986_
                               _tl131084131988_
                               _e131089131991_
                               _hd131088131994_
                               _tl131087131996_
                               _e131092131999_
                               _hd131091132002_
                               _tl131090132004_
                               _e131095132007_
                               _hd131094132010_
                               _tl131093132012_
                               _e131098132015_
                               _hd131097132018_
                               _tl131096132020_
                               _e131101132023_
                               _hd131100132026_
                               _tl131099132028_
                               _e131104132031_
                               _hd131103132034_
                               _tl131102132036_
                               ___splice136679136680_
                               _target131105132039_
                               _tl131107132041_)
                        (letrec ((_loop131108132044_
                                  (lambda (_hd131106132047_ _args131112132049_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131106132047_))
                                        (let ((_e131109132052_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131106132047_))))
                                          (let ((_lp-tl131111132057_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131109132052_)))
                                                (_lp-hd131110132055_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131109132052_))))
                                            (let ((__tmp137592
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131110132055_
                                                           _args131112132049_))))
                                              (declare (not safe))
                                              (_loop131108132044_
                                               _lp-tl131111132057_
                                               __tmp137592))))
                                        (let ((_args131113132060_
                                               (reverse _args131112132049_)))
                                          (let ((_L132063_ _args131113132060_)
                                                (_L132064_ _hd131103132034_)
                                                (_L132065_ _hd131094132010_)
                                                (_L132066_ _hd131085131986_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L132066_
                                                        'call-method))
                                                     (let ((__tmp137591
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131058_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L132065_
                                                        __tmp137591)))
                                                (___kont136677136678_
                                                 _L132063_
                                                 _L132064_
                                                 _L132065_
                                                 _L132066_)
                                                (___match136968136969_
                                                 _e131077131959_
                                                 _hd131076131962_
                                                 _tl131075131964_
                                                 _e131080131967_
                                                 _hd131079131970_
                                                 _tl131078131972_
                                                 _e131083131975_
                                                 _hd131082131978_
                                                 _tl131081131980_
                                                 _e131086131983_
                                                 _hd131085131986_
                                                 _tl131084131988_
                                                 _e131089131991_
                                                 _hd131088131994_
                                                 _tl131087131996_
                                                 _e131092131999_
                                                 _hd131091132002_
                                                 _tl131090132004_
                                                 _e131095132007_
                                                 _hd131094132010_
                                                 _tl131093132012_
                                                 _e131098132015_
                                                 _hd131097132018_
                                                 _tl131096132020_
                                                 _e131101132023_
                                                 _hd131100132026_
                                                 _tl131099132028_
                                                 _e131104132031_
                                                 _hd131103132034_
                                                 _tl131102132036_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131108132044_ _target131105132039_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136675136676_))
                    (let ((_e131077131959_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136675136676_))))
                      (let ((_tl131075131964_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131077131959_)))
                            (_hd131076131962_
                             (let ()
                               (declare (not safe))
                               (##car _e131077131959_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131075131964_))
                            (let ((_e131080131967_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131075131964_))))
                              (let ((_tl131078131972_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131080131967_)))
                                    (_hd131079131970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131080131967_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131079131970_))
                                    (let ((_e131083131975_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131079131970_))))
                                      (let ((_tl131081131980_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131083131975_)))
                                            (_hd131082131978_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131083131975_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd131082131978_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd131082131978_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl131081131980_))
                                                    (let ((_e131086131983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl131081131980_))))
                                                      (let ((_tl131084131988_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131086131983_)))
                    (_hd131085131986_
                     (let () (declare (not safe)) (##car _e131086131983_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl131084131988_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131078131972_))
                        (let ((_e131089131991_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131078131972_))))
                          (let ((_tl131087131996_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131089131991_)))
                                (_hd131088131994_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131089131991_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131088131994_))
                                (let ((_e131092131999_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131088131994_))))
                                  (let ((_tl131090132004_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131092131999_)))
                                        (_hd131091132002_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131092131999_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd131091132002_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd131091132002_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131090132004_))
                                                (let ((_e131095132007_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131090132004_))))
                                                  (let ((_tl131093132012_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131095132007_)))
                                                        (_hd131094132010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131095132007_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131093132012_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl131087131996_))
                                                            (let ((_e131098132015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl131087131996_))))
                      (let ((_tl131096132020_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131098132015_)))
                            (_hd131097132018_
                             (let ()
                               (declare (not safe))
                               (##car _e131098132015_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd131097132018_))
                            (let ((_e131101132023_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd131097132018_))))
                              (let ((_tl131099132028_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131101132023_)))
                                    (_hd131100132026_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131101132023_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd131100132026_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd131100132026_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131099132028_))
                                            (let ((_e131104132031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131099132028_))))
                                              (let ((_tl131102132036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131104132031_)))
                                                    (_hd131103132034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131104132031_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl131102132036_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl131096132020_))
                                                        (let ((___splice136679136680_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl131096132020_ '0))))
                  (let ((_tl131107132041_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136679136680_ '1)))
                        (_target131105132039_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136679136680_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl131107132041_))
                        (___match136780136781_
                         _e131077131959_
                         _hd131076131962_
                         _tl131075131964_
                         _e131080131967_
                         _hd131079131970_
                         _tl131078131972_
                         _e131083131975_
                         _hd131082131978_
                         _tl131081131980_
                         _e131086131983_
                         _hd131085131986_
                         _tl131084131988_
                         _e131089131991_
                         _hd131088131994_
                         _tl131087131996_
                         _e131092131999_
                         _hd131091132002_
                         _tl131090132004_
                         _e131095132007_
                         _hd131094132010_
                         _tl131093132012_
                         _e131098132015_
                         _hd131097132018_
                         _tl131096132020_
                         _e131101132023_
                         _hd131100132026_
                         _tl131099132028_
                         _e131104132031_
                         _hd131103132034_
                         _tl131102132036_
                         ___splice136679136680_
                         _target131105132039_
                         _tl131107132041_)
                        (___match136968136969_
                         _e131077131959_
                         _hd131076131962_
                         _tl131075131964_
                         _e131080131967_
                         _hd131079131970_
                         _tl131078131972_
                         _e131083131975_
                         _hd131082131978_
                         _tl131081131980_
                         _e131086131983_
                         _hd131085131986_
                         _tl131084131988_
                         _e131089131991_
                         _hd131088131994_
                         _tl131087131996_
                         _e131092131999_
                         _hd131091132002_
                         _tl131090132004_
                         _e131095132007_
                         _hd131094132010_
                         _tl131093132012_
                         _e131098132015_
                         _hd131097132018_
                         _tl131096132020_
                         _e131101132023_
                         _hd131100132026_
                         _tl131099132028_
                         _e131104132031_
                         _hd131103132034_
                         _tl131102132036_))))
                (___match136968136969_
                 _e131077131959_
                 _hd131076131962_
                 _tl131075131964_
                 _e131080131967_
                 _hd131079131970_
                 _tl131078131972_
                 _e131083131975_
                 _hd131082131978_
                 _tl131081131980_
                 _e131086131983_
                 _hd131085131986_
                 _tl131084131988_
                 _e131089131991_
                 _hd131088131994_
                 _tl131087131996_
                 _e131092131999_
                 _hd131091132002_
                 _tl131090132004_
                 _e131095132007_
                 _hd131094132010_
                 _tl131093132012_
                 _e131098132015_
                 _hd131097132018_
                 _tl131096132020_
                 _e131101132023_
                 _hd131100132026_
                 _tl131099132028_
                 _e131104132031_
                 _hd131103132034_
                 _tl131102132036_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match137172137173_
                                                     _e131077131959_
                                                     _hd131076131962_
                                                     _tl131075131964_
                                                     _e131080131967_
                                                     _hd131079131970_
                                                     _tl131078131972_
                                                     _e131083131975_
                                                     _hd131082131978_
                                                     _tl131081131980_
                                                     _e131086131983_
                                                     _hd131085131986_
                                                     _tl131084131988_
                                                     _e131089131991_
                                                     _hd131088131994_
                                                     _tl131087131996_
                                                     _e131092131999_
                                                     _hd131091132002_
                                                     _tl131090132004_
                                                     _e131095132007_
                                                     _hd131094132010_
                                                     _tl131093132012_
                                                     _e131098132015_
                                                     _hd131097132018_
                                                     _tl131096132020_))))
                                            (___match137172137173_
                                             _e131077131959_
                                             _hd131076131962_
                                             _tl131075131964_
                                             _e131080131967_
                                             _hd131079131970_
                                             _tl131078131972_
                                             _e131083131975_
                                             _hd131082131978_
                                             _tl131081131980_
                                             _e131086131983_
                                             _hd131085131986_
                                             _tl131084131988_
                                             _e131089131991_
                                             _hd131088131994_
                                             _tl131087131996_
                                             _e131092131999_
                                             _hd131091132002_
                                             _tl131090132004_
                                             _e131095132007_
                                             _hd131094132010_
                                             _tl131093132012_
                                             _e131098132015_
                                             _hd131097132018_
                                             _tl131096132020_))
                                        (___match136848136849_
                                         _e131077131959_
                                         _hd131076131962_
                                         _tl131075131964_
                                         _e131080131967_
                                         _hd131079131970_
                                         _tl131078131972_
                                         _e131083131975_
                                         _hd131082131978_
                                         _tl131081131980_
                                         _e131086131983_
                                         _hd131085131986_
                                         _tl131084131988_
                                         _e131089131991_
                                         _hd131088131994_
                                         _tl131087131996_
                                         _e131092131999_
                                         _hd131091132002_
                                         _tl131090132004_
                                         _e131095132007_
                                         _hd131094132010_
                                         _tl131093132012_
                                         _e131098132015_
                                         _hd131097132018_
                                         _tl131096132020_
                                         _e131101132023_
                                         _hd131100132026_
                                         _tl131099132028_))
                                    (___match137172137173_
                                     _e131077131959_
                                     _hd131076131962_
                                     _tl131075131964_
                                     _e131080131967_
                                     _hd131079131970_
                                     _tl131078131972_
                                     _e131083131975_
                                     _hd131082131978_
                                     _tl131081131980_
                                     _e131086131983_
                                     _hd131085131986_
                                     _tl131084131988_
                                     _e131089131991_
                                     _hd131088131994_
                                     _tl131087131996_
                                     _e131092131999_
                                     _hd131091132002_
                                     _tl131090132004_
                                     _e131095132007_
                                     _hd131094132010_
                                     _tl131093132012_
                                     _e131098132015_
                                     _hd131097132018_
                                     _tl131096132020_))))
                            (___match137172137173_
                             _e131077131959_
                             _hd131076131962_
                             _tl131075131964_
                             _e131080131967_
                             _hd131079131970_
                             _tl131078131972_
                             _e131083131975_
                             _hd131082131978_
                             _tl131081131980_
                             _e131086131983_
                             _hd131085131986_
                             _tl131084131988_
                             _e131089131991_
                             _hd131088131994_
                             _tl131087131996_
                             _e131092131999_
                             _hd131091132002_
                             _tl131090132004_
                             _e131095132007_
                             _hd131094132010_
                             _tl131093132012_
                             _e131098132015_
                             _hd131097132018_
                             _tl131096132020_))))
                    (___match137110137111_
                     _e131077131959_
                     _hd131076131962_
                     _tl131075131964_
                     _e131080131967_
                     _hd131079131970_
                     _tl131078131972_
                     _e131083131975_
                     _hd131082131978_
                     _tl131081131980_
                     _e131086131983_
                     _hd131085131986_
                     _tl131084131988_
                     _e131089131991_
                     _hd131088131994_
                     _tl131087131996_
                     _e131092131999_
                     _hd131091132002_
                     _tl131090132004_
                     _e131095132007_
                     _hd131094132010_
                     _tl131093132012_))
                (___kont136693136694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136693136694_))
                                            (___kont136693136694_))
                                        (___kont136693136694_))))
                                (___kont136693136694_))))
                        (___kont136693136694_))
                    (___kont136693136694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136693136694_))
                                                (___kont136693136694_))
                                            (___kont136693136694_))))
                                    (___kont136693136694_))))
                            (___kont136693136694_))))
                    (___kont136693136694_))))))))))
