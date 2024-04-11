(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712836664)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp194248 (list gxc#::basic-xform::t))
            (__tmp194247 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp194248
         '()
         __tmp194247
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args193525%_
        (apply make-instance gxc#::optimize-call::t _%$args193525%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp194249
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#if
                  gxc#optimize-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp194249)))
    (define gxc#apply-optimize-call
      (lambda (_%stx193517%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self193520%_
                (let ((__obj194239
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj194239))
               (__tmp194250
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193520%_ _%stx193517%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194250
           gxc#current-compile-method
           _%self193520%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp194252 (list gxc#::void::t))
            (__tmp194251 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp194252
         '()
         __tmp194251
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args193514%_
        (apply make-instance gxc#::check-return-type::t _%$args193514%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp194253
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-path-type-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-promise __tmp194253)))
    (define gxc#apply-check-return-type
      (lambda (_%stx193506%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self193509%_
                (let ((__obj194241
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj194241))
               (__tmp194254
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193509%_ _%stx193506%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194254
           gxc#current-compile-method
           _%self193509%_))))
    (define gxc#optimize-call%
      (lambda (_%self193107%_ _%stx193108%_)
        (let* ((_%__stx193594193595%_ _%stx193108%_)
               (_%g193111193157%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193594193595%_)))))
          (let ((_%__kont193596193597%_
                 (lambda (_%L193300%_ _%L193301%_)
                   (let* ((_%rator-id193321%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L193301%_)))
                          (_%rator-type193323%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id193321%_))))
                     (if (or (not _%rator-type193323%_)
                             (eq? (##structure-ref
                                   _%rator-type193323%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self193107%_ _%stx193108%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type193323%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp194255
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type193323%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id193321%_
                                  '" => "
                                  _%rator-type193323%_
                                  '" "
                                  __tmp194255))
                               (let* ((_%optimized193338%_
                                       (let ((__method194242
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type193323%_
                                                 'optimize-call))))
                                         (if __method194242
                                             (let ((__tmp194256
                                                    (let ((__tmp194257
                                                           (lambda (_%g193330193333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g193331193335%_)
                     (cons _%g193330193333%_ _%g193331193335%_))))
              (declare (not safe))
              (__foldr1 __tmp194257 '() _%L193300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method194242
                                                _%rator-type193323%_
                                                _%self193107%_
                                                _%stx193108%_
                                                __tmp194256))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type193323%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx193542193543%_
                                       _%optimized193338%_)
                                      (_%g193341193370%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx193542193543%_)))))
                                 (let ((_%__kont193544193545%_
                                        (lambda (_%L193438%_ _%L193439%_)
                                          (let* ((_%optimized-rator-id193466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L193439%_)))
                                                 (_%rator-type193471%_
                                                  (let ((_%$e193468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id193466%_))))
                                                    (if _%$e193468%_
                                                        _%$e193468%_
                                                        _%rator-type193323%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type193471%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id193466%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type193471%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type193471%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized193338%_
                                                (let ((__tmp194258
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L193439%_ '()))
                           (let ((__tmp194259
                                  (lambda (_%g193479193482%_ _%g193480193484%_)
                                    (cons _%g193479193482%_
                                          _%g193480193484%_))))
                             (declare (not safe))
                             (__foldr1 __tmp194259 '() _%L193438%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp194258
                                                   _%stx193108%_))))))
                                       (_%__kont193548193549%_
                                        (lambda () _%optimized193338%_)))
                                   (let ((_%__match193591193592%_
                                          (lambda (_%e193345193382%_
                                                   _%hd193346193385%_
                                                   _%tl193347193387%_
                                                   _%e193348193390%_
                                                   _%hd193349193393%_
                                                   _%tl193350193395%_
                                                   _%e193351193398%_
                                                   _%hd193352193401%_
                                                   _%tl193353193403%_
                                                   _%e193354193406%_
                                                   _%hd193355193409%_
                                                   _%tl193356193411%_
                                                   _%__splice193546193547%_
                                                   _%target193357193414%_
                                                   _%tl193359193416%_)
                                            (letrec ((_%loop193360193419%_
                                                      (lambda (_%hd193358193422%_
                                                               _%arg193364193424%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd193358193422%_))
                                                            (let ((_%e193361193427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd193358193422%_))))
                      (let ((_%lp-tl193363193432%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193361193427%_)))
                            (_%lp-hd193362193430%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193361193427%_))))
                        (_%loop193360193419%_
                         _%lp-tl193363193432%_
                         (cons _%lp-hd193362193430%_ _%arg193364193424%_))))
                    (let ((_%arg193365193435%_ (reverse _%arg193364193424%_)))
                      (_%__kont193544193545%_
                       _%arg193365193435%_
                       _%hd193355193409%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop193360193419%_
                                               _%target193357193414%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx193542193543%_))
                                         (let ((_%e193345193382%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx193542193543%_))))
                                           (let ((_%tl193347193387%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e193345193382%_)))
                                                 (_%hd193346193385%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e193345193382%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd193346193385%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd193346193385%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl193347193387%_))
                                                         (let ((_%e193348193390%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl193347193387%_))))
                   (let ((_%tl193350193395%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e193348193390%_)))
                         (_%hd193349193393%_
                          (let ()
                            (declare (not safe))
                            (##car _%e193348193390%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd193349193393%_))
                         (let ((_%e193351193398%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd193349193393%_))))
                           (let ((_%tl193353193403%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e193351193398%_)))
                                 (_%hd193352193401%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e193351193398%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd193352193401%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd193352193401%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl193353193403%_))
                                         (let ((_%e193354193406%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl193353193403%_))))
                                           (let ((_%tl193356193411%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e193354193406%_)))
                                                 (_%hd193355193409%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e193354193406%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl193356193411%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl193350193395%_))
                                                     (let ((_%__splice193546193547%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl193350193395%_
                                                               '0))))
                                                       (let ((_%tl193359193416%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice193546193547%_ '1)))
                     (_%target193357193414%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice193546193547%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl193359193416%_))
                     (_%__match193591193592%_
                      _%e193345193382%_
                      _%hd193346193385%_
                      _%tl193347193387%_
                      _%e193348193390%_
                      _%hd193349193393%_
                      _%tl193350193395%_
                      _%e193351193398%_
                      _%hd193352193401%_
                      _%tl193353193403%_
                      _%e193354193406%_
                      _%hd193355193409%_
                      _%tl193356193411%_
                      _%__splice193546193547%_
                      _%target193357193414%_
                      _%tl193359193416%_)
                     (_%__kont193548193549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont193548193549%_))
                                                 (_%__kont193548193549%_))))
                                         (_%__kont193548193549%_))
                                     (_%__kont193548193549%_))
                                 (_%__kont193548193549%_))))
                         (_%__kont193548193549%_))))
                 (_%__kont193548193549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont193548193549%_))
                                                 (_%__kont193548193549%_))))
                                         (_%__kont193548193549%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type193323%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type193323%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp194260
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L193301%_
                                                                '()))
                                                    (map (lambda (_%g193490193492%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self193107%_
                                                              _%g193490193492%_)))
                                                         (let ((__tmp194261
                                                                (lambda (_%g193494193497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g193495193499%_)
                          (cons _%g193494193497%_ _%g193495193499%_))))
                   (declare (not safe))
                   (__foldr1 __tmp194261 '() _%L193300%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp194260
                                    _%stx193108%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx193108%_
                                    _%rator-type193323%_))))))))
                (_%__kont193600193601%_
                 (lambda (_%L193202%_ _%L193203%_)
                   (let ((_%rator-type193220%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L193203%_))))
                     (if (and _%rator-type193220%_
                              (eq? (##structure-ref
                                    _%rator-type193220%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type193220%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type193220%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type193220%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp194262
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self193107%_
                                               _%L193203%_))
                                            (map (lambda (_%g193222193224%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self193107%_
                                                      _%g193222193224%_)))
                                                 (let ((__tmp194263
                                                        (lambda (_%g193226193229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g193227193231%_)
                  (cons _%g193226193229%_ _%g193227193231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp194263
                                                    '()
                                                    _%L193202%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp194262 _%stx193108%_))
                         (if (or (not _%rator-type193220%_)
                                 (let ((__tmp194264
                                        (##structure-ref
                                         _%rator-type193220%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp194264 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self193107%_ _%stx193108%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx193108%_
                                _%rator-type193220%_))))))))
            (let* ((_%__match193661193662%_
                    (lambda (_%e193138193162%_
                             _%hd193139193165%_
                             _%tl193140193167%_
                             _%e193141193170%_
                             _%hd193142193173%_
                             _%tl193143193175%_
                             _%__splice193602193603%_
                             _%target193144193178%_
                             _%tl193146193180%_)
                      (letrec ((_%loop193147193183%_
                                (lambda (_%hd193145193186%_
                                         _%rand193151193188%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193145193186%_))
                                      (let ((_%e193148193191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd193145193186%_))))
                                        (let ((_%lp-tl193150193196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193148193191%_)))
                                              (_%lp-hd193149193194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193148193191%_))))
                                          (_%loop193147193183%_
                                           _%lp-tl193150193196%_
                                           (cons _%lp-hd193149193194%_
                                                 _%rand193151193188%_))))
                                      (let ((_%rand193152193199%_
                                             (reverse _%rand193151193188%_)))
                                        (_%__kont193600193601%_
                                         _%rand193152193199%_
                                         _%hd193142193173%_))))))
                        (_%loop193147193183%_ _%target193144193178%_ '()))))
                   (_%__match193641193642%_
                    (lambda (_%e193115193244%_
                             _%hd193116193247%_
                             _%tl193117193249%_
                             _%e193118193252%_
                             _%hd193119193255%_
                             _%tl193120193257%_
                             _%e193121193260%_
                             _%hd193122193263%_
                             _%tl193123193265%_
                             _%e193124193268%_
                             _%hd193125193271%_
                             _%tl193126193273%_
                             _%__splice193598193599%_
                             _%target193127193276%_
                             _%tl193129193278%_)
                      (letrec ((_%loop193130193281%_
                                (lambda (_%hd193128193284%_
                                         _%rand193134193286%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193128193284%_))
                                      (let ((_%e193131193289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd193128193284%_))))
                                        (let ((_%lp-tl193133193294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193131193289%_)))
                                              (_%lp-hd193132193292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193131193289%_))))
                                          (_%loop193130193281%_
                                           _%lp-tl193133193294%_
                                           (cons _%lp-hd193132193292%_
                                                 _%rand193134193286%_))))
                                      (let ((_%rand193135193297%_
                                             (reverse _%rand193134193286%_)))
                                        (_%__kont193596193597%_
                                         _%rand193135193297%_
                                         _%hd193125193271%_))))))
                        (_%loop193130193281%_ _%target193127193276%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193594193595%_))
                  (let ((_%e193115193244%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193594193595%_))))
                    (let ((_%tl193117193249%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193115193244%_)))
                          (_%hd193116193247%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193115193244%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193117193249%_))
                          (let ((_%e193118193252%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193117193249%_))))
                            (let ((_%tl193120193257%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193118193252%_)))
                                  (_%hd193119193255%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193118193252%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193119193255%_))
                                  (let ((_%e193121193260%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193119193255%_))))
                                    (let ((_%tl193123193265%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193121193260%_)))
                                          (_%hd193122193263%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193121193260%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193122193263%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193122193263%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193123193265%_))
                                                  (let ((_%e193124193268%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193123193265%_))))
                                                    (let ((_%tl193126193273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193124193268%_)))
                                                          (_%hd193125193271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193124193268%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193126193273%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl193120193257%_))
                      (let ((_%__splice193598193599%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl193120193257%_
                                '0))))
                        (let ((_%tl193129193278%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193598193599%_ '1)))
                              (_%target193127193276%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193598193599%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193129193278%_))
                              (_%__match193641193642%_
                               _%e193115193244%_
                               _%hd193116193247%_
                               _%tl193117193249%_
                               _%e193118193252%_
                               _%hd193119193255%_
                               _%tl193120193257%_
                               _%e193121193260%_
                               _%hd193122193263%_
                               _%tl193123193265%_
                               _%e193124193268%_
                               _%hd193125193271%_
                               _%tl193126193273%_
                               _%__splice193598193599%_
                               _%target193127193276%_
                               _%tl193129193278%_)
                              (let ()
                                (declare (not safe))
                                (_%g193111193157%_)))))
                      (let () (declare (not safe)) (_%g193111193157%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl193120193257%_))
                      (let ((_%__splice193602193603%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl193120193257%_
                                '0))))
                        (let ((_%tl193146193180%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193602193603%_ '1)))
                              (_%target193144193178%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193602193603%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193146193180%_))
                              (_%__match193661193662%_
                               _%e193115193244%_
                               _%hd193116193247%_
                               _%tl193117193249%_
                               _%e193118193252%_
                               _%hd193119193255%_
                               _%tl193120193257%_
                               _%__splice193602193603%_
                               _%target193144193178%_
                               _%tl193146193180%_)
                              (let ()
                                (declare (not safe))
                                (_%g193111193157%_)))))
                      (let () (declare (not safe)) (_%g193111193157%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl193120193257%_))
                                                      (let ((_%__splice193602193603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl193120193257%_ '0))))
                (let ((_%tl193146193180%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice193602193603%_ '1)))
                      (_%target193144193178%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice193602193603%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193146193180%_))
                      (_%__match193661193662%_
                       _%e193115193244%_
                       _%hd193116193247%_
                       _%tl193117193249%_
                       _%e193118193252%_
                       _%hd193119193255%_
                       _%tl193120193257%_
                       _%__splice193602193603%_
                       _%target193144193178%_
                       _%tl193146193180%_)
                      (let () (declare (not safe)) (_%g193111193157%_)))))
              (let () (declare (not safe)) (_%g193111193157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193120193257%_))
                                                  (let ((_%__splice193602193603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193120193257%_
                                                            '0))))
                                                    (let ((_%tl193146193180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193602193603%_
                                                              '1)))
                                                          (_%target193144193178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193602193603%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193146193180%_))
                                                          (_%__match193661193662%_
                                                           _%e193115193244%_
                                                           _%hd193116193247%_
                                                           _%tl193117193249%_
                                                           _%e193118193252%_
                                                           _%hd193119193255%_
                                                           _%tl193120193257%_
                                                           _%__splice193602193603%_
                                                           _%target193144193178%_
                                                           _%tl193146193180%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193111193157%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193111193157%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl193120193257%_))
                                              (let ((_%__splice193602193603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl193120193257%_
                                                        '0))))
                                                (let ((_%tl193146193180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice193602193603%_
                                                          '1)))
                                                      (_%target193144193178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice193602193603%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193146193180%_))
                                                      (_%__match193661193662%_
                                                       _%e193115193244%_
                                                       _%hd193116193247%_
                                                       _%tl193117193249%_
                                                       _%e193118193252%_
                                                       _%hd193119193255%_
                                                       _%tl193120193257%_
                                                       _%__splice193602193603%_
                                                       _%target193144193178%_
                                                       _%tl193146193180%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193111193157%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193111193157%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193120193257%_))
                                      (let ((_%__splice193602193603%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193120193257%_
                                                '0))))
                                        (let ((_%tl193146193180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193602193603%_
                                                  '1)))
                                              (_%target193144193178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193602193603%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193146193180%_))
                                              (_%__match193661193662%_
                                               _%e193115193244%_
                                               _%hd193116193247%_
                                               _%tl193117193249%_
                                               _%e193118193252%_
                                               _%hd193119193255%_
                                               _%tl193120193257%_
                                               _%__splice193602193603%_
                                               _%target193144193178%_
                                               _%tl193146193180%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g193111193157%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193111193157%_))))))
                          (let () (declare (not safe)) (_%g193111193157%_)))))
                  (let () (declare (not safe)) (_%g193111193157%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189486193067%_ _%ctx193069%_ _%stx193070%_ _%args193071%_)
        (let* ((_%self193073%_ _%self189486193067%_)
               (_%self193075%_ _%self193073%_))
          (if (let ((__method194243
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self193075%_ 'check-arguments))))
                (if __method194243
                    (let ()
                      (declare (not safe))
                      (__method194243
                       _%self193075%_
                       _%ctx193069%_
                       _%stx193070%_
                       _%args193071%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self193075%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature193085%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193075%_ '2 '#f '#f)))
                     (_%signature193087%_ _%signature193085%_)
                     (_%$e193097%_
                      (if _%signature193087%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature193087%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e193097%_
                    ((lambda (_%unchecked193100%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked193100%_))
                           (let ((__tmp194265
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked193100%_
                                                          '()))
                                              (map (lambda (_%g193101193103%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx193069%_
                                                        _%g193101193103%_)))
                                                   _%args193071%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp194265
                              _%stx193070%_
                              _%ctx193069%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx193069%_ _%stx193070%_))))
                     _%$e193097%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx193069%_ _%stx193070%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx193069%_ _%stx193070%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass193527 __method-table193528)
        (let ((__check-arguments193529
               (let ((__tmp194266
                      (lambda ()
                        (let ((__method193530
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table193528
                                  'check-arguments
                                  '#f))))
                          (if __method193530
                              __method193530
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp194266))))
          (lambda (_%self189486193067%_
                   _%ctx193069%_
                   _%stx193070%_
                   _%args193071%_)
            (let* ((_%self193073%_ _%self189486193067%_)
                   (_%self193075%_ _%self193073%_))
              (if ((force __check-arguments193529)
                   _%self193075%_
                   _%ctx193069%_
                   _%stx193070%_
                   _%args193071%_)
                  (let* ((_%signature193085%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self193075%_
                             '2
                             '#f
                             '#f)))
                         (_%signature193087%_ _%signature193085%_)
                         (_%$e193097%_
                          (if _%signature193087%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature193087%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e193097%_
                        ((lambda (_%unchecked193100%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked193100%_))
                               (let ((__tmp194267
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked193100%_
                                                              '()))
                                                  (map (lambda (_%g193101193103%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx193069%_
                                                            _%g193101193103%_)))
                                                       _%args193071%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp194267
                                  _%stx193070%_
                                  _%ctx193069%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx193069%_
                                  _%stx193070%_))))
                         _%$e193097%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx193069%_ _%stx193070%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx193069%_ _%stx193070%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self189487192816%_ _%ctx192818%_ _%stx192819%_ _%args192820%_)
        (let* ((_%self192822%_ _%self189487192816%_)
               (_%self192824%_ _%self192822%_)
               (_%signature192833192835%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192824%_ '2 '#f '#f))))
          (if _%signature192833192835%_
              (let* ((_%signature192838%_ _%signature192833192835%_)
                     (_%argument-types192839192841%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature192838%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types192839192841%_
                    (let* ((_%argument-types192844%_
                            _%argument-types192839192841%_)
                           (_%argument-types192849%_
                            (let ((__tmp194268
                                   (lambda (_%t192847%_)
                                     (if _%t192847%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192819%_
                                            _%t192847%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp194268
                               _%argument-types192844%_))))
                      (let _%loop192851%_ ((_%rest-args192853%_ _%args192820%_)
                                           (_%rest-types192854%_
                                            _%argument-types192849%_)
                                           (_%result192855%_ '#t))
                        (let* ((_%rest-args192856192864%_ _%rest-args192853%_)
                               (_%else192858192872%_
                                (lambda () _%result192855%_))
                               (_%K192860192933%_
                                (lambda (_%rest-args192875%_ _%arg192876%_)
                                  (let* ((_%rest-types192877192888%_
                                          _%rest-types192854%_)
                                         (_%E192881192892%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types192877192888%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K192884192921%_
                                           (lambda (_%rest-types192918%_
                                                    _%type192919%_)
                                             (_%loop192851%_
                                              _%rest-args192875%_
                                              _%rest-types192918%_
                                              (if (gxc#check-expression-type!
                                                   _%stx192819%_
                                                   _%arg192876%_
                                                   _%type192919%_)
                                                  _%result192855%_
                                                  '#f))))
                                          (_%K192883192912%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx192819%_
                                                _%argument-types192849%_))))
                                          (_%K192882192902%_
                                           (lambda (_%tail-type192896%_)
                                             (if (let ((__tmp194269
                                                        (lambda (_%g192897192899%_)
                                                          (gxc#check-expression-type!
                                                           _%stx192819%_
                                                           _%g192897192899%_
                                                           _%tail-type192896%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp194269
                                                    _%rest-args192875%_))
                                                 _%result192855%_
                                                 '#f))))
                                      (let ((_%try-match192879192915%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types192877192888%_))
                                                   (_%K192883192912%_)
                                                   (let ((_%tail-type192905%_
                                                          _%rest-types192877192888%_))
                                                     (_%K192882192902%_
                                                      _%tail-type192905%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types192877192888%_))
                                            (let ((_%tl192886192926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types192877192888%_)))
                                                  (_%hd192885192924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types192877192888%_))))
                                              (let ((_%type192929%_
                                                     _%hd192885192924%_)
                                                    (_%rest-types192931%_
                                                     _%tl192886192926%_))
                                                (_%K192884192921%_
                                                 _%rest-types192931%_
                                                 _%type192929%_)))
                                            (_%try-match192879192915%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args192856192864%_))
                              (let ((_%hd192861192936%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args192856192864%_)))
                                    (_%tl192862192938%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args192856192864%_))))
                                (let* ((_%arg192941%_ _%hd192861192936%_)
                                       (_%rest-args192943%_
                                        _%tl192862192938%_))
                                  (_%K192860192933%_
                                   _%rest-args192943%_
                                   _%arg192941%_)))
                              (_%else192858192872%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self189488192625%_ _%ctx192627%_ _%stx192628%_ _%args192629%_)
        (let* ((_%self192631%_ _%self189488192625%_)
               (_%self192633%_ _%self192631%_)
               (_%g192643192653%_
                (lambda (_%g192644192650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192644192650%_))))
               (_%g192642192691%_
                (lambda (_%g192644192656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192644192656%_))
                      (let ((_%e192646192658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192644192656%_))))
                        (let ((_%hd192647192661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192646192658%_)))
                              (_%tl192648192663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192646192658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192648192663%_))
                              ((lambda (_%L192666%_)
                                 (let* ((_%klass192678%_
                                         (let ((__tmp194270
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192633%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192628%_
                                            __tmp194270)))
                                        (_%object192680%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx192627%_
                                            _%L192666%_)))
                                        (_%instance?192685%_
                                         (let ((_%$e192682%_
                                                (gxc#expression-type?
                                                 _%object192680%_
                                                 _%klass192678%_)))
                                           (if _%$e192682%_
                                               _%$e192682%_
                                               (gxc#expression-type?
                                                _%L192666%_
                                                _%klass192678%_)))))
                                   (if _%instance?192685%_
                                       (let ((__tmp194271
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object192680%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L192666%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object192680%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194271
                                          _%stx192628%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx192627%_
                                          _%stx192628%_)))))
                               _%hd192647192661%_)
                              (_%g192643192653%_ _%g192644192656%_))))
                      (_%g192643192653%_ _%g192644192656%_)))))
          (_%g192642192691%_ _%args192629%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189489192419%_ _%ctx192421%_ _%stx192422%_ _%args192423%_)
        (let* ((_%self192425%_ _%self189489192419%_)
               (_%self192427%_ _%self192425%_)
               (_%g192437192447%_
                (lambda (_%g192438192444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192438192444%_))))
               (_%g192436192500%_
                (lambda (_%g192438192450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192438192450%_))
                      (let ((_%e192440192452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192438192450%_))))
                        (let ((_%hd192441192455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192440192452%_)))
                              (_%tl192442192457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192440192452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192442192457%_))
                              ((lambda (_%L192460%_)
                                 (let* ((_%klass192472%_
                                         (let ((__tmp194272
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192427%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192422%_
                                            __tmp194272)))
                                        (_%object192474%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx192421%_
                                            _%L192460%_)))
                                        (_%instance?192479%_
                                         (let ((_%$e192476%_
                                                (gxc#expression-type?
                                                 _%object192474%_
                                                 _%klass192472%_)))
                                           (if _%$e192476%_
                                               _%$e192476%_
                                               (gxc#expression-type?
                                                _%L192460%_
                                                _%klass192472%_))))
                                        (_%klass192482%_ _%klass192472%_))
                                   (if _%instance?192479%_
                                       (let ((__tmp194273
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object192474%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L192460%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object192474%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194273
                                          _%stx192422%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192482%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp194274
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass192482%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object192474%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194274
                                              _%stx192422%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192482%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp194275
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass192482%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object192474%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194275
                                                  _%stx192422%_))
                                               (let ((__tmp194276
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self192427%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object192474%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194276
                                                  _%stx192422%_)))))))
                               _%hd192441192455%_)
                              (_%g192437192447%_ _%g192438192450%_))))
                      (_%g192437192447%_ _%g192438192450%_)))))
          (_%g192436192500%_ _%args192423%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx192082%_)
        (let* ((_%__stx193671193672%_ _%stx192082%_)
               (_%g192087192128%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193671193672%_)))))
          (let ((_%__kont193673193674%_ (lambda () '#t))
                (_%__kont193675193676%_ (lambda () '#t))
                (_%__kont193677193678%_
                 (lambda (_%L192196%_ _%L192197%_)
                   (let ((_%rator-type192218192220%_
                          (let ((__tmp194277
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L192197%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp194277))))
                     (if _%rator-type192218192220%_
                         (let* ((_%rator-type192223%_
                                 _%rator-type192218192220%_)
                                (_%rator-signature192224192226%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type192223%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type192223%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature192224192226%_
                               (let* ((_%rator-signature192229%_
                                       _%rator-signature192224192226%_)
                                      (_%rator-effect192230192232%_
                                       (if _%rator-signature192229%_
                                           (##direct-structure-ref
                                            _%rator-signature192229%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect192230192232%_
                                     (let ((_%rator-effect192235%_
                                            _%rator-effect192230192232%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect192235%_)
                                               (equal? '(alloc)
                                                       _%rator-effect192235%_))
                                           (let ((__tmp194278
                                                  (let ((__tmp194279
                                                         (lambda (_%g192240192243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g192241192245%_)
                   (cons _%g192240192243%_ _%g192241192245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp194279
                                                     '()
                                                     _%L192196%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp194278))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont193681193682%_ (lambda () '#f)))
            (let ((_%__match193760193761%_
                   (lambda (_%e192103192140%_
                            _%hd192104192143%_
                            _%tl192105192145%_
                            _%e192106192148%_
                            _%hd192107192151%_
                            _%tl192108192153%_
                            _%e192109192156%_
                            _%hd192110192159%_
                            _%tl192111192161%_
                            _%e192112192164%_
                            _%hd192113192167%_
                            _%tl192114192169%_
                            _%__splice193679193680%_
                            _%target192115192172%_
                            _%tl192117192174%_)
                     (letrec ((_%loop192118192177%_
                               (lambda (_%hd192116192180%_
                                        _%rand192122192182%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd192116192180%_))
                                     (let ((_%e192119192185%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd192116192180%_))))
                                       (let ((_%lp-tl192121192190%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e192119192185%_)))
                                             (_%lp-hd192120192188%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e192119192185%_))))
                                         (_%loop192118192177%_
                                          _%lp-tl192121192190%_
                                          (cons _%lp-hd192120192188%_
                                                _%rand192122192182%_))))
                                     (let ((_%rand192123192193%_
                                            (reverse _%rand192122192182%_)))
                                       (_%__kont193677193678%_
                                        _%rand192123192193%_
                                        _%hd192113192167%_))))))
                       (_%loop192118192177%_ _%target192115192172%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193671193672%_))
                  (let ((_%e192089192276%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193671193672%_))))
                    (let ((_%tl192091192281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192089192276%_)))
                          (_%hd192090192279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192089192276%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192090192279%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192090192279%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192091192281%_))
                                  (let ((_%e192092192284%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192091192281%_))))
                                    (let ((_%tl192094192289%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192092192284%_)))
                                          (_%hd192093192287%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192092192284%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192094192289%_))
                                          (_%__kont193673193674%_)
                                          (_%__kont193681193682%_))))
                                  (_%__kont193681193682%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192090192279%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192091192281%_))
                                      (let ((_%e192098192261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192091192281%_))))
                                        (let ((_%tl192100192266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192098192261%_)))
                                              (_%hd192099192264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192098192261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192100192266%_))
                                              (_%__kont193675193676%_)
                                              (_%__kont193681193682%_))))
                                      (_%__kont193681193682%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd192090192279%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192091192281%_))
                                          (let ((_%e192106192148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192091192281%_))))
                                            (let ((_%tl192108192153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192106192148%_)))
                                                  (_%hd192107192151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192106192148%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd192107192151%_))
                                                  (let ((_%e192109192156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd192107192151%_))))
                                                    (let ((_%tl192111192161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192109192156%_)))
                                                          (_%hd192110192159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192109192156%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd192110192159%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd192110192159%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192111192161%_))
                          (let ((_%e192112192164%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192111192161%_))))
                            (let ((_%tl192114192169%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192112192164%_)))
                                  (_%hd192113192167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192112192164%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192114192169%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl192108192153%_))
                                      (let ((_%__splice193679193680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl192108192153%_
                                                '0))))
                                        (let ((_%tl192117192174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193679193680%_
                                                  '1)))
                                              (_%target192115192172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193679193680%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192117192174%_))
                                              (_%__match193760193761%_
                                               _%e192089192276%_
                                               _%hd192090192279%_
                                               _%tl192091192281%_
                                               _%e192106192148%_
                                               _%hd192107192151%_
                                               _%tl192108192153%_
                                               _%e192109192156%_
                                               _%hd192110192159%_
                                               _%tl192111192161%_
                                               _%e192112192164%_
                                               _%hd192113192167%_
                                               _%tl192114192169%_
                                               _%__splice193679193680%_
                                               _%target192115192172%_
                                               _%tl192117192174%_)
                                              (_%__kont193681193682%_))))
                                      (_%__kont193681193682%_))
                                  (_%__kont193681193682%_))))
                          (_%__kont193681193682%_))
                      (_%__kont193681193682%_))
                  (_%__kont193681193682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193681193682%_))))
                                          (_%__kont193681193682%_))
                                      (_%__kont193681193682%_))))
                          (_%__kont193681193682%_))))
                  (_%__kont193681193682%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx192077%_ _%klass192078%_)
        (let ((_%expr-type192080%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx192077%_))))
          (if _%expr-type192080%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type192080%_ _%klass192078%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx192055%_ _%expr192056%_ _%type192057%_)
        (if (not _%type192057%_)
            '#f
            (let ((_%$e192060%_
                   (eq? (##structure-ref _%type192057%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e192060%_
                  _%$e192060%_
                  (let ((_%expr-type192064%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr192056%_))))
                    (if (not _%expr-type192064%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type192064%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e192068%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type192064%_
                                      'gxc#!abort::t))))
                              (if _%$e192068%_
                                  _%$e192068%_
                                  (let ((_%$e192071%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type192064%_
                                            _%type192057%_))))
                                    (if _%$e192071%_
                                        _%$e192071%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type192057%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type192057%_
                                                   _%expr-type192064%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx192055%_
                                                   _%expr192056%_
                                                   _%expr-type192064%_
                                                   _%type192057%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189490191867%_ _%ctx191869%_ _%stx191870%_ _%args191871%_)
        (let* ((_%self191873%_ _%self189490191867%_)
               (_%self191875%_ _%self191873%_)
               (_%klass191885%_
                (let ((__tmp194280
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191875%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx191870%_ __tmp194280)))
               (_%fields191887%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass191885%_
                           '5
                           '#f
                           '#f))))
               (_%args191893%_
                (map (lambda (_%g191888191890%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx191869%_ _%g191888191890%_)))
                     _%args191871%_))
               (_%inline-make-object191895%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self191875%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191875%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields191887%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass191898%_ _%klass191885%_)
               (_%$e191912%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass191898%_ '6 '#f '#f))))
          (if _%$e191912%_
              ((lambda (_%ctor191915%_)
                 (let ((_%$obj191917%_
                        (let ((__tmp194281
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp194281)))
                       (_%ctor-impl191918%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass191898%_
                           _%ctor191915%_))))
                   (let ((__tmp194282
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj191917%_ '())
                                                  (cons _%inline-make-object191895%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl191918%_
                                                            (let ((__tmp194283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl191918%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj191917%_ '()))
                                             _%args191893%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp194283
                       _%stx191870%_
                       _%ctx191869%_))
                    (let ((_%$ctor191920%_
                           (let ((__tmp194284
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp194284))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor191920%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191875%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj191917%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor191915%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor191920%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor191920%_ '()))
                              (cons (cons '%#ref (cons _%$obj191917%_ '()))
                                    _%args191893%_)))
                  (cons (cons '%#call
                              (cons (cons '%#ref (cons 'error '()))
                                    (cons (cons '%#quote
                                                (cons '"missing constructor method implementation"
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons 'class: '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191875%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor191915%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj191917%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp194282 _%stx191870%_))))
               _%$e191912%_)
              (let ((_%$e191922%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass191898%_
                        '10
                        '#f
                        '#f))))
                (if _%$e191922%_
                    ((lambda (_%metaclass191925%_)
                       (let* ((_%$obj191927%_
                               (let ((__tmp194285
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp194285)))
                              (_%metakons191929%_
                               (let ((__tmp194286
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx191870%_
                                         _%metaclass191925%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp194286
                                  'instance-init!)))
                              (__tmp194287
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj191927%_
                                                             '())
                                                       (cons _%inline-make-object191895%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons191929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp194288
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons191929%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self191875%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj191927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args191893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp194288
                            _%stx191870%_
                            _%ctx191869%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self191875%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj191927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args191893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj191927%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp194287 _%stx191870%_)))
                     _%$e191922%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass191898%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp194289
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args191893%_))))
                              (declare (not safe))
                              (##fx= __tmp194289 _%fields191887%_))
                            (let ((__tmp194290
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self191875%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '##structure '()))
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self191875%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args191893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp194290
                               _%stx191870%_))
                            (let ((__tmp194292
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self191875%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp194291
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass191898%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx191870%_
                               __tmp194292
                               __tmp194291)))
                        (let ((_%$obj191934%_
                               (let ((__tmp194293
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp194293))))
                          (let _%lp191936%_ ((_%rest191938%_ _%args191893%_)
                                             (_%initializers191939%_ '()))
                            (let* ((_%__stx193763193764%_ _%rest191938%_)
                                   (_%g191943191964%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx193763193764%_)))))
                              (let ((_%__kont193765193766%_
                                     (lambda (_%L192018%_
                                              _%L192019%_
                                              _%L192020%_)
                                       (let* ((_%slot192047%_
                                               (let ((__tmp194294
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L192020%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp194294)))
                                              (_%off192049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass191898%_
                                                  _%slot192047%_))))
                                         (if _%off192049%_
                                             (_%lp191936%_
                                              _%L192018%_
                                              (cons (cons _%off192049%_
                                                          _%L192019%_)
                                                    _%initializers191939%_))
                                             (let ((__tmp194295
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self191875%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx191870%_
                                                __tmp194295
                                                _%slot192047%_))))))
                                    (_%__kont193767193768%_
                                     (lambda ()
                                       (let ((__tmp194296
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj191934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object191895%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp194299
                                     (cons (cons '%#ref
                                                 (cons _%$obj191934%_ '()))
                                           '()))
                                    (__tmp194297
                                     (let ((__tmp194298
                                            (lambda (_%i191978%_ _%r191979%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self191875%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i191978%_) '()))
                              (cons (cons '%#ref (cons _%$obj191934%_ '()))
                                    (cons (cdr _%i191978%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r191979%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp194298
                                        '()
                                        _%initializers191939%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp194299 __tmp194297)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194296
                                          _%stx191870%_))))
                                    (_%__kont193769193770%_
                                     (lambda ()
                                       (let ((__tmp194300
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj191934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object191895%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj191934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args191893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj191934%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194300
                                          _%stx191870%_)))))
                                (let* ((_%g191941191981%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx193763193764%_))
                                              (_%__kont193767193768%_)
                                              (_%__kont193769193770%_))))
                                       (_%__match193800193801%_
                                        (lambda (_%e191948191986%_
                                                 _%hd191949191989%_
                                                 _%tl191950191991%_
                                                 _%e191951191994%_
                                                 _%hd191952191997%_
                                                 _%tl191953191999%_
                                                 _%e191954192002%_
                                                 _%hd191955192005%_
                                                 _%tl191956192007%_
                                                 _%e191957192010%_
                                                 _%hd191958192013%_
                                                 _%tl191959192015%_)
                                          (let ((_%L192018%_
                                                 _%tl191959192015%_)
                                                (_%L192019%_
                                                 _%hd191958192013%_)
                                                (_%L192020%_
                                                 _%hd191955192005%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L192020%_))
                                                (_%__kont193765193766%_
                                                 _%L192018%_
                                                 _%L192019%_
                                                 _%L192020%_)
                                                (_%__kont193769193770%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx193763193764%_))
                                      (let ((_%e191948191986%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx193763193764%_))))
                                        (let ((_%tl191950191991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191948191986%_)))
                                              (_%hd191949191989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191948191986%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd191949191989%_))
                                              (let ((_%e191951191994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd191949191989%_))))
                                                (let ((_%tl191953191999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191951191994%_)))
                                                      (_%hd191952191997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191951191994%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd191952191997%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd191952191997%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191953191999%_))
                      (let ((_%e191954192002%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191953191999%_))))
                        (let ((_%tl191956192007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191954192002%_)))
                              (_%hd191955192005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191954192002%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191956192007%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191950191991%_))
                                  (let ((_%e191957192010%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191950191991%_))))
                                    (let ((_%tl191959192015%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191957192010%_)))
                                          (_%hd191958192013%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191957192010%_))))
                                      (_%__match193800193801%_
                                       _%e191948191986%_
                                       _%hd191949191989%_
                                       _%tl191950191991%_
                                       _%e191951191994%_
                                       _%hd191952191997%_
                                       _%tl191953191999%_
                                       _%e191954192002%_
                                       _%hd191955192005%_
                                       _%tl191956192007%_
                                       _%e191957192010%_
                                       _%hd191958192013%_
                                       _%tl191959192015%_)))
                                  (_%__kont193769193770%_))
                              (_%__kont193769193770%_))))
                      (_%__kont193769193770%_))
                  (_%__kont193769193770%_))
              (_%__kont193769193770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193769193770%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191941191981%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self189491191648%_ _%ctx191650%_ _%stx191651%_ _%args191652%_)
        (let* ((_%self191654%_ _%self189491191648%_)
               (_%self191656%_ _%self191654%_)
               (_%arguments-ok?191666%_
                (let ((__method194244
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self191656%_ 'check-arguments))))
                  (if __method194244
                      (let ()
                        (declare (not safe))
                        (__method194244
                         _%self191656%_
                         _%ctx191650%_
                         _%stx191651%_
                         _%args191652%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self191656%_
                                 'check-arguments))
                        '#!void))))
               (_%g191668191678%_
                (lambda (_%g191669191675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191669191675%_))))
               (_%g191667191742%_
                (lambda (_%g191669191681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191669191681%_))
                      (let ((_%e191671191683%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191669191681%_))))
                        (let ((_%hd191672191686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191671191683%_)))
                              (_%tl191673191688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191671191683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191673191688%_))
                              ((lambda (_%L191691%_)
                                 (let* ((_%klass191704%_
                                         (let ((__tmp194301
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self191656%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx191651%_
                                            __tmp194301)))
                                        (_%field191706%_
                                         (let ((__tmp194302
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self191656%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass191704%_
                                            __tmp194302)))
                                        (_%object191708%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx191650%_
                                            _%L191691%_)))
                                        (_%klass191711%_ _%klass191704%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass191711%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp194303
                                              (cons (if (or _%arguments-ok?191666%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self191656%_
                            '4
                            '#f
                            '#f))))
                '%#struct-unchecked-ref
                '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self191656%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field191706%_ '()))
                        (cons _%object191708%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194303
                                          _%stx191651%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass191711%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp194304
                                                  (cons (if (or _%arguments-ok?191666%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self191656%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191656%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field191706%_ '()))
                            (cons _%object191708%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194304
                                              _%stx191651%_))
                                           (let ((_%$e191730%_
                                                  (let ((__tmp194305
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self191656%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass191711%_
                                                     __tmp194305))))
                                             (if _%$e191730%_
                                                 ((lambda (_%klass191733%_)
                                                    (let ((__tmp194306
                                                           (cons (if (or _%arguments-ok?191666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191656%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self191656%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field191706%_ '()))
                                     (cons _%object191708%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp194306 _%stx191651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e191730%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self191656%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp194307
                                                            (let ((_%$obj191739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp194308
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp194308))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj191739%_ '())
                                              (cons _%object191708%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass191711%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj191739%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191656%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field191706%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj191739%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?191666%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj191739%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191656%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'class-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self191656%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj191739%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self191656%_
                                 '3
                                 '#f
                                 '#f))
                              '()))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp194307 _%stx191651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp194309
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object191708%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self191656%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp194309 _%stx191651%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd191672191686%_)
                              (_%g191668191678%_ _%g191669191681%_))))
                      (_%g191668191678%_ _%g191669191681%_)))))
          (_%g191667191742%_ _%args191652%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass193531 __method-table193532)
        (let ((__check-arguments193533
               (let ((__tmp194310
                      (lambda ()
                        (let ((__method193534
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table193532
                                  'check-arguments
                                  '#f))))
                          (if __method193534
                              __method193534
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp194310)))
              (__slot193535
               (let ((__slot193536
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass193531 'slot))))
                 (if __slot193536
                     __slot193536
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self189491191648%_
                   _%ctx191650%_
                   _%stx191651%_
                   _%args191652%_)
            (let* ((_%self191654%_ _%self189491191648%_)
                   (_%self191656%_ _%self191654%_)
                   (_%arguments-ok?191666%_
                    ((force __check-arguments193533)
                     _%self191656%_
                     _%ctx191650%_
                     _%stx191651%_
                     _%args191652%_))
                   (_%g191668191678%_
                    (lambda (_%g191669191675%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g191669191675%_))))
                   (_%g191667191742%_
                    (lambda (_%g191669191681%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g191669191681%_))
                          (let ((_%e191671191683%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g191669191681%_))))
                            (let ((_%hd191672191686%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191671191683%_)))
                                  (_%tl191673191688%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191671191683%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191673191688%_))
                                  ((lambda (_%L191691%_)
                                     (let* ((_%klass191704%_
                                             (let ((__tmp194311
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self191656%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx191651%_
                                                __tmp194311)))
                                            (_%field191706%_
                                             (let ((__tmp194312
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self191656%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass191704%_
                                                __tmp194312)))
                                            (_%object191708%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx191650%_
                                                _%L191691%_)))
                                            (_%klass191711%_ _%klass191704%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass191711%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp194313
                                                  (cons (if (or _%arguments-ok?191666%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self191656%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191656%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field191706%_ '()))
                            (cons _%object191708%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194313
                                              _%stx191651%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass191711%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp194314
                                                      (cons (if (or _%arguments-ok?191666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self191656%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191656%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field191706%_ '()))
                                (cons _%object191708%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194314
                                                  _%stx191651%_))
                                               (let ((_%$e191730%_
                                                      (let ((__tmp194315
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self191656%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass191711%_ __tmp194315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e191730%_
                                                     ((lambda (_%klass191733%_)
                                                        (let ((__tmp194316
                                                               (cons (if (or _%arguments-ok?191666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191656%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self191656%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field191706%_ '()))
                                         (cons _%object191708%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp194316 _%stx191651%_)))
              _%$e191730%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self191656%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp194317
                                                                (let ((_%$obj191739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp194318
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp194318))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj191739%_ '())
                                                  (cons _%object191708%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass191711%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj191739%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self191656%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field191706%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj191739%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?191666%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj191739%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191656%_
                               __slot193535
                               '#f
                               '#f))
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-slot-ref '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self191656%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj191739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191656%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp194317 _%stx191651%_))
                 (let ((__tmp194319
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object191708%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self191656%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp194319 _%stx191651%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd191672191686%_)
                                  (_%g191668191678%_ _%g191669191681%_))))
                          (_%g191668191678%_ _%g191669191681%_)))))
              (_%g191667191742%_ _%args191652%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self189492191410%_ _%ctx191412%_ _%stx191413%_ _%args191414%_)
        (let* ((_%self191416%_ _%self189492191410%_)
               (_%self191418%_ _%self191416%_)
               (_%arguments-ok?191428%_
                (let ((__method194245
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self191418%_ 'check-arguments))))
                  (if __method194245
                      (let ()
                        (declare (not safe))
                        (__method194245
                         _%self191418%_
                         _%ctx191412%_
                         _%stx191413%_
                         _%args191414%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self191418%_
                                 'check-arguments))
                        '#!void))))
               (_%g191430191444%_
                (lambda (_%g191431191441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191431191441%_))))
               (_%g191429191523%_
                (lambda (_%g191431191447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191431191447%_))
                      (let ((_%e191434191449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191431191447%_))))
                        (let ((_%hd191435191452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191434191449%_)))
                              (_%tl191436191454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191434191449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191436191454%_))
                              (let ((_%e191437191457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191436191454%_))))
                                (let ((_%hd191438191460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191437191457%_)))
                                      (_%tl191439191462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191437191457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191439191462%_))
                                      ((lambda (_%L191465%_ _%L191466%_)
                                         (let* ((_%klass191482%_
                                                 (let ((__tmp194320
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self191418%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx191413%_
                                                    __tmp194320)))
                                                (_%field191484%_
                                                 (let ((__tmp194321
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self191418%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass191482%_
                                                    __tmp194321)))
                                                (_%object191486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx191412%_
                                                    _%L191466%_)))
                                                (_%value191488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx191412%_
                                                    _%L191465%_)))
                                                (_%klass191491%_
                                                 _%klass191482%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass191491%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp194322
                                                      (cons (if (or _%arguments-ok?191428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self191418%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191418%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field191484%_ '()))
                                (cons _%object191486%_
                                      (cons _%value191488%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194322
                                                  _%stx191413%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass191491%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp194323
                                                          (cons (if (or _%arguments-ok?191428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self191418%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191418%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field191484%_ '()))
                                    (cons _%object191486%_
                                          (cons _%value191488%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp194323
                                                      _%stx191413%_))
                                                   (let ((_%$e191511%_
                                                          (let ((__tmp194324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self191418%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass191491%_
                     __tmp194324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e191511%_
                                                         ((lambda (_%klass191514%_)
                                                            (let ((__tmp194325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?191428%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self191418%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self191418%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field191484%_ '()))
                                             (cons _%object191486%_
                                                   (cons _%value191488%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp194325 _%stx191413%_)))
                  _%$e191511%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self191418%_ '4 '#f '#f))
                     (let ((__tmp194326
                            (let ((_%$obj191520%_
                                   (let ((__tmp194327
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp194327))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj191520%_ '())
                                                      (cons _%object191486%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass191491%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj191520%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self191418%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field191484%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj191520%_
                                                              '()))
                                                  (cons _%value191488%_
                                                        '())))))
                          (cons (if _%arguments-ok?191428%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj191520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self191418%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value191488%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191418%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj191520%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191418%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value191488%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp194326 _%stx191413%_))
                     (let ((__tmp194328
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object191486%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191418%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value191488%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp194328
                        _%stx191413%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd191438191460%_
                                       _%hd191435191452%_)
                                      (_%g191430191444%_ _%g191431191447%_))))
                              (_%g191430191444%_ _%g191431191447%_))))
                      (_%g191430191444%_ _%g191431191447%_)))))
          (_%g191429191523%_ _%args191414%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass193537 __method-table193538)
        (let ((__check-arguments193539
               (let ((__tmp194329
                      (lambda ()
                        (let ((__method193540
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table193538
                                  'check-arguments
                                  '#f))))
                          (if __method193540
                              __method193540
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp194329))))
          (lambda (_%self189492191410%_
                   _%ctx191412%_
                   _%stx191413%_
                   _%args191414%_)
            (let* ((_%self191416%_ _%self189492191410%_)
                   (_%self191418%_ _%self191416%_)
                   (_%arguments-ok?191428%_
                    ((force __check-arguments193539)
                     _%self191418%_
                     _%ctx191412%_
                     _%stx191413%_
                     _%args191414%_))
                   (_%g191430191444%_
                    (lambda (_%g191431191441%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g191431191441%_))))
                   (_%g191429191523%_
                    (lambda (_%g191431191447%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g191431191447%_))
                          (let ((_%e191434191449%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g191431191447%_))))
                            (let ((_%hd191435191452%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191434191449%_)))
                                  (_%tl191436191454%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191434191449%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191436191454%_))
                                  (let ((_%e191437191457%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191436191454%_))))
                                    (let ((_%hd191438191460%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191437191457%_)))
                                          (_%tl191439191462%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191437191457%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191439191462%_))
                                          ((lambda (_%L191465%_ _%L191466%_)
                                             (let* ((_%klass191482%_
                                                     (let ((__tmp194330
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self191418%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx191413%_
                                                        __tmp194330)))
                                                    (_%field191484%_
                                                     (let ((__tmp194331
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self191418%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass191482%_
                                                        __tmp194331)))
                                                    (_%object191486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx191412%_
                                                        _%L191466%_)))
                                                    (_%value191488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx191412%_
                                                        _%L191465%_)))
                                                    (_%klass191491%_
                                                     _%klass191482%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass191491%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp194332
                                                          (cons (if (or _%arguments-ok?191428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self191418%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191418%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field191484%_ '()))
                                    (cons _%object191486%_
                                          (cons _%value191488%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp194332
                                                      _%stx191413%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass191491%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp194333
                                                              (cons (if (or _%arguments-ok?191428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self191418%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self191418%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field191484%_ '()))
                                        (cons _%object191486%_
                                              (cons _%value191488%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp194333 _%stx191413%_))
               (let ((_%$e191511%_
                      (let ((__tmp194334
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self191418%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass191491%_
                         __tmp194334))))
                 (if _%$e191511%_
                     ((lambda (_%klass191514%_)
                        (let ((__tmp194335
                               (cons (if (or _%arguments-ok?191428%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self191418%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self191418%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field191484%_
                                                             '()))
                                                 (cons _%object191486%_
                                                       (cons _%value191488%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp194335 _%stx191413%_)))
                      _%$e191511%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self191418%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp194336
                                (let ((_%$obj191520%_
                                       (let ((__tmp194337
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp194337))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj191520%_
                                                                '())
                                                          (cons _%object191486%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass191491%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj191520%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self191418%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field191484%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj191520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value191488%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?191428%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj191520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self191418%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value191488%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self191418%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj191520%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191418%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value191488%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp194336 _%stx191413%_))
                         (let ((__tmp194338
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object191486%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191418%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value191488%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp194338
                            _%stx191413%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd191438191460%_
                                           _%hd191435191452%_)
                                          (_%g191430191444%_
                                           _%g191431191447%_))))
                                  (_%g191430191444%_ _%g191431191447%_))))
                          (_%g191430191444%_ _%g191431191447%_)))))
              (_%g191429191523%_ _%args191414%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self189493191223%_ _%ctx191225%_ _%stx191226%_ _%args191227%_)
        (let* ((_%self191229%_ _%self189493191223%_)
               (_%self191231%_ _%self191229%_)
               (_%self191240191250%_ _%self191231%_)
               (_%E191242191254%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191240191250%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K191243191264%_
                (lambda (_%inline191257%_ _%dispatch191258%_ _%arity191259%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self191231%_
                         _%args191227%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx191226%_
                         _%arity191259%_)))
                  (if _%inline191257%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp194339 (_%inline191257%_ _%stx191226%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp194339
                           _%stx191226%_
                           _%ctx191225%_)))
                      (if (and _%dispatch191258%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch191258%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch191258%_))
                            (let ((__tmp194340
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch191258%_
                                                           '()))
                                               _%args191227%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp194340
                               _%stx191226%_
                               _%ctx191225%_)))
                          (gxc#!procedure::optimize-call
                           _%self191231%_
                           _%ctx191225%_
                           _%stx191226%_
                           _%args191227%_)))))
               (_%e191244191267%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191240191250%_ '1 '#f '#f)))
               (_%e191245191270%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191240191250%_ '2 '#f '#f)))
               (_%e191246191273%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191240191250%_ '3 '#f '#f)))
               (_%arity191276%_ _%e191246191273%_)
               (_%e191247191278%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191240191250%_ '4 '#f '#f)))
               (_%dispatch191281%_ _%e191247191278%_)
               (_%e191248191283%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191240191250%_ '5 '#f '#f)))
               (_%inline191286%_ _%e191248191283%_))
          (_%K191243191264%_
           _%inline191286%_
           _%dispatch191281%_
           _%arity191276%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self189494191073%_ _%ctx191075%_ _%stx191076%_ _%args191077%_)
        (let* ((_%self191079%_ _%self189494191073%_)
               (_%self191081%_ _%self191079%_)
               (_%$e191095%_
                (let ((__tmp194342
                       (lambda (_%g191090191092%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g191090191092%_
                            _%args191077%_))))
                      (__tmp194341
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191081%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp194342 __tmp194341))))
          (if _%$e191095%_
              ((lambda (_%clause191098%_)
                 (let ((__method194246
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause191098%_ 'optimize-call))))
                   (if __method194246
                       (let ()
                         (declare (not safe))
                         (__method194246
                          _%clause191098%_
                          _%ctx191075%_
                          _%stx191076%_
                          _%args191077%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause191098%_
                                  'optimize-call))
                         '#!void))))
               _%$e191095%_)
              (let ((__tmp194343
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191081%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx191076%_
                 __tmp194343))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self189495190811%_ _%ctx190813%_ _%stx190814%_ _%args190815%_)
        (let* ((_%self190817%_ _%self189495190811%_)
               (_%self190819%_ _%self190817%_)
               (_%self190828190837%_ _%self190819%_)
               (_%E190830190841%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190828190837%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K190831190932%_
                (lambda (_%dispatch190844%_ _%table190845%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch190844%_))
                      (let* ((_%g190846190856%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch190844%_)))
                             (_%else190848190864%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch190844%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx190813%_
                                   _%stx190814%_))))
                             (_%K190850190913%_
                              (lambda (_%main190867%_ _%keys190868%_)
                                (let ((_g194344_
                                       (gxc#!kw-lambda-split-args
                                        _%stx190814%_
                                        _%args190815%_)))
                                  (begin
                                    (let ((_g194345_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194344_)
                                                 (##vector-length _g194344_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194345_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194345_)))
                                    (let ((_%pargs190870%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194344_ 0)))
                                          (_%kwargs190871%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194344_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main190867%_))
                                        (if _%table190845%_
                                            (let ((_%xargs190879%_
                                                   (map (lambda (_%key190873%_)
                                                          (let ((_%$e190875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key190873%_ _%kwargs190871%_))))
                    (if _%$e190875%_ _%$e190875%_ '(%#ref absent-value))))
                _%keys190868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw190881%_)
                                                 (if (memq (car _%kw190881%_)
                                                           _%keys190868%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx190814%_
                                                        _%keys190868%_
                                                        _%kw190881%_))))
                                               _%kwargs190871%_)
                                              (let ((__tmp194346
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main190867%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs190870%_
                                  _%xargs190879%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp194346
                                                 _%stx190814%_
                                                 _%ctx190813%_)))
                                            (let* ((_%kwt190883%_
                                                    (let ((__tmp194347
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp194347)))
                                                   (_%kwvars190887%_
                                                    (map (lambda (_%_190885%_)
                                                           (let ((__tmp194348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp194348)))
                 _%kwargs190871%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind190892%_
                                                    (map (lambda (_%kw190889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar190890%_)
                   (cons (cons _%kwvar190890%_ '())
                         (cons (cdr _%kw190889%_) '())))
                 _%kwargs190871%_
                 _%kwvars190887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset190897%_
                                                    (map (lambda (_%kw190894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar190895%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt190883%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw190894%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar190895%_
                                                             '()))
                                                 '()))))))
                 _%kwargs190871%_
                 _%kwvars190887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs190902%_
                                                    (map (lambda (_%kw190899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar190900%_)
                   (cons (car _%kw190899%_)
                         (cons '%#ref (cons _%kwvar190900%_ '()))))
                 _%kwargs190871%_
                 _%kwvars190887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs190910%_
                                                    (map (lambda (_%key190904%_)
                                                           (let ((_%$e190906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key190904%_ _%xkwargs190902%_))))
                     (if _%$e190906%_ _%$e190906%_ '(%#ref absent-value))))
                 _%keys190868%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp194349
                                                    (cons '%#let-values
                                                          (cons _%kwbind190892%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt190883%_ '())
                                                      (cons (let ((__tmp194350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs190871%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp194350 _%stx190814%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp194351
                                                             (cons (let ((__tmp194352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main190867%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt190883%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs190870%_
                                                       _%xargs190910%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp194352 _%stx190814%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp194351 _%kwset190897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp194349
                                               _%stx190814%_
                                               _%ctx190813%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g190846190856%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e190851190916%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190846190856%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e190852190919%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190846190856%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e190853190922%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190846190856%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys190925%_ _%e190853190922%_)
                                   (_%e190854190927%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190846190856%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main190930%_ _%e190854190927%_))
                              (_%K190850190913%_
                               _%main190930%_
                               _%keys190925%_))
                            (_%else190848190864%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx190813%_ _%stx190814%_)))))
               (_%e190832190935%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190828190837%_ '1 '#f '#f)))
               (_%e190833190938%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190828190837%_ '2 '#f '#f)))
               (_%e190834190941%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190828190837%_ '3 '#f '#f)))
               (_%table190944%_ _%e190834190941%_)
               (_%e190835190946%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190828190837%_ '4 '#f '#f)))
               (_%dispatch190949%_ _%e190835190946%_))
          (_%K190831190932%_ _%dispatch190949%_ _%table190944%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx190424%_ _%args190425%_)
        (let _%lp190427%_ ((_%rest190429%_ _%args190425%_)
                           (_%pargs190430%_ '())
                           (_%kwargs190431%_ '()))
          (let* ((_%__stx193805193806%_ _%rest190429%_)
                 (_%g190437190489%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193805193806%_)))))
            (let ((_%__kont193807193808%_
                   (lambda (_%L190668%_ _%L190669%_)
                     (_%lp190427%_
                      _%L190668%_
                      (cons _%L190669%_ _%pargs190430%_)
                      _%kwargs190431%_)))
                  (_%__kont193809193810%_
                   (lambda (_%L190614%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L190614%_ _%pargs190430%_))
                             (reverse _%kwargs190431%_))))
                  (_%__kont193811193812%_
                   (lambda (_%L190561%_ _%L190562%_ _%L190563%_)
                     (let ((_%kw190580%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L190563%_))))
                       (if (assq _%kw190580%_ _%kwargs190431%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx190424%_
                              _%kw190580%_))
                           (_%lp190427%_
                            _%L190561%_
                            _%pargs190430%_
                            (cons (cons _%kw190580%_ _%L190562%_)
                                  _%kwargs190431%_))))))
                  (_%__kont193813193814%_
                   (lambda (_%L190509%_ _%L190510%_)
                     (_%lp190427%_
                      _%L190509%_
                      (cons _%L190510%_ _%pargs190430%_)
                      _%kwargs190431%_)))
                  (_%__kont193815193816%_
                   (lambda ()
                     (values (reverse _%pargs190430%_)
                             (reverse _%kwargs190431%_)))))
              (let ((_%__match193912193913%_
                     (lambda (_%e190468190529%_
                              _%hd190469190532%_
                              _%tl190470190534%_
                              _%e190471190537%_
                              _%hd190472190540%_
                              _%tl190473190542%_
                              _%e190474190545%_
                              _%hd190475190548%_
                              _%tl190476190550%_
                              _%e190477190553%_
                              _%hd190478190556%_
                              _%tl190479190558%_)
                       (let ((_%L190561%_ _%tl190479190558%_)
                             (_%L190562%_ _%hd190478190556%_)
                             (_%L190563%_ _%hd190475190548%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L190563%_))
                             (_%__kont193811193812%_
                              _%L190561%_
                              _%L190562%_
                              _%L190563%_)
                             (_%__kont193813193814%_
                              _%tl190470190534%_
                              _%hd190469190532%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193805193806%_))
                    (let ((_%e190441190633%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193805193806%_))))
                      (let ((_%tl190443190638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190441190633%_)))
                            (_%hd190442190636%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190441190633%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd190442190636%_))
                            (let ((_%e190444190641%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd190442190636%_))))
                              (let ((_%tl190446190646%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e190444190641%_)))
                                    (_%hd190445190644%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e190444190641%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd190445190644%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd190445190644%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl190446190646%_))
                                            (let ((_%e190447190649%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl190446190646%_))))
                                              (let ((_%tl190449190654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e190447190649%_)))
                                                    (_%hd190448190652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e190447190649%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd190448190652%_))
                                                    (let ((_%e190450190657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd190448190652%_))))
                                                      (if (equal? _%e190450190657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190449190654%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190443190638%_))
                          (let ((_%e190451190660%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190443190638%_))))
                            (let ((_%tl190453190665%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190451190660%_)))
                                  (_%hd190452190663%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190451190660%_))))
                              (_%__kont193807193808%_
                               _%tl190453190665%_
                               _%hd190452190663%_)))
                          (_%__kont193813193814%_
                           _%tl190443190638%_
                           _%hd190442190636%_))
                      (_%__kont193813193814%_
                       _%tl190443190638%_
                       _%hd190442190636%_))
                  (if (equal? _%e190450190657%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190449190654%_))
                          (_%__kont193809193810%_ _%tl190443190638%_)
                          (_%__kont193813193814%_
                           _%tl190443190638%_
                           _%hd190442190636%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190449190654%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190443190638%_))
                              (let ((_%e190477190553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190443190638%_))))
                                (let ((_%tl190479190558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190477190553%_)))
                                      (_%hd190478190556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190477190553%_))))
                                  (_%__match193912193913%_
                                   _%e190441190633%_
                                   _%hd190442190636%_
                                   _%tl190443190638%_
                                   _%e190444190641%_
                                   _%hd190445190644%_
                                   _%tl190446190646%_
                                   _%e190447190649%_
                                   _%hd190448190652%_
                                   _%tl190449190654%_
                                   _%e190477190553%_
                                   _%hd190478190556%_
                                   _%tl190479190558%_)))
                              (_%__kont193813193814%_
                               _%tl190443190638%_
                               _%hd190442190636%_))
                          (_%__kont193813193814%_
                           _%tl190443190638%_
                           _%hd190442190636%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190449190654%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl190443190638%_))
                                                            (let ((_%e190477190553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl190443190638%_))))
                      (let ((_%tl190479190558%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190477190553%_)))
                            (_%hd190478190556%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190477190553%_))))
                        (_%__match193912193913%_
                         _%e190441190633%_
                         _%hd190442190636%_
                         _%tl190443190638%_
                         _%e190444190641%_
                         _%hd190445190644%_
                         _%tl190446190646%_
                         _%e190447190649%_
                         _%hd190448190652%_
                         _%tl190449190654%_
                         _%e190477190553%_
                         _%hd190478190556%_
                         _%tl190479190558%_)))
                    (_%__kont193813193814%_
                     _%tl190443190638%_
                     _%hd190442190636%_))
                (_%__kont193813193814%_
                 _%tl190443190638%_
                 _%hd190442190636%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont193813193814%_
                                             _%tl190443190638%_
                                             _%hd190442190636%_))
                                        (_%__kont193813193814%_
                                         _%tl190443190638%_
                                         _%hd190442190636%_))
                                    (_%__kont193813193814%_
                                     _%tl190443190638%_
                                     _%hd190442190636%_))))
                            (_%__kont193813193814%_
                             _%tl190443190638%_
                             _%hd190442190636%_))))
                    (_%__kont193815193816%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self189496190406%_ _%ctx190408%_ _%stx190409%_ _%args190410%_)
        (let* ((_%self190412%_ _%self189496190406%_)
               (_%self190414%_ _%self190412%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx190408%_ _%stx190409%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self190094%_ _%stx190095%_)
        (let* ((_%__stx193921193922%_ _%stx190095%_)
               (_%g190098190138%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193921193922%_)))))
          (let ((_%__kont193923193924%_
                 (lambda (_%L190244%_ _%L190245%_)
                   (let ((_%$e190272%_
                          (member 'return:
                                  (let ((__tmp194353
                                         (lambda (_%g190264190267%_
                                                  _%g190265190269%_)
                                           (cons _%g190264190267%_
                                                 _%g190265190269%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp194353 '() _%L190245%_))
                                  gx#stx-eq?)))
                     (if _%$e190272%_
                         ((lambda (_%tail190275%_)
                            (let ((_%type190277%_
                                   (let ((__tmp194354
                                          (let ((__tmp194355
                                                 (cadr _%tail190275%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp194355))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx190095%_
                                      __tmp194354))))
                              (gxc#check-return-type!
                               _%stx190095%_
                               _%L190244%_
                               _%type190277%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self190094%_
                                 _%L190244%_))))
                          _%$e190272%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self190094%_ _%L190244%_))))))
                (_%__kont193927193928%_
                 (lambda (_%L190167%_ _%L190168%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self190094%_ _%L190167%_)))))
            (let ((_%__match193958193959%_
                   (lambda (_%e190102190188%_
                            _%hd190103190191%_
                            _%tl190104190193%_
                            _%e190105190196%_
                            _%hd190106190199%_
                            _%tl190107190201%_
                            _%e190108190204%_
                            _%hd190109190207%_
                            _%tl190110190209%_
                            _%__splice193925193926%_
                            _%target190111190212%_
                            _%tl190113190214%_)
                     (letrec ((_%loop190114190217%_
                               (lambda (_%hd190112190220%_
                                        _%signature190118190222%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd190112190220%_))
                                     (let ((_%e190115190225%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd190112190220%_))))
                                       (let ((_%lp-tl190117190230%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e190115190225%_)))
                                             (_%lp-hd190116190228%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e190115190225%_))))
                                         (_%loop190114190217%_
                                          _%lp-tl190117190230%_
                                          (cons _%lp-hd190116190228%_
                                                _%signature190118190222%_))))
                                     (let ((_%signature190119190233%_
                                            (reverse _%signature190118190222%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl190107190201%_))
                                           (let ((_%e190120190236%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl190107190201%_))))
                                             (let ((_%tl190122190241%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e190120190236%_)))
                                                   (_%hd190121190239%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e190120190236%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl190122190241%_))
                                                   (_%__kont193923193924%_
                                                    _%hd190121190239%_
                                                    _%signature190119190233%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g190098190138%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g190098190138%_))))))))
                       (_%loop190114190217%_ _%target190111190212%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193921193922%_))
                  (let ((_%e190102190188%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193921193922%_))))
                    (let ((_%tl190104190193%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190102190188%_)))
                          (_%hd190103190191%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190102190188%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190104190193%_))
                          (let ((_%e190105190196%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190104190193%_))))
                            (let ((_%tl190107190201%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190105190196%_)))
                                  (_%hd190106190199%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190105190196%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190106190199%_))
                                  (let ((_%e190108190204%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190106190199%_))))
                                    (let ((_%tl190110190209%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190108190204%_)))
                                          (_%hd190109190207%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190108190204%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190109190207%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd190109190207%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190110190209%_))
                                                  (let ((_%__splice193925193926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190110190209%_
                                                            '0))))
                                                    (let ((_%tl190113190214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193925193926%_
                                                              '1)))
                                                          (_%target190111190212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193925193926%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190113190214%_))
                                                          (_%__match193958193959%_
                                                           _%e190102190188%_
                                                           _%hd190103190191%_
                                                           _%tl190104190193%_
                                                           _%e190105190196%_
                                                           _%hd190106190199%_
                                                           _%tl190107190201%_
                                                           _%e190108190204%_
                                                           _%hd190109190207%_
                                                           _%tl190110190209%_
                                                           _%__splice193925193926%_
                                                           _%target190111190212%_
                                                           _%tl190113190214%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190107190201%_))
                      (let ((_%e190131190159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190107190201%_))))
                        (let ((_%tl190133190164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190131190159%_)))
                              (_%hd190132190162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190131190159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190133190164%_))
                              (_%__kont193927193928%_
                               _%hd190132190162%_
                               _%hd190106190199%_)
                              (let ()
                                (declare (not safe))
                                (_%g190098190138%_)))))
                      (let () (declare (not safe)) (_%g190098190138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190107190201%_))
                                                      (let ((_%e190131190159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190107190201%_))))
                (let ((_%tl190133190164%_
                       (let () (declare (not safe)) (##cdr _%e190131190159%_)))
                      (_%hd190132190162%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190131190159%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190133190164%_))
                      (_%__kont193927193928%_
                       _%hd190132190162%_
                       _%hd190106190199%_)
                      (let () (declare (not safe)) (_%g190098190138%_)))))
              (let () (declare (not safe)) (_%g190098190138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190107190201%_))
                                                  (let ((_%e190131190159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190107190201%_))))
                                                    (let ((_%tl190133190164%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190131190159%_)))
                                                          (_%hd190132190162%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190131190159%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190133190164%_))
                                                          (_%__kont193927193928%_
                                                           _%hd190132190162%_
                                                           _%hd190106190199%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190098190138%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190098190138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190107190201%_))
                                              (let ((_%e190131190159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190107190201%_))))
                                                (let ((_%tl190133190164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190131190159%_)))
                                                      (_%hd190132190162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190131190159%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190133190164%_))
                                                      (_%__kont193927193928%_
                                                       _%hd190132190162%_
                                                       _%hd190106190199%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190098190138%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190098190138%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190107190201%_))
                                      (let ((_%e190131190159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190107190201%_))))
                                        (let ((_%tl190133190164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190131190159%_)))
                                              (_%hd190132190162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190131190159%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190133190164%_))
                                              (_%__kont193927193928%_
                                               _%hd190132190162%_
                                               _%hd190106190199%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190098190138%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190098190138%_))))))
                          (let () (declare (not safe)) (_%g190098190138%_)))))
                  (let () (declare (not safe)) (_%g190098190138%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx190072%_ _%expr190073%_ _%type190074%_)
        (let ((_%$e190076%_ (not _%type190074%_)))
          (if _%$e190076%_
              _%$e190076%_
              (let ((_%$e190079%_
                     (eq? (##structure-ref _%type190074%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e190079%_
                    _%$e190079%_
                    (let ((_%expr-type190083%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr190073%_))))
                      (if (not _%expr-type190083%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx190072%_
                             _%type190074%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type190083%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx190072%_
                                 _%type190074%_
                                 _%expr-type190083%_))
                              (let ((_%$e190087%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type190083%_
                                        'gxc#!abort::t))))
                                (if _%$e190087%_
                                    _%$e190087%_
                                    (let ((_%$e190090%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type190083%_
                                              _%type190074%_))))
                                      (if _%$e190090%_
                                          _%$e190090%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx190072%_
                                             _%type190074%_
                                             _%expr-type190083%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self189498%_ _%stx189499%_)
        (let* ((_%__stx194003194004%_ _%stx189499%_)
               (_%g189504189614%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194003194004%_)))))
          (let ((_%__kont194005194006%_
                 (lambda (_%L190046%_ _%L190047%_ _%L190048%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L190048%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self189498%_ _%L190047%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self189498%_ _%L190046%_)))))
                (_%__kont194007194008%_
                 (lambda (_%L189872%_ _%L189873%_ _%L189874%_ _%L189875%_)
                   (let ((_%$e189907%_
                          (let ((__tmp194356
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189875%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp194356))))
                     (if _%$e189907%_
                         ((lambda (_%pred-type189910%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type189910%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type189910%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test189915%_
                                        (let ((__tmp194357
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L189875%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L189874%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp194357
                                           _%stx189499%_
                                           _%self189498%_)))
                                       (_%K189919%_
                                        (let ((__tmp194358
                                               (lambda ()
                                                 (let ((__tmp194361
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self189498%_
                                                             _%L189873%_))))
                                                       (__tmp194359
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L189874%_))
                            (let ((__tmp194360
                                   (##structure-ref
                                    _%pred-type189910%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx189499%_
                               __tmp194360)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp194361
                                                    gxc#current-compile-path-type
                                                    __tmp194359)))))
                                          (declare (not safe))
                                          (__make-promise __tmp194358)))
                                       (_%E189922%_
                                        (let ((__tmp194362
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self189498%_
                                                    _%L189872%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp194362)))
                                       (_%__stx193981193982%_ _%test189915%_)
                                       (_%g189926189940%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx193981193982%_)))))
                                  (let ((_%__kont193983193984%_
                                         (lambda (_%L189968%_ _%L189969%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L189968%_))
                                               (force _%K189919%_)
                                               (force _%E189922%_))))
                                        (_%__kont193985193986%_
                                         (lambda ()
                                           (let ((__tmp194363
                                                  (cons '%#if
                                                        (cons _%test189915%_
                                                              (cons (force _%K189919%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E189922%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194363
                                              _%stx189499%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx193981193982%_))
                                        (let ((_%e189930189952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx193981193982%_))))
                                          (let ((_%tl189932189957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189930189952%_)))
                                                (_%hd189931189955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189930189952%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl189932189957%_))
                                                (let ((_%e189933189960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl189932189957%_))))
                                                  (let ((_%tl189935189965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189933189960%_)))
                                                        (_%hd189934189963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189933189960%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189935189965%_))
                                                        (_%__kont193983193984%_
                                                         _%hd189934189963%_
                                                         _%hd189931189955%_)
                                                        (_%__kont193985193986%_))))
                                                (_%__kont193985193986%_))))
                                        (_%__kont193985193986%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self189498%_
                                   _%stx189499%_))))
                          _%$e189907%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self189498%_
                            _%stx189499%_))))))
                (_%__kont194009194010%_
                 (lambda (_%L189748%_ _%L189749%_ _%L189750%_ _%L189751%_)
                   (gxc#optimize-if%
                    _%self189498%_
                    (let ((__tmp194364
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L189750%_
                                       (cons _%L189748%_
                                             (cons _%L189749%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp194364 _%stx189499%_)))))
                (_%__kont194011194012%_
                 (lambda (_%L189651%_ _%L189652%_ _%L189653%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self189498%_ _%stx189499%_)))))
            (let ((_%__match194210194211%_
                   (lambda (_%e189568189676%_
                            _%hd189569189679%_
                            _%tl189570189681%_
                            _%e189571189684%_
                            _%hd189572189687%_
                            _%tl189573189689%_
                            _%e189574189692%_
                            _%hd189575189695%_
                            _%tl189576189697%_
                            _%e189577189700%_
                            _%hd189578189703%_
                            _%tl189579189705%_
                            _%e189580189708%_
                            _%hd189581189711%_
                            _%tl189582189713%_
                            _%e189583189716%_
                            _%hd189584189719%_
                            _%tl189585189721%_
                            _%e189586189724%_
                            _%hd189587189727%_
                            _%tl189588189729%_
                            _%e189589189732%_
                            _%hd189590189735%_
                            _%tl189591189737%_
                            _%e189592189740%_
                            _%hd189593189743%_
                            _%tl189594189745%_)
                     (let ((_%L189748%_ _%hd189593189743%_)
                           (_%L189749%_ _%hd189590189735%_)
                           (_%L189750%_ _%hd189587189727%_)
                           (_%L189751%_ _%hd189584189719%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L189751%_ 'not))
                           (_%__kont194009194010%_
                            _%L189748%_
                            _%L189749%_
                            _%L189750%_
                            _%L189751%_)
                           (_%__kont194011194012%_
                            _%hd189593189743%_
                            _%hd189590189735%_
                            _%hd189572189687%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194003194004%_))
                  (let ((_%e189509189998%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194003194004%_))))
                    (let ((_%tl189511190003%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189509189998%_)))
                          (_%hd189510190001%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189509189998%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189511190003%_))
                          (let ((_%e189512190006%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189511190003%_))))
                            (let ((_%tl189514190011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189512190006%_)))
                                  (_%hd189513190009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189512190006%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189513190009%_))
                                  (let ((_%e189515190014%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189513190009%_))))
                                    (let ((_%tl189517190019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189515190014%_)))
                                          (_%hd189516190017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189515190014%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189516190017%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd189516190017%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189517190019%_))
                                                  (let ((_%e189518190022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189517190019%_))))
                                                    (let ((_%tl189520190027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189518190022%_)))
                                                          (_%hd189519190025%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189518190022%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189520190027%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl189514190011%_))
                      (let ((_%e189521190030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189514190011%_))))
                        (let ((_%tl189523190035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189521190030%_)))
                              (_%hd189522190033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189521190030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189523190035%_))
                              (let ((_%e189524190038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189523190035%_))))
                                (let ((_%tl189526190043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189524190038%_)))
                                      (_%hd189525190041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189524190038%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189526190043%_))
                                      (_%__kont194005194006%_
                                       _%hd189525190041%_
                                       _%hd189522190033%_
                                       _%hd189519190025%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g189504189614%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g189504189614%_)))))
                      (let () (declare (not safe)) (_%g189504189614%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189514190011%_))
                      (let ((_%e189604189635%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189514190011%_))))
                        (let ((_%tl189606189640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189604189635%_)))
                              (_%hd189605189638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189604189635%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189606189640%_))
                              (let ((_%e189607189643%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189606189640%_))))
                                (let ((_%tl189609189648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189607189643%_)))
                                      (_%hd189608189646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189607189643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189609189648%_))
                                      (_%__kont194011194012%_
                                       _%hd189608189646%_
                                       _%hd189605189638%_
                                       _%hd189513190009%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g189504189614%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g189504189614%_)))))
                      (let () (declare (not safe)) (_%g189504189614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189514190011%_))
                                                      (let ((_%e189604189635%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189514190011%_))))
                (let ((_%tl189606189640%_
                       (let () (declare (not safe)) (##cdr _%e189604189635%_)))
                      (_%hd189605189638%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189604189635%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189606189640%_))
                      (let ((_%e189607189643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189606189640%_))))
                        (let ((_%tl189609189648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189607189643%_)))
                              (_%hd189608189646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189607189643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189609189648%_))
                              (_%__kont194011194012%_
                               _%hd189608189646%_
                               _%hd189605189638%_
                               _%hd189513190009%_)
                              (let ()
                                (declare (not safe))
                                (_%g189504189614%_)))))
                      (let () (declare (not safe)) (_%g189504189614%_)))))
              (let () (declare (not safe)) (_%g189504189614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd189516190017%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189517190019%_))
                                                      (let ((_%e189540189808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189517190019%_))))
                (let ((_%tl189542189813%_
                       (let () (declare (not safe)) (##cdr _%e189540189808%_)))
                      (_%hd189541189811%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189540189808%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd189541189811%_))
                      (let ((_%e189543189816%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd189541189811%_))))
                        (let ((_%tl189545189821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189543189816%_)))
                              (_%hd189544189819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189543189816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd189544189819%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189544189819%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189545189821%_))
                                      (let ((_%e189546189824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189545189821%_))))
                                        (let ((_%tl189548189829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189546189824%_)))
                                              (_%hd189547189827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189546189824%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189548189829%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189542189813%_))
                                                  (let ((_%e189549189832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189542189813%_))))
                                                    (let ((_%tl189551189837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189549189832%_)))
                                                          (_%hd189550189835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189549189832%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd189550189835%_))
                                                          (let ((_%e189552189840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd189550189835%_))))
                    (let ((_%tl189554189845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189552189840%_)))
                          (_%hd189553189843%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189552189840%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189553189843%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd189553189843%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189554189845%_))
                                  (let ((_%e189555189848%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189554189845%_))))
                                    (let ((_%tl189557189853%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189555189848%_)))
                                          (_%hd189556189851%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189555189848%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189557189853%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189551189837%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189514190011%_))
                                                  (let ((_%e189558189856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189514190011%_))))
                                                    (let ((_%tl189560189861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189558189856%_)))
                                                          (_%hd189559189859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189558189856%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189560189861%_))
                                                          (let ((_%e189561189864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189560189861%_))))
                    (let ((_%tl189563189869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189561189864%_)))
                          (_%hd189562189867%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189561189864%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189563189869%_))
                          (_%__kont194007194008%_
                           _%hd189562189867%_
                           _%hd189559189859%_
                           _%hd189556189851%_
                           _%hd189547189827%_)
                          (let () (declare (not safe)) (_%g189504189614%_)))))
                  (let () (declare (not safe)) (_%g189504189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189514190011%_))
                                                  (let ((_%e189604189635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189514190011%_))))
                                                    (let ((_%tl189606189640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189604189635%_)))
                                                          (_%hd189605189638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189604189635%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189606189640%_))
                                                          (let ((_%e189607189643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189606189640%_))))
                    (let ((_%tl189609189648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189607189643%_)))
                          (_%hd189608189646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189607189643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189609189648%_))
                          (_%__kont194011194012%_
                           _%hd189608189646%_
                           _%hd189605189638%_
                           _%hd189513190009%_)
                          (let () (declare (not safe)) (_%g189504189614%_)))))
                  (let () (declare (not safe)) (_%g189504189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189551189837%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189514190011%_))
                                                  (let ((_%e189589189732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189514190011%_))))
                                                    (let ((_%tl189591189737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189589189732%_)))
                                                          (_%hd189590189735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189589189732%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189591189737%_))
                                                          (let ((_%e189592189740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189591189737%_))))
                    (let ((_%tl189594189745%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189592189740%_)))
                          (_%hd189593189743%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189592189740%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189594189745%_))
                          (_%__match194210194211%_
                           _%e189509189998%_
                           _%hd189510190001%_
                           _%tl189511190003%_
                           _%e189512190006%_
                           _%hd189513190009%_
                           _%tl189514190011%_
                           _%e189515190014%_
                           _%hd189516190017%_
                           _%tl189517190019%_
                           _%e189540189808%_
                           _%hd189541189811%_
                           _%tl189542189813%_
                           _%e189543189816%_
                           _%hd189544189819%_
                           _%tl189545189821%_
                           _%e189546189824%_
                           _%hd189547189827%_
                           _%tl189548189829%_
                           _%e189549189832%_
                           _%hd189550189835%_
                           _%tl189551189837%_
                           _%e189589189732%_
                           _%hd189590189735%_
                           _%tl189591189737%_
                           _%e189592189740%_
                           _%hd189593189743%_
                           _%tl189594189745%_)
                          (let () (declare (not safe)) (_%g189504189614%_)))))
                  (let () (declare (not safe)) (_%g189504189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189514190011%_))
                                                  (let ((_%e189604189635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189514190011%_))))
                                                    (let ((_%tl189606189640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189604189635%_)))
                                                          (_%hd189605189638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189604189635%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189606189640%_))
                                                          (let ((_%e189607189643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189606189640%_))))
                    (let ((_%tl189609189648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189607189643%_)))
                          (_%hd189608189646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189607189643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189609189648%_))
                          (_%__kont194011194012%_
                           _%hd189608189646%_
                           _%hd189605189638%_
                           _%hd189513190009%_)
                          (let () (declare (not safe)) (_%g189504189614%_)))))
                  (let () (declare (not safe)) (_%g189504189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189551189837%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189514190011%_))
                                          (let ((_%e189589189732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189514190011%_))))
                                            (let ((_%tl189591189737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189589189732%_)))
                                                  (_%hd189590189735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189589189732%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189591189737%_))
                                                  (let ((_%e189592189740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189591189737%_))))
                                                    (let ((_%tl189594189745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189592189740%_)))
                                                          (_%hd189593189743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189592189740%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189594189745%_))
                                                          (_%__match194210194211%_
                                                           _%e189509189998%_
                                                           _%hd189510190001%_
                                                           _%tl189511190003%_
                                                           _%e189512190006%_
                                                           _%hd189513190009%_
                                                           _%tl189514190011%_
                                                           _%e189515190014%_
                                                           _%hd189516190017%_
                                                           _%tl189517190019%_
                                                           _%e189540189808%_
                                                           _%hd189541189811%_
                                                           _%tl189542189813%_
                                                           _%e189543189816%_
                                                           _%hd189544189819%_
                                                           _%tl189545189821%_
                                                           _%e189546189824%_
                                                           _%hd189547189827%_
                                                           _%tl189548189829%_
                                                           _%e189549189832%_
                                                           _%hd189550189835%_
                                                           _%tl189551189837%_
                                                           _%e189589189732%_
                                                           _%hd189590189735%_
                                                           _%tl189591189737%_
                                                           _%e189592189740%_
                                                           _%hd189593189743%_
                                                           _%tl189594189745%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189504189614%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189514190011%_))
                                          (let ((_%e189604189635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189514190011%_))))
                                            (let ((_%tl189606189640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189604189635%_)))
                                                  (_%hd189605189638%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189604189635%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189606189640%_))
                                                  (let ((_%e189607189643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189606189640%_))))
                                                    (let ((_%tl189609189648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189607189643%_)))
                                                          (_%hd189608189646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189607189643%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189609189648%_))
                                                          (_%__kont194011194012%_
                                                           _%hd189608189646%_
                                                           _%hd189605189638%_
                                                           _%hd189513190009%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189504189614%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189551189837%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189514190011%_))
                                      (let ((_%e189589189732%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189514190011%_))))
                                        (let ((_%tl189591189737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189589189732%_)))
                                              (_%hd189590189735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189589189732%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189591189737%_))
                                              (let ((_%e189592189740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189591189737%_))))
                                                (let ((_%tl189594189745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189592189740%_)))
                                                      (_%hd189593189743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189592189740%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189594189745%_))
                                                      (_%__match194210194211%_
                                                       _%e189509189998%_
                                                       _%hd189510190001%_
                                                       _%tl189511190003%_
                                                       _%e189512190006%_
                                                       _%hd189513190009%_
                                                       _%tl189514190011%_
                                                       _%e189515190014%_
                                                       _%hd189516190017%_
                                                       _%tl189517190019%_
                                                       _%e189540189808%_
                                                       _%hd189541189811%_
                                                       _%tl189542189813%_
                                                       _%e189543189816%_
                                                       _%hd189544189819%_
                                                       _%tl189545189821%_
                                                       _%e189546189824%_
                                                       _%hd189547189827%_
                                                       _%tl189548189829%_
                                                       _%e189549189832%_
                                                       _%hd189550189835%_
                                                       _%tl189551189837%_
                                                       _%e189589189732%_
                                                       _%hd189590189735%_
                                                       _%tl189591189737%_
                                                       _%e189592189740%_
                                                       _%hd189593189743%_
                                                       _%tl189594189745%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189504189614%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189504189614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189504189614%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189514190011%_))
                                      (let ((_%e189604189635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189514190011%_))))
                                        (let ((_%tl189606189640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189604189635%_)))
                                              (_%hd189605189638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189604189635%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189606189640%_))
                                              (let ((_%e189607189643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189606189640%_))))
                                                (let ((_%tl189609189648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189607189643%_)))
                                                      (_%hd189608189646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189607189643%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189609189648%_))
                                                      (_%__kont194011194012%_
                                                       _%hd189608189646%_
                                                       _%hd189605189638%_
                                                       _%hd189513190009%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189504189614%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189504189614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189504189614%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189551189837%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189514190011%_))
                                  (let ((_%e189589189732%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189514190011%_))))
                                    (let ((_%tl189591189737%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189589189732%_)))
                                          (_%hd189590189735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189589189732%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189591189737%_))
                                          (let ((_%e189592189740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189591189737%_))))
                                            (let ((_%tl189594189745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189592189740%_)))
                                                  (_%hd189593189743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189592189740%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl189594189745%_))
                                                  (_%__match194210194211%_
                                                   _%e189509189998%_
                                                   _%hd189510190001%_
                                                   _%tl189511190003%_
                                                   _%e189512190006%_
                                                   _%hd189513190009%_
                                                   _%tl189514190011%_
                                                   _%e189515190014%_
                                                   _%hd189516190017%_
                                                   _%tl189517190019%_
                                                   _%e189540189808%_
                                                   _%hd189541189811%_
                                                   _%tl189542189813%_
                                                   _%e189543189816%_
                                                   _%hd189544189819%_
                                                   _%tl189545189821%_
                                                   _%e189546189824%_
                                                   _%hd189547189827%_
                                                   _%tl189548189829%_
                                                   _%e189549189832%_
                                                   _%hd189550189835%_
                                                   _%tl189551189837%_
                                                   _%e189589189732%_
                                                   _%hd189590189735%_
                                                   _%tl189591189737%_
                                                   _%e189592189740%_
                                                   _%hd189593189743%_
                                                   _%tl189594189745%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189504189614%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189514190011%_))
                                  (let ((_%e189604189635%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189514190011%_))))
                                    (let ((_%tl189606189640%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189604189635%_)))
                                          (_%hd189605189638%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189604189635%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189606189640%_))
                                          (let ((_%e189607189643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189606189640%_))))
                                            (let ((_%tl189609189648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189607189643%_)))
                                                  (_%hd189608189646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189607189643%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl189609189648%_))
                                                  (_%__kont194011194012%_
                                                   _%hd189608189646%_
                                                   _%hd189605189638%_
                                                   _%hd189513190009%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189504189614%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189551189837%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189514190011%_))
                          (let ((_%e189589189732%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189514190011%_))))
                            (let ((_%tl189591189737%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189589189732%_)))
                                  (_%hd189590189735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189589189732%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189591189737%_))
                                  (let ((_%e189592189740%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189591189737%_))))
                                    (let ((_%tl189594189745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189592189740%_)))
                                          (_%hd189593189743%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189592189740%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189594189745%_))
                                          (_%__match194210194211%_
                                           _%e189509189998%_
                                           _%hd189510190001%_
                                           _%tl189511190003%_
                                           _%e189512190006%_
                                           _%hd189513190009%_
                                           _%tl189514190011%_
                                           _%e189515190014%_
                                           _%hd189516190017%_
                                           _%tl189517190019%_
                                           _%e189540189808%_
                                           _%hd189541189811%_
                                           _%tl189542189813%_
                                           _%e189543189816%_
                                           _%hd189544189819%_
                                           _%tl189545189821%_
                                           _%e189546189824%_
                                           _%hd189547189827%_
                                           _%tl189548189829%_
                                           _%e189549189832%_
                                           _%hd189550189835%_
                                           _%tl189551189837%_
                                           _%e189589189732%_
                                           _%hd189590189735%_
                                           _%tl189591189737%_
                                           _%e189592189740%_
                                           _%hd189593189743%_
                                           _%tl189594189745%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189504189614%_)))))
                          (let () (declare (not safe)) (_%g189504189614%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189514190011%_))
                          (let ((_%e189604189635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189514190011%_))))
                            (let ((_%tl189606189640%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189604189635%_)))
                                  (_%hd189605189638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189604189635%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189606189640%_))
                                  (let ((_%e189607189643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189606189640%_))))
                                    (let ((_%tl189609189648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189607189643%_)))
                                          (_%hd189608189646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189607189643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189609189648%_))
                                          (_%__kont194011194012%_
                                           _%hd189608189646%_
                                           _%hd189605189638%_
                                           _%hd189513190009%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189504189614%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g189504189614%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189514190011%_))
                                                      (let ((_%e189604189635%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189514190011%_))))
                (let ((_%tl189606189640%_
                       (let () (declare (not safe)) (##cdr _%e189604189635%_)))
                      (_%hd189605189638%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189604189635%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189606189640%_))
                      (let ((_%e189607189643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189606189640%_))))
                        (let ((_%tl189609189648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189607189643%_)))
                              (_%hd189608189646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189607189643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189609189648%_))
                              (_%__kont194011194012%_
                               _%hd189608189646%_
                               _%hd189605189638%_
                               _%hd189513190009%_)
                              (let ()
                                (declare (not safe))
                                (_%g189504189614%_)))))
                      (let () (declare (not safe)) (_%g189504189614%_)))))
              (let () (declare (not safe)) (_%g189504189614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189514190011%_))
                                                  (let ((_%e189604189635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189514190011%_))))
                                                    (let ((_%tl189606189640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189604189635%_)))
                                                          (_%hd189605189638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189604189635%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189606189640%_))
                                                          (let ((_%e189607189643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189606189640%_))))
                    (let ((_%tl189609189648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189607189643%_)))
                          (_%hd189608189646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189607189643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189609189648%_))
                          (_%__kont194011194012%_
                           _%hd189608189646%_
                           _%hd189605189638%_
                           _%hd189513190009%_)
                          (let () (declare (not safe)) (_%g189504189614%_)))))
                  (let () (declare (not safe)) (_%g189504189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189514190011%_))
                                          (let ((_%e189604189635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189514190011%_))))
                                            (let ((_%tl189606189640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189604189635%_)))
                                                  (_%hd189605189638%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189604189635%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189606189640%_))
                                                  (let ((_%e189607189643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189606189640%_))))
                                                    (let ((_%tl189609189648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189607189643%_)))
                                                          (_%hd189608189646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189607189643%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189609189648%_))
                                                          (_%__kont194011194012%_
                                                           _%hd189608189646%_
                                                           _%hd189605189638%_
                                                           _%hd189513190009%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189504189614%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189514190011%_))
                                      (let ((_%e189604189635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189514190011%_))))
                                        (let ((_%tl189606189640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189604189635%_)))
                                              (_%hd189605189638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189604189635%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189606189640%_))
                                              (let ((_%e189607189643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189606189640%_))))
                                                (let ((_%tl189609189648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189607189643%_)))
                                                      (_%hd189608189646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189607189643%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189609189648%_))
                                                      (_%__kont194011194012%_
                                                       _%hd189608189646%_
                                                       _%hd189605189638%_
                                                       _%hd189513190009%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189504189614%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189504189614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189504189614%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189514190011%_))
                                  (let ((_%e189604189635%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189514190011%_))))
                                    (let ((_%tl189606189640%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189604189635%_)))
                                          (_%hd189605189638%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189604189635%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189606189640%_))
                                          (let ((_%e189607189643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189606189640%_))))
                                            (let ((_%tl189609189648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189607189643%_)))
                                                  (_%hd189608189646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189607189643%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl189609189648%_))
                                                  (_%__kont194011194012%_
                                                   _%hd189608189646%_
                                                   _%hd189605189638%_
                                                   _%hd189513190009%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189504189614%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189504189614%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189514190011%_))
                          (let ((_%e189604189635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189514190011%_))))
                            (let ((_%tl189606189640%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189604189635%_)))
                                  (_%hd189605189638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189604189635%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189606189640%_))
                                  (let ((_%e189607189643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189606189640%_))))
                                    (let ((_%tl189609189648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189607189643%_)))
                                          (_%hd189608189646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189607189643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189609189648%_))
                                          (_%__kont194011194012%_
                                           _%hd189608189646%_
                                           _%hd189605189638%_
                                           _%hd189513190009%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g189504189614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189504189614%_)))))
                          (let () (declare (not safe)) (_%g189504189614%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl189514190011%_))
                  (let ((_%e189604189635%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189514190011%_))))
                    (let ((_%tl189606189640%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189604189635%_)))
                          (_%hd189605189638%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189604189635%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189606189640%_))
                          (let ((_%e189607189643%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189606189640%_))))
                            (let ((_%tl189609189648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189607189643%_)))
                                  (_%hd189608189646%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189607189643%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189609189648%_))
                                  (_%__kont194011194012%_
                                   _%hd189608189646%_
                                   _%hd189605189638%_
                                   _%hd189513190009%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g189504189614%_)))))
                          (let () (declare (not safe)) (_%g189504189614%_)))))
                  (let () (declare (not safe)) (_%g189504189614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189514190011%_))
                                                      (let ((_%e189604189635%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189514190011%_))))
                (let ((_%tl189606189640%_
                       (let () (declare (not safe)) (##cdr _%e189604189635%_)))
                      (_%hd189605189638%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189604189635%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189606189640%_))
                      (let ((_%e189607189643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189606189640%_))))
                        (let ((_%tl189609189648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189607189643%_)))
                              (_%hd189608189646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189607189643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189609189648%_))
                              (_%__kont194011194012%_
                               _%hd189608189646%_
                               _%hd189605189638%_
                               _%hd189513190009%_)
                              (let ()
                                (declare (not safe))
                                (_%g189504189614%_)))))
                      (let () (declare (not safe)) (_%g189504189614%_)))))
              (let () (declare (not safe)) (_%g189504189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189514190011%_))
                                              (let ((_%e189604189635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189514190011%_))))
                                                (let ((_%tl189606189640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189604189635%_)))
                                                      (_%hd189605189638%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189604189635%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189606189640%_))
                                                      (let ((_%e189607189643%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189606189640%_))))
                (let ((_%tl189609189648%_
                       (let () (declare (not safe)) (##cdr _%e189607189643%_)))
                      (_%hd189608189646%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189607189643%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189609189648%_))
                      (_%__kont194011194012%_
                       _%hd189608189646%_
                       _%hd189605189638%_
                       _%hd189513190009%_)
                      (let () (declare (not safe)) (_%g189504189614%_)))))
              (let () (declare (not safe)) (_%g189504189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g189504189614%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189514190011%_))
                                      (let ((_%e189604189635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189514190011%_))))
                                        (let ((_%tl189606189640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189604189635%_)))
                                              (_%hd189605189638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189604189635%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189606189640%_))
                                              (let ((_%e189607189643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189606189640%_))))
                                                (let ((_%tl189609189648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189607189643%_)))
                                                      (_%hd189608189646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189607189643%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189609189648%_))
                                                      (_%__kont194011194012%_
                                                       _%hd189608189646%_
                                                       _%hd189605189638%_
                                                       _%hd189513190009%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189504189614%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189504189614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189504189614%_))))))
                          (let () (declare (not safe)) (_%g189504189614%_)))))
                  (let () (declare (not safe)) (_%g189504189614%_))))))))))
