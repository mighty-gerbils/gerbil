(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771037616)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp263496 (list gxc#::basic-xform::t))
            (__tmp263495 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp263496
         '()
         __tmp263495
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args262773%_
        (apply make-instance gxc#::optimize-call::t _%$args262773%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp263497
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
        (__make-atomic-promise __tmp263497)))
    (define gxc#apply-optimize-call
      (lambda (_%stx262765%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self262768%_
                (let ((__obj263487
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj263487))
               (__tmp263498
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self262768%_ _%stx262765%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp263498
           gxc#current-compile-method
           _%self262768%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp263500 (list gxc#::void::t))
            (__tmp263499 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp263500
         '()
         __tmp263499
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args262762%_
        (apply make-instance gxc#::check-return-type::t _%$args262762%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp263501
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
        (__make-atomic-promise __tmp263501)))
    (define gxc#apply-check-return-type
      (lambda (_%stx262754%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self262757%_
                (let ((__obj263489
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj263489))
               (__tmp263502
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self262757%_ _%stx262754%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp263502
           gxc#current-compile-method
           _%self262757%_))))
    (define gxc#optimize-call%
      (lambda (_%self262361%_ _%stx262362%_)
        (let* ((_%__stx262842262843%_ _%stx262362%_)
               (_%g262365262411%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262842262843%_)))))
          (let ((_%__kont262844262845%_
                 (lambda (_%g262367262550%_ _%g262368262551%_)
                   (let* ((_%rator-id262571%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g262368262551%_)))
                          (_%rator-type262573%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id262571%_))))
                     (if (or (not _%rator-type262573%_)
                             (eq? (##structure-ref
                                   _%rator-type262573%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self262361%_ _%stx262362%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type262573%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp263503
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type262573%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id262571%_
                                  '" => "
                                  _%rator-type262573%_
                                  '" "
                                  __tmp263503))
                               (let* ((_%optimized262588%_
                                       (let ((__method263490
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type262573%_
                                                 'optimize-call))))
                                         (if __method263490
                                             (let ((__tmp263504
                                                    (let ((__tmp263505
                                                           (lambda (_%g262580262583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g262581262585%_)
                     (cons _%g262580262583%_ _%g262581262585%_))))
              (declare (not safe))
              (foldr__0 __tmp263505 '() _%g262367262550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method263490
                                                _%rator-type262573%_
                                                _%self262361%_
                                                _%stx262362%_
                                                __tmp263504))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type262573%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx262790262791%_
                                       _%optimized262588%_)
                                      (_%g262591262620%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx262790262791%_)))))
                                 (let ((_%__kont262792262793%_
                                        (lambda (_%g262593262686%_
                                                 _%g262594262687%_)
                                          (let* ((_%optimized-rator-id262714%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g262594262687%_)))
                                                 (_%rator-type262719%_
                                                  (let ((_%$e262716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id262714%_))))
                                                    (if _%$e262716%_
                                                        _%$e262716%_
                                                        _%rator-type262573%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type262719%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id262714%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type262719%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type262719%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized262588%_
                                                (let ((__tmp263506
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g262594262687%_ '()))
                           (let ((__tmp263507
                                  (lambda (_%g262727262730%_ _%g262728262732%_)
                                    (cons _%g262727262730%_
                                          _%g262728262732%_))))
                             (declare (not safe))
                             (foldr__0 __tmp263507 '() _%g262593262686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp263506
                                                   _%stx262362%_))))))
                                       (_%__kont262796262797%_
                                        (lambda () _%optimized262588%_)))
                                   (let ((_%__match262839262840%_
                                          (lambda (_%e262595262632%_
                                                   _%hd262596262635%_
                                                   _%tl262597262637%_
                                                   _%e262598262640%_
                                                   _%hd262599262643%_
                                                   _%tl262600262645%_
                                                   _%e262601262648%_
                                                   _%hd262602262651%_
                                                   _%tl262603262653%_
                                                   _%e262604262656%_
                                                   _%hd262605262659%_
                                                   _%tl262606262661%_
                                                   _%__splice262794262795%_
                                                   _%target262607262664%_
                                                   _%tl262609262666%_)
                                            (letrec ((_%loop262610262669%_
                                                      (lambda (_%hd262608262672%_
                                                               _%arg262614262674%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd262608262672%_))
                                                            (let ((_%e262611262676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd262608262672%_))))
                      (let ((_%lp-tl262613262681%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e262611262676%_)))
                            (_%lp-hd262612262679%_
                             (let ()
                               (declare (not safe))
                               (##car _%e262611262676%_))))
                        (_%loop262610262669%_
                         _%lp-tl262613262681%_
                         (cons _%lp-hd262612262679%_ _%arg262614262674%_))))
                    (let ((_%arg262615262684%_ (reverse _%arg262614262674%_)))
                      (_%__kont262792262793%_
                       _%arg262615262684%_
                       _%hd262605262659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop262610262669%_
                                               _%target262607262664%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx262790262791%_))
                                         (let ((_%e262595262632%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx262790262791%_))))
                                           (let ((_%tl262597262637%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e262595262632%_)))
                                                 (_%hd262596262635%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e262595262632%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd262596262635%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd262596262635%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl262597262637%_))
                                                         (let ((_%e262598262640%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl262597262637%_))))
                   (let ((_%tl262600262645%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e262598262640%_)))
                         (_%hd262599262643%_
                          (let ()
                            (declare (not safe))
                            (##car _%e262598262640%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd262599262643%_))
                         (let ((_%e262601262648%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd262599262643%_))))
                           (let ((_%tl262603262653%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e262601262648%_)))
                                 (_%hd262602262651%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e262601262648%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd262602262651%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd262602262651%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl262603262653%_))
                                         (let ((_%e262604262656%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl262603262653%_))))
                                           (let ((_%tl262606262661%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e262604262656%_)))
                                                 (_%hd262605262659%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e262604262656%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl262606262661%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl262600262645%_))
                                                     (let ((_%__splice262794262795%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl262600262645%_
                                                               '0))))
                                                       (let ((_%tl262609262666%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice262794262795%_ '1)))
                     (_%target262607262664%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice262794262795%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl262609262666%_))
                     (_%__match262839262840%_
                      _%e262595262632%_
                      _%hd262596262635%_
                      _%tl262597262637%_
                      _%e262598262640%_
                      _%hd262599262643%_
                      _%tl262600262645%_
                      _%e262601262648%_
                      _%hd262602262651%_
                      _%tl262603262653%_
                      _%e262604262656%_
                      _%hd262605262659%_
                      _%tl262606262661%_
                      _%__splice262794262795%_
                      _%target262607262664%_
                      _%tl262609262666%_)
                     (_%__kont262796262797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont262796262797%_))
                                                 (_%__kont262796262797%_))))
                                         (_%__kont262796262797%_))
                                     (_%__kont262796262797%_))
                                 (_%__kont262796262797%_))))
                         (_%__kont262796262797%_))))
                 (_%__kont262796262797%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont262796262797%_))
                                                 (_%__kont262796262797%_))))
                                         (_%__kont262796262797%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type262573%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type262573%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp263508
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g262368262551%_
                                                                '()))
                                                    (map (lambda (_%g262738262740%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self262361%_
                                                              _%g262738262740%_)))
                                                         (let ((__tmp263509
                                                                (lambda (_%g262742262745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g262743262747%_)
                          (cons _%g262742262745%_ _%g262743262747%_))))
                   (declare (not safe))
                   (foldr__0 __tmp263509 '() _%g262367262550%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp263508
                                    _%stx262362%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx262362%_
                                    _%rator-type262573%_))))))))
                (_%__kont262848262849%_
                 (lambda (_%g262390262454%_ _%g262391262455%_)
                   (let ((_%rator-type262472%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g262391262455%_))))
                     (if (and _%rator-type262472%_
                              (eq? (##structure-ref
                                    _%rator-type262472%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type262472%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type262472%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type262472%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp263510
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self262361%_
                                               _%g262391262455%_))
                                            (map (lambda (_%g262474262476%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self262361%_
                                                      _%g262474262476%_)))
                                                 (let ((__tmp263511
                                                        (lambda (_%g262478262481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g262479262483%_)
                  (cons _%g262478262481%_ _%g262479262483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp263511
                                                    '()
                                                    _%g262390262454%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp263510 _%stx262362%_))
                         (if (or (not _%rator-type262472%_)
                                 (let ((__tmp263512
                                        (##structure-ref
                                         _%rator-type262472%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp263512 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self262361%_ _%stx262362%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx262362%_
                                _%rator-type262472%_))))))))
            (let* ((_%__match262909262910%_
                    (lambda (_%e262392262416%_
                             _%hd262393262419%_
                             _%tl262394262421%_
                             _%e262395262424%_
                             _%hd262396262427%_
                             _%tl262397262429%_
                             _%__splice262850262851%_
                             _%target262398262432%_
                             _%tl262400262434%_)
                      (letrec ((_%loop262401262437%_
                                (lambda (_%hd262399262440%_
                                         _%rand262405262442%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262399262440%_))
                                      (let ((_%e262402262444%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd262399262440%_))))
                                        (let ((_%lp-tl262404262449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262402262444%_)))
                                              (_%lp-hd262403262447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262402262444%_))))
                                          (_%loop262401262437%_
                                           _%lp-tl262404262449%_
                                           (cons _%lp-hd262403262447%_
                                                 _%rand262405262442%_))))
                                      (let ((_%rand262406262452%_
                                             (reverse _%rand262405262442%_)))
                                        (_%__kont262848262849%_
                                         _%rand262406262452%_
                                         _%hd262396262427%_))))))
                        (_%loop262401262437%_ _%target262398262432%_ '()))))
                   (_%__match262889262890%_
                    (lambda (_%e262369262496%_
                             _%hd262370262499%_
                             _%tl262371262501%_
                             _%e262372262504%_
                             _%hd262373262507%_
                             _%tl262374262509%_
                             _%e262375262512%_
                             _%hd262376262515%_
                             _%tl262377262517%_
                             _%e262378262520%_
                             _%hd262379262523%_
                             _%tl262380262525%_
                             _%__splice262846262847%_
                             _%target262381262528%_
                             _%tl262383262530%_)
                      (letrec ((_%loop262384262533%_
                                (lambda (_%hd262382262536%_
                                         _%rand262388262538%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262382262536%_))
                                      (let ((_%e262385262540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd262382262536%_))))
                                        (let ((_%lp-tl262387262545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262385262540%_)))
                                              (_%lp-hd262386262543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262385262540%_))))
                                          (_%loop262384262533%_
                                           _%lp-tl262387262545%_
                                           (cons _%lp-hd262386262543%_
                                                 _%rand262388262538%_))))
                                      (let ((_%rand262389262548%_
                                             (reverse _%rand262388262538%_)))
                                        (_%__kont262844262845%_
                                         _%rand262389262548%_
                                         _%hd262379262523%_))))))
                        (_%loop262384262533%_ _%target262381262528%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262842262843%_))
                  (let ((_%e262369262496%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx262842262843%_))))
                    (let ((_%tl262371262501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262369262496%_)))
                          (_%hd262370262499%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262369262496%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262371262501%_))
                          (let ((_%e262372262504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl262371262501%_))))
                            (let ((_%tl262374262509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262372262504%_)))
                                  (_%hd262373262507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262372262504%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd262373262507%_))
                                  (let ((_%e262375262512%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd262373262507%_))))
                                    (let ((_%tl262377262517%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262375262512%_)))
                                          (_%hd262376262515%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262375262512%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd262376262515%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd262376262515%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262377262517%_))
                                                  (let ((_%e262378262520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl262377262517%_))))
                                                    (let ((_%tl262380262525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262378262520%_)))
                                                          (_%hd262379262523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262378262520%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl262380262525%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl262374262509%_))
                      (let ((_%__splice262846262847%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl262374262509%_
                                '0))))
                        (let ((_%tl262383262530%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice262846262847%_ '1)))
                              (_%target262381262528%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice262846262847%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262383262530%_))
                              (_%__match262889262890%_
                               _%e262369262496%_
                               _%hd262370262499%_
                               _%tl262371262501%_
                               _%e262372262504%_
                               _%hd262373262507%_
                               _%tl262374262509%_
                               _%e262375262512%_
                               _%hd262376262515%_
                               _%tl262377262517%_
                               _%e262378262520%_
                               _%hd262379262523%_
                               _%tl262380262525%_
                               _%__splice262846262847%_
                               _%target262381262528%_
                               _%tl262383262530%_)
                              (let ()
                                (declare (not safe))
                                (_%g262365262411%_)))))
                      (let () (declare (not safe)) (_%g262365262411%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl262374262509%_))
                      (let ((_%__splice262850262851%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl262374262509%_
                                '0))))
                        (let ((_%tl262400262434%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice262850262851%_ '1)))
                              (_%target262398262432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice262850262851%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262400262434%_))
                              (_%__match262909262910%_
                               _%e262369262496%_
                               _%hd262370262499%_
                               _%tl262371262501%_
                               _%e262372262504%_
                               _%hd262373262507%_
                               _%tl262374262509%_
                               _%__splice262850262851%_
                               _%target262398262432%_
                               _%tl262400262434%_)
                              (let ()
                                (declare (not safe))
                                (_%g262365262411%_)))))
                      (let () (declare (not safe)) (_%g262365262411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl262374262509%_))
                                                      (let ((_%__splice262850262851%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl262374262509%_
                        '0))))
                (let ((_%tl262400262434%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice262850262851%_ '1)))
                      (_%target262398262432%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice262850262851%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl262400262434%_))
                      (_%__match262909262910%_
                       _%e262369262496%_
                       _%hd262370262499%_
                       _%tl262371262501%_
                       _%e262372262504%_
                       _%hd262373262507%_
                       _%tl262374262509%_
                       _%__splice262850262851%_
                       _%target262398262432%_
                       _%tl262400262434%_)
                      (let () (declare (not safe)) (_%g262365262411%_)))))
              (let () (declare (not safe)) (_%g262365262411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl262374262509%_))
                                                  (let ((_%__splice262850262851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl262374262509%_
                                                            '0))))
                                                    (let ((_%tl262400262434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice262850262851%_
                                                              '1)))
                                                          (_%target262398262432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice262850262851%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl262400262434%_))
                                                          (_%__match262909262910%_
                                                           _%e262369262496%_
                                                           _%hd262370262499%_
                                                           _%tl262371262501%_
                                                           _%e262372262504%_
                                                           _%hd262373262507%_
                                                           _%tl262374262509%_
                                                           _%__splice262850262851%_
                                                           _%target262398262432%_
                                                           _%tl262400262434%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g262365262411%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262365262411%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262374262509%_))
                                              (let ((_%__splice262850262851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262374262509%_
                                                        '0))))
                                                (let ((_%tl262400262434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262850262851%_
                                                          '1)))
                                                      (_%target262398262432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262850262851%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262400262434%_))
                                                      (_%__match262909262910%_
                                                       _%e262369262496%_
                                                       _%hd262370262499%_
                                                       _%tl262371262501%_
                                                       _%e262372262504%_
                                                       _%hd262373262507%_
                                                       _%tl262374262509%_
                                                       _%__splice262850262851%_
                                                       _%target262398262432%_
                                                       _%tl262400262434%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262365262411%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262365262411%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262374262509%_))
                                      (let ((_%__splice262850262851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl262374262509%_
                                                '0))))
                                        (let ((_%tl262400262434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262850262851%_
                                                  '1)))
                                              (_%target262398262432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262850262851%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262400262434%_))
                                              (_%__match262909262910%_
                                               _%e262369262496%_
                                               _%hd262370262499%_
                                               _%tl262371262501%_
                                               _%e262372262504%_
                                               _%hd262373262507%_
                                               _%tl262374262509%_
                                               _%__splice262850262851%_
                                               _%target262398262432%_
                                               _%tl262400262434%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g262365262411%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262365262411%_))))))
                          (let () (declare (not safe)) (_%g262365262411%_)))))
                  (let () (declare (not safe)) (_%g262365262411%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self262323%_ _%ctx262324%_ _%stx262325%_ _%args262326%_)
        (let ((_%self262329%_ _%self262323%_))
          (if (let ((__method263491
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self262329%_ 'check-arguments))))
                (if __method263491
                    (let ()
                      (declare (not safe))
                      (__method263491
                       _%self262329%_
                       _%ctx262324%_
                       _%stx262325%_
                       _%args262326%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self262329%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature262339%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262329%_ '2 '#f '#f)))
                     (_%signature262341%_ _%signature262339%_)
                     (_%$e262351%_
                      (if _%signature262341%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature262341%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e262351%_
                    ((lambda (_%unchecked262354%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked262354%_))
                           (let ((__tmp263513
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked262354%_
                                                          '()))
                                              (map (lambda (_%g262355262357%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx262324%_
                                                        _%g262355262357%_)))
                                                   _%args262326%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp263513
                              _%stx262325%_
                              _%ctx262324%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx262324%_ _%stx262325%_))))
                     _%$e262351%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx262324%_ _%stx262325%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx262324%_ _%stx262325%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass262775 __method-table262776)
        (let ((__check-arguments262777
               (let ((__tmp263514
                      (lambda ()
                        (let ((__method262778
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table262776
                                  'check-arguments
                                  '#f))))
                          (if __method262778
                              __method262778
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp263514))))
          (lambda (_%self262323%_ _%ctx262324%_ _%stx262325%_ _%args262326%_)
            (let ((_%self262329%_ _%self262323%_))
              (if ((force __check-arguments262777)
                   _%self262329%_
                   _%ctx262324%_
                   _%stx262325%_
                   _%args262326%_)
                  (let* ((_%signature262339%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self262329%_
                             '2
                             '#f
                             '#f)))
                         (_%signature262341%_ _%signature262339%_)
                         (_%$e262351%_
                          (if _%signature262341%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature262341%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e262351%_
                        ((lambda (_%unchecked262354%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked262354%_))
                               (let ((__tmp263515
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked262354%_
                                                              '()))
                                                  (map (lambda (_%g262355262357%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx262324%_
                                                            _%g262355262357%_)))
                                                       _%args262326%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp263515
                                  _%stx262325%_
                                  _%ctx262324%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx262324%_
                                  _%stx262325%_))))
                         _%$e262351%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx262324%_ _%stx262325%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx262324%_ _%stx262325%_))))))))
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
      (lambda (_%self262076%_ _%ctx262077%_ _%stx262078%_ _%args262079%_)
        (let* ((_%self262082%_ _%self262076%_)
               (_%signature262091262093%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self262082%_ '2 '#f '#f))))
          (if _%signature262091262093%_
              (let* ((_%signature262095%_ _%signature262091262093%_)
                     (_%argument-types262096262098%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature262095%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types262096262098%_
                    (let* ((_%argument-types262100%_
                            _%argument-types262096262098%_)
                           (_%argument-types262105%_
                            (let ((__tmp263516
                                   (lambda (_%t262103%_)
                                     (if _%t262103%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx262078%_
                                            _%t262103%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp263516
                               _%argument-types262100%_))))
                      (let _%loop262107%_ ((_%rest-args262109%_ _%args262079%_)
                                           (_%rest-types262110%_
                                            _%argument-types262105%_)
                                           (_%result262111%_ '#t))
                        (let* ((_%rest-args262112262120%_ _%rest-args262109%_)
                               (_%else262114262128%_
                                (lambda () _%result262111%_))
                               (_%K262116262189%_
                                (lambda (_%rest-args262131%_ _%arg262132%_)
                                  (let* ((_%rest-types262133262144%_
                                          _%rest-types262110%_)
                                         (_%E262137262148%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types262133262144%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K262140262177%_
                                           (lambda (_%rest-types262174%_
                                                    _%type262175%_)
                                             (_%loop262107%_
                                              _%rest-args262131%_
                                              _%rest-types262174%_
                                              (if (gxc#check-expression-type!
                                                   _%stx262078%_
                                                   _%arg262132%_
                                                   _%type262175%_)
                                                  _%result262111%_
                                                  '#f))))
                                          (_%K262139262168%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx262078%_
                                                _%argument-types262105%_))))
                                          (_%K262138262158%_
                                           (lambda (_%tail-type262152%_)
                                             (if (let ((__tmp263517
                                                        (lambda (_%g262153262155%_)
                                                          (gxc#check-expression-type!
                                                           _%stx262078%_
                                                           _%g262153262155%_
                                                           _%tail-type262152%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp263517
                                                    _%rest-args262131%_))
                                                 _%result262111%_
                                                 '#f))))
                                      (let ((_%try-match262135262171%_
                                             (lambda ()
                                               (if (null? _%rest-types262133262144%_)
                                                   (_%K262139262168%_)
                                                   (let ((_%tail-type262161%_
                                                          _%rest-types262133262144%_))
                                                     (_%K262138262158%_
                                                      _%tail-type262161%_))))))
                                        (if (pair? _%rest-types262133262144%_)
                                            (let ((_%tl262142262182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types262133262144%_)))
                                                  (_%hd262141262180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types262133262144%_))))
                                              (let ((_%type262185%_
                                                     _%hd262141262180%_)
                                                    (_%rest-types262187%_
                                                     _%tl262142262182%_))
                                                (_%K262140262177%_
                                                 _%rest-types262187%_
                                                 _%type262185%_)))
                                            (_%try-match262135262171%_))))))))
                          (if (pair? _%rest-args262112262120%_)
                              (let ((_%hd262117262192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args262112262120%_)))
                                    (_%tl262118262194%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args262112262120%_))))
                                (let* ((_%arg262197%_ _%hd262117262192%_)
                                       (_%rest-args262199%_
                                        _%tl262118262194%_))
                                  (_%K262116262189%_
                                   _%rest-args262199%_
                                   _%arg262197%_)))
                              (_%else262114262128%_)))))
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
      (lambda (_%self261887%_ _%ctx261888%_ _%stx261889%_ _%args261890%_)
        (let* ((_%self261893%_ _%self261887%_)
               (_%g261903261913%_
                (lambda (_%g261904261910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261904261910%_))))
               (_%g261902261951%_
                (lambda (_%g261904261916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261904261916%_))
                      (let ((_%e261906261918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g261904261916%_))))
                        (let ((_%hd261907261921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261906261918%_)))
                              (_%tl261908261923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261906261918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl261908261923%_))
                              ((lambda (_%g261905261926%_)
                                 (let* ((_%klass261938%_
                                         (let ((__tmp263518
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self261893%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx261889%_
                                            __tmp263518)))
                                        (_%object261940%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx261888%_
                                            _%g261905261926%_)))
                                        (_%instance?261945%_
                                         (let ((_%$e261942%_
                                                (gxc#expression-type?
                                                 _%object261940%_
                                                 _%klass261938%_)))
                                           (if _%$e261942%_
                                               _%$e261942%_
                                               (gxc#expression-type?
                                                _%g261905261926%_
                                                _%klass261938%_)))))
                                   (if _%instance?261945%_
                                       (let ((__tmp263519
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object261940%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g261905261926%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object261940%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp263519
                                          _%stx261889%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx261888%_
                                          _%stx261889%_)))))
                               _%hd261907261921%_)
                              (_%g261903261913%_ _%g261904261916%_))))
                      (_%g261903261913%_ _%g261904261916%_)))))
          (_%g261902261951%_ _%args261890%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self261683%_ _%ctx261684%_ _%stx261685%_ _%args261686%_)
        (let* ((_%self261689%_ _%self261683%_)
               (_%g261699261709%_
                (lambda (_%g261700261706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261700261706%_))))
               (_%g261698261762%_
                (lambda (_%g261700261712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261700261712%_))
                      (let ((_%e261702261714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g261700261712%_))))
                        (let ((_%hd261703261717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261702261714%_)))
                              (_%tl261704261719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261702261714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl261704261719%_))
                              ((lambda (_%g261701261722%_)
                                 (let* ((_%klass261734%_
                                         (let ((__tmp263520
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self261689%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx261685%_
                                            __tmp263520)))
                                        (_%object261736%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx261684%_
                                            _%g261701261722%_)))
                                        (_%instance?261741%_
                                         (let ((_%$e261738%_
                                                (gxc#expression-type?
                                                 _%object261736%_
                                                 _%klass261734%_)))
                                           (if _%$e261738%_
                                               _%$e261738%_
                                               (gxc#expression-type?
                                                _%g261701261722%_
                                                _%klass261734%_))))
                                        (_%klass261744%_ _%klass261734%_))
                                   (if _%instance?261741%_
                                       (let ((__tmp263521
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object261736%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g261701261722%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object261736%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp263521
                                          _%stx261685%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass261744%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp263522
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass261744%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object261736%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp263522
                                              _%stx261685%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass261744%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp263523
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass261744%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object261736%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp263523
                                                  _%stx261685%_))
                                               (let ((__tmp263524
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self261689%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object261736%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp263524
                                                  _%stx261685%_)))))))
                               _%hd261703261717%_)
                              (_%g261699261709%_ _%g261700261712%_))))
                      (_%g261699261709%_ _%g261700261712%_)))))
          (_%g261698261762%_ _%args261686%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx261351%_)
        (let* ((_%__stx262919262920%_ _%stx261351%_)
               (_%g261356261397%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262919262920%_)))))
          (let ((_%__kont262921262922%_ (lambda () '#t))
                (_%__kont262923262924%_ (lambda () '#t))
                (_%__kont262925262926%_
                 (lambda (_%g261370261463%_ _%g261371261464%_)
                   (let ((_%rator-type261485261487%_
                          (let ((__tmp263525
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g261371261464%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp263525))))
                     (if _%rator-type261485261487%_
                         (let* ((_%rator-type261489%_
                                 _%rator-type261485261487%_)
                                (_%rator-signature261490261492%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type261489%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type261489%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature261490261492%_
                               (let* ((_%rator-signature261494%_
                                       _%rator-signature261490261492%_)
                                      (_%rator-effect261495261497%_
                                       (if _%rator-signature261494%_
                                           (##direct-structure-ref
                                            _%rator-signature261494%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect261495261497%_
                                     (let ((_%rator-effect261499%_
                                            _%rator-effect261495261497%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect261499%_)
                                               (equal? '(alloc)
                                                       _%rator-effect261499%_))
                                           (let ((__tmp263526
                                                  (let ((__tmp263527
                                                         (lambda (_%g261504261507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g261505261509%_)
                   (cons _%g261504261507%_ _%g261505261509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp263527
                                                     '()
                                                     _%g261370261463%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp263526))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont262929262930%_ (lambda () '#f)))
            (let ((_%__match263008263009%_
                   (lambda (_%e261372261409%_
                            _%hd261373261412%_
                            _%tl261374261414%_
                            _%e261375261417%_
                            _%hd261376261420%_
                            _%tl261377261422%_
                            _%e261378261425%_
                            _%hd261379261428%_
                            _%tl261380261430%_
                            _%e261381261433%_
                            _%hd261382261436%_
                            _%tl261383261438%_
                            _%__splice262927262928%_
                            _%target261384261441%_
                            _%tl261386261443%_)
                     (letrec ((_%loop261387261446%_
                               (lambda (_%hd261385261449%_
                                        _%rand261391261451%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd261385261449%_))
                                     (let ((_%e261388261453%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd261385261449%_))))
                                       (let ((_%lp-tl261390261458%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e261388261453%_)))
                                             (_%lp-hd261389261456%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e261388261453%_))))
                                         (_%loop261387261446%_
                                          _%lp-tl261390261458%_
                                          (cons _%lp-hd261389261456%_
                                                _%rand261391261451%_))))
                                     (let ((_%rand261392261461%_
                                            (reverse _%rand261391261451%_)))
                                       (_%__kont262925262926%_
                                        _%rand261392261461%_
                                        _%hd261382261436%_))))))
                       (_%loop261387261446%_ _%target261384261441%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262919262920%_))
                  (let ((_%e261358261540%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx262919262920%_))))
                    (let ((_%tl261360261545%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261358261540%_)))
                          (_%hd261359261543%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261358261540%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd261359261543%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd261359261543%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl261360261545%_))
                                  (let ((_%e261361261548%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl261360261545%_))))
                                    (let ((_%tl261363261553%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e261361261548%_)))
                                          (_%hd261362261551%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e261361261548%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl261363261553%_))
                                          (_%__kont262921262922%_)
                                          (_%__kont262929262930%_))))
                                  (_%__kont262929262930%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd261359261543%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261360261545%_))
                                      (let ((_%e261367261525%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl261360261545%_))))
                                        (let ((_%tl261369261530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261367261525%_)))
                                              (_%hd261368261528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261367261525%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261369261530%_))
                                              (_%__kont262923262924%_)
                                              (_%__kont262929262930%_))))
                                      (_%__kont262929262930%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd261359261543%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl261360261545%_))
                                          (let ((_%e261375261417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl261360261545%_))))
                                            (let ((_%tl261377261422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e261375261417%_)))
                                                  (_%hd261376261420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e261375261417%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd261376261420%_))
                                                  (let ((_%e261378261425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd261376261420%_))))
                                                    (let ((_%tl261380261430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261378261425%_)))
                                                          (_%hd261379261428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261378261425%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd261379261428%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd261379261428%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl261380261430%_))
                          (let ((_%e261381261433%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl261380261430%_))))
                            (let ((_%tl261383261438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e261381261433%_)))
                                  (_%hd261382261436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e261381261433%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261383261438%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261377261422%_))
                                      (let ((_%__splice262927262928%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl261377261422%_
                                                '0))))
                                        (let ((_%tl261386261443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262927262928%_
                                                  '1)))
                                              (_%target261384261441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262927262928%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261386261443%_))
                                              (_%__match263008263009%_
                                               _%e261358261540%_
                                               _%hd261359261543%_
                                               _%tl261360261545%_
                                               _%e261375261417%_
                                               _%hd261376261420%_
                                               _%tl261377261422%_
                                               _%e261378261425%_
                                               _%hd261379261428%_
                                               _%tl261380261430%_
                                               _%e261381261433%_
                                               _%hd261382261436%_
                                               _%tl261383261438%_
                                               _%__splice262927262928%_
                                               _%target261384261441%_
                                               _%tl261386261443%_)
                                              (_%__kont262929262930%_))))
                                      (_%__kont262929262930%_))
                                  (_%__kont262929262930%_))))
                          (_%__kont262929262930%_))
                      (_%__kont262929262930%_))
                  (_%__kont262929262930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont262929262930%_))))
                                          (_%__kont262929262930%_))
                                      (_%__kont262929262930%_))))
                          (_%__kont262929262930%_))))
                  (_%__kont262929262930%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx261346%_ _%klass261347%_)
        (let ((_%expr-type261349%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx261346%_))))
          (if _%expr-type261349%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type261349%_ _%klass261347%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx261324%_ _%expr261325%_ _%type261326%_)
        (if (not _%type261326%_)
            '#f
            (let ((_%$e261329%_
                   (eq? (##structure-ref _%type261326%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e261329%_
                  _%$e261329%_
                  (let ((_%expr-type261333%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr261325%_))))
                    (if (not _%expr-type261333%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type261333%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e261337%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type261333%_
                                      'gxc#!abort::t))))
                              (if _%$e261337%_
                                  _%$e261337%_
                                  (let ((_%$e261340%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type261333%_
                                            _%type261326%_))))
                                    (if _%$e261340%_
                                        _%$e261340%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type261326%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type261326%_
                                                   _%expr-type261333%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx261324%_
                                                   _%expr261325%_
                                                   _%expr-type261333%_
                                                   _%type261326%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self261138%_ _%ctx261139%_ _%stx261140%_ _%args261141%_)
        (let* ((_%self261144%_ _%self261138%_)
               (_%klass261154%_
                (let ((__tmp263528
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self261144%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx261140%_ __tmp263528)))
               (_%fields261156%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass261154%_
                           '5
                           '#f
                           '#f))))
               (_%args261162%_
                (map (lambda (_%g261157261159%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx261139%_ _%g261157261159%_)))
                     _%args261141%_))
               (_%inline-make-object261164%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self261144%_
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
                           _%self261144%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields261156%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass261167%_ _%klass261154%_)
               (_%$e261181%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass261167%_ '6 '#f '#f))))
          (if _%$e261181%_
              ((lambda (_%ctor261184%_)
                 (let ((_%$obj261186%_
                        (let ((__tmp263529
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp263529)))
                       (_%ctor-impl261187%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass261167%_
                           _%ctor261184%_))))
                   (let ((__tmp263530
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj261186%_ '())
                                                  (cons _%inline-make-object261164%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl261187%_
                                                            (let ((__tmp263531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl261187%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj261186%_ '()))
                                             _%args261162%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp263531
                       _%stx261140%_
                       _%ctx261139%_))
                    (let ((_%$ctor261189%_
                           (let ((__tmp263532
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp263532))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor261189%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self261144%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj261186%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor261184%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor261189%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor261189%_ '()))
                              (cons (cons '%#ref (cons _%$obj261186%_ '()))
                                    _%args261162%_)))
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
                             _%self261144%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor261184%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj261186%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp263530 _%stx261140%_))))
               _%$e261181%_)
              (let ((_%$e261191%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass261167%_
                        '10
                        '#f
                        '#f))))
                (if _%$e261191%_
                    ((lambda (_%metaclass261194%_)
                       (let* ((_%$obj261196%_
                               (let ((__tmp263533
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp263533)))
                              (_%metakons261198%_
                               (let ((__tmp263534
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx261140%_
                                         _%metaclass261194%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp263534
                                  'instance-init!)))
                              (__tmp263535
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj261196%_
                                                             '())
                                                       (cons _%inline-make-object261164%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons261198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp263536
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons261198%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self261144%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj261196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args261162%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp263536
                            _%stx261140%_
                            _%ctx261139%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self261144%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj261196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args261162%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj261196%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263535 _%stx261140%_)))
                     _%$e261191%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass261167%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp263537
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args261162%_))))
                              (declare (not safe))
                              (##fx= __tmp263537 _%fields261156%_))
                            (let ((__tmp263538
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self261144%_
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
                                              _%self261144%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args261162%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp263538
                               _%stx261140%_))
                            (let ((__tmp263540
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261144%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp263539
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass261167%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx261140%_
                               __tmp263540
                               __tmp263539)))
                        (let ((_%$obj261203%_
                               (let ((__tmp263541
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp263541))))
                          (let _%lp261205%_ ((_%rest261207%_ _%args261162%_)
                                             (_%initializers261208%_ '()))
                            (let* ((_%__stx263011263012%_ _%rest261207%_)
                                   (_%g261212261233%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx263011263012%_)))))
                              (let ((_%__kont263013263014%_
                                     (lambda (_%g261214261287%_
                                              _%g261215261288%_
                                              _%g261216261289%_)
                                       (let* ((_%slot261316%_
                                               (let ((__tmp263542
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g261216261289%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp263542)))
                                              (_%off261318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass261167%_
                                                  _%slot261316%_))))
                                         (if _%off261318%_
                                             (_%lp261205%_
                                              _%g261214261287%_
                                              (cons (cons _%off261318%_
                                                          _%g261215261288%_)
                                                    _%initializers261208%_))
                                             (let ((__tmp263543
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self261144%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx261140%_
                                                __tmp263543
                                                _%slot261316%_))))))
                                    (_%__kont263015263016%_
                                     (lambda ()
                                       (let ((__tmp263544
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj261203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object261164%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp263547
                                     (cons (cons '%#ref
                                                 (cons _%$obj261203%_ '()))
                                           '()))
                                    (__tmp263545
                                     (let ((__tmp263546
                                            (lambda (_%i261247%_ _%r261248%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self261144%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i261247%_) '()))
                              (cons (cons '%#ref (cons _%$obj261203%_ '()))
                                    (cons (cdr _%i261247%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r261248%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp263546
                                        '()
                                        _%initializers261208%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp263547 __tmp263545)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp263544
                                          _%stx261140%_))))
                                    (_%__kont263017263018%_
                                     (lambda ()
                                       (let ((__tmp263548
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj261203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object261164%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj261203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args261162%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj261203%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp263548
                                          _%stx261140%_)))))
                                (let* ((_%g261210261250%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx263011263012%_))
                                              (_%__kont263015263016%_)
                                              (_%__kont263017263018%_))))
                                       (_%__match263048263049%_
                                        (lambda (_%e261217261255%_
                                                 _%hd261218261258%_
                                                 _%tl261219261260%_
                                                 _%e261220261263%_
                                                 _%hd261221261266%_
                                                 _%tl261222261268%_
                                                 _%e261223261271%_
                                                 _%hd261224261274%_
                                                 _%tl261225261276%_
                                                 _%e261226261279%_
                                                 _%hd261227261282%_
                                                 _%tl261228261284%_)
                                          (let ((_%g261214261287%_
                                                 _%tl261228261284%_)
                                                (_%g261215261288%_
                                                 _%hd261227261282%_)
                                                (_%g261216261289%_
                                                 _%hd261224261274%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g261216261289%_))
                                                (_%__kont263013263014%_
                                                 _%g261214261287%_
                                                 _%g261215261288%_
                                                 _%g261216261289%_)
                                                (_%__kont263017263018%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx263011263012%_))
                                      (let ((_%e261217261255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx263011263012%_))))
                                        (let ((_%tl261219261260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261217261255%_)))
                                              (_%hd261218261258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261217261255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd261218261258%_))
                                              (let ((_%e261220261263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd261218261258%_))))
                                                (let ((_%tl261222261268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261220261263%_)))
                                                      (_%hd261221261266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261220261263%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd261221261266%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd261221261266%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl261222261268%_))
                      (let ((_%e261223261271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl261222261268%_))))
                        (let ((_%tl261225261276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261223261271%_)))
                              (_%hd261224261274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261223261271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl261225261276%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl261219261260%_))
                                  (let ((_%e261226261279%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl261219261260%_))))
                                    (let ((_%tl261228261284%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e261226261279%_)))
                                          (_%hd261227261282%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e261226261279%_))))
                                      (_%__match263048263049%_
                                       _%e261217261255%_
                                       _%hd261218261258%_
                                       _%tl261219261260%_
                                       _%e261220261263%_
                                       _%hd261221261266%_
                                       _%tl261222261268%_
                                       _%e261223261271%_
                                       _%hd261224261274%_
                                       _%tl261225261276%_
                                       _%e261226261279%_
                                       _%hd261227261282%_
                                       _%tl261228261284%_)))
                                  (_%__kont263017263018%_))
                              (_%__kont263017263018%_))))
                      (_%__kont263017263018%_))
                  (_%__kont263017263018%_))
              (_%__kont263017263018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont263017263018%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g261210261250%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self260921%_ _%ctx260922%_ _%stx260923%_ _%args260924%_)
        (let* ((_%self260927%_ _%self260921%_)
               (_%arguments-ok?260937%_
                (let ((__method263492
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self260927%_ 'check-arguments))))
                  (if __method263492
                      (let ()
                        (declare (not safe))
                        (__method263492
                         _%self260927%_
                         _%ctx260922%_
                         _%stx260923%_
                         _%args260924%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self260927%_
                                 'check-arguments))
                        '#!void))))
               (_%g260939260949%_
                (lambda (_%g260940260946%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260940260946%_))))
               (_%g260938261013%_
                (lambda (_%g260940260952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260940260952%_))
                      (let ((_%e260942260954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260940260952%_))))
                        (let ((_%hd260943260957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260942260954%_)))
                              (_%tl260944260959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260942260954%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl260944260959%_))
                              ((lambda (_%g260941260962%_)
                                 (let* ((_%klass260975%_
                                         (let ((__tmp263549
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self260927%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx260923%_
                                            __tmp263549)))
                                        (_%field260977%_
                                         (let ((__tmp263550
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self260927%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass260975%_
                                            __tmp263550)))
                                        (_%object260979%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx260922%_
                                            _%g260941260962%_)))
                                        (_%klass260982%_ _%klass260975%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass260982%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp263551
                                              (cons (if (or _%arguments-ok?260937%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self260927%_
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
                                 _%self260927%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field260977%_ '()))
                        (cons _%object260979%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp263551
                                          _%stx260923%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass260982%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp263552
                                                  (cons (if (or _%arguments-ok?260937%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self260927%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self260927%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field260977%_ '()))
                            (cons _%object260979%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp263552
                                              _%stx260923%_))
                                           (let ((_%$e261001%_
                                                  (let ((__tmp263553
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self260927%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass260982%_
                                                     __tmp263553))))
                                             (if _%$e261001%_
                                                 ((lambda (_%klass261004%_)
                                                    (let ((__tmp263554
                                                           (cons (if (or _%arguments-ok?260937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self260927%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self260927%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field260977%_ '()))
                                     (cons _%object260979%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp263554 _%stx260923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e261001%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self260927%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp263555
                                                            (let ((_%$obj261010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp263556
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp263556))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj261010%_ '())
                                              (cons _%object260979%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass260982%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj261010%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self260927%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field260977%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj261010%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?260937%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj261010%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self260927%_
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
                                                             _%self260927%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj261010%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self260927%_
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
               (gxc#xform-wrap-source __tmp263555 _%stx260923%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp263557
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object260979%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self260927%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp263557 _%stx260923%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd260943260957%_)
                              (_%g260939260949%_ _%g260940260952%_))))
                      (_%g260939260949%_ _%g260940260952%_)))))
          (_%g260938261013%_ _%args260924%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass262779 __method-table262780)
        (let ((__check-arguments262781
               (let ((__tmp263558
                      (lambda ()
                        (let ((__method262782
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table262780
                                  'check-arguments
                                  '#f))))
                          (if __method262782
                              __method262782
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp263558)))
              (__slot262783
               (let ((__slot262784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass262779 'slot))))
                 (if __slot262784
                     __slot262784
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self260921%_ _%ctx260922%_ _%stx260923%_ _%args260924%_)
            (let* ((_%self260927%_ _%self260921%_)
                   (_%arguments-ok?260937%_
                    ((force __check-arguments262781)
                     _%self260927%_
                     _%ctx260922%_
                     _%stx260923%_
                     _%args260924%_))
                   (_%g260939260949%_
                    (lambda (_%g260940260946%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g260940260946%_))))
                   (_%g260938261013%_
                    (lambda (_%g260940260952%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g260940260952%_))
                          (let ((_%e260942260954%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g260940260952%_))))
                            (let ((_%hd260943260957%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260942260954%_)))
                                  (_%tl260944260959%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260942260954%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260944260959%_))
                                  ((lambda (_%g260941260962%_)
                                     (let* ((_%klass260975%_
                                             (let ((__tmp263559
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self260927%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx260923%_
                                                __tmp263559)))
                                            (_%field260977%_
                                             (let ((__tmp263560
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self260927%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass260975%_
                                                __tmp263560)))
                                            (_%object260979%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx260922%_
                                                _%g260941260962%_)))
                                            (_%klass260982%_ _%klass260975%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass260982%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp263561
                                                  (cons (if (or _%arguments-ok?260937%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self260927%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self260927%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field260977%_ '()))
                            (cons _%object260979%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp263561
                                              _%stx260923%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass260982%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp263562
                                                      (cons (if (or _%arguments-ok?260937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self260927%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self260927%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field260977%_ '()))
                                (cons _%object260979%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp263562
                                                  _%stx260923%_))
                                               (let ((_%$e261001%_
                                                      (let ((__tmp263563
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self260927%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass260982%_ __tmp263563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e261001%_
                                                     ((lambda (_%klass261004%_)
                                                        (let ((__tmp263564
                                                               (cons (if (or _%arguments-ok?260937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self260927%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self260927%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field260977%_ '()))
                                         (cons _%object260979%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp263564 _%stx260923%_)))
              _%$e261001%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self260927%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp263565
                                                                (let ((_%$obj261010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp263566
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp263566))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj261010%_ '())
                                                  (cons _%object260979%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass260982%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj261010%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self260927%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field260977%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj261010%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?260937%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj261010%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self260927%_
                               __slot262783
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
                        (##unchecked-structure-ref _%self260927%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj261010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self260927%_
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
                   (gxc#xform-wrap-source __tmp263565 _%stx260923%_))
                 (let ((__tmp263567
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object260979%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self260927%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp263567 _%stx260923%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd260943260957%_)
                                  (_%g260939260949%_ _%g260940260952%_))))
                          (_%g260939260949%_ _%g260940260952%_)))))
              (_%g260938261013%_ _%args260924%_))))))
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
      (lambda (_%self260685%_ _%ctx260686%_ _%stx260687%_ _%args260688%_)
        (let* ((_%self260691%_ _%self260685%_)
               (_%arguments-ok?260701%_
                (let ((__method263493
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self260691%_ 'check-arguments))))
                  (if __method263493
                      (let ()
                        (declare (not safe))
                        (__method263493
                         _%self260691%_
                         _%ctx260686%_
                         _%stx260687%_
                         _%args260688%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self260691%_
                                 'check-arguments))
                        '#!void))))
               (_%g260703260717%_
                (lambda (_%g260704260714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260704260714%_))))
               (_%g260702260796%_
                (lambda (_%g260704260720%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260704260720%_))
                      (let ((_%e260707260722%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260704260720%_))))
                        (let ((_%hd260708260725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260707260722%_)))
                              (_%tl260709260727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260707260722%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260709260727%_))
                              (let ((_%e260710260730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl260709260727%_))))
                                (let ((_%hd260711260733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260710260730%_)))
                                      (_%tl260712260735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260710260730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260712260735%_))
                                      ((lambda (_%g260705260738%_
                                                _%g260706260739%_)
                                         (let* ((_%klass260755%_
                                                 (let ((__tmp263568
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self260691%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx260687%_
                                                    __tmp263568)))
                                                (_%field260757%_
                                                 (let ((__tmp263569
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self260691%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass260755%_
                                                    __tmp263569)))
                                                (_%object260759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx260686%_
                                                    _%g260706260739%_)))
                                                (_%value260761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx260686%_
                                                    _%g260705260738%_)))
                                                (_%klass260764%_
                                                 _%klass260755%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass260764%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp263570
                                                      (cons (if (or _%arguments-ok?260701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self260691%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self260691%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field260757%_ '()))
                                (cons _%object260759%_
                                      (cons _%value260761%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp263570
                                                  _%stx260687%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass260764%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp263571
                                                          (cons (if (or _%arguments-ok?260701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self260691%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self260691%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field260757%_ '()))
                                    (cons _%object260759%_
                                          (cons _%value260761%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp263571
                                                      _%stx260687%_))
                                                   (let ((_%$e260784%_
                                                          (let ((__tmp263572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self260691%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass260764%_
                     __tmp263572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e260784%_
                                                         ((lambda (_%klass260787%_)
                                                            (let ((__tmp263573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?260701%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self260691%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self260691%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field260757%_ '()))
                                             (cons _%object260759%_
                                                   (cons _%value260761%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263573 _%stx260687%_)))
                  _%$e260784%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self260691%_ '4 '#f '#f))
                     (let ((__tmp263574
                            (let ((_%$obj260793%_
                                   (let ((__tmp263575
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp263575))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj260793%_ '())
                                                      (cons _%object260759%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass260764%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj260793%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self260691%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field260757%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj260793%_
                                                              '()))
                                                  (cons _%value260761%_
                                                        '())))))
                          (cons (if _%arguments-ok?260701%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj260793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self260691%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value260761%_ '())))))
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
                             _%self260691%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj260793%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self260691%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value260761%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp263574 _%stx260687%_))
                     (let ((__tmp263576
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object260759%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self260691%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value260761%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp263576
                        _%stx260687%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd260711260733%_
                                       _%hd260708260725%_)
                                      (_%g260703260717%_ _%g260704260720%_))))
                              (_%g260703260717%_ _%g260704260720%_))))
                      (_%g260703260717%_ _%g260704260720%_)))))
          (_%g260702260796%_ _%args260688%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass262785 __method-table262786)
        (let ((__check-arguments262787
               (let ((__tmp263577
                      (lambda ()
                        (let ((__method262788
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table262786
                                  'check-arguments
                                  '#f))))
                          (if __method262788
                              __method262788
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp263577))))
          (lambda (_%self260685%_ _%ctx260686%_ _%stx260687%_ _%args260688%_)
            (let* ((_%self260691%_ _%self260685%_)
                   (_%arguments-ok?260701%_
                    ((force __check-arguments262787)
                     _%self260691%_
                     _%ctx260686%_
                     _%stx260687%_
                     _%args260688%_))
                   (_%g260703260717%_
                    (lambda (_%g260704260714%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g260704260714%_))))
                   (_%g260702260796%_
                    (lambda (_%g260704260720%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g260704260720%_))
                          (let ((_%e260707260722%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g260704260720%_))))
                            (let ((_%hd260708260725%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260707260722%_)))
                                  (_%tl260709260727%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260707260722%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260709260727%_))
                                  (let ((_%e260710260730%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl260709260727%_))))
                                    (let ((_%hd260711260733%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260710260730%_)))
                                          (_%tl260712260735%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260710260730%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl260712260735%_))
                                          ((lambda (_%g260705260738%_
                                                    _%g260706260739%_)
                                             (let* ((_%klass260755%_
                                                     (let ((__tmp263578
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self260691%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx260687%_
                                                        __tmp263578)))
                                                    (_%field260757%_
                                                     (let ((__tmp263579
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self260691%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass260755%_
                                                        __tmp263579)))
                                                    (_%object260759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx260686%_
                                                        _%g260706260739%_)))
                                                    (_%value260761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx260686%_
                                                        _%g260705260738%_)))
                                                    (_%klass260764%_
                                                     _%klass260755%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass260764%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp263580
                                                          (cons (if (or _%arguments-ok?260701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self260691%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self260691%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field260757%_ '()))
                                    (cons _%object260759%_
                                          (cons _%value260761%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp263580
                                                      _%stx260687%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass260764%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp263581
                                                              (cons (if (or _%arguments-ok?260701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self260691%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self260691%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field260757%_ '()))
                                        (cons _%object260759%_
                                              (cons _%value260761%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp263581 _%stx260687%_))
               (let ((_%$e260784%_
                      (let ((__tmp263582
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self260691%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass260764%_
                         __tmp263582))))
                 (if _%$e260784%_
                     ((lambda (_%klass260787%_)
                        (let ((__tmp263583
                               (cons (if (or _%arguments-ok?260701%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self260691%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self260691%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field260757%_
                                                             '()))
                                                 (cons _%object260759%_
                                                       (cons _%value260761%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp263583 _%stx260687%_)))
                      _%$e260784%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self260691%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp263584
                                (let ((_%$obj260793%_
                                       (let ((__tmp263585
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp263585))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj260793%_
                                                                '())
                                                          (cons _%object260759%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass260764%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj260793%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self260691%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field260757%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj260793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value260761%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?260701%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj260793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self260691%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value260761%_ '())))))
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
                                 _%self260691%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj260793%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self260691%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value260761%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp263584 _%stx260687%_))
                         (let ((__tmp263586
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object260759%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self260691%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value260761%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp263586
                            _%stx260687%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd260711260733%_
                                           _%hd260708260725%_)
                                          (_%g260703260717%_
                                           _%g260704260720%_))))
                                  (_%g260703260717%_ _%g260704260720%_))))
                          (_%g260703260717%_ _%g260704260720%_)))))
              (_%g260702260796%_ _%args260688%_))))))
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
      (lambda (_%self260501%_ _%ctx260502%_ _%stx260503%_ _%args260504%_)
        (let* ((_%self260507%_ _%self260501%_)
               (_%self260516260526%_ _%self260507%_)
               (_%E260518260529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self260516260526%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K260519260539%_
                (lambda (_%inline260532%_ _%dispatch260533%_ _%arity260534%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self260507%_
                         _%args260504%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx260503%_
                         _%arity260534%_)))
                  (if _%inline260532%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp263587 (_%inline260532%_ _%stx260503%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp263587
                           _%stx260503%_
                           _%ctx260502%_)))
                      (if (and _%dispatch260533%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch260533%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch260533%_))
                            (let ((__tmp263588
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch260533%_
                                                           '()))
                                               _%args260504%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp263588
                               _%stx260503%_
                               _%ctx260502%_)))
                          (gxc#!procedure::optimize-call
                           _%self260507%_
                           _%ctx260502%_
                           _%stx260503%_
                           _%args260504%_)))))
               (_%e260520260542%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260516260526%_ '1 '#f '#f)))
               (_%e260521260545%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260516260526%_ '2 '#f '#f)))
               (_%e260522260548%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260516260526%_ '3 '#f '#f)))
               (_%arity260551%_ _%e260522260548%_)
               (_%e260523260553%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260516260526%_ '4 '#f '#f)))
               (_%dispatch260556%_ _%e260523260553%_)
               (_%e260524260558%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260516260526%_ '5 '#f '#f)))
               (_%inline260561%_ _%e260524260558%_))
          (_%K260519260539%_
           _%inline260561%_
           _%dispatch260556%_
           _%arity260551%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self260353%_ _%ctx260354%_ _%stx260355%_ _%args260356%_)
        (let* ((_%self260359%_ _%self260353%_)
               (_%$e260373%_
                (let ((__tmp263590
                       (lambda (_%g260368260370%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g260368260370%_
                            _%args260356%_))))
                      (__tmp263589
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self260359%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp263590 __tmp263589))))
          (if _%$e260373%_
              ((lambda (_%clause260376%_)
                 (let ((__method263494
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause260376%_ 'optimize-call))))
                   (if __method263494
                       (let ()
                         (declare (not safe))
                         (__method263494
                          _%clause260376%_
                          _%ctx260354%_
                          _%stx260355%_
                          _%args260356%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause260376%_
                                  'optimize-call))
                         '#!void))))
               _%$e260373%_)
              (let ((__tmp263591
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self260359%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx260355%_
                 __tmp263591))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self260094%_ _%ctx260095%_ _%stx260096%_ _%args260097%_)
        (let* ((_%self260100%_ _%self260094%_)
               (_%self260109260118%_ _%self260100%_)
               (_%E260111260121%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self260109260118%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K260112260212%_
                (lambda (_%dispatch260124%_ _%table260125%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch260124%_))
                      (let* ((_%g260126260136%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch260124%_)))
                             (_%else260128260144%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch260124%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx260095%_
                                   _%stx260096%_))))
                             (_%K260130260193%_
                              (lambda (_%main260147%_ _%keys260148%_)
                                (let ((_g263592_
                                       (gxc#!kw-lambda-split-args
                                        _%stx260096%_
                                        _%args260097%_)))
                                  (begin
                                    (let ((_g263593_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g263592_)
                                                 (##values-length _g263592_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g263593_ 2)))
                                          (error "Context expects 2 values"
                                                 _g263593_)))
                                    (let ((_%pargs260150%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g263592_ 0)))
                                          (_%kwargs260151%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g263592_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main260147%_))
                                        (if _%table260125%_
                                            (let ((_%xargs260159%_
                                                   (map (lambda (_%key260153%_)
                                                          (let ((_%$e260155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key260153%_ _%kwargs260151%_))))
                    (if _%$e260155%_ _%$e260155%_ '(%#ref absent-value))))
                _%keys260148%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw260161%_)
                                                 (if (memq (car _%kw260161%_)
                                                           _%keys260148%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx260096%_
                                                        _%keys260148%_
                                                        _%kw260161%_))))
                                               _%kwargs260151%_)
                                              (let ((__tmp263594
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main260147%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs260150%_
                                  _%xargs260159%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp263594
                                                 _%stx260096%_
                                                 _%ctx260095%_)))
                                            (let* ((_%kwt260163%_
                                                    (let ((__tmp263595
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp263595)))
                                                   (_%kwvars260167%_
                                                    (map (lambda (_%_260165%_)
                                                           (let ((__tmp263596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp263596)))
                 _%kwargs260151%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind260172%_
                                                    (map (lambda (_%kw260169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260170%_)
                   (cons (cons _%kwvar260170%_ '())
                         (cons (cdr _%kw260169%_) '())))
                 _%kwargs260151%_
                 _%kwvars260167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset260177%_
                                                    (map (lambda (_%kw260174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260175%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt260163%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw260174%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar260175%_
                                                             '()))
                                                 '()))))))
                 _%kwargs260151%_
                 _%kwvars260167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs260182%_
                                                    (map (lambda (_%kw260179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260180%_)
                   (cons (car _%kw260179%_)
                         (cons '%#ref (cons _%kwvar260180%_ '()))))
                 _%kwargs260151%_
                 _%kwvars260167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs260190%_
                                                    (map (lambda (_%key260184%_)
                                                           (let ((_%$e260186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key260184%_ _%xkwargs260182%_))))
                     (if _%$e260186%_ _%$e260186%_ '(%#ref absent-value))))
                 _%keys260148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp263597
                                                    (cons '%#let-values
                                                          (cons _%kwbind260172%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt260163%_ '())
                                                      (cons (let ((__tmp263598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs260151%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263598 _%stx260096%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp263599
                                                             (cons (let ((__tmp263600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main260147%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt260163%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs260150%_
                                                       _%xargs260190%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp263600 _%stx260096%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp263599 _%kwset260177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp263597
                                               _%stx260096%_
                                               _%ctx260095%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g260126260136%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e260131260196%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g260126260136%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e260132260199%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g260126260136%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e260133260202%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g260126260136%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys260205%_ _%e260133260202%_)
                                   (_%e260134260207%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g260126260136%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main260210%_ _%e260134260207%_))
                              (_%K260130260193%_
                               _%main260210%_
                               _%keys260205%_))
                            (_%else260128260144%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx260095%_ _%stx260096%_)))))
               (_%e260113260215%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260109260118%_ '1 '#f '#f)))
               (_%e260114260218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260109260118%_ '2 '#f '#f)))
               (_%e260115260221%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260109260118%_ '3 '#f '#f)))
               (_%table260224%_ _%e260115260221%_)
               (_%e260116260226%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260109260118%_ '4 '#f '#f)))
               (_%dispatch260229%_ _%e260116260226%_))
          (_%K260112260212%_ _%dispatch260229%_ _%table260224%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx259707%_ _%args259708%_)
        (let _%lp259710%_ ((_%rest259712%_ _%args259708%_)
                           (_%pargs259713%_ '())
                           (_%kwargs259714%_ '()))
          (let* ((_%__stx263053263054%_ _%rest259712%_)
                 (_%g259720259772%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx263053263054%_)))))
            (let ((_%__kont263055263056%_
                   (lambda (_%g259722259951%_ _%g259723259952%_)
                     (_%lp259710%_
                      _%g259722259951%_
                      (cons _%g259723259952%_ _%pargs259713%_)
                      _%kwargs259714%_)))
                  (_%__kont263057263058%_
                   (lambda (_%g259737259897%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g259737259897%_
                                _%pargs259713%_))
                             (reverse _%kwargs259714%_))))
                  (_%__kont263059263060%_
                   (lambda (_%g259748259844%_
                            _%g259749259845%_
                            _%g259750259846%_)
                     (let ((_%kw259863%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g259750259846%_))))
                       (if (assq _%kw259863%_ _%kwargs259714%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx259707%_
                              _%kw259863%_))
                           (_%lp259710%_
                            _%g259748259844%_
                            _%pargs259713%_
                            (cons (cons _%kw259863%_ _%g259749259845%_)
                                  _%kwargs259714%_))))))
                  (_%__kont263061263062%_
                   (lambda (_%g259763259792%_ _%g259764259793%_)
                     (_%lp259710%_
                      _%g259763259792%_
                      (cons _%g259764259793%_ _%pargs259713%_)
                      _%kwargs259714%_)))
                  (_%__kont263063263064%_
                   (lambda ()
                     (values (reverse _%pargs259713%_)
                             (reverse _%kwargs259714%_)))))
              (let ((_%__match263160263161%_
                     (lambda (_%e259751259812%_
                              _%hd259752259815%_
                              _%tl259753259817%_
                              _%e259754259820%_
                              _%hd259755259823%_
                              _%tl259756259825%_
                              _%e259757259828%_
                              _%hd259758259831%_
                              _%tl259759259833%_
                              _%e259760259836%_
                              _%hd259761259839%_
                              _%tl259762259841%_)
                       (let ((_%g259748259844%_ _%tl259762259841%_)
                             (_%g259749259845%_ _%hd259761259839%_)
                             (_%g259750259846%_ _%hd259758259831%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g259750259846%_))
                             (_%__kont263059263060%_
                              _%g259748259844%_
                              _%g259749259845%_
                              _%g259750259846%_)
                             (_%__kont263061263062%_
                              _%tl259753259817%_
                              _%hd259752259815%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx263053263054%_))
                    (let ((_%e259724259916%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx263053263054%_))))
                      (let ((_%tl259726259921%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259724259916%_)))
                            (_%hd259725259919%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259724259916%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd259725259919%_))
                            (let ((_%e259727259924%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd259725259919%_))))
                              (let ((_%tl259729259929%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259727259924%_)))
                                    (_%hd259728259927%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259727259924%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd259728259927%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd259728259927%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259729259929%_))
                                            (let ((_%e259730259932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl259729259929%_))))
                                              (let ((_%tl259732259937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259730259932%_)))
                                                    (_%hd259731259935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259730259932%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd259731259935%_))
                                                    (let ((_%e259733259940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd259731259935%_))))
                                                      (if (equal? _%e259733259940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl259732259937%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259726259921%_))
                          (let ((_%e259734259943%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl259726259921%_))))
                            (let ((_%tl259736259948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259734259943%_)))
                                  (_%hd259735259946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259734259943%_))))
                              (_%__kont263055263056%_
                               _%tl259736259948%_
                               _%hd259735259946%_)))
                          (_%__kont263061263062%_
                           _%tl259726259921%_
                           _%hd259725259919%_))
                      (_%__kont263061263062%_
                       _%tl259726259921%_
                       _%hd259725259919%_))
                  (if (equal? _%e259733259940%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259732259937%_))
                          (_%__kont263057263058%_ _%tl259726259921%_)
                          (_%__kont263061263062%_
                           _%tl259726259921%_
                           _%hd259725259919%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259732259937%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259726259921%_))
                              (let ((_%e259760259836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl259726259921%_))))
                                (let ((_%tl259762259841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259760259836%_)))
                                      (_%hd259761259839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259760259836%_))))
                                  (_%__match263160263161%_
                                   _%e259724259916%_
                                   _%hd259725259919%_
                                   _%tl259726259921%_
                                   _%e259727259924%_
                                   _%hd259728259927%_
                                   _%tl259729259929%_
                                   _%e259730259932%_
                                   _%hd259731259935%_
                                   _%tl259732259937%_
                                   _%e259760259836%_
                                   _%hd259761259839%_
                                   _%tl259762259841%_)))
                              (_%__kont263061263062%_
                               _%tl259726259921%_
                               _%hd259725259919%_))
                          (_%__kont263061263062%_
                           _%tl259726259921%_
                           _%hd259725259919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259732259937%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl259726259921%_))
                                                            (let ((_%e259760259836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl259726259921%_))))
                      (let ((_%tl259762259841%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259760259836%_)))
                            (_%hd259761259839%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259760259836%_))))
                        (_%__match263160263161%_
                         _%e259724259916%_
                         _%hd259725259919%_
                         _%tl259726259921%_
                         _%e259727259924%_
                         _%hd259728259927%_
                         _%tl259729259929%_
                         _%e259730259932%_
                         _%hd259731259935%_
                         _%tl259732259937%_
                         _%e259760259836%_
                         _%hd259761259839%_
                         _%tl259762259841%_)))
                    (_%__kont263061263062%_
                     _%tl259726259921%_
                     _%hd259725259919%_))
                (_%__kont263061263062%_
                 _%tl259726259921%_
                 _%hd259725259919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont263061263062%_
                                             _%tl259726259921%_
                                             _%hd259725259919%_))
                                        (_%__kont263061263062%_
                                         _%tl259726259921%_
                                         _%hd259725259919%_))
                                    (_%__kont263061263062%_
                                     _%tl259726259921%_
                                     _%hd259725259919%_))))
                            (_%__kont263061263062%_
                             _%tl259726259921%_
                             _%hd259725259919%_))))
                    (_%__kont263063263064%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self259691%_ _%ctx259692%_ _%stx259693%_ _%args259694%_)
        (let ((_%self259697%_ _%self259691%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx259692%_ _%stx259693%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self259381%_ _%stx259382%_)
        (let* ((_%__stx263169263170%_ _%stx259382%_)
               (_%g259385259425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263169263170%_)))))
          (let ((_%__kont263171263172%_
                 (lambda (_%g259387259529%_ _%g259388259530%_)
                   (let ((_%$e259557%_
                          (member 'return:
                                  (let ((__tmp263601
                                         (lambda (_%g259549259552%_
                                                  _%g259550259554%_)
                                           (cons _%g259549259552%_
                                                 _%g259550259554%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp263601
                                     '()
                                     _%g259388259530%_))
                                  gx#stx-eq?)))
                     (if _%$e259557%_
                         ((lambda (_%tail259560%_)
                            (let ((_%type259562%_
                                   (let ((__tmp263602
                                          (let ((__tmp263603
                                                 (cadr _%tail259560%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp263603))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx259382%_
                                      __tmp263602))))
                              (gxc#check-return-type!
                               _%stx259382%_
                               _%g259387259529%_
                               _%type259562%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self259381%_
                                 _%g259387259529%_))))
                          _%$e259557%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self259381%_
                            _%g259387259529%_))))))
                (_%__kont263175263176%_
                 (lambda (_%g259410259454%_ _%g259411259455%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self259381%_ _%g259410259454%_)))))
            (let ((_%__match263206263207%_
                   (lambda (_%e259389259475%_
                            _%hd259390259478%_
                            _%tl259391259480%_
                            _%e259392259483%_
                            _%hd259393259486%_
                            _%tl259394259488%_
                            _%e259395259491%_
                            _%hd259396259494%_
                            _%tl259397259496%_
                            _%__splice263173263174%_
                            _%target259398259499%_
                            _%tl259400259501%_)
                     (letrec ((_%loop259401259504%_
                               (lambda (_%hd259399259507%_
                                        _%signature259405259509%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd259399259507%_))
                                     (let ((_%e259402259511%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd259399259507%_))))
                                       (let ((_%lp-tl259404259516%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e259402259511%_)))
                                             (_%lp-hd259403259514%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e259402259511%_))))
                                         (_%loop259401259504%_
                                          _%lp-tl259404259516%_
                                          (cons _%lp-hd259403259514%_
                                                _%signature259405259509%_))))
                                     (let ((_%signature259406259519%_
                                            (reverse _%signature259405259509%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl259394259488%_))
                                           (let ((_%e259407259521%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl259394259488%_))))
                                             (let ((_%tl259409259526%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e259407259521%_)))
                                                   (_%hd259408259524%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e259407259521%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl259409259526%_))
                                                   (_%__kont263171263172%_
                                                    _%hd259408259524%_
                                                    _%signature259406259519%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g259385259425%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g259385259425%_))))))))
                       (_%loop259401259504%_ _%target259398259499%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263169263170%_))
                  (let ((_%e259389259475%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx263169263170%_))))
                    (let ((_%tl259391259480%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259389259475%_)))
                          (_%hd259390259478%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259389259475%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259391259480%_))
                          (let ((_%e259392259483%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl259391259480%_))))
                            (let ((_%tl259394259488%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259392259483%_)))
                                  (_%hd259393259486%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259392259483%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd259393259486%_))
                                  (let ((_%e259395259491%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd259393259486%_))))
                                    (let ((_%tl259397259496%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259395259491%_)))
                                          (_%hd259396259494%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259395259491%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd259396259494%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd259396259494%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl259397259496%_))
                                                  (let ((_%__splice263173263174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl259397259496%_
                                                            '0))))
                                                    (let ((_%tl259400259501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice263173263174%_
                                                              '1)))
                                                          (_%target259398259499%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice263173263174%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl259400259501%_))
                                                          (_%__match263206263207%_
                                                           _%e259389259475%_
                                                           _%hd259390259478%_
                                                           _%tl259391259480%_
                                                           _%e259392259483%_
                                                           _%hd259393259486%_
                                                           _%tl259394259488%_
                                                           _%e259395259491%_
                                                           _%hd259396259494%_
                                                           _%tl259397259496%_
                                                           _%__splice263173263174%_
                                                           _%target259398259499%_
                                                           _%tl259400259501%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl259394259488%_))
                      (let ((_%e259418259446%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl259394259488%_))))
                        (let ((_%tl259420259451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259418259446%_)))
                              (_%hd259419259449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259418259446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl259420259451%_))
                              (_%__kont263175263176%_
                               _%hd259419259449%_
                               _%hd259393259486%_)
                              (let ()
                                (declare (not safe))
                                (_%g259385259425%_)))))
                      (let () (declare (not safe)) (_%g259385259425%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl259394259488%_))
                                                      (let ((_%e259418259446%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl259394259488%_))))
                (let ((_%tl259420259451%_
                       (let () (declare (not safe)) (##cdr _%e259418259446%_)))
                      (_%hd259419259449%_
                       (let ()
                         (declare (not safe))
                         (##car _%e259418259446%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl259420259451%_))
                      (_%__kont263175263176%_
                       _%hd259419259449%_
                       _%hd259393259486%_)
                      (let () (declare (not safe)) (_%g259385259425%_)))))
              (let () (declare (not safe)) (_%g259385259425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259394259488%_))
                                                  (let ((_%e259418259446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl259394259488%_))))
                                                    (let ((_%tl259420259451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259418259446%_)))
                                                          (_%hd259419259449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259418259446%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl259420259451%_))
                                                          (_%__kont263175263176%_
                                                           _%hd259419259449%_
                                                           _%hd259393259486%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g259385259425%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g259385259425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259394259488%_))
                                              (let ((_%e259418259446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl259394259488%_))))
                                                (let ((_%tl259420259451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259418259446%_)))
                                                      (_%hd259419259449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259418259446%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259420259451%_))
                                                      (_%__kont263175263176%_
                                                       _%hd259419259449%_
                                                       _%hd259393259486%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259385259425%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g259385259425%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259394259488%_))
                                      (let ((_%e259418259446%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl259394259488%_))))
                                        (let ((_%tl259420259451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259418259446%_)))
                                              (_%hd259419259449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259418259446%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259420259451%_))
                                              (_%__kont263175263176%_
                                               _%hd259419259449%_
                                               _%hd259393259486%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g259385259425%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g259385259425%_))))))
                          (let () (declare (not safe)) (_%g259385259425%_)))))
                  (let () (declare (not safe)) (_%g259385259425%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx259356%_ _%expr259357%_ _%type259358%_)
        (let ((_%$e259360%_ (not _%type259358%_)))
          (if _%$e259360%_
              _%$e259360%_
              (let ((_%$e259363%_
                     (eq? (##structure-ref _%type259358%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e259363%_
                    _%$e259363%_
                    (let ((_%$e259366%_
                           (eq? (##structure-ref
                                 _%type259358%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e259366%_
                          _%$e259366%_
                          (let ((_%expr-type259370%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr259357%_))))
                            (if (not _%expr-type259370%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx259356%_
                                   _%type259358%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type259370%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx259356%_
                                       _%type259358%_
                                       _%expr-type259370%_))
                                    (let ((_%$e259374%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type259370%_
                                              'gxc#!abort::t))))
                                      (if _%$e259374%_
                                          _%$e259374%_
                                          (let ((_%$e259377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type259370%_
                                                    _%type259358%_))))
                                            (if _%$e259377%_
                                                _%$e259377%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx259356%_
                                                   _%type259358%_
                                                   _%expr-type259370%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self258782%_ _%stx258783%_)
        (let* ((_%__stx263251263252%_ _%stx258783%_)
               (_%g258788258898%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263251263252%_)))))
          (let ((_%__kont263253263254%_
                 (lambda (_%g258790259330%_
                          _%g258791259331%_
                          _%g258792259332%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g258792259332%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self258782%_ _%g258791259331%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self258782%_
                          _%g258790259330%_)))))
                (_%__kont263255263256%_
                 (lambda (_%g258811259156%_
                          _%g258812259157%_
                          _%g258813259158%_
                          _%g258814259159%_)
                   (let ((_%$e259191%_
                          (let ((__tmp263604
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g258814259159%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp263604))))
                     (if _%$e259191%_
                         ((lambda (_%pred-type259194%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type259194%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type259194%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test259199%_
                                        (let ((__tmp263605
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g258814259159%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g258813259158%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp263605
                                           _%stx258783%_
                                           _%self258782%_)))
                                       (_%K259203%_
                                        (let ((__tmp263606
                                               (lambda ()
                                                 (let ((__tmp263609
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self258782%_
                                                             _%g258812259157%_))))
                                                       (__tmp263607
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g258813259158%_))
                            (let ((__tmp263608
                                   (##structure-ref
                                    _%pred-type259194%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx258783%_
                               __tmp263608)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp263609
                                                    gxc#current-compile-path-type
                                                    __tmp263607)))))
                                          (declare (not safe))
                                          (__make-promise __tmp263606)))
                                       (_%E259206%_
                                        (let ((__tmp263610
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self258782%_
                                                    _%g258811259156%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp263610)))
                                       (_%__stx263229263230%_ _%test259199%_)
                                       (_%g259210259224%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx263229263230%_)))))
                                  (let ((_%__kont263231263232%_
                                         (lambda (_%g259212259252%_
                                                  _%g259213259253%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g259212259252%_))
                                               (force _%K259203%_)
                                               (force _%E259206%_))))
                                        (_%__kont263233263234%_
                                         (lambda ()
                                           (let ((__tmp263611
                                                  (cons '%#if
                                                        (cons _%test259199%_
                                                              (cons (force _%K259203%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E259206%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp263611
                                              _%stx258783%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx263229263230%_))
                                        (let ((_%e259214259236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx263229263230%_))))
                                          (let ((_%tl259216259241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e259214259236%_)))
                                                (_%hd259215259239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e259214259236%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259216259241%_))
                                                (let ((_%e259217259244%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259216259241%_))))
                                                  (let ((_%tl259219259249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259217259244%_)))
                                                        (_%hd259218259247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259217259244%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259219259249%_))
                                                        (_%__kont263231263232%_
                                                         _%hd259218259247%_
                                                         _%hd259215259239%_)
                                                        (_%__kont263233263234%_))))
                                                (_%__kont263233263234%_))))
                                        (_%__kont263233263234%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self258782%_
                                   _%stx258783%_))))
                          _%$e259191%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self258782%_
                            _%stx258783%_))))))
                (_%__kont263257263258%_
                 (lambda (_%g258848259032%_
                          _%g258849259033%_
                          _%g258850259034%_
                          _%g258851259035%_)
                   (gxc#optimize-if%
                    _%self258782%_
                    (let ((__tmp263612
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g258850259034%_
                                       (cons _%g258848259032%_
                                             (cons _%g258849259033%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263612 _%stx258783%_)))))
                (_%__kont263259263260%_
                 (lambda (_%g258879258935%_
                          _%g258880258936%_
                          _%g258881258937%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self258782%_ _%stx258783%_)))))
            (let ((_%__match263458263459%_
                   (lambda (_%e258852258960%_
                            _%hd258853258963%_
                            _%tl258854258965%_
                            _%e258855258968%_
                            _%hd258856258971%_
                            _%tl258857258973%_
                            _%e258858258976%_
                            _%hd258859258979%_
                            _%tl258860258981%_
                            _%e258861258984%_
                            _%hd258862258987%_
                            _%tl258863258989%_
                            _%e258864258992%_
                            _%hd258865258995%_
                            _%tl258866258997%_
                            _%e258867259000%_
                            _%hd258868259003%_
                            _%tl258869259005%_
                            _%e258870259008%_
                            _%hd258871259011%_
                            _%tl258872259013%_
                            _%e258873259016%_
                            _%hd258874259019%_
                            _%tl258875259021%_
                            _%e258876259024%_
                            _%hd258877259027%_
                            _%tl258878259029%_)
                     (let ((_%g258848259032%_ _%hd258877259027%_)
                           (_%g258849259033%_ _%hd258874259019%_)
                           (_%g258850259034%_ _%hd258871259011%_)
                           (_%g258851259035%_ _%hd258868259003%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g258851259035%_ 'not))
                           (_%__kont263257263258%_
                            _%g258848259032%_
                            _%g258849259033%_
                            _%g258850259034%_
                            _%g258851259035%_)
                           (_%__kont263259263260%_
                            _%hd258877259027%_
                            _%hd258874259019%_
                            _%hd258856258971%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263251263252%_))
                  (let ((_%e258793259282%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx263251263252%_))))
                    (let ((_%tl258795259287%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258793259282%_)))
                          (_%hd258794259285%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258793259282%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258795259287%_))
                          (let ((_%e258796259290%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl258795259287%_))))
                            (let ((_%tl258798259295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258796259290%_)))
                                  (_%hd258797259293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258796259290%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd258797259293%_))
                                  (let ((_%e258799259298%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd258797259293%_))))
                                    (let ((_%tl258801259303%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258799259298%_)))
                                          (_%hd258800259301%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258799259298%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd258800259301%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd258800259301%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258801259303%_))
                                                  (let ((_%e258802259306%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258801259303%_))))
                                                    (let ((_%tl258804259311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258802259306%_)))
                                                          (_%hd258803259309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258802259306%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl258804259311%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl258798259295%_))
                      (let ((_%e258805259314%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl258798259295%_))))
                        (let ((_%tl258807259319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258805259314%_)))
                              (_%hd258806259317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258805259314%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258807259319%_))
                              (let ((_%e258808259322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl258807259319%_))))
                                (let ((_%tl258810259327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258808259322%_)))
                                      (_%hd258809259325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258808259322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258810259327%_))
                                      (_%__kont263253263254%_
                                       _%hd258809259325%_
                                       _%hd258806259317%_
                                       _%hd258803259309%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g258788258898%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g258788258898%_)))))
                      (let () (declare (not safe)) (_%g258788258898%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258798259295%_))
                      (let ((_%e258888258919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl258798259295%_))))
                        (let ((_%tl258890258924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258888258919%_)))
                              (_%hd258889258922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258888258919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258890258924%_))
                              (let ((_%e258891258927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl258890258924%_))))
                                (let ((_%tl258893258932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258891258927%_)))
                                      (_%hd258892258930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258891258927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258893258932%_))
                                      (_%__kont263259263260%_
                                       _%hd258892258930%_
                                       _%hd258889258922%_
                                       _%hd258797259293%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g258788258898%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g258788258898%_)))))
                      (let () (declare (not safe)) (_%g258788258898%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258798259295%_))
                                                      (let ((_%e258888258919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl258798259295%_))))
                (let ((_%tl258890258924%_
                       (let () (declare (not safe)) (##cdr _%e258888258919%_)))
                      (_%hd258889258922%_
                       (let ()
                         (declare (not safe))
                         (##car _%e258888258919%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258890258924%_))
                      (let ((_%e258891258927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl258890258924%_))))
                        (let ((_%tl258893258932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258891258927%_)))
                              (_%hd258892258930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258891258927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl258893258932%_))
                              (_%__kont263259263260%_
                               _%hd258892258930%_
                               _%hd258889258922%_
                               _%hd258797259293%_)
                              (let ()
                                (declare (not safe))
                                (_%g258788258898%_)))))
                      (let () (declare (not safe)) (_%g258788258898%_)))))
              (let () (declare (not safe)) (_%g258788258898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd258800259301%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258801259303%_))
                                                      (let ((_%e258824259092%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl258801259303%_))))
                (let ((_%tl258826259097%_
                       (let () (declare (not safe)) (##cdr _%e258824259092%_)))
                      (_%hd258825259095%_
                       (let ()
                         (declare (not safe))
                         (##car _%e258824259092%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd258825259095%_))
                      (let ((_%e258827259100%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd258825259095%_))))
                        (let ((_%tl258829259105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258827259100%_)))
                              (_%hd258828259103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258827259100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd258828259103%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd258828259103%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258829259105%_))
                                      (let ((_%e258830259108%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl258829259105%_))))
                                        (let ((_%tl258832259113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258830259108%_)))
                                              (_%hd258831259111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258830259108%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258832259113%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258826259097%_))
                                                  (let ((_%e258833259116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258826259097%_))))
                                                    (let ((_%tl258835259121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258833259116%_)))
                                                          (_%hd258834259119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258833259116%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd258834259119%_))
                                                          (let ((_%e258836259124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd258834259119%_))))
                    (let ((_%tl258838259129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258836259124%_)))
                          (_%hd258837259127%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258836259124%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd258837259127%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd258837259127%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258838259129%_))
                                  (let ((_%e258839259132%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258838259129%_))))
                                    (let ((_%tl258841259137%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258839259132%_)))
                                          (_%hd258840259135%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258839259132%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl258841259137%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258835259121%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258798259295%_))
                                                  (let ((_%e258842259140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258798259295%_))))
                                                    (let ((_%tl258844259145%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258842259140%_)))
                                                          (_%hd258843259143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258842259140%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl258844259145%_))
                                                          (let ((_%e258845259148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl258844259145%_))))
                    (let ((_%tl258847259153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258845259148%_)))
                          (_%hd258846259151%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258845259148%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258847259153%_))
                          (_%__kont263255263256%_
                           _%hd258846259151%_
                           _%hd258843259143%_
                           _%hd258840259135%_
                           _%hd258831259111%_)
                          (let () (declare (not safe)) (_%g258788258898%_)))))
                  (let () (declare (not safe)) (_%g258788258898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258798259295%_))
                                                  (let ((_%e258888258919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258798259295%_))))
                                                    (let ((_%tl258890258924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258888258919%_)))
                                                          (_%hd258889258922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258888258919%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl258890258924%_))
                                                          (let ((_%e258891258927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl258890258924%_))))
                    (let ((_%tl258893258932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258891258927%_)))
                          (_%hd258892258930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258891258927%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258893258932%_))
                          (_%__kont263259263260%_
                           _%hd258892258930%_
                           _%hd258889258922%_
                           _%hd258797259293%_)
                          (let () (declare (not safe)) (_%g258788258898%_)))))
                  (let () (declare (not safe)) (_%g258788258898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258835259121%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258798259295%_))
                                                  (let ((_%e258873259016%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258798259295%_))))
                                                    (let ((_%tl258875259021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258873259016%_)))
                                                          (_%hd258874259019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258873259016%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl258875259021%_))
                                                          (let ((_%e258876259024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl258875259021%_))))
                    (let ((_%tl258878259029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258876259024%_)))
                          (_%hd258877259027%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258876259024%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258878259029%_))
                          (_%__match263458263459%_
                           _%e258793259282%_
                           _%hd258794259285%_
                           _%tl258795259287%_
                           _%e258796259290%_
                           _%hd258797259293%_
                           _%tl258798259295%_
                           _%e258799259298%_
                           _%hd258800259301%_
                           _%tl258801259303%_
                           _%e258824259092%_
                           _%hd258825259095%_
                           _%tl258826259097%_
                           _%e258827259100%_
                           _%hd258828259103%_
                           _%tl258829259105%_
                           _%e258830259108%_
                           _%hd258831259111%_
                           _%tl258832259113%_
                           _%e258833259116%_
                           _%hd258834259119%_
                           _%tl258835259121%_
                           _%e258873259016%_
                           _%hd258874259019%_
                           _%tl258875259021%_
                           _%e258876259024%_
                           _%hd258877259027%_
                           _%tl258878259029%_)
                          (let () (declare (not safe)) (_%g258788258898%_)))))
                  (let () (declare (not safe)) (_%g258788258898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258798259295%_))
                                                  (let ((_%e258888258919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258798259295%_))))
                                                    (let ((_%tl258890258924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258888258919%_)))
                                                          (_%hd258889258922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258888258919%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl258890258924%_))
                                                          (let ((_%e258891258927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl258890258924%_))))
                    (let ((_%tl258893258932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258891258927%_)))
                          (_%hd258892258930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258891258927%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258893258932%_))
                          (_%__kont263259263260%_
                           _%hd258892258930%_
                           _%hd258889258922%_
                           _%hd258797259293%_)
                          (let () (declare (not safe)) (_%g258788258898%_)))))
                  (let () (declare (not safe)) (_%g258788258898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258835259121%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258798259295%_))
                                          (let ((_%e258873259016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl258798259295%_))))
                                            (let ((_%tl258875259021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258873259016%_)))
                                                  (_%hd258874259019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258873259016%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258875259021%_))
                                                  (let ((_%e258876259024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258875259021%_))))
                                                    (let ((_%tl258878259029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258876259024%_)))
                                                          (_%hd258877259027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258876259024%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl258878259029%_))
                                                          (_%__match263458263459%_
                                                           _%e258793259282%_
                                                           _%hd258794259285%_
                                                           _%tl258795259287%_
                                                           _%e258796259290%_
                                                           _%hd258797259293%_
                                                           _%tl258798259295%_
                                                           _%e258799259298%_
                                                           _%hd258800259301%_
                                                           _%tl258801259303%_
                                                           _%e258824259092%_
                                                           _%hd258825259095%_
                                                           _%tl258826259097%_
                                                           _%e258827259100%_
                                                           _%hd258828259103%_
                                                           _%tl258829259105%_
                                                           _%e258830259108%_
                                                           _%hd258831259111%_
                                                           _%tl258832259113%_
                                                           _%e258833259116%_
                                                           _%hd258834259119%_
                                                           _%tl258835259121%_
                                                           _%e258873259016%_
                                                           _%hd258874259019%_
                                                           _%tl258875259021%_
                                                           _%e258876259024%_
                                                           _%hd258877259027%_
                                                           _%tl258878259029%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g258788258898%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258798259295%_))
                                          (let ((_%e258888258919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl258798259295%_))))
                                            (let ((_%tl258890258924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258888258919%_)))
                                                  (_%hd258889258922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258888258919%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258890258924%_))
                                                  (let ((_%e258891258927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258890258924%_))))
                                                    (let ((_%tl258893258932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258891258927%_)))
                                                          (_%hd258892258930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258891258927%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl258893258932%_))
                                                          (_%__kont263259263260%_
                                                           _%hd258892258930%_
                                                           _%hd258889258922%_
                                                           _%hd258797259293%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g258788258898%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258835259121%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258798259295%_))
                                      (let ((_%e258873259016%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl258798259295%_))))
                                        (let ((_%tl258875259021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258873259016%_)))
                                              (_%hd258874259019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258873259016%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258875259021%_))
                                              (let ((_%e258876259024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl258875259021%_))))
                                                (let ((_%tl258878259029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258876259024%_)))
                                                      (_%hd258877259027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258876259024%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258878259029%_))
                                                      (_%__match263458263459%_
                                                       _%e258793259282%_
                                                       _%hd258794259285%_
                                                       _%tl258795259287%_
                                                       _%e258796259290%_
                                                       _%hd258797259293%_
                                                       _%tl258798259295%_
                                                       _%e258799259298%_
                                                       _%hd258800259301%_
                                                       _%tl258801259303%_
                                                       _%e258824259092%_
                                                       _%hd258825259095%_
                                                       _%tl258826259097%_
                                                       _%e258827259100%_
                                                       _%hd258828259103%_
                                                       _%tl258829259105%_
                                                       _%e258830259108%_
                                                       _%hd258831259111%_
                                                       _%tl258832259113%_
                                                       _%e258833259116%_
                                                       _%hd258834259119%_
                                                       _%tl258835259121%_
                                                       _%e258873259016%_
                                                       _%hd258874259019%_
                                                       _%tl258875259021%_
                                                       _%e258876259024%_
                                                       _%hd258877259027%_
                                                       _%tl258878259029%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g258788258898%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g258788258898%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g258788258898%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258798259295%_))
                                      (let ((_%e258888258919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl258798259295%_))))
                                        (let ((_%tl258890258924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258888258919%_)))
                                              (_%hd258889258922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258888258919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258890258924%_))
                                              (let ((_%e258891258927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl258890258924%_))))
                                                (let ((_%tl258893258932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258891258927%_)))
                                                      (_%hd258892258930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258891258927%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258893258932%_))
                                                      (_%__kont263259263260%_
                                                       _%hd258892258930%_
                                                       _%hd258889258922%_
                                                       _%hd258797259293%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g258788258898%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g258788258898%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g258788258898%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl258835259121%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258798259295%_))
                                  (let ((_%e258873259016%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258798259295%_))))
                                    (let ((_%tl258875259021%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258873259016%_)))
                                          (_%hd258874259019%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258873259016%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258875259021%_))
                                          (let ((_%e258876259024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl258875259021%_))))
                                            (let ((_%tl258878259029%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258876259024%_)))
                                                  (_%hd258877259027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258876259024%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl258878259029%_))
                                                  (_%__match263458263459%_
                                                   _%e258793259282%_
                                                   _%hd258794259285%_
                                                   _%tl258795259287%_
                                                   _%e258796259290%_
                                                   _%hd258797259293%_
                                                   _%tl258798259295%_
                                                   _%e258799259298%_
                                                   _%hd258800259301%_
                                                   _%tl258801259303%_
                                                   _%e258824259092%_
                                                   _%hd258825259095%_
                                                   _%tl258826259097%_
                                                   _%e258827259100%_
                                                   _%hd258828259103%_
                                                   _%tl258829259105%_
                                                   _%e258830259108%_
                                                   _%hd258831259111%_
                                                   _%tl258832259113%_
                                                   _%e258833259116%_
                                                   _%hd258834259119%_
                                                   _%tl258835259121%_
                                                   _%e258873259016%_
                                                   _%hd258874259019%_
                                                   _%tl258875259021%_
                                                   _%e258876259024%_
                                                   _%hd258877259027%_
                                                   _%tl258878259029%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258788258898%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258798259295%_))
                                  (let ((_%e258888258919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258798259295%_))))
                                    (let ((_%tl258890258924%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258888258919%_)))
                                          (_%hd258889258922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258888258919%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258890258924%_))
                                          (let ((_%e258891258927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl258890258924%_))))
                                            (let ((_%tl258893258932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258891258927%_)))
                                                  (_%hd258892258930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258891258927%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl258893258932%_))
                                                  (_%__kont263259263260%_
                                                   _%hd258892258930%_
                                                   _%hd258889258922%_
                                                   _%hd258797259293%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258788258898%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl258835259121%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258798259295%_))
                          (let ((_%e258873259016%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl258798259295%_))))
                            (let ((_%tl258875259021%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258873259016%_)))
                                  (_%hd258874259019%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258873259016%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258875259021%_))
                                  (let ((_%e258876259024%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258875259021%_))))
                                    (let ((_%tl258878259029%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258876259024%_)))
                                          (_%hd258877259027%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258876259024%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl258878259029%_))
                                          (_%__match263458263459%_
                                           _%e258793259282%_
                                           _%hd258794259285%_
                                           _%tl258795259287%_
                                           _%e258796259290%_
                                           _%hd258797259293%_
                                           _%tl258798259295%_
                                           _%e258799259298%_
                                           _%hd258800259301%_
                                           _%tl258801259303%_
                                           _%e258824259092%_
                                           _%hd258825259095%_
                                           _%tl258826259097%_
                                           _%e258827259100%_
                                           _%hd258828259103%_
                                           _%tl258829259105%_
                                           _%e258830259108%_
                                           _%hd258831259111%_
                                           _%tl258832259113%_
                                           _%e258833259116%_
                                           _%hd258834259119%_
                                           _%tl258835259121%_
                                           _%e258873259016%_
                                           _%hd258874259019%_
                                           _%tl258875259021%_
                                           _%e258876259024%_
                                           _%hd258877259027%_
                                           _%tl258878259029%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258788258898%_)))))
                          (let () (declare (not safe)) (_%g258788258898%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258798259295%_))
                          (let ((_%e258888258919%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl258798259295%_))))
                            (let ((_%tl258890258924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258888258919%_)))
                                  (_%hd258889258922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258888258919%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258890258924%_))
                                  (let ((_%e258891258927%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258890258924%_))))
                                    (let ((_%tl258893258932%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258891258927%_)))
                                          (_%hd258892258930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258891258927%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl258893258932%_))
                                          (_%__kont263259263260%_
                                           _%hd258892258930%_
                                           _%hd258889258922%_
                                           _%hd258797259293%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258788258898%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g258788258898%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258798259295%_))
                                                      (let ((_%e258888258919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl258798259295%_))))
                (let ((_%tl258890258924%_
                       (let () (declare (not safe)) (##cdr _%e258888258919%_)))
                      (_%hd258889258922%_
                       (let ()
                         (declare (not safe))
                         (##car _%e258888258919%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258890258924%_))
                      (let ((_%e258891258927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl258890258924%_))))
                        (let ((_%tl258893258932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258891258927%_)))
                              (_%hd258892258930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258891258927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl258893258932%_))
                              (_%__kont263259263260%_
                               _%hd258892258930%_
                               _%hd258889258922%_
                               _%hd258797259293%_)
                              (let ()
                                (declare (not safe))
                                (_%g258788258898%_)))))
                      (let () (declare (not safe)) (_%g258788258898%_)))))
              (let () (declare (not safe)) (_%g258788258898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258798259295%_))
                                                  (let ((_%e258888258919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258798259295%_))))
                                                    (let ((_%tl258890258924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258888258919%_)))
                                                          (_%hd258889258922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258888258919%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl258890258924%_))
                                                          (let ((_%e258891258927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl258890258924%_))))
                    (let ((_%tl258893258932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258891258927%_)))
                          (_%hd258892258930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258891258927%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258893258932%_))
                          (_%__kont263259263260%_
                           _%hd258892258930%_
                           _%hd258889258922%_
                           _%hd258797259293%_)
                          (let () (declare (not safe)) (_%g258788258898%_)))))
                  (let () (declare (not safe)) (_%g258788258898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258798259295%_))
                                          (let ((_%e258888258919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl258798259295%_))))
                                            (let ((_%tl258890258924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258888258919%_)))
                                                  (_%hd258889258922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258888258919%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258890258924%_))
                                                  (let ((_%e258891258927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl258890258924%_))))
                                                    (let ((_%tl258893258932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258891258927%_)))
                                                          (_%hd258892258930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258891258927%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl258893258932%_))
                                                          (_%__kont263259263260%_
                                                           _%hd258892258930%_
                                                           _%hd258889258922%_
                                                           _%hd258797259293%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g258788258898%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258798259295%_))
                                      (let ((_%e258888258919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl258798259295%_))))
                                        (let ((_%tl258890258924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258888258919%_)))
                                              (_%hd258889258922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258888258919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258890258924%_))
                                              (let ((_%e258891258927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl258890258924%_))))
                                                (let ((_%tl258893258932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258891258927%_)))
                                                      (_%hd258892258930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258891258927%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258893258932%_))
                                                      (_%__kont263259263260%_
                                                       _%hd258892258930%_
                                                       _%hd258889258922%_
                                                       _%hd258797259293%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g258788258898%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g258788258898%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g258788258898%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258798259295%_))
                                  (let ((_%e258888258919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258798259295%_))))
                                    (let ((_%tl258890258924%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258888258919%_)))
                                          (_%hd258889258922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258888258919%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258890258924%_))
                                          (let ((_%e258891258927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl258890258924%_))))
                                            (let ((_%tl258893258932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258891258927%_)))
                                                  (_%hd258892258930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258891258927%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl258893258932%_))
                                                  (_%__kont263259263260%_
                                                   _%hd258892258930%_
                                                   _%hd258889258922%_
                                                   _%hd258797259293%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g258788258898%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258788258898%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258798259295%_))
                          (let ((_%e258888258919%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl258798259295%_))))
                            (let ((_%tl258890258924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258888258919%_)))
                                  (_%hd258889258922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258888258919%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258890258924%_))
                                  (let ((_%e258891258927%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl258890258924%_))))
                                    (let ((_%tl258893258932%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258891258927%_)))
                                          (_%hd258892258930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258891258927%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl258893258932%_))
                                          (_%__kont263259263260%_
                                           _%hd258892258930%_
                                           _%hd258889258922%_
                                           _%hd258797259293%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g258788258898%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258788258898%_)))))
                          (let () (declare (not safe)) (_%g258788258898%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl258798259295%_))
                  (let ((_%e258888258919%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl258798259295%_))))
                    (let ((_%tl258890258924%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258888258919%_)))
                          (_%hd258889258922%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258888258919%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258890258924%_))
                          (let ((_%e258891258927%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl258890258924%_))))
                            (let ((_%tl258893258932%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258891258927%_)))
                                  (_%hd258892258930%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258891258927%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258893258932%_))
                                  (_%__kont263259263260%_
                                   _%hd258892258930%_
                                   _%hd258889258922%_
                                   _%hd258797259293%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g258788258898%_)))))
                          (let () (declare (not safe)) (_%g258788258898%_)))))
                  (let () (declare (not safe)) (_%g258788258898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258798259295%_))
                                                      (let ((_%e258888258919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl258798259295%_))))
                (let ((_%tl258890258924%_
                       (let () (declare (not safe)) (##cdr _%e258888258919%_)))
                      (_%hd258889258922%_
                       (let ()
                         (declare (not safe))
                         (##car _%e258888258919%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258890258924%_))
                      (let ((_%e258891258927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl258890258924%_))))
                        (let ((_%tl258893258932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258891258927%_)))
                              (_%hd258892258930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258891258927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl258893258932%_))
                              (_%__kont263259263260%_
                               _%hd258892258930%_
                               _%hd258889258922%_
                               _%hd258797259293%_)
                              (let ()
                                (declare (not safe))
                                (_%g258788258898%_)))))
                      (let () (declare (not safe)) (_%g258788258898%_)))))
              (let () (declare (not safe)) (_%g258788258898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258798259295%_))
                                              (let ((_%e258888258919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl258798259295%_))))
                                                (let ((_%tl258890258924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258888258919%_)))
                                                      (_%hd258889258922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258888258919%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258890258924%_))
                                                      (let ((_%e258891258927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl258890258924%_))))
                (let ((_%tl258893258932%_
                       (let () (declare (not safe)) (##cdr _%e258891258927%_)))
                      (_%hd258892258930%_
                       (let ()
                         (declare (not safe))
                         (##car _%e258891258927%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl258893258932%_))
                      (_%__kont263259263260%_
                       _%hd258892258930%_
                       _%hd258889258922%_
                       _%hd258797259293%_)
                      (let () (declare (not safe)) (_%g258788258898%_)))))
              (let () (declare (not safe)) (_%g258788258898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g258788258898%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258798259295%_))
                                      (let ((_%e258888258919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl258798259295%_))))
                                        (let ((_%tl258890258924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258888258919%_)))
                                              (_%hd258889258922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258888258919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258890258924%_))
                                              (let ((_%e258891258927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl258890258924%_))))
                                                (let ((_%tl258893258932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258891258927%_)))
                                                      (_%hd258892258930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258891258927%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258893258932%_))
                                                      (_%__kont263259263260%_
                                                       _%hd258892258930%_
                                                       _%hd258889258922%_
                                                       _%hd258797259293%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g258788258898%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g258788258898%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g258788258898%_))))))
                          (let () (declare (not safe)) (_%g258788258898%_)))))
                  (let () (declare (not safe)) (_%g258788258898%_))))))))))
