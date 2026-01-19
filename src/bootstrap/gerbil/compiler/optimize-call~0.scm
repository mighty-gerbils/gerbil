(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1768863419)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp209285 (list gxc#::basic-xform::t))
            (__tmp209284 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp209285
         '()
         __tmp209284
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args208562%_
        (apply make-instance gxc#::optimize-call::t _%$args208562%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp209286
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
        (__make-atomic-promise __tmp209286)))
    (define gxc#apply-optimize-call
      (lambda (_%stx208554%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self208557%_
                (let ((__obj209276
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj209276))
               (__tmp209287
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208557%_ _%stx208554%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209287
           gxc#current-compile-method
           _%self208557%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp209289 (list gxc#::void::t))
            (__tmp209288 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp209289
         '()
         __tmp209288
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args208551%_
        (apply make-instance gxc#::check-return-type::t _%$args208551%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp209290
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
        (__make-atomic-promise __tmp209290)))
    (define gxc#apply-check-return-type
      (lambda (_%stx208543%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self208546%_
                (let ((__obj209278
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj209278))
               (__tmp209291
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208546%_ _%stx208543%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209291
           gxc#current-compile-method
           _%self208546%_))))
    (define gxc#optimize-call%
      (lambda (_%self208144%_ _%stx208145%_)
        (let* ((_%__stx208631208632%_ _%stx208145%_)
               (_%g208148208194%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208631208632%_)))))
          (let ((_%__kont208633208634%_
                 (lambda (_%L208337%_ _%L208338%_)
                   (let* ((_%rator-id208358%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L208338%_)))
                          (_%rator-type208360%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id208358%_))))
                     (if (or (not _%rator-type208360%_)
                             (eq? (##structure-ref
                                   _%rator-type208360%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self208144%_ _%stx208145%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type208360%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp209292
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type208360%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id208358%_
                                  '" => "
                                  _%rator-type208360%_
                                  '" "
                                  __tmp209292))
                               (let* ((_%optimized208375%_
                                       (let ((__method209279
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type208360%_
                                                 'optimize-call))))
                                         (if __method209279
                                             (let ((__tmp209293
                                                    (let ((__tmp209294
                                                           (lambda (_%g208367208370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g208368208372%_)
                     (cons _%g208367208370%_ _%g208368208372%_))))
              (declare (not safe))
              (__foldr1 __tmp209294 '() _%L208337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method209279
                                                _%rator-type208360%_
                                                _%self208144%_
                                                _%stx208145%_
                                                __tmp209293))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type208360%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx208579208580%_
                                       _%optimized208375%_)
                                      (_%g208378208407%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx208579208580%_)))))
                                 (let ((_%__kont208581208582%_
                                        (lambda (_%L208475%_ _%L208476%_)
                                          (let* ((_%optimized-rator-id208503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L208476%_)))
                                                 (_%rator-type208508%_
                                                  (let ((_%$e208505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id208503%_))))
                                                    (if _%$e208505%_
                                                        _%$e208505%_
                                                        _%rator-type208360%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type208508%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id208503%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type208508%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type208508%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized208375%_
                                                (let ((__tmp209295
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L208476%_ '()))
                           (let ((__tmp209296
                                  (lambda (_%g208516208519%_ _%g208517208521%_)
                                    (cons _%g208516208519%_
                                          _%g208517208521%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209296 '() _%L208475%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp209295
                                                   _%stx208145%_))))))
                                       (_%__kont208585208586%_
                                        (lambda () _%optimized208375%_)))
                                   (let ((_%__match208628208629%_
                                          (lambda (_%e208382208419%_
                                                   _%hd208383208422%_
                                                   _%tl208384208424%_
                                                   _%e208385208427%_
                                                   _%hd208386208430%_
                                                   _%tl208387208432%_
                                                   _%e208388208435%_
                                                   _%hd208389208438%_
                                                   _%tl208390208440%_
                                                   _%e208391208443%_
                                                   _%hd208392208446%_
                                                   _%tl208393208448%_
                                                   _%__splice208583208584%_
                                                   _%target208394208451%_
                                                   _%tl208396208453%_)
                                            (letrec ((_%loop208397208456%_
                                                      (lambda (_%hd208395208459%_
                                                               _%arg208401208461%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd208395208459%_))
                                                            (let ((_%e208398208464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd208395208459%_))))
                      (let ((_%lp-tl208400208469%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208398208464%_)))
                            (_%lp-hd208399208467%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208398208464%_))))
                        (_%loop208397208456%_
                         _%lp-tl208400208469%_
                         (cons _%lp-hd208399208467%_ _%arg208401208461%_))))
                    (let ((_%arg208402208472%_ (reverse _%arg208401208461%_)))
                      (_%__kont208581208582%_
                       _%arg208402208472%_
                       _%hd208392208446%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop208397208456%_
                                               _%target208394208451%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx208579208580%_))
                                         (let ((_%e208382208419%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx208579208580%_))))
                                           (let ((_%tl208384208424%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208382208419%_)))
                                                 (_%hd208383208422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208382208419%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd208383208422%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd208383208422%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl208384208424%_))
                                                         (let ((_%e208385208427%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl208384208424%_))))
                   (let ((_%tl208387208432%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208385208427%_)))
                         (_%hd208386208430%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208385208427%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd208386208430%_))
                         (let ((_%e208388208435%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd208386208430%_))))
                           (let ((_%tl208390208440%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208388208435%_)))
                                 (_%hd208389208438%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208388208435%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd208389208438%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd208389208438%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl208390208440%_))
                                         (let ((_%e208391208443%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl208390208440%_))))
                                           (let ((_%tl208393208448%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208391208443%_)))
                                                 (_%hd208392208446%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208391208443%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl208393208448%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl208387208432%_))
                                                     (let ((_%__splice208583208584%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl208387208432%_
                                                               '0))))
                                                       (let ((_%tl208396208453%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice208583208584%_ '1)))
                     (_%target208394208451%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice208583208584%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl208396208453%_))
                     (_%__match208628208629%_
                      _%e208382208419%_
                      _%hd208383208422%_
                      _%tl208384208424%_
                      _%e208385208427%_
                      _%hd208386208430%_
                      _%tl208387208432%_
                      _%e208388208435%_
                      _%hd208389208438%_
                      _%tl208390208440%_
                      _%e208391208443%_
                      _%hd208392208446%_
                      _%tl208393208448%_
                      _%__splice208583208584%_
                      _%target208394208451%_
                      _%tl208396208453%_)
                     (_%__kont208585208586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208585208586%_))
                                                 (_%__kont208585208586%_))))
                                         (_%__kont208585208586%_))
                                     (_%__kont208585208586%_))
                                 (_%__kont208585208586%_))))
                         (_%__kont208585208586%_))))
                 (_%__kont208585208586%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208585208586%_))
                                                 (_%__kont208585208586%_))))
                                         (_%__kont208585208586%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type208360%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type208360%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp209297
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L208338%_
                                                                '()))
                                                    (map (lambda (_%g208527208529%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self208144%_
                                                              _%g208527208529%_)))
                                                         (let ((__tmp209298
                                                                (lambda (_%g208531208534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g208532208536%_)
                          (cons _%g208531208534%_ _%g208532208536%_))))
                   (declare (not safe))
                   (__foldr1 __tmp209298 '() _%L208337%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp209297
                                    _%stx208145%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx208145%_
                                    _%rator-type208360%_))))))))
                (_%__kont208637208638%_
                 (lambda (_%L208239%_ _%L208240%_)
                   (let ((_%rator-type208257%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L208240%_))))
                     (if (and _%rator-type208257%_
                              (eq? (##structure-ref
                                    _%rator-type208257%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type208257%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type208257%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type208257%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp209299
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208144%_
                                               _%L208240%_))
                                            (map (lambda (_%g208259208261%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208144%_
                                                      _%g208259208261%_)))
                                                 (let ((__tmp209300
                                                        (lambda (_%g208263208266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g208264208268%_)
                  (cons _%g208263208266%_ _%g208264208268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp209300
                                                    '()
                                                    _%L208239%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209299 _%stx208145%_))
                         (if (or (not _%rator-type208257%_)
                                 (let ((__tmp209301
                                        (##structure-ref
                                         _%rator-type208257%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp209301 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self208144%_ _%stx208145%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx208145%_
                                _%rator-type208257%_))))))))
            (let* ((_%__match208698208699%_
                    (lambda (_%e208175208199%_
                             _%hd208176208202%_
                             _%tl208177208204%_
                             _%e208178208207%_
                             _%hd208179208210%_
                             _%tl208180208212%_
                             _%__splice208639208640%_
                             _%target208181208215%_
                             _%tl208183208217%_)
                      (letrec ((_%loop208184208220%_
                                (lambda (_%hd208182208223%_
                                         _%rand208188208225%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208182208223%_))
                                      (let ((_%e208185208228%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208182208223%_))))
                                        (let ((_%lp-tl208187208233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208185208228%_)))
                                              (_%lp-hd208186208231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208185208228%_))))
                                          (_%loop208184208220%_
                                           _%lp-tl208187208233%_
                                           (cons _%lp-hd208186208231%_
                                                 _%rand208188208225%_))))
                                      (let ((_%rand208189208236%_
                                             (reverse _%rand208188208225%_)))
                                        (_%__kont208637208638%_
                                         _%rand208189208236%_
                                         _%hd208179208210%_))))))
                        (_%loop208184208220%_ _%target208181208215%_ '()))))
                   (_%__match208678208679%_
                    (lambda (_%e208152208281%_
                             _%hd208153208284%_
                             _%tl208154208286%_
                             _%e208155208289%_
                             _%hd208156208292%_
                             _%tl208157208294%_
                             _%e208158208297%_
                             _%hd208159208300%_
                             _%tl208160208302%_
                             _%e208161208305%_
                             _%hd208162208308%_
                             _%tl208163208310%_
                             _%__splice208635208636%_
                             _%target208164208313%_
                             _%tl208166208315%_)
                      (letrec ((_%loop208167208318%_
                                (lambda (_%hd208165208321%_
                                         _%rand208171208323%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208165208321%_))
                                      (let ((_%e208168208326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208165208321%_))))
                                        (let ((_%lp-tl208170208331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208168208326%_)))
                                              (_%lp-hd208169208329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208168208326%_))))
                                          (_%loop208167208318%_
                                           _%lp-tl208170208331%_
                                           (cons _%lp-hd208169208329%_
                                                 _%rand208171208323%_))))
                                      (let ((_%rand208172208334%_
                                             (reverse _%rand208171208323%_)))
                                        (_%__kont208633208634%_
                                         _%rand208172208334%_
                                         _%hd208162208308%_))))))
                        (_%loop208167208318%_ _%target208164208313%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208631208632%_))
                  (let ((_%e208152208281%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208631208632%_))))
                    (let ((_%tl208154208286%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208152208281%_)))
                          (_%hd208153208284%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208152208281%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208154208286%_))
                          (let ((_%e208155208289%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl208154208286%_))))
                            (let ((_%tl208157208294%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208155208289%_)))
                                  (_%hd208156208292%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208155208289%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd208156208292%_))
                                  (let ((_%e208158208297%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208156208292%_))))
                                    (let ((_%tl208160208302%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208158208297%_)))
                                          (_%hd208159208300%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208158208297%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd208159208300%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd208159208300%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208160208302%_))
                                                  (let ((_%e208161208305%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208160208302%_))))
                                                    (let ((_%tl208163208310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208161208305%_)))
                                                          (_%hd208162208308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208161208305%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208163208310%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl208157208294%_))
                      (let ((_%__splice208635208636%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208157208294%_
                                '0))))
                        (let ((_%tl208166208315%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208635208636%_ '1)))
                              (_%target208164208313%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208635208636%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208166208315%_))
                              (_%__match208678208679%_
                               _%e208152208281%_
                               _%hd208153208284%_
                               _%tl208154208286%_
                               _%e208155208289%_
                               _%hd208156208292%_
                               _%tl208157208294%_
                               _%e208158208297%_
                               _%hd208159208300%_
                               _%tl208160208302%_
                               _%e208161208305%_
                               _%hd208162208308%_
                               _%tl208163208310%_
                               _%__splice208635208636%_
                               _%target208164208313%_
                               _%tl208166208315%_)
                              (let ()
                                (declare (not safe))
                                (_%g208148208194%_)))))
                      (let () (declare (not safe)) (_%g208148208194%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl208157208294%_))
                      (let ((_%__splice208639208640%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208157208294%_
                                '0))))
                        (let ((_%tl208183208217%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208639208640%_ '1)))
                              (_%target208181208215%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208639208640%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208183208217%_))
                              (_%__match208698208699%_
                               _%e208152208281%_
                               _%hd208153208284%_
                               _%tl208154208286%_
                               _%e208155208289%_
                               _%hd208156208292%_
                               _%tl208157208294%_
                               _%__splice208639208640%_
                               _%target208181208215%_
                               _%tl208183208217%_)
                              (let ()
                                (declare (not safe))
                                (_%g208148208194%_)))))
                      (let () (declare (not safe)) (_%g208148208194%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl208157208294%_))
                                                      (let ((_%__splice208639208640%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl208157208294%_
                        '0))))
                (let ((_%tl208183208217%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208639208640%_ '1)))
                      (_%target208181208215%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208639208640%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl208183208217%_))
                      (_%__match208698208699%_
                       _%e208152208281%_
                       _%hd208153208284%_
                       _%tl208154208286%_
                       _%e208155208289%_
                       _%hd208156208292%_
                       _%tl208157208294%_
                       _%__splice208639208640%_
                       _%target208181208215%_
                       _%tl208183208217%_)
                      (let () (declare (not safe)) (_%g208148208194%_)))))
              (let () (declare (not safe)) (_%g208148208194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl208157208294%_))
                                                  (let ((_%__splice208639208640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl208157208294%_
                                                            '0))))
                                                    (let ((_%tl208183208217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208639208640%_
                                                              '1)))
                                                          (_%target208181208215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208639208640%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208183208217%_))
                                                          (_%__match208698208699%_
                                                           _%e208152208281%_
                                                           _%hd208153208284%_
                                                           _%tl208154208286%_
                                                           _%e208155208289%_
                                                           _%hd208156208292%_
                                                           _%tl208157208294%_
                                                           _%__splice208639208640%_
                                                           _%target208181208215%_
                                                           _%tl208183208217%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208148208194%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208148208194%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl208157208294%_))
                                              (let ((_%__splice208639208640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl208157208294%_
                                                        '0))))
                                                (let ((_%tl208183208217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208639208640%_
                                                          '1)))
                                                      (_%target208181208215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208639208640%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208183208217%_))
                                                      (_%__match208698208699%_
                                                       _%e208152208281%_
                                                       _%hd208153208284%_
                                                       _%tl208154208286%_
                                                       _%e208155208289%_
                                                       _%hd208156208292%_
                                                       _%tl208157208294%_
                                                       _%__splice208639208640%_
                                                       _%target208181208215%_
                                                       _%tl208183208217%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g208148208194%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208148208194%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208157208294%_))
                                      (let ((_%__splice208639208640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl208157208294%_
                                                '0))))
                                        (let ((_%tl208183208217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208639208640%_
                                                  '1)))
                                              (_%target208181208215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208639208640%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208183208217%_))
                                              (_%__match208698208699%_
                                               _%e208152208281%_
                                               _%hd208153208284%_
                                               _%tl208154208286%_
                                               _%e208155208289%_
                                               _%hd208156208292%_
                                               _%tl208157208294%_
                                               _%__splice208639208640%_
                                               _%target208181208215%_
                                               _%tl208183208217%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g208148208194%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g208148208194%_))))))
                          (let () (declare (not safe)) (_%g208148208194%_)))))
                  (let () (declare (not safe)) (_%g208148208194%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self208106%_ _%ctx208107%_ _%stx208108%_ _%args208109%_)
        (let ((_%self208112%_ _%self208106%_))
          (if (let ((__method209280
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self208112%_ 'check-arguments))))
                (if __method209280
                    (let ()
                      (declare (not safe))
                      (__method209280
                       _%self208112%_
                       _%ctx208107%_
                       _%stx208108%_
                       _%args208109%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self208112%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature208122%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self208112%_ '2 '#f '#f)))
                     (_%signature208124%_ _%signature208122%_)
                     (_%$e208134%_
                      (if _%signature208124%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature208124%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e208134%_
                    ((lambda (_%unchecked208137%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked208137%_))
                           (let ((__tmp209302
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked208137%_
                                                          '()))
                                              (map (lambda (_%g208138208140%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx208107%_
                                                        _%g208138208140%_)))
                                                   _%args208109%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp209302
                              _%stx208108%_
                              _%ctx208107%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx208107%_ _%stx208108%_))))
                     _%$e208134%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx208107%_ _%stx208108%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx208107%_ _%stx208108%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass208564 __method-table208565)
        (let ((__check-arguments208566
               (let ((__tmp209303
                      (lambda ()
                        (let ((__method208567
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208565
                                  'check-arguments
                                  '#f))))
                          (if __method208567
                              __method208567
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209303))))
          (lambda (_%self208106%_ _%ctx208107%_ _%stx208108%_ _%args208109%_)
            (let ((_%self208112%_ _%self208106%_))
              (if ((force __check-arguments208566)
                   _%self208112%_
                   _%ctx208107%_
                   _%stx208108%_
                   _%args208109%_)
                  (let* ((_%signature208122%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self208112%_
                             '2
                             '#f
                             '#f)))
                         (_%signature208124%_ _%signature208122%_)
                         (_%$e208134%_
                          (if _%signature208124%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature208124%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e208134%_
                        ((lambda (_%unchecked208137%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked208137%_))
                               (let ((__tmp209304
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked208137%_
                                                              '()))
                                                  (map (lambda (_%g208138208140%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx208107%_
                                                            _%g208138208140%_)))
                                                       _%args208109%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp209304
                                  _%stx208108%_
                                  _%ctx208107%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx208107%_
                                  _%stx208108%_))))
                         _%$e208134%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx208107%_ _%stx208108%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx208107%_ _%stx208108%_))))))))
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
      (lambda (_%self207857%_ _%ctx207858%_ _%stx207859%_ _%args207860%_)
        (let* ((_%self207863%_ _%self207857%_)
               (_%signature207872207874%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207863%_ '2 '#f '#f))))
          (if _%signature207872207874%_
              (let* ((_%signature207877%_ _%signature207872207874%_)
                     (_%argument-types207878207880%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature207877%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types207878207880%_
                    (let* ((_%argument-types207883%_
                            _%argument-types207878207880%_)
                           (_%argument-types207888%_
                            (let ((__tmp209305
                                   (lambda (_%t207886%_)
                                     (if _%t207886%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207859%_
                                            _%t207886%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp209305
                               _%argument-types207883%_))))
                      (let _%loop207890%_ ((_%rest-args207892%_ _%args207860%_)
                                           (_%rest-types207893%_
                                            _%argument-types207888%_)
                                           (_%result207894%_ '#t))
                        (let* ((_%rest-args207895207903%_ _%rest-args207892%_)
                               (_%else207897207911%_
                                (lambda () _%result207894%_))
                               (_%K207899207972%_
                                (lambda (_%rest-args207914%_ _%arg207915%_)
                                  (let* ((_%rest-types207916207927%_
                                          _%rest-types207893%_)
                                         (_%E207920207931%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types207916207927%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K207923207960%_
                                           (lambda (_%rest-types207957%_
                                                    _%type207958%_)
                                             (_%loop207890%_
                                              _%rest-args207914%_
                                              _%rest-types207957%_
                                              (if (gxc#check-expression-type!
                                                   _%stx207859%_
                                                   _%arg207915%_
                                                   _%type207958%_)
                                                  _%result207894%_
                                                  '#f))))
                                          (_%K207922207951%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx207859%_
                                                _%argument-types207888%_))))
                                          (_%K207921207941%_
                                           (lambda (_%tail-type207935%_)
                                             (if (let ((__tmp209306
                                                        (lambda (_%g207936207938%_)
                                                          (gxc#check-expression-type!
                                                           _%stx207859%_
                                                           _%g207936207938%_
                                                           _%tail-type207935%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp209306
                                                    _%rest-args207914%_))
                                                 _%result207894%_
                                                 '#f))))
                                      (let ((_%try-match207918207954%_
                                             (lambda ()
                                               (if (null? _%rest-types207916207927%_)
                                                   (_%K207922207951%_)
                                                   (let ((_%tail-type207944%_
                                                          _%rest-types207916207927%_))
                                                     (_%K207921207941%_
                                                      _%tail-type207944%_))))))
                                        (if (pair? _%rest-types207916207927%_)
                                            (let ((_%tl207925207965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types207916207927%_)))
                                                  (_%hd207924207963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types207916207927%_))))
                                              (let ((_%type207968%_
                                                     _%hd207924207963%_)
                                                    (_%rest-types207970%_
                                                     _%tl207925207965%_))
                                                (_%K207923207960%_
                                                 _%rest-types207970%_
                                                 _%type207968%_)))
                                            (_%try-match207918207954%_))))))))
                          (if (pair? _%rest-args207895207903%_)
                              (let ((_%hd207900207975%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args207895207903%_)))
                                    (_%tl207901207977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args207895207903%_))))
                                (let* ((_%arg207980%_ _%hd207900207975%_)
                                       (_%rest-args207982%_
                                        _%tl207901207977%_))
                                  (_%K207899207972%_
                                   _%rest-args207982%_
                                   _%arg207980%_)))
                              (_%else207897207911%_)))))
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
      (lambda (_%self207668%_ _%ctx207669%_ _%stx207670%_ _%args207671%_)
        (let* ((_%self207674%_ _%self207668%_)
               (_%g207684207694%_
                (lambda (_%g207685207691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207685207691%_))))
               (_%g207683207732%_
                (lambda (_%g207685207697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207685207697%_))
                      (let ((_%e207687207699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207685207697%_))))
                        (let ((_%hd207688207702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207687207699%_)))
                              (_%tl207689207704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207687207699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207689207704%_))
                              ((lambda (_%L207707%_)
                                 (let* ((_%klass207719%_
                                         (let ((__tmp209307
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207674%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207670%_
                                            __tmp209307)))
                                        (_%object207721%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207669%_
                                            _%L207707%_)))
                                        (_%instance?207726%_
                                         (let ((_%$e207723%_
                                                (gxc#expression-type?
                                                 _%object207721%_
                                                 _%klass207719%_)))
                                           (if _%$e207723%_
                                               _%$e207723%_
                                               (gxc#expression-type?
                                                _%L207707%_
                                                _%klass207719%_)))))
                                   (if _%instance?207726%_
                                       (let ((__tmp209308
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207721%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L207707%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207721%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209308
                                          _%stx207670%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx207669%_
                                          _%stx207670%_)))))
                               _%hd207688207702%_)
                              (_%g207684207694%_ _%g207685207697%_))))
                      (_%g207684207694%_ _%g207685207697%_)))))
          (_%g207683207732%_ _%args207671%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self207464%_ _%ctx207465%_ _%stx207466%_ _%args207467%_)
        (let* ((_%self207470%_ _%self207464%_)
               (_%g207480207490%_
                (lambda (_%g207481207487%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207481207487%_))))
               (_%g207479207543%_
                (lambda (_%g207481207493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207481207493%_))
                      (let ((_%e207483207495%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207481207493%_))))
                        (let ((_%hd207484207498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207483207495%_)))
                              (_%tl207485207500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207483207495%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207485207500%_))
                              ((lambda (_%L207503%_)
                                 (let* ((_%klass207515%_
                                         (let ((__tmp209309
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207470%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207466%_
                                            __tmp209309)))
                                        (_%object207517%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207465%_
                                            _%L207503%_)))
                                        (_%instance?207522%_
                                         (let ((_%$e207519%_
                                                (gxc#expression-type?
                                                 _%object207517%_
                                                 _%klass207515%_)))
                                           (if _%$e207519%_
                                               _%$e207519%_
                                               (gxc#expression-type?
                                                _%L207503%_
                                                _%klass207515%_))))
                                        (_%klass207525%_ _%klass207515%_))
                                   (if _%instance?207522%_
                                       (let ((__tmp209310
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207517%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L207503%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207517%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209310
                                          _%stx207466%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass207525%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209311
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass207525%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object207517%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209311
                                              _%stx207466%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass207525%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209312
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass207525%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object207517%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209312
                                                  _%stx207466%_))
                                               (let ((__tmp209313
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self207470%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object207517%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209313
                                                  _%stx207466%_)))))))
                               _%hd207484207498%_)
                              (_%g207480207490%_ _%g207481207493%_))))
                      (_%g207480207490%_ _%g207481207493%_)))))
          (_%g207479207543%_ _%args207467%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx207127%_)
        (let* ((_%__stx208708208709%_ _%stx207127%_)
               (_%g207132207173%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208708208709%_)))))
          (let ((_%__kont208710208711%_ (lambda () '#t))
                (_%__kont208712208713%_ (lambda () '#t))
                (_%__kont208714208715%_
                 (lambda (_%L207241%_ _%L207242%_)
                   (let ((_%rator-type207263207265%_
                          (let ((__tmp209314
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L207242%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp209314))))
                     (if _%rator-type207263207265%_
                         (let* ((_%rator-type207268%_
                                 _%rator-type207263207265%_)
                                (_%rator-signature207269207271%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type207268%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type207268%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature207269207271%_
                               (let* ((_%rator-signature207274%_
                                       _%rator-signature207269207271%_)
                                      (_%rator-effect207275207277%_
                                       (if _%rator-signature207274%_
                                           (##direct-structure-ref
                                            _%rator-signature207274%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect207275207277%_
                                     (let ((_%rator-effect207280%_
                                            _%rator-effect207275207277%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect207280%_)
                                               (equal? '(alloc)
                                                       _%rator-effect207280%_))
                                           (let ((__tmp209315
                                                  (let ((__tmp209316
                                                         (lambda (_%g207285207288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g207286207290%_)
                   (cons _%g207285207288%_ _%g207286207290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp209316
                                                     '()
                                                     _%L207241%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp209315))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont208718208719%_ (lambda () '#f)))
            (let ((_%__match208797208798%_
                   (lambda (_%e207148207185%_
                            _%hd207149207188%_
                            _%tl207150207190%_
                            _%e207151207193%_
                            _%hd207152207196%_
                            _%tl207153207198%_
                            _%e207154207201%_
                            _%hd207155207204%_
                            _%tl207156207206%_
                            _%e207157207209%_
                            _%hd207158207212%_
                            _%tl207159207214%_
                            _%__splice208716208717%_
                            _%target207160207217%_
                            _%tl207162207219%_)
                     (letrec ((_%loop207163207222%_
                               (lambda (_%hd207161207225%_
                                        _%rand207167207227%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd207161207225%_))
                                     (let ((_%e207164207230%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd207161207225%_))))
                                       (let ((_%lp-tl207166207235%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207164207230%_)))
                                             (_%lp-hd207165207233%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207164207230%_))))
                                         (_%loop207163207222%_
                                          _%lp-tl207166207235%_
                                          (cons _%lp-hd207165207233%_
                                                _%rand207167207227%_))))
                                     (let ((_%rand207168207238%_
                                            (reverse _%rand207167207227%_)))
                                       (_%__kont208714208715%_
                                        _%rand207168207238%_
                                        _%hd207158207212%_))))))
                       (_%loop207163207222%_ _%target207160207217%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208708208709%_))
                  (let ((_%e207134207321%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208708208709%_))))
                    (let ((_%tl207136207326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207134207321%_)))
                          (_%hd207135207324%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207134207321%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd207135207324%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd207135207324%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207136207326%_))
                                  (let ((_%e207137207329%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207136207326%_))))
                                    (let ((_%tl207139207334%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207137207329%_)))
                                          (_%hd207138207332%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207137207329%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl207139207334%_))
                                          (_%__kont208710208711%_)
                                          (_%__kont208718208719%_))))
                                  (_%__kont208718208719%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd207135207324%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207136207326%_))
                                      (let ((_%e207143207306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207136207326%_))))
                                        (let ((_%tl207145207311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207143207306%_)))
                                              (_%hd207144207309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207143207306%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207145207311%_))
                                              (_%__kont208712208713%_)
                                              (_%__kont208718208719%_))))
                                      (_%__kont208718208719%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd207135207324%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207136207326%_))
                                          (let ((_%e207151207193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl207136207326%_))))
                                            (let ((_%tl207153207198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207151207193%_)))
                                                  (_%hd207152207196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207151207193%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd207152207196%_))
                                                  (let ((_%e207154207201%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd207152207196%_))))
                                                    (let ((_%tl207156207206%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207154207201%_)))
                                                          (_%hd207155207204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207154207201%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd207155207204%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd207155207204%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207156207206%_))
                          (let ((_%e207157207209%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207156207206%_))))
                            (let ((_%tl207159207214%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207157207209%_)))
                                  (_%hd207158207212%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207157207209%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207159207214%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207153207198%_))
                                      (let ((_%__splice208716208717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl207153207198%_
                                                '0))))
                                        (let ((_%tl207162207219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208716208717%_
                                                  '1)))
                                              (_%target207160207217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208716208717%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207162207219%_))
                                              (_%__match208797208798%_
                                               _%e207134207321%_
                                               _%hd207135207324%_
                                               _%tl207136207326%_
                                               _%e207151207193%_
                                               _%hd207152207196%_
                                               _%tl207153207198%_
                                               _%e207154207201%_
                                               _%hd207155207204%_
                                               _%tl207156207206%_
                                               _%e207157207209%_
                                               _%hd207158207212%_
                                               _%tl207159207214%_
                                               _%__splice208716208717%_
                                               _%target207160207217%_
                                               _%tl207162207219%_)
                                              (_%__kont208718208719%_))))
                                      (_%__kont208718208719%_))
                                  (_%__kont208718208719%_))))
                          (_%__kont208718208719%_))
                      (_%__kont208718208719%_))
                  (_%__kont208718208719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208718208719%_))))
                                          (_%__kont208718208719%_))
                                      (_%__kont208718208719%_))))
                          (_%__kont208718208719%_))))
                  (_%__kont208718208719%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx207122%_ _%klass207123%_)
        (let ((_%expr-type207125%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx207122%_))))
          (if _%expr-type207125%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type207125%_ _%klass207123%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx207100%_ _%expr207101%_ _%type207102%_)
        (if (not _%type207102%_)
            '#f
            (let ((_%$e207105%_
                   (eq? (##structure-ref _%type207102%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e207105%_
                  _%$e207105%_
                  (let ((_%expr-type207109%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr207101%_))))
                    (if (not _%expr-type207109%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type207109%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e207113%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type207109%_
                                      'gxc#!abort::t))))
                              (if _%$e207113%_
                                  _%$e207113%_
                                  (let ((_%$e207116%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type207109%_
                                            _%type207102%_))))
                                    (if _%$e207116%_
                                        _%$e207116%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type207102%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type207102%_
                                                   _%expr-type207109%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx207100%_
                                                   _%expr207101%_
                                                   _%expr-type207109%_
                                                   _%type207102%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self206914%_ _%ctx206915%_ _%stx206916%_ _%args206917%_)
        (let* ((_%self206920%_ _%self206914%_)
               (_%klass206930%_
                (let ((__tmp209317
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206920%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx206916%_ __tmp209317)))
               (_%fields206932%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass206930%_
                           '5
                           '#f
                           '#f))))
               (_%args206938%_
                (map (lambda (_%g206933206935%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx206915%_ _%g206933206935%_)))
                     _%args206917%_))
               (_%inline-make-object206940%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self206920%_
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
                           _%self206920%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields206932%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass206943%_ _%klass206930%_)
               (_%$e206957%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass206943%_ '6 '#f '#f))))
          (if _%$e206957%_
              ((lambda (_%ctor206960%_)
                 (let ((_%$obj206962%_
                        (let ((__tmp209318
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp209318)))
                       (_%ctor-impl206963%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass206943%_
                           _%ctor206960%_))))
                   (let ((__tmp209319
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj206962%_ '())
                                                  (cons _%inline-make-object206940%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl206963%_
                                                            (let ((__tmp209320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl206963%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj206962%_ '()))
                                             _%args206938%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp209320
                       _%stx206916%_
                       _%ctx206915%_))
                    (let ((_%$ctor206965%_
                           (let ((__tmp209321
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209321))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor206965%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206920%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj206962%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor206960%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor206965%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor206965%_ '()))
                              (cons (cons '%#ref (cons _%$obj206962%_ '()))
                                    _%args206938%_)))
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
                             _%self206920%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor206960%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj206962%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp209319 _%stx206916%_))))
               _%$e206957%_)
              (let ((_%$e206967%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass206943%_
                        '10
                        '#f
                        '#f))))
                (if _%$e206967%_
                    ((lambda (_%metaclass206970%_)
                       (let* ((_%$obj206972%_
                               (let ((__tmp209322
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209322)))
                              (_%metakons206974%_
                               (let ((__tmp209323
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx206916%_
                                         _%metaclass206970%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp209323
                                  'instance-init!)))
                              (__tmp209324
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj206972%_
                                                             '())
                                                       (cons _%inline-make-object206940%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons206974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp209325
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons206974%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self206920%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj206972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args206938%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp209325
                            _%stx206916%_
                            _%ctx206915%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206920%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj206972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args206938%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj206972%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp209324 _%stx206916%_)))
                     _%$e206967%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass206943%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp209326
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args206938%_))))
                              (declare (not safe))
                              (##fx= __tmp209326 _%fields206932%_))
                            (let ((__tmp209327
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self206920%_
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
                                              _%self206920%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args206938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp209327
                               _%stx206916%_))
                            (let ((__tmp209329
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self206920%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp209328
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass206943%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx206916%_
                               __tmp209329
                               __tmp209328)))
                        (let ((_%$obj206979%_
                               (let ((__tmp209330
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209330))))
                          (let _%lp206981%_ ((_%rest206983%_ _%args206938%_)
                                             (_%initializers206984%_ '()))
                            (let* ((_%__stx208800208801%_ _%rest206983%_)
                                   (_%g206988207009%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx208800208801%_)))))
                              (let ((_%__kont208802208803%_
                                     (lambda (_%L207063%_
                                              _%L207064%_
                                              _%L207065%_)
                                       (let* ((_%slot207092%_
                                               (let ((__tmp209331
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L207065%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp209331)))
                                              (_%off207094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass206943%_
                                                  _%slot207092%_))))
                                         (if _%off207094%_
                                             (_%lp206981%_
                                              _%L207063%_
                                              (cons (cons _%off207094%_
                                                          _%L207064%_)
                                                    _%initializers206984%_))
                                             (let ((__tmp209332
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206920%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx206916%_
                                                __tmp209332
                                                _%slot207092%_))))))
                                    (_%__kont208804208805%_
                                     (lambda ()
                                       (let ((__tmp209333
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj206979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object206940%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp209336
                                     (cons (cons '%#ref
                                                 (cons _%$obj206979%_ '()))
                                           '()))
                                    (__tmp209334
                                     (let ((__tmp209335
                                            (lambda (_%i207023%_ _%r207024%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206920%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i207023%_) '()))
                              (cons (cons '%#ref (cons _%$obj206979%_ '()))
                                    (cons (cdr _%i207023%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r207024%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp209335
                                        '()
                                        _%initializers206984%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp209336 __tmp209334)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209333
                                          _%stx206916%_))))
                                    (_%__kont208806208807%_
                                     (lambda ()
                                       (let ((__tmp209337
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj206979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object206940%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args206938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj206979%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209337
                                          _%stx206916%_)))))
                                (let* ((_%g206986207026%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx208800208801%_))
                                              (_%__kont208804208805%_)
                                              (_%__kont208806208807%_))))
                                       (_%__match208837208838%_
                                        (lambda (_%e206993207031%_
                                                 _%hd206994207034%_
                                                 _%tl206995207036%_
                                                 _%e206996207039%_
                                                 _%hd206997207042%_
                                                 _%tl206998207044%_
                                                 _%e206999207047%_
                                                 _%hd207000207050%_
                                                 _%tl207001207052%_
                                                 _%e207002207055%_
                                                 _%hd207003207058%_
                                                 _%tl207004207060%_)
                                          (let ((_%L207063%_
                                                 _%tl207004207060%_)
                                                (_%L207064%_
                                                 _%hd207003207058%_)
                                                (_%L207065%_
                                                 _%hd207000207050%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L207065%_))
                                                (_%__kont208802208803%_
                                                 _%L207063%_
                                                 _%L207064%_
                                                 _%L207065%_)
                                                (_%__kont208806208807%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx208800208801%_))
                                      (let ((_%e206993207031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx208800208801%_))))
                                        (let ((_%tl206995207036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206993207031%_)))
                                              (_%hd206994207034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206993207031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd206994207034%_))
                                              (let ((_%e206996207039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd206994207034%_))))
                                                (let ((_%tl206998207044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206996207039%_)))
                                                      (_%hd206997207042%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206996207039%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd206997207042%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd206997207042%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl206998207044%_))
                      (let ((_%e206999207047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl206998207044%_))))
                        (let ((_%tl207001207052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206999207047%_)))
                              (_%hd207000207050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206999207047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207001207052%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206995207036%_))
                                  (let ((_%e207002207055%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl206995207036%_))))
                                    (let ((_%tl207004207060%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207002207055%_)))
                                          (_%hd207003207058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207002207055%_))))
                                      (_%__match208837208838%_
                                       _%e206993207031%_
                                       _%hd206994207034%_
                                       _%tl206995207036%_
                                       _%e206996207039%_
                                       _%hd206997207042%_
                                       _%tl206998207044%_
                                       _%e206999207047%_
                                       _%hd207000207050%_
                                       _%tl207001207052%_
                                       _%e207002207055%_
                                       _%hd207003207058%_
                                       _%tl207004207060%_)))
                                  (_%__kont208806208807%_))
                              (_%__kont208806208807%_))))
                      (_%__kont208806208807%_))
                  (_%__kont208806208807%_))
              (_%__kont208806208807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208806208807%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206986207026%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self206697%_ _%ctx206698%_ _%stx206699%_ _%args206700%_)
        (let* ((_%self206703%_ _%self206697%_)
               (_%arguments-ok?206713%_
                (let ((__method209281
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206703%_ 'check-arguments))))
                  (if __method209281
                      (let ()
                        (declare (not safe))
                        (__method209281
                         _%self206703%_
                         _%ctx206698%_
                         _%stx206699%_
                         _%args206700%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206703%_
                                 'check-arguments))
                        '#!void))))
               (_%g206715206725%_
                (lambda (_%g206716206722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206716206722%_))))
               (_%g206714206789%_
                (lambda (_%g206716206728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206716206728%_))
                      (let ((_%e206718206730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206716206728%_))))
                        (let ((_%hd206719206733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206718206730%_)))
                              (_%tl206720206735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206718206730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206720206735%_))
                              ((lambda (_%L206738%_)
                                 (let* ((_%klass206751%_
                                         (let ((__tmp209338
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206703%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx206699%_
                                            __tmp209338)))
                                        (_%field206753%_
                                         (let ((__tmp209339
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206703%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass206751%_
                                            __tmp209339)))
                                        (_%object206755%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx206698%_
                                            _%L206738%_)))
                                        (_%klass206758%_ _%klass206751%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass206758%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp209340
                                              (cons (if (or _%arguments-ok?206713%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206703%_
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
                                 _%self206703%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field206753%_ '()))
                        (cons _%object206755%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209340
                                          _%stx206699%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206758%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp209341
                                                  (cons (if (or _%arguments-ok?206713%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206703%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206703%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206753%_ '()))
                            (cons _%object206755%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209341
                                              _%stx206699%_))
                                           (let ((_%$e206777%_
                                                  (let ((__tmp209342
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206703%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass206758%_
                                                     __tmp209342))))
                                             (if _%$e206777%_
                                                 ((lambda (_%klass206780%_)
                                                    (let ((__tmp209343
                                                           (cons (if (or _%arguments-ok?206713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206703%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self206703%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field206753%_ '()))
                                     (cons _%object206755%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp209343 _%stx206699%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e206777%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self206703%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp209344
                                                            (let ((_%$obj206786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp209345
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209345))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj206786%_ '())
                                              (cons _%object206755%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass206758%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj206786%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206703%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206753%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206786%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?206713%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206786%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206703%_
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
                                                             _%self206703%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj206786%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self206703%_
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
               (gxc#xform-wrap-source __tmp209344 _%stx206699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp209346
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object206755%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206703%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp209346 _%stx206699%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd206719206733%_)
                              (_%g206715206725%_ _%g206716206728%_))))
                      (_%g206715206725%_ _%g206716206728%_)))))
          (_%g206714206789%_ _%args206700%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass208568 __method-table208569)
        (let ((__check-arguments208570
               (let ((__tmp209347
                      (lambda ()
                        (let ((__method208571
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208569
                                  'check-arguments
                                  '#f))))
                          (if __method208571
                              __method208571
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209347)))
              (__slot208572
               (let ((__slot208573
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass208568 'slot))))
                 (if __slot208573
                     __slot208573
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self206697%_ _%ctx206698%_ _%stx206699%_ _%args206700%_)
            (let* ((_%self206703%_ _%self206697%_)
                   (_%arguments-ok?206713%_
                    ((force __check-arguments208570)
                     _%self206703%_
                     _%ctx206698%_
                     _%stx206699%_
                     _%args206700%_))
                   (_%g206715206725%_
                    (lambda (_%g206716206722%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206716206722%_))))
                   (_%g206714206789%_
                    (lambda (_%g206716206728%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206716206728%_))
                          (let ((_%e206718206730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206716206728%_))))
                            (let ((_%hd206719206733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206718206730%_)))
                                  (_%tl206720206735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206718206730%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206720206735%_))
                                  ((lambda (_%L206738%_)
                                     (let* ((_%klass206751%_
                                             (let ((__tmp209348
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206703%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx206699%_
                                                __tmp209348)))
                                            (_%field206753%_
                                             (let ((__tmp209349
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206703%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass206751%_
                                                __tmp209349)))
                                            (_%object206755%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx206698%_
                                                _%L206738%_)))
                                            (_%klass206758%_ _%klass206751%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206758%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209350
                                                  (cons (if (or _%arguments-ok?206713%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206703%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206703%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206753%_ '()))
                            (cons _%object206755%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209350
                                              _%stx206699%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206758%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209351
                                                      (cons (if (or _%arguments-ok?206713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206703%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206703%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206753%_ '()))
                                (cons _%object206755%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209351
                                                  _%stx206699%_))
                                               (let ((_%$e206777%_
                                                      (let ((__tmp209352
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self206703%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass206758%_ __tmp209352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e206777%_
                                                     ((lambda (_%klass206780%_)
                                                        (let ((__tmp209353
                                                               (cons (if (or _%arguments-ok?206713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206703%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self206703%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field206753%_ '()))
                                         (cons _%object206755%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp209353 _%stx206699%_)))
              _%$e206777%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206703%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp209354
                                                                (let ((_%$obj206786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp209355
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209355))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj206786%_ '())
                                                  (cons _%object206755%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass206758%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj206786%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206703%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206753%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206786%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?206713%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206786%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206703%_
                               __slot208572
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
                        (##unchecked-structure-ref _%self206703%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj206786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206703%_
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
                   (gxc#xform-wrap-source __tmp209354 _%stx206699%_))
                 (let ((__tmp209356
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object206755%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206703%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp209356 _%stx206699%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd206719206733%_)
                                  (_%g206715206725%_ _%g206716206728%_))))
                          (_%g206715206725%_ _%g206716206728%_)))))
              (_%g206714206789%_ _%args206700%_))))))
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
      (lambda (_%self206461%_ _%ctx206462%_ _%stx206463%_ _%args206464%_)
        (let* ((_%self206467%_ _%self206461%_)
               (_%arguments-ok?206477%_
                (let ((__method209282
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206467%_ 'check-arguments))))
                  (if __method209282
                      (let ()
                        (declare (not safe))
                        (__method209282
                         _%self206467%_
                         _%ctx206462%_
                         _%stx206463%_
                         _%args206464%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206467%_
                                 'check-arguments))
                        '#!void))))
               (_%g206479206493%_
                (lambda (_%g206480206490%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206480206490%_))))
               (_%g206478206572%_
                (lambda (_%g206480206496%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206480206496%_))
                      (let ((_%e206483206498%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206480206496%_))))
                        (let ((_%hd206484206501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206483206498%_)))
                              (_%tl206485206503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206483206498%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206485206503%_))
                              (let ((_%e206486206506%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206485206503%_))))
                                (let ((_%hd206487206509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206486206506%_)))
                                      (_%tl206488206511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206486206506%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206488206511%_))
                                      ((lambda (_%L206514%_ _%L206515%_)
                                         (let* ((_%klass206531%_
                                                 (let ((__tmp209357
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206467%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx206463%_
                                                    __tmp209357)))
                                                (_%field206533%_
                                                 (let ((__tmp209358
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206467%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass206531%_
                                                    __tmp209358)))
                                                (_%object206535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206462%_
                                                    _%L206515%_)))
                                                (_%value206537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206462%_
                                                    _%L206514%_)))
                                                (_%klass206540%_
                                                 _%klass206531%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206540%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209359
                                                      (cons (if (or _%arguments-ok?206477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206467%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206467%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206533%_ '()))
                                (cons _%object206535%_
                                      (cons _%value206537%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209359
                                                  _%stx206463%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206540%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209360
                                                          (cons (if (or _%arguments-ok?206477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206467%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206467%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206533%_ '()))
                                    (cons _%object206535%_
                                          (cons _%value206537%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209360
                                                      _%stx206463%_))
                                                   (let ((_%$e206560%_
                                                          (let ((__tmp209361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206467%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass206540%_
                     __tmp209361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e206560%_
                                                         ((lambda (_%klass206563%_)
                                                            (let ((__tmp209362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?206477%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206467%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self206467%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field206533%_ '()))
                                             (cons _%object206535%_
                                                   (cons _%value206537%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209362 _%stx206463%_)))
                  _%$e206560%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self206467%_ '4 '#f '#f))
                     (let ((__tmp209363
                            (let ((_%$obj206569%_
                                   (let ((__tmp209364
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp209364))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj206569%_ '())
                                                      (cons _%object206535%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass206540%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj206569%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206467%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field206533%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206569%_
                                                              '()))
                                                  (cons _%value206537%_
                                                        '())))))
                          (cons (if _%arguments-ok?206477%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self206467%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value206537%_ '())))))
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
                             _%self206467%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj206569%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206467%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value206537%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp209363 _%stx206463%_))
                     (let ((__tmp209365
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object206535%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206467%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value206537%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp209365
                        _%stx206463%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd206487206509%_
                                       _%hd206484206501%_)
                                      (_%g206479206493%_ _%g206480206496%_))))
                              (_%g206479206493%_ _%g206480206496%_))))
                      (_%g206479206493%_ _%g206480206496%_)))))
          (_%g206478206572%_ _%args206464%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass208574 __method-table208575)
        (let ((__check-arguments208576
               (let ((__tmp209366
                      (lambda ()
                        (let ((__method208577
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208575
                                  'check-arguments
                                  '#f))))
                          (if __method208577
                              __method208577
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209366))))
          (lambda (_%self206461%_ _%ctx206462%_ _%stx206463%_ _%args206464%_)
            (let* ((_%self206467%_ _%self206461%_)
                   (_%arguments-ok?206477%_
                    ((force __check-arguments208576)
                     _%self206467%_
                     _%ctx206462%_
                     _%stx206463%_
                     _%args206464%_))
                   (_%g206479206493%_
                    (lambda (_%g206480206490%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206480206490%_))))
                   (_%g206478206572%_
                    (lambda (_%g206480206496%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206480206496%_))
                          (let ((_%e206483206498%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206480206496%_))))
                            (let ((_%hd206484206501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206483206498%_)))
                                  (_%tl206485206503%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206483206498%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206485206503%_))
                                  (let ((_%e206486206506%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl206485206503%_))))
                                    (let ((_%hd206487206509%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206486206506%_)))
                                          (_%tl206488206511%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206486206506%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206488206511%_))
                                          ((lambda (_%L206514%_ _%L206515%_)
                                             (let* ((_%klass206531%_
                                                     (let ((__tmp209367
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206467%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx206463%_
                                                        __tmp209367)))
                                                    (_%field206533%_
                                                     (let ((__tmp209368
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206467%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass206531%_
                                                        __tmp209368)))
                                                    (_%object206535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206462%_
                                                        _%L206515%_)))
                                                    (_%value206537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206462%_
                                                        _%L206514%_)))
                                                    (_%klass206540%_
                                                     _%klass206531%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206540%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209369
                                                          (cons (if (or _%arguments-ok?206477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206467%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206467%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206533%_ '()))
                                    (cons _%object206535%_
                                          (cons _%value206537%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209369
                                                      _%stx206463%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass206540%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp209370
                                                              (cons (if (or _%arguments-ok?206477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self206467%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206467%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206533%_ '()))
                                        (cons _%object206535%_
                                              (cons _%value206537%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp209370 _%stx206463%_))
               (let ((_%$e206560%_
                      (let ((__tmp209371
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206467%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass206540%_
                         __tmp209371))))
                 (if _%$e206560%_
                     ((lambda (_%klass206563%_)
                        (let ((__tmp209372
                               (cons (if (or _%arguments-ok?206477%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206467%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206467%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field206533%_
                                                             '()))
                                                 (cons _%object206535%_
                                                       (cons _%value206537%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp209372 _%stx206463%_)))
                      _%$e206560%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206467%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp209373
                                (let ((_%$obj206569%_
                                       (let ((__tmp209374
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp209374))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj206569%_
                                                                '())
                                                          (cons _%object206535%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass206540%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206569%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self206467%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field206533%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value206537%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?206477%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj206569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206467%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value206537%_ '())))))
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
                                 _%self206467%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj206569%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206467%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value206537%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209373 _%stx206463%_))
                         (let ((__tmp209375
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object206535%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206467%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value206537%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp209375
                            _%stx206463%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd206487206509%_
                                           _%hd206484206501%_)
                                          (_%g206479206493%_
                                           _%g206480206496%_))))
                                  (_%g206479206493%_ _%g206480206496%_))))
                          (_%g206479206493%_ _%g206480206496%_)))))
              (_%g206478206572%_ _%args206464%_))))))
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
      (lambda (_%self206276%_ _%ctx206277%_ _%stx206278%_ _%args206279%_)
        (let* ((_%self206282%_ _%self206276%_)
               (_%self206291206301%_ _%self206282%_)
               (_%E206293206305%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206291206301%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K206294206315%_
                (lambda (_%inline206308%_ _%dispatch206309%_ _%arity206310%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self206282%_
                         _%args206279%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx206278%_
                         _%arity206310%_)))
                  (if _%inline206308%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp209376 (_%inline206308%_ _%stx206278%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp209376
                           _%stx206278%_
                           _%ctx206277%_)))
                      (if (and _%dispatch206309%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch206309%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch206309%_))
                            (let ((__tmp209377
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch206309%_
                                                           '()))
                                               _%args206279%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp209377
                               _%stx206278%_
                               _%ctx206277%_)))
                          (gxc#!procedure::optimize-call
                           _%self206282%_
                           _%ctx206277%_
                           _%stx206278%_
                           _%args206279%_)))))
               (_%e206295206318%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206291206301%_ '1 '#f '#f)))
               (_%e206296206321%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206291206301%_ '2 '#f '#f)))
               (_%e206297206324%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206291206301%_ '3 '#f '#f)))
               (_%arity206327%_ _%e206297206324%_)
               (_%e206298206329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206291206301%_ '4 '#f '#f)))
               (_%dispatch206332%_ _%e206298206329%_)
               (_%e206299206334%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206291206301%_ '5 '#f '#f)))
               (_%inline206337%_ _%e206299206334%_))
          (_%K206294206315%_
           _%inline206337%_
           _%dispatch206332%_
           _%arity206327%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self206128%_ _%ctx206129%_ _%stx206130%_ _%args206131%_)
        (let* ((_%self206134%_ _%self206128%_)
               (_%$e206148%_
                (let ((__tmp209379
                       (lambda (_%g206143206145%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g206143206145%_
                            _%args206131%_))))
                      (__tmp209378
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206134%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp209379 __tmp209378))))
          (if _%$e206148%_
              ((lambda (_%clause206151%_)
                 (let ((__method209283
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause206151%_ 'optimize-call))))
                   (if __method209283
                       (let ()
                         (declare (not safe))
                         (__method209283
                          _%clause206151%_
                          _%ctx206129%_
                          _%stx206130%_
                          _%args206131%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause206151%_
                                  'optimize-call))
                         '#!void))))
               _%$e206148%_)
              (let ((__tmp209380
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self206134%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx206130%_
                 __tmp209380))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self205868%_ _%ctx205869%_ _%stx205870%_ _%args205871%_)
        (let* ((_%self205874%_ _%self205868%_)
               (_%self205883205892%_ _%self205874%_)
               (_%E205885205896%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self205883205892%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K205886205987%_
                (lambda (_%dispatch205899%_ _%table205900%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch205899%_))
                      (let* ((_%g205901205911%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch205899%_)))
                             (_%else205903205919%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch205899%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx205869%_
                                   _%stx205870%_))))
                             (_%K205905205968%_
                              (lambda (_%main205922%_ _%keys205923%_)
                                (let ((_g209381_
                                       (gxc#!kw-lambda-split-args
                                        _%stx205870%_
                                        _%args205871%_)))
                                  (begin
                                    (let ((_g209382_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g209381_)
                                                 (##values-length _g209381_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g209382_ 2)))
                                          (error "Context expects 2 values"
                                                 _g209382_)))
                                    (let ((_%pargs205925%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209381_ 0)))
                                          (_%kwargs205926%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209381_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main205922%_))
                                        (if _%table205900%_
                                            (let ((_%xargs205934%_
                                                   (map (lambda (_%key205928%_)
                                                          (let ((_%$e205930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key205928%_ _%kwargs205926%_))))
                    (if _%$e205930%_ _%$e205930%_ '(%#ref absent-value))))
                _%keys205923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw205936%_)
                                                 (if (memq (car _%kw205936%_)
                                                           _%keys205923%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx205870%_
                                                        _%keys205923%_
                                                        _%kw205936%_))))
                                               _%kwargs205926%_)
                                              (let ((__tmp209383
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main205922%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs205925%_
                                  _%xargs205934%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp209383
                                                 _%stx205870%_
                                                 _%ctx205869%_)))
                                            (let* ((_%kwt205938%_
                                                    (let ((__tmp209384
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp209384)))
                                                   (_%kwvars205942%_
                                                    (map (lambda (_%_205940%_)
                                                           (let ((__tmp209385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp209385)))
                 _%kwargs205926%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind205947%_
                                                    (map (lambda (_%kw205944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205945%_)
                   (cons (cons _%kwvar205945%_ '())
                         (cons (cdr _%kw205944%_) '())))
                 _%kwargs205926%_
                 _%kwvars205942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset205952%_
                                                    (map (lambda (_%kw205949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205950%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt205938%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw205949%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar205950%_
                                                             '()))
                                                 '()))))))
                 _%kwargs205926%_
                 _%kwvars205942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs205957%_
                                                    (map (lambda (_%kw205954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205955%_)
                   (cons (car _%kw205954%_)
                         (cons '%#ref (cons _%kwvar205955%_ '()))))
                 _%kwargs205926%_
                 _%kwvars205942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs205965%_
                                                    (map (lambda (_%key205959%_)
                                                           (let ((_%$e205961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key205959%_ _%xkwargs205957%_))))
                     (if _%$e205961%_ _%$e205961%_ '(%#ref absent-value))))
                 _%keys205923%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp209386
                                                    (cons '%#let-values
                                                          (cons _%kwbind205947%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt205938%_ '())
                                                      (cons (let ((__tmp209387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs205926%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209387 _%stx205870%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp209388
                                                             (cons (let ((__tmp209389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main205922%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt205938%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs205925%_
                                                       _%xargs205965%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp209389 _%stx205870%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp209388 _%kwset205952%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp209386
                                               _%stx205870%_
                                               _%ctx205869%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g205901205911%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e205906205971%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205901205911%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e205907205974%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205901205911%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e205908205977%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205901205911%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys205980%_ _%e205908205977%_)
                                   (_%e205909205982%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205901205911%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main205985%_ _%e205909205982%_))
                              (_%K205905205968%_
                               _%main205985%_
                               _%keys205980%_))
                            (_%else205903205919%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx205869%_ _%stx205870%_)))))
               (_%e205887205990%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205883205892%_ '1 '#f '#f)))
               (_%e205888205993%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205883205892%_ '2 '#f '#f)))
               (_%e205889205996%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205883205892%_ '3 '#f '#f)))
               (_%table205999%_ _%e205889205996%_)
               (_%e205890206001%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205883205892%_ '4 '#f '#f)))
               (_%dispatch206004%_ _%e205890206001%_))
          (_%K205886205987%_ _%dispatch206004%_ _%table205999%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx205481%_ _%args205482%_)
        (let _%lp205484%_ ((_%rest205486%_ _%args205482%_)
                           (_%pargs205487%_ '())
                           (_%kwargs205488%_ '()))
          (let* ((_%__stx208842208843%_ _%rest205486%_)
                 (_%g205494205546%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208842208843%_)))))
            (let ((_%__kont208844208845%_
                   (lambda (_%L205725%_ _%L205726%_)
                     (_%lp205484%_
                      _%L205725%_
                      (cons _%L205726%_ _%pargs205487%_)
                      _%kwargs205488%_)))
                  (_%__kont208846208847%_
                   (lambda (_%L205671%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L205671%_ _%pargs205487%_))
                             (reverse _%kwargs205488%_))))
                  (_%__kont208848208849%_
                   (lambda (_%L205618%_ _%L205619%_ _%L205620%_)
                     (let ((_%kw205637%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L205620%_))))
                       (if (assq _%kw205637%_ _%kwargs205488%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx205481%_
                              _%kw205637%_))
                           (_%lp205484%_
                            _%L205618%_
                            _%pargs205487%_
                            (cons (cons _%kw205637%_ _%L205619%_)
                                  _%kwargs205488%_))))))
                  (_%__kont208850208851%_
                   (lambda (_%L205566%_ _%L205567%_)
                     (_%lp205484%_
                      _%L205566%_
                      (cons _%L205567%_ _%pargs205487%_)
                      _%kwargs205488%_)))
                  (_%__kont208852208853%_
                   (lambda ()
                     (values (reverse _%pargs205487%_)
                             (reverse _%kwargs205488%_)))))
              (let ((_%__match208949208950%_
                     (lambda (_%e205525205586%_
                              _%hd205526205589%_
                              _%tl205527205591%_
                              _%e205528205594%_
                              _%hd205529205597%_
                              _%tl205530205599%_
                              _%e205531205602%_
                              _%hd205532205605%_
                              _%tl205533205607%_
                              _%e205534205610%_
                              _%hd205535205613%_
                              _%tl205536205615%_)
                       (let ((_%L205618%_ _%tl205536205615%_)
                             (_%L205619%_ _%hd205535205613%_)
                             (_%L205620%_ _%hd205532205605%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L205620%_))
                             (_%__kont208848208849%_
                              _%L205618%_
                              _%L205619%_
                              _%L205620%_)
                             (_%__kont208850208851%_
                              _%tl205527205591%_
                              _%hd205526205589%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx208842208843%_))
                    (let ((_%e205498205690%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx208842208843%_))))
                      (let ((_%tl205500205695%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205498205690%_)))
                            (_%hd205499205693%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205498205690%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd205499205693%_))
                            (let ((_%e205501205698%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd205499205693%_))))
                              (let ((_%tl205503205703%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205501205698%_)))
                                    (_%hd205502205701%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205501205698%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd205502205701%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd205502205701%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205503205703%_))
                                            (let ((_%e205504205706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl205503205703%_))))
                                              (let ((_%tl205506205711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205504205706%_)))
                                                    (_%hd205505205709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205504205706%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205505205709%_))
                                                    (let ((_%e205507205714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205505205709%_))))
                                                      (if (equal? _%e205507205714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205506205711%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205500205695%_))
                          (let ((_%e205508205717%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205500205695%_))))
                            (let ((_%tl205510205722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205508205717%_)))
                                  (_%hd205509205720%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205508205717%_))))
                              (_%__kont208844208845%_
                               _%tl205510205722%_
                               _%hd205509205720%_)))
                          (_%__kont208850208851%_
                           _%tl205500205695%_
                           _%hd205499205693%_))
                      (_%__kont208850208851%_
                       _%tl205500205695%_
                       _%hd205499205693%_))
                  (if (equal? _%e205507205714%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205506205711%_))
                          (_%__kont208846208847%_ _%tl205500205695%_)
                          (_%__kont208850208851%_
                           _%tl205500205695%_
                           _%hd205499205693%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205506205711%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205500205695%_))
                              (let ((_%e205534205610%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205500205695%_))))
                                (let ((_%tl205536205615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205534205610%_)))
                                      (_%hd205535205613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205534205610%_))))
                                  (_%__match208949208950%_
                                   _%e205498205690%_
                                   _%hd205499205693%_
                                   _%tl205500205695%_
                                   _%e205501205698%_
                                   _%hd205502205701%_
                                   _%tl205503205703%_
                                   _%e205504205706%_
                                   _%hd205505205709%_
                                   _%tl205506205711%_
                                   _%e205534205610%_
                                   _%hd205535205613%_
                                   _%tl205536205615%_)))
                              (_%__kont208850208851%_
                               _%tl205500205695%_
                               _%hd205499205693%_))
                          (_%__kont208850208851%_
                           _%tl205500205695%_
                           _%hd205499205693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205506205711%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205500205695%_))
                                                            (let ((_%e205534205610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl205500205695%_))))
                      (let ((_%tl205536205615%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205534205610%_)))
                            (_%hd205535205613%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205534205610%_))))
                        (_%__match208949208950%_
                         _%e205498205690%_
                         _%hd205499205693%_
                         _%tl205500205695%_
                         _%e205501205698%_
                         _%hd205502205701%_
                         _%tl205503205703%_
                         _%e205504205706%_
                         _%hd205505205709%_
                         _%tl205506205711%_
                         _%e205534205610%_
                         _%hd205535205613%_
                         _%tl205536205615%_)))
                    (_%__kont208850208851%_
                     _%tl205500205695%_
                     _%hd205499205693%_))
                (_%__kont208850208851%_
                 _%tl205500205695%_
                 _%hd205499205693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont208850208851%_
                                             _%tl205500205695%_
                                             _%hd205499205693%_))
                                        (_%__kont208850208851%_
                                         _%tl205500205695%_
                                         _%hd205499205693%_))
                                    (_%__kont208850208851%_
                                     _%tl205500205695%_
                                     _%hd205499205693%_))))
                            (_%__kont208850208851%_
                             _%tl205500205695%_
                             _%hd205499205693%_))))
                    (_%__kont208852208853%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self205465%_ _%ctx205466%_ _%stx205467%_ _%args205468%_)
        (let ((_%self205471%_ _%self205465%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx205466%_ _%stx205467%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self205153%_ _%stx205154%_)
        (let* ((_%__stx208958208959%_ _%stx205154%_)
               (_%g205157205197%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208958208959%_)))))
          (let ((_%__kont208960208961%_
                 (lambda (_%L205303%_ _%L205304%_)
                   (let ((_%$e205331%_
                          (member 'return:
                                  (let ((__tmp209390
                                         (lambda (_%g205323205326%_
                                                  _%g205324205328%_)
                                           (cons _%g205323205326%_
                                                 _%g205324205328%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp209390 '() _%L205304%_))
                                  gx#stx-eq?)))
                     (if _%$e205331%_
                         ((lambda (_%tail205334%_)
                            (let ((_%type205336%_
                                   (let ((__tmp209391
                                          (let ((__tmp209392
                                                 (cadr _%tail205334%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp209392))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx205154%_
                                      __tmp209391))))
                              (gxc#check-return-type!
                               _%stx205154%_
                               _%L205303%_
                               _%type205336%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self205153%_
                                 _%L205303%_))))
                          _%$e205331%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self205153%_ _%L205303%_))))))
                (_%__kont208964208965%_
                 (lambda (_%L205226%_ _%L205227%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205153%_ _%L205226%_)))))
            (let ((_%__match208995208996%_
                   (lambda (_%e205161205247%_
                            _%hd205162205250%_
                            _%tl205163205252%_
                            _%e205164205255%_
                            _%hd205165205258%_
                            _%tl205166205260%_
                            _%e205167205263%_
                            _%hd205168205266%_
                            _%tl205169205268%_
                            _%__splice208962208963%_
                            _%target205170205271%_
                            _%tl205172205273%_)
                     (letrec ((_%loop205173205276%_
                               (lambda (_%hd205171205279%_
                                        _%signature205177205281%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205171205279%_))
                                     (let ((_%e205174205284%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd205171205279%_))))
                                       (let ((_%lp-tl205176205289%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205174205284%_)))
                                             (_%lp-hd205175205287%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205174205284%_))))
                                         (_%loop205173205276%_
                                          _%lp-tl205176205289%_
                                          (cons _%lp-hd205175205287%_
                                                _%signature205177205281%_))))
                                     (let ((_%signature205178205292%_
                                            (reverse _%signature205177205281%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl205166205260%_))
                                           (let ((_%e205179205295%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl205166205260%_))))
                                             (let ((_%tl205181205300%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e205179205295%_)))
                                                   (_%hd205180205298%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e205179205295%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl205181205300%_))
                                                   (_%__kont208960208961%_
                                                    _%hd205180205298%_
                                                    _%signature205178205292%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g205157205197%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g205157205197%_))))))))
                       (_%loop205173205276%_ _%target205170205271%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208958208959%_))
                  (let ((_%e205161205247%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208958208959%_))))
                    (let ((_%tl205163205252%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205161205247%_)))
                          (_%hd205162205250%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205161205247%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205163205252%_))
                          (let ((_%e205164205255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205163205252%_))))
                            (let ((_%tl205166205260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205164205255%_)))
                                  (_%hd205165205258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205164205255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd205165205258%_))
                                  (let ((_%e205167205263%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205165205258%_))))
                                    (let ((_%tl205169205268%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205167205263%_)))
                                          (_%hd205168205266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205167205263%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd205168205266%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd205168205266%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl205169205268%_))
                                                  (let ((_%__splice208962208963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl205169205268%_
                                                            '0))))
                                                    (let ((_%tl205172205273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208962208963%_
                                                              '1)))
                                                          (_%target205170205271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208962208963%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205172205273%_))
                                                          (_%__match208995208996%_
                                                           _%e205161205247%_
                                                           _%hd205162205250%_
                                                           _%tl205163205252%_
                                                           _%e205164205255%_
                                                           _%hd205165205258%_
                                                           _%tl205166205260%_
                                                           _%e205167205263%_
                                                           _%hd205168205266%_
                                                           _%tl205169205268%_
                                                           _%__splice208962208963%_
                                                           _%target205170205271%_
                                                           _%tl205172205273%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl205166205260%_))
                      (let ((_%e205190205218%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl205166205260%_))))
                        (let ((_%tl205192205223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205190205218%_)))
                              (_%hd205191205221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205190205218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205192205223%_))
                              (_%__kont208964208965%_
                               _%hd205191205221%_
                               _%hd205165205258%_)
                              (let ()
                                (declare (not safe))
                                (_%g205157205197%_)))))
                      (let () (declare (not safe)) (_%g205157205197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205166205260%_))
                                                      (let ((_%e205190205218%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl205166205260%_))))
                (let ((_%tl205192205223%_
                       (let () (declare (not safe)) (##cdr _%e205190205218%_)))
                      (_%hd205191205221%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205190205218%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205192205223%_))
                      (_%__kont208964208965%_
                       _%hd205191205221%_
                       _%hd205165205258%_)
                      (let () (declare (not safe)) (_%g205157205197%_)))))
              (let () (declare (not safe)) (_%g205157205197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205166205260%_))
                                                  (let ((_%e205190205218%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl205166205260%_))))
                                                    (let ((_%tl205192205223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205190205218%_)))
                                                          (_%hd205191205221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205190205218%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205192205223%_))
                                                          (_%__kont208964208965%_
                                                           _%hd205191205221%_
                                                           _%hd205165205258%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205157205197%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205157205197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205166205260%_))
                                              (let ((_%e205190205218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl205166205260%_))))
                                                (let ((_%tl205192205223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205190205218%_)))
                                                      (_%hd205191205221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205190205218%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205192205223%_))
                                                      (_%__kont208964208965%_
                                                       _%hd205191205221%_
                                                       _%hd205165205258%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205157205197%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205157205197%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205166205260%_))
                                      (let ((_%e205190205218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205166205260%_))))
                                        (let ((_%tl205192205223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205190205218%_)))
                                              (_%hd205191205221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205190205218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205192205223%_))
                                              (_%__kont208964208965%_
                                               _%hd205191205221%_
                                               _%hd205165205258%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205157205197%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205157205197%_))))))
                          (let () (declare (not safe)) (_%g205157205197%_)))))
                  (let () (declare (not safe)) (_%g205157205197%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx205128%_ _%expr205129%_ _%type205130%_)
        (let ((_%$e205132%_ (not _%type205130%_)))
          (if _%$e205132%_
              _%$e205132%_
              (let ((_%$e205135%_
                     (eq? (##structure-ref _%type205130%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e205135%_
                    _%$e205135%_
                    (let ((_%$e205138%_
                           (eq? (##structure-ref
                                 _%type205130%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e205138%_
                          _%$e205138%_
                          (let ((_%expr-type205142%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr205129%_))))
                            (if (not _%expr-type205142%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx205128%_
                                   _%type205130%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type205142%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx205128%_
                                       _%type205130%_
                                       _%expr-type205142%_))
                                    (let ((_%$e205146%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type205142%_
                                              'gxc#!abort::t))))
                                      (if _%$e205146%_
                                          _%$e205146%_
                                          (let ((_%$e205149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type205142%_
                                                    _%type205130%_))))
                                            (if _%$e205149%_
                                                _%$e205149%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx205128%_
                                                   _%type205130%_
                                                   _%expr-type205142%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self204554%_ _%stx204555%_)
        (let* ((_%__stx209040209041%_ _%stx204555%_)
               (_%g204560204670%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209040209041%_)))))
          (let ((_%__kont209042209043%_
                 (lambda (_%L205102%_ _%L205103%_ _%L205104%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L205104%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204554%_ _%L205103%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204554%_ _%L205102%_)))))
                (_%__kont209044209045%_
                 (lambda (_%L204928%_ _%L204929%_ _%L204930%_ _%L204931%_)
                   (let ((_%$e204963%_
                          (let ((__tmp209393
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L204931%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp209393))))
                     (if _%$e204963%_
                         ((lambda (_%pred-type204966%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type204966%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type204966%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test204971%_
                                        (let ((__tmp209394
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L204931%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L204930%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp209394
                                           _%stx204555%_
                                           _%self204554%_)))
                                       (_%K204975%_
                                        (let ((__tmp209395
                                               (lambda ()
                                                 (let ((__tmp209398
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self204554%_
                                                             _%L204929%_))))
                                                       (__tmp209396
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L204930%_))
                            (let ((__tmp209397
                                   (##structure-ref
                                    _%pred-type204966%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx204555%_
                               __tmp209397)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp209398
                                                    gxc#current-compile-path-type
                                                    __tmp209396)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209395)))
                                       (_%E204978%_
                                        (let ((__tmp209399
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self204554%_
                                                    _%L204928%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209399)))
                                       (_%__stx209018209019%_ _%test204971%_)
                                       (_%g204982204996%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx209018209019%_)))))
                                  (let ((_%__kont209020209021%_
                                         (lambda (_%L205024%_ _%L205025%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L205024%_))
                                               (force _%K204975%_)
                                               (force _%E204978%_))))
                                        (_%__kont209022209023%_
                                         (lambda ()
                                           (let ((__tmp209400
                                                  (cons '%#if
                                                        (cons _%test204971%_
                                                              (cons (force _%K204975%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E204978%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209400
                                              _%stx204555%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx209018209019%_))
                                        (let ((_%e204986205008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx209018209019%_))))
                                          (let ((_%tl204988205013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204986205008%_)))
                                                (_%hd204987205011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204986205008%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204988205013%_))
                                                (let ((_%e204989205016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl204988205013%_))))
                                                  (let ((_%tl204991205021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204989205016%_)))
                                                        (_%hd204990205019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204989205016%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl204991205021%_))
                                                        (_%__kont209020209021%_
                                                         _%hd204990205019%_
                                                         _%hd204987205011%_)
                                                        (_%__kont209022209023%_))))
                                                (_%__kont209022209023%_))))
                                        (_%__kont209022209023%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self204554%_
                                   _%stx204555%_))))
                          _%$e204963%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self204554%_
                            _%stx204555%_))))))
                (_%__kont209046209047%_
                 (lambda (_%L204804%_ _%L204805%_ _%L204806%_ _%L204807%_)
                   (gxc#optimize-if%
                    _%self204554%_
                    (let ((__tmp209401
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L204806%_
                                       (cons _%L204804%_
                                             (cons _%L204805%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209401 _%stx204555%_)))))
                (_%__kont209048209049%_
                 (lambda (_%L204707%_ _%L204708%_ _%L204709%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self204554%_ _%stx204555%_)))))
            (let ((_%__match209247209248%_
                   (lambda (_%e204624204732%_
                            _%hd204625204735%_
                            _%tl204626204737%_
                            _%e204627204740%_
                            _%hd204628204743%_
                            _%tl204629204745%_
                            _%e204630204748%_
                            _%hd204631204751%_
                            _%tl204632204753%_
                            _%e204633204756%_
                            _%hd204634204759%_
                            _%tl204635204761%_
                            _%e204636204764%_
                            _%hd204637204767%_
                            _%tl204638204769%_
                            _%e204639204772%_
                            _%hd204640204775%_
                            _%tl204641204777%_
                            _%e204642204780%_
                            _%hd204643204783%_
                            _%tl204644204785%_
                            _%e204645204788%_
                            _%hd204646204791%_
                            _%tl204647204793%_
                            _%e204648204796%_
                            _%hd204649204799%_
                            _%tl204650204801%_)
                     (let ((_%L204804%_ _%hd204649204799%_)
                           (_%L204805%_ _%hd204646204791%_)
                           (_%L204806%_ _%hd204643204783%_)
                           (_%L204807%_ _%hd204640204775%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L204807%_ 'not))
                           (_%__kont209046209047%_
                            _%L204804%_
                            _%L204805%_
                            _%L204806%_
                            _%L204807%_)
                           (_%__kont209048209049%_
                            _%hd204649204799%_
                            _%hd204646204791%_
                            _%hd204628204743%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209040209041%_))
                  (let ((_%e204565205054%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209040209041%_))))
                    (let ((_%tl204567205059%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204565205054%_)))
                          (_%hd204566205057%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204565205054%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204567205059%_))
                          (let ((_%e204568205062%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204567205059%_))))
                            (let ((_%tl204570205067%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204568205062%_)))
                                  (_%hd204569205065%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204568205062%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204569205065%_))
                                  (let ((_%e204571205070%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204569205065%_))))
                                    (let ((_%tl204573205075%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204571205070%_)))
                                          (_%hd204572205073%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204571205070%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204572205073%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd204572205073%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204573205075%_))
                                                  (let ((_%e204574205078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204573205075%_))))
                                                    (let ((_%tl204576205083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204574205078%_)))
                                                          (_%hd204575205081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204574205078%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204576205083%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204570205067%_))
                      (let ((_%e204577205086%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204570205067%_))))
                        (let ((_%tl204579205091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204577205086%_)))
                              (_%hd204578205089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204577205086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204579205091%_))
                              (let ((_%e204580205094%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204579205091%_))))
                                (let ((_%tl204582205099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204580205094%_)))
                                      (_%hd204581205097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204580205094%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204582205099%_))
                                      (_%__kont209042209043%_
                                       _%hd204581205097%_
                                       _%hd204578205089%_
                                       _%hd204575205081%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204560204670%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204560204670%_)))))
                      (let () (declare (not safe)) (_%g204560204670%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204570205067%_))
                      (let ((_%e204660204691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204570205067%_))))
                        (let ((_%tl204662204696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204660204691%_)))
                              (_%hd204661204694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204660204691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204662204696%_))
                              (let ((_%e204663204699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204662204696%_))))
                                (let ((_%tl204665204704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204663204699%_)))
                                      (_%hd204664204702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204663204699%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204665204704%_))
                                      (_%__kont209048209049%_
                                       _%hd204664204702%_
                                       _%hd204661204694%_
                                       _%hd204569205065%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204560204670%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204560204670%_)))))
                      (let () (declare (not safe)) (_%g204560204670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204570205067%_))
                                                      (let ((_%e204660204691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204570205067%_))))
                (let ((_%tl204662204696%_
                       (let () (declare (not safe)) (##cdr _%e204660204691%_)))
                      (_%hd204661204694%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204660204691%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204662204696%_))
                      (let ((_%e204663204699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204662204696%_))))
                        (let ((_%tl204665204704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204663204699%_)))
                              (_%hd204664204702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204663204699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204665204704%_))
                              (_%__kont209048209049%_
                               _%hd204664204702%_
                               _%hd204661204694%_
                               _%hd204569205065%_)
                              (let ()
                                (declare (not safe))
                                (_%g204560204670%_)))))
                      (let () (declare (not safe)) (_%g204560204670%_)))))
              (let () (declare (not safe)) (_%g204560204670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd204572205073%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204573205075%_))
                                                      (let ((_%e204596204864%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204573205075%_))))
                (let ((_%tl204598204869%_
                       (let () (declare (not safe)) (##cdr _%e204596204864%_)))
                      (_%hd204597204867%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204596204864%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd204597204867%_))
                      (let ((_%e204599204872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204597204867%_))))
                        (let ((_%tl204601204877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204599204872%_)))
                              (_%hd204600204875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204599204872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd204600204875%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd204600204875%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204601204877%_))
                                      (let ((_%e204602204880%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204601204877%_))))
                                        (let ((_%tl204604204885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204602204880%_)))
                                              (_%hd204603204883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204602204880%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204604204885%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204598204869%_))
                                                  (let ((_%e204605204888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204598204869%_))))
                                                    (let ((_%tl204607204893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204605204888%_)))
                                                          (_%hd204606204891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204605204888%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204606204891%_))
                                                          (let ((_%e204608204896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd204606204891%_))))
                    (let ((_%tl204610204901%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204608204896%_)))
                          (_%hd204609204899%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204608204896%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204609204899%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd204609204899%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204610204901%_))
                                  (let ((_%e204611204904%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204610204901%_))))
                                    (let ((_%tl204613204909%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204611204904%_)))
                                          (_%hd204612204907%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204611204904%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204613204909%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204607204893%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204570205067%_))
                                                  (let ((_%e204614204912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204570205067%_))))
                                                    (let ((_%tl204616204917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204614204912%_)))
                                                          (_%hd204615204915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204614204912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204616204917%_))
                                                          (let ((_%e204617204920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204616204917%_))))
                    (let ((_%tl204619204925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204617204920%_)))
                          (_%hd204618204923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204617204920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204619204925%_))
                          (_%__kont209044209045%_
                           _%hd204618204923%_
                           _%hd204615204915%_
                           _%hd204612204907%_
                           _%hd204603204883%_)
                          (let () (declare (not safe)) (_%g204560204670%_)))))
                  (let () (declare (not safe)) (_%g204560204670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204570205067%_))
                                                  (let ((_%e204660204691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204570205067%_))))
                                                    (let ((_%tl204662204696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204660204691%_)))
                                                          (_%hd204661204694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204660204691%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204662204696%_))
                                                          (let ((_%e204663204699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204662204696%_))))
                    (let ((_%tl204665204704%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204663204699%_)))
                          (_%hd204664204702%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204663204699%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204665204704%_))
                          (_%__kont209048209049%_
                           _%hd204664204702%_
                           _%hd204661204694%_
                           _%hd204569205065%_)
                          (let () (declare (not safe)) (_%g204560204670%_)))))
                  (let () (declare (not safe)) (_%g204560204670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204607204893%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204570205067%_))
                                                  (let ((_%e204645204788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204570205067%_))))
                                                    (let ((_%tl204647204793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204645204788%_)))
                                                          (_%hd204646204791%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204645204788%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204647204793%_))
                                                          (let ((_%e204648204796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204647204793%_))))
                    (let ((_%tl204650204801%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204648204796%_)))
                          (_%hd204649204799%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204648204796%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204650204801%_))
                          (_%__match209247209248%_
                           _%e204565205054%_
                           _%hd204566205057%_
                           _%tl204567205059%_
                           _%e204568205062%_
                           _%hd204569205065%_
                           _%tl204570205067%_
                           _%e204571205070%_
                           _%hd204572205073%_
                           _%tl204573205075%_
                           _%e204596204864%_
                           _%hd204597204867%_
                           _%tl204598204869%_
                           _%e204599204872%_
                           _%hd204600204875%_
                           _%tl204601204877%_
                           _%e204602204880%_
                           _%hd204603204883%_
                           _%tl204604204885%_
                           _%e204605204888%_
                           _%hd204606204891%_
                           _%tl204607204893%_
                           _%e204645204788%_
                           _%hd204646204791%_
                           _%tl204647204793%_
                           _%e204648204796%_
                           _%hd204649204799%_
                           _%tl204650204801%_)
                          (let () (declare (not safe)) (_%g204560204670%_)))))
                  (let () (declare (not safe)) (_%g204560204670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204570205067%_))
                                                  (let ((_%e204660204691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204570205067%_))))
                                                    (let ((_%tl204662204696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204660204691%_)))
                                                          (_%hd204661204694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204660204691%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204662204696%_))
                                                          (let ((_%e204663204699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204662204696%_))))
                    (let ((_%tl204665204704%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204663204699%_)))
                          (_%hd204664204702%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204663204699%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204665204704%_))
                          (_%__kont209048209049%_
                           _%hd204664204702%_
                           _%hd204661204694%_
                           _%hd204569205065%_)
                          (let () (declare (not safe)) (_%g204560204670%_)))))
                  (let () (declare (not safe)) (_%g204560204670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204607204893%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204570205067%_))
                                          (let ((_%e204645204788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204570205067%_))))
                                            (let ((_%tl204647204793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204645204788%_)))
                                                  (_%hd204646204791%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204645204788%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204647204793%_))
                                                  (let ((_%e204648204796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204647204793%_))))
                                                    (let ((_%tl204650204801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204648204796%_)))
                                                          (_%hd204649204799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204648204796%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204650204801%_))
                                                          (_%__match209247209248%_
                                                           _%e204565205054%_
                                                           _%hd204566205057%_
                                                           _%tl204567205059%_
                                                           _%e204568205062%_
                                                           _%hd204569205065%_
                                                           _%tl204570205067%_
                                                           _%e204571205070%_
                                                           _%hd204572205073%_
                                                           _%tl204573205075%_
                                                           _%e204596204864%_
                                                           _%hd204597204867%_
                                                           _%tl204598204869%_
                                                           _%e204599204872%_
                                                           _%hd204600204875%_
                                                           _%tl204601204877%_
                                                           _%e204602204880%_
                                                           _%hd204603204883%_
                                                           _%tl204604204885%_
                                                           _%e204605204888%_
                                                           _%hd204606204891%_
                                                           _%tl204607204893%_
                                                           _%e204645204788%_
                                                           _%hd204646204791%_
                                                           _%tl204647204793%_
                                                           _%e204648204796%_
                                                           _%hd204649204799%_
                                                           _%tl204650204801%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204560204670%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204570205067%_))
                                          (let ((_%e204660204691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204570205067%_))))
                                            (let ((_%tl204662204696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204660204691%_)))
                                                  (_%hd204661204694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204660204691%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204662204696%_))
                                                  (let ((_%e204663204699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204662204696%_))))
                                                    (let ((_%tl204665204704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204663204699%_)))
                                                          (_%hd204664204702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204663204699%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204665204704%_))
                                                          (_%__kont209048209049%_
                                                           _%hd204664204702%_
                                                           _%hd204661204694%_
                                                           _%hd204569205065%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204560204670%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204607204893%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204570205067%_))
                                      (let ((_%e204645204788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204570205067%_))))
                                        (let ((_%tl204647204793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204645204788%_)))
                                              (_%hd204646204791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204645204788%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204647204793%_))
                                              (let ((_%e204648204796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204647204793%_))))
                                                (let ((_%tl204650204801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204648204796%_)))
                                                      (_%hd204649204799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204648204796%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204650204801%_))
                                                      (_%__match209247209248%_
                                                       _%e204565205054%_
                                                       _%hd204566205057%_
                                                       _%tl204567205059%_
                                                       _%e204568205062%_
                                                       _%hd204569205065%_
                                                       _%tl204570205067%_
                                                       _%e204571205070%_
                                                       _%hd204572205073%_
                                                       _%tl204573205075%_
                                                       _%e204596204864%_
                                                       _%hd204597204867%_
                                                       _%tl204598204869%_
                                                       _%e204599204872%_
                                                       _%hd204600204875%_
                                                       _%tl204601204877%_
                                                       _%e204602204880%_
                                                       _%hd204603204883%_
                                                       _%tl204604204885%_
                                                       _%e204605204888%_
                                                       _%hd204606204891%_
                                                       _%tl204607204893%_
                                                       _%e204645204788%_
                                                       _%hd204646204791%_
                                                       _%tl204647204793%_
                                                       _%e204648204796%_
                                                       _%hd204649204799%_
                                                       _%tl204650204801%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204560204670%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204560204670%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204560204670%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204570205067%_))
                                      (let ((_%e204660204691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204570205067%_))))
                                        (let ((_%tl204662204696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204660204691%_)))
                                              (_%hd204661204694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204660204691%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204662204696%_))
                                              (let ((_%e204663204699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204662204696%_))))
                                                (let ((_%tl204665204704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204663204699%_)))
                                                      (_%hd204664204702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204663204699%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204665204704%_))
                                                      (_%__kont209048209049%_
                                                       _%hd204664204702%_
                                                       _%hd204661204694%_
                                                       _%hd204569205065%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204560204670%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204560204670%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204560204670%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204607204893%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204570205067%_))
                                  (let ((_%e204645204788%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204570205067%_))))
                                    (let ((_%tl204647204793%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204645204788%_)))
                                          (_%hd204646204791%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204645204788%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204647204793%_))
                                          (let ((_%e204648204796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204647204793%_))))
                                            (let ((_%tl204650204801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204648204796%_)))
                                                  (_%hd204649204799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204648204796%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204650204801%_))
                                                  (_%__match209247209248%_
                                                   _%e204565205054%_
                                                   _%hd204566205057%_
                                                   _%tl204567205059%_
                                                   _%e204568205062%_
                                                   _%hd204569205065%_
                                                   _%tl204570205067%_
                                                   _%e204571205070%_
                                                   _%hd204572205073%_
                                                   _%tl204573205075%_
                                                   _%e204596204864%_
                                                   _%hd204597204867%_
                                                   _%tl204598204869%_
                                                   _%e204599204872%_
                                                   _%hd204600204875%_
                                                   _%tl204601204877%_
                                                   _%e204602204880%_
                                                   _%hd204603204883%_
                                                   _%tl204604204885%_
                                                   _%e204605204888%_
                                                   _%hd204606204891%_
                                                   _%tl204607204893%_
                                                   _%e204645204788%_
                                                   _%hd204646204791%_
                                                   _%tl204647204793%_
                                                   _%e204648204796%_
                                                   _%hd204649204799%_
                                                   _%tl204650204801%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204560204670%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204570205067%_))
                                  (let ((_%e204660204691%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204570205067%_))))
                                    (let ((_%tl204662204696%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204660204691%_)))
                                          (_%hd204661204694%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204660204691%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204662204696%_))
                                          (let ((_%e204663204699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204662204696%_))))
                                            (let ((_%tl204665204704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204663204699%_)))
                                                  (_%hd204664204702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204663204699%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204665204704%_))
                                                  (_%__kont209048209049%_
                                                   _%hd204664204702%_
                                                   _%hd204661204694%_
                                                   _%hd204569205065%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204560204670%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204607204893%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204570205067%_))
                          (let ((_%e204645204788%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204570205067%_))))
                            (let ((_%tl204647204793%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204645204788%_)))
                                  (_%hd204646204791%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204645204788%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204647204793%_))
                                  (let ((_%e204648204796%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204647204793%_))))
                                    (let ((_%tl204650204801%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204648204796%_)))
                                          (_%hd204649204799%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204648204796%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204650204801%_))
                                          (_%__match209247209248%_
                                           _%e204565205054%_
                                           _%hd204566205057%_
                                           _%tl204567205059%_
                                           _%e204568205062%_
                                           _%hd204569205065%_
                                           _%tl204570205067%_
                                           _%e204571205070%_
                                           _%hd204572205073%_
                                           _%tl204573205075%_
                                           _%e204596204864%_
                                           _%hd204597204867%_
                                           _%tl204598204869%_
                                           _%e204599204872%_
                                           _%hd204600204875%_
                                           _%tl204601204877%_
                                           _%e204602204880%_
                                           _%hd204603204883%_
                                           _%tl204604204885%_
                                           _%e204605204888%_
                                           _%hd204606204891%_
                                           _%tl204607204893%_
                                           _%e204645204788%_
                                           _%hd204646204791%_
                                           _%tl204647204793%_
                                           _%e204648204796%_
                                           _%hd204649204799%_
                                           _%tl204650204801%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204560204670%_)))))
                          (let () (declare (not safe)) (_%g204560204670%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204570205067%_))
                          (let ((_%e204660204691%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204570205067%_))))
                            (let ((_%tl204662204696%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204660204691%_)))
                                  (_%hd204661204694%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204660204691%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204662204696%_))
                                  (let ((_%e204663204699%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204662204696%_))))
                                    (let ((_%tl204665204704%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204663204699%_)))
                                          (_%hd204664204702%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204663204699%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204665204704%_))
                                          (_%__kont209048209049%_
                                           _%hd204664204702%_
                                           _%hd204661204694%_
                                           _%hd204569205065%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204560204670%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g204560204670%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204570205067%_))
                                                      (let ((_%e204660204691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204570205067%_))))
                (let ((_%tl204662204696%_
                       (let () (declare (not safe)) (##cdr _%e204660204691%_)))
                      (_%hd204661204694%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204660204691%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204662204696%_))
                      (let ((_%e204663204699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204662204696%_))))
                        (let ((_%tl204665204704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204663204699%_)))
                              (_%hd204664204702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204663204699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204665204704%_))
                              (_%__kont209048209049%_
                               _%hd204664204702%_
                               _%hd204661204694%_
                               _%hd204569205065%_)
                              (let ()
                                (declare (not safe))
                                (_%g204560204670%_)))))
                      (let () (declare (not safe)) (_%g204560204670%_)))))
              (let () (declare (not safe)) (_%g204560204670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204570205067%_))
                                                  (let ((_%e204660204691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204570205067%_))))
                                                    (let ((_%tl204662204696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204660204691%_)))
                                                          (_%hd204661204694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204660204691%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204662204696%_))
                                                          (let ((_%e204663204699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204662204696%_))))
                    (let ((_%tl204665204704%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204663204699%_)))
                          (_%hd204664204702%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204663204699%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204665204704%_))
                          (_%__kont209048209049%_
                           _%hd204664204702%_
                           _%hd204661204694%_
                           _%hd204569205065%_)
                          (let () (declare (not safe)) (_%g204560204670%_)))))
                  (let () (declare (not safe)) (_%g204560204670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204570205067%_))
                                          (let ((_%e204660204691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204570205067%_))))
                                            (let ((_%tl204662204696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204660204691%_)))
                                                  (_%hd204661204694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204660204691%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204662204696%_))
                                                  (let ((_%e204663204699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204662204696%_))))
                                                    (let ((_%tl204665204704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204663204699%_)))
                                                          (_%hd204664204702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204663204699%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204665204704%_))
                                                          (_%__kont209048209049%_
                                                           _%hd204664204702%_
                                                           _%hd204661204694%_
                                                           _%hd204569205065%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204560204670%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204570205067%_))
                                      (let ((_%e204660204691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204570205067%_))))
                                        (let ((_%tl204662204696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204660204691%_)))
                                              (_%hd204661204694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204660204691%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204662204696%_))
                                              (let ((_%e204663204699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204662204696%_))))
                                                (let ((_%tl204665204704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204663204699%_)))
                                                      (_%hd204664204702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204663204699%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204665204704%_))
                                                      (_%__kont209048209049%_
                                                       _%hd204664204702%_
                                                       _%hd204661204694%_
                                                       _%hd204569205065%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204560204670%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204560204670%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204560204670%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204570205067%_))
                                  (let ((_%e204660204691%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204570205067%_))))
                                    (let ((_%tl204662204696%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204660204691%_)))
                                          (_%hd204661204694%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204660204691%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204662204696%_))
                                          (let ((_%e204663204699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204662204696%_))))
                                            (let ((_%tl204665204704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204663204699%_)))
                                                  (_%hd204664204702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204663204699%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204665204704%_))
                                                  (_%__kont209048209049%_
                                                   _%hd204664204702%_
                                                   _%hd204661204694%_
                                                   _%hd204569205065%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204560204670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204560204670%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204570205067%_))
                          (let ((_%e204660204691%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204570205067%_))))
                            (let ((_%tl204662204696%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204660204691%_)))
                                  (_%hd204661204694%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204660204691%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204662204696%_))
                                  (let ((_%e204663204699%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204662204696%_))))
                                    (let ((_%tl204665204704%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204663204699%_)))
                                          (_%hd204664204702%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204663204699%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204665204704%_))
                                          (_%__kont209048209049%_
                                           _%hd204664204702%_
                                           _%hd204661204694%_
                                           _%hd204569205065%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204560204670%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204560204670%_)))))
                          (let () (declare (not safe)) (_%g204560204670%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl204570205067%_))
                  (let ((_%e204660204691%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204570205067%_))))
                    (let ((_%tl204662204696%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204660204691%_)))
                          (_%hd204661204694%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204660204691%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204662204696%_))
                          (let ((_%e204663204699%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204662204696%_))))
                            (let ((_%tl204665204704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204663204699%_)))
                                  (_%hd204664204702%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204663204699%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204665204704%_))
                                  (_%__kont209048209049%_
                                   _%hd204664204702%_
                                   _%hd204661204694%_
                                   _%hd204569205065%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g204560204670%_)))))
                          (let () (declare (not safe)) (_%g204560204670%_)))))
                  (let () (declare (not safe)) (_%g204560204670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204570205067%_))
                                                      (let ((_%e204660204691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204570205067%_))))
                (let ((_%tl204662204696%_
                       (let () (declare (not safe)) (##cdr _%e204660204691%_)))
                      (_%hd204661204694%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204660204691%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204662204696%_))
                      (let ((_%e204663204699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204662204696%_))))
                        (let ((_%tl204665204704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204663204699%_)))
                              (_%hd204664204702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204663204699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204665204704%_))
                              (_%__kont209048209049%_
                               _%hd204664204702%_
                               _%hd204661204694%_
                               _%hd204569205065%_)
                              (let ()
                                (declare (not safe))
                                (_%g204560204670%_)))))
                      (let () (declare (not safe)) (_%g204560204670%_)))))
              (let () (declare (not safe)) (_%g204560204670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204570205067%_))
                                              (let ((_%e204660204691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204570205067%_))))
                                                (let ((_%tl204662204696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204660204691%_)))
                                                      (_%hd204661204694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204660204691%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204662204696%_))
                                                      (let ((_%e204663204699%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204662204696%_))))
                (let ((_%tl204665204704%_
                       (let () (declare (not safe)) (##cdr _%e204663204699%_)))
                      (_%hd204664204702%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204663204699%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204665204704%_))
                      (_%__kont209048209049%_
                       _%hd204664204702%_
                       _%hd204661204694%_
                       _%hd204569205065%_)
                      (let () (declare (not safe)) (_%g204560204670%_)))))
              (let () (declare (not safe)) (_%g204560204670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204560204670%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204570205067%_))
                                      (let ((_%e204660204691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204570205067%_))))
                                        (let ((_%tl204662204696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204660204691%_)))
                                              (_%hd204661204694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204660204691%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204662204696%_))
                                              (let ((_%e204663204699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204662204696%_))))
                                                (let ((_%tl204665204704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204663204699%_)))
                                                      (_%hd204664204702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204663204699%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204665204704%_))
                                                      (_%__kont209048209049%_
                                                       _%hd204664204702%_
                                                       _%hd204661204694%_
                                                       _%hd204569205065%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204560204670%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204560204670%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204560204670%_))))))
                          (let () (declare (not safe)) (_%g204560204670%_)))))
                  (let () (declare (not safe)) (_%g204560204670%_))))))))))
