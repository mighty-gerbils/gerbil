(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1769382902)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp209390 (list gxc#::basic-xform::t))
            (__tmp209389 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp209390
         '()
         __tmp209389
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args208667%_
        (apply make-instance gxc#::optimize-call::t _%$args208667%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp209391
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
        (__make-atomic-promise __tmp209391)))
    (define gxc#apply-optimize-call
      (lambda (_%stx208659%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self208662%_
                (let ((__obj209381
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj209381))
               (__tmp209392
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208662%_ _%stx208659%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209392
           gxc#current-compile-method
           _%self208662%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp209394 (list gxc#::void::t))
            (__tmp209393 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp209394
         '()
         __tmp209393
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args208656%_
        (apply make-instance gxc#::check-return-type::t _%$args208656%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp209395
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
        (__make-atomic-promise __tmp209395)))
    (define gxc#apply-check-return-type
      (lambda (_%stx208648%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self208651%_
                (let ((__obj209383
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj209383))
               (__tmp209396
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208651%_ _%stx208648%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209396
           gxc#current-compile-method
           _%self208651%_))))
    (define gxc#optimize-call%
      (lambda (_%self208255%_ _%stx208256%_)
        (let* ((_%__stx208736208737%_ _%stx208256%_)
               (_%g208259208305%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208736208737%_)))))
          (let ((_%__kont208738208739%_
                 (lambda (_%g208261208444%_ _%g208262208445%_)
                   (let* ((_%rator-id208465%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g208262208445%_)))
                          (_%rator-type208467%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id208465%_))))
                     (if (or (not _%rator-type208467%_)
                             (eq? (##structure-ref
                                   _%rator-type208467%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self208255%_ _%stx208256%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type208467%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp209397
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type208467%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id208465%_
                                  '" => "
                                  _%rator-type208467%_
                                  '" "
                                  __tmp209397))
                               (let* ((_%optimized208482%_
                                       (let ((__method209384
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type208467%_
                                                 'optimize-call))))
                                         (if __method209384
                                             (let ((__tmp209398
                                                    (let ((__tmp209399
                                                           (lambda (_%g208474208477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g208475208479%_)
                     (cons _%g208474208477%_ _%g208475208479%_))))
              (declare (not safe))
              (__foldr1 __tmp209399 '() _%g208261208444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method209384
                                                _%rator-type208467%_
                                                _%self208255%_
                                                _%stx208256%_
                                                __tmp209398))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type208467%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx208684208685%_
                                       _%optimized208482%_)
                                      (_%g208485208514%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx208684208685%_)))))
                                 (let ((_%__kont208686208687%_
                                        (lambda (_%g208487208580%_
                                                 _%g208488208581%_)
                                          (let* ((_%optimized-rator-id208608%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g208488208581%_)))
                                                 (_%rator-type208613%_
                                                  (let ((_%$e208610%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id208608%_))))
                                                    (if _%$e208610%_
                                                        _%$e208610%_
                                                        _%rator-type208467%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type208613%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id208608%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type208613%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type208613%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized208482%_
                                                (let ((__tmp209400
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g208488208581%_ '()))
                           (let ((__tmp209401
                                  (lambda (_%g208621208624%_ _%g208622208626%_)
                                    (cons _%g208621208624%_
                                          _%g208622208626%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209401 '() _%g208487208580%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp209400
                                                   _%stx208256%_))))))
                                       (_%__kont208690208691%_
                                        (lambda () _%optimized208482%_)))
                                   (let ((_%__match208733208734%_
                                          (lambda (_%e208489208526%_
                                                   _%hd208490208529%_
                                                   _%tl208491208531%_
                                                   _%e208492208534%_
                                                   _%hd208493208537%_
                                                   _%tl208494208539%_
                                                   _%e208495208542%_
                                                   _%hd208496208545%_
                                                   _%tl208497208547%_
                                                   _%e208498208550%_
                                                   _%hd208499208553%_
                                                   _%tl208500208555%_
                                                   _%__splice208688208689%_
                                                   _%target208501208558%_
                                                   _%tl208503208560%_)
                                            (letrec ((_%loop208504208563%_
                                                      (lambda (_%hd208502208566%_
                                                               _%arg208508208568%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd208502208566%_))
                                                            (let ((_%e208505208570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd208502208566%_))))
                      (let ((_%lp-tl208507208575%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208505208570%_)))
                            (_%lp-hd208506208573%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208505208570%_))))
                        (_%loop208504208563%_
                         _%lp-tl208507208575%_
                         (cons _%lp-hd208506208573%_ _%arg208508208568%_))))
                    (let ((_%arg208509208578%_ (reverse _%arg208508208568%_)))
                      (_%__kont208686208687%_
                       _%arg208509208578%_
                       _%hd208499208553%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop208504208563%_
                                               _%target208501208558%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx208684208685%_))
                                         (let ((_%e208489208526%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx208684208685%_))))
                                           (let ((_%tl208491208531%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208489208526%_)))
                                                 (_%hd208490208529%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208489208526%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd208490208529%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd208490208529%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl208491208531%_))
                                                         (let ((_%e208492208534%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl208491208531%_))))
                   (let ((_%tl208494208539%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208492208534%_)))
                         (_%hd208493208537%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208492208534%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd208493208537%_))
                         (let ((_%e208495208542%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd208493208537%_))))
                           (let ((_%tl208497208547%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208495208542%_)))
                                 (_%hd208496208545%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208495208542%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd208496208545%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd208496208545%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl208497208547%_))
                                         (let ((_%e208498208550%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl208497208547%_))))
                                           (let ((_%tl208500208555%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208498208550%_)))
                                                 (_%hd208499208553%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208498208550%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl208500208555%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl208494208539%_))
                                                     (let ((_%__splice208688208689%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl208494208539%_
                                                               '0))))
                                                       (let ((_%tl208503208560%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice208688208689%_ '1)))
                     (_%target208501208558%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice208688208689%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl208503208560%_))
                     (_%__match208733208734%_
                      _%e208489208526%_
                      _%hd208490208529%_
                      _%tl208491208531%_
                      _%e208492208534%_
                      _%hd208493208537%_
                      _%tl208494208539%_
                      _%e208495208542%_
                      _%hd208496208545%_
                      _%tl208497208547%_
                      _%e208498208550%_
                      _%hd208499208553%_
                      _%tl208500208555%_
                      _%__splice208688208689%_
                      _%target208501208558%_
                      _%tl208503208560%_)
                     (_%__kont208690208691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208690208691%_))
                                                 (_%__kont208690208691%_))))
                                         (_%__kont208690208691%_))
                                     (_%__kont208690208691%_))
                                 (_%__kont208690208691%_))))
                         (_%__kont208690208691%_))))
                 (_%__kont208690208691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208690208691%_))
                                                 (_%__kont208690208691%_))))
                                         (_%__kont208690208691%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type208467%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type208467%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp209402
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g208262208445%_
                                                                '()))
                                                    (map (lambda (_%g208632208634%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self208255%_
                                                              _%g208632208634%_)))
                                                         (let ((__tmp209403
                                                                (lambda (_%g208636208639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g208637208641%_)
                          (cons _%g208636208639%_ _%g208637208641%_))))
                   (declare (not safe))
                   (__foldr1 __tmp209403 '() _%g208261208444%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp209402
                                    _%stx208256%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx208256%_
                                    _%rator-type208467%_))))))))
                (_%__kont208742208743%_
                 (lambda (_%g208284208348%_ _%g208285208349%_)
                   (let ((_%rator-type208366%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g208285208349%_))))
                     (if (and _%rator-type208366%_
                              (eq? (##structure-ref
                                    _%rator-type208366%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type208366%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type208366%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type208366%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp209404
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208255%_
                                               _%g208285208349%_))
                                            (map (lambda (_%g208368208370%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208255%_
                                                      _%g208368208370%_)))
                                                 (let ((__tmp209405
                                                        (lambda (_%g208372208375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g208373208377%_)
                  (cons _%g208372208375%_ _%g208373208377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp209405
                                                    '()
                                                    _%g208284208348%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209404 _%stx208256%_))
                         (if (or (not _%rator-type208366%_)
                                 (let ((__tmp209406
                                        (##structure-ref
                                         _%rator-type208366%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp209406 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self208255%_ _%stx208256%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx208256%_
                                _%rator-type208366%_))))))))
            (let* ((_%__match208803208804%_
                    (lambda (_%e208286208310%_
                             _%hd208287208313%_
                             _%tl208288208315%_
                             _%e208289208318%_
                             _%hd208290208321%_
                             _%tl208291208323%_
                             _%__splice208744208745%_
                             _%target208292208326%_
                             _%tl208294208328%_)
                      (letrec ((_%loop208295208331%_
                                (lambda (_%hd208293208334%_
                                         _%rand208299208336%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208293208334%_))
                                      (let ((_%e208296208338%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208293208334%_))))
                                        (let ((_%lp-tl208298208343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208296208338%_)))
                                              (_%lp-hd208297208341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208296208338%_))))
                                          (_%loop208295208331%_
                                           _%lp-tl208298208343%_
                                           (cons _%lp-hd208297208341%_
                                                 _%rand208299208336%_))))
                                      (let ((_%rand208300208346%_
                                             (reverse _%rand208299208336%_)))
                                        (_%__kont208742208743%_
                                         _%rand208300208346%_
                                         _%hd208290208321%_))))))
                        (_%loop208295208331%_ _%target208292208326%_ '()))))
                   (_%__match208783208784%_
                    (lambda (_%e208263208390%_
                             _%hd208264208393%_
                             _%tl208265208395%_
                             _%e208266208398%_
                             _%hd208267208401%_
                             _%tl208268208403%_
                             _%e208269208406%_
                             _%hd208270208409%_
                             _%tl208271208411%_
                             _%e208272208414%_
                             _%hd208273208417%_
                             _%tl208274208419%_
                             _%__splice208740208741%_
                             _%target208275208422%_
                             _%tl208277208424%_)
                      (letrec ((_%loop208278208427%_
                                (lambda (_%hd208276208430%_
                                         _%rand208282208432%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208276208430%_))
                                      (let ((_%e208279208434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208276208430%_))))
                                        (let ((_%lp-tl208281208439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208279208434%_)))
                                              (_%lp-hd208280208437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208279208434%_))))
                                          (_%loop208278208427%_
                                           _%lp-tl208281208439%_
                                           (cons _%lp-hd208280208437%_
                                                 _%rand208282208432%_))))
                                      (let ((_%rand208283208442%_
                                             (reverse _%rand208282208432%_)))
                                        (_%__kont208738208739%_
                                         _%rand208283208442%_
                                         _%hd208273208417%_))))))
                        (_%loop208278208427%_ _%target208275208422%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208736208737%_))
                  (let ((_%e208263208390%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208736208737%_))))
                    (let ((_%tl208265208395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208263208390%_)))
                          (_%hd208264208393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208263208390%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208265208395%_))
                          (let ((_%e208266208398%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl208265208395%_))))
                            (let ((_%tl208268208403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208266208398%_)))
                                  (_%hd208267208401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208266208398%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd208267208401%_))
                                  (let ((_%e208269208406%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208267208401%_))))
                                    (let ((_%tl208271208411%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208269208406%_)))
                                          (_%hd208270208409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208269208406%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd208270208409%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd208270208409%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208271208411%_))
                                                  (let ((_%e208272208414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208271208411%_))))
                                                    (let ((_%tl208274208419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208272208414%_)))
                                                          (_%hd208273208417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208272208414%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208274208419%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl208268208403%_))
                      (let ((_%__splice208740208741%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208268208403%_
                                '0))))
                        (let ((_%tl208277208424%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208740208741%_ '1)))
                              (_%target208275208422%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208740208741%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208277208424%_))
                              (_%__match208783208784%_
                               _%e208263208390%_
                               _%hd208264208393%_
                               _%tl208265208395%_
                               _%e208266208398%_
                               _%hd208267208401%_
                               _%tl208268208403%_
                               _%e208269208406%_
                               _%hd208270208409%_
                               _%tl208271208411%_
                               _%e208272208414%_
                               _%hd208273208417%_
                               _%tl208274208419%_
                               _%__splice208740208741%_
                               _%target208275208422%_
                               _%tl208277208424%_)
                              (let ()
                                (declare (not safe))
                                (_%g208259208305%_)))))
                      (let () (declare (not safe)) (_%g208259208305%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl208268208403%_))
                      (let ((_%__splice208744208745%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208268208403%_
                                '0))))
                        (let ((_%tl208294208328%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208744208745%_ '1)))
                              (_%target208292208326%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208744208745%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208294208328%_))
                              (_%__match208803208804%_
                               _%e208263208390%_
                               _%hd208264208393%_
                               _%tl208265208395%_
                               _%e208266208398%_
                               _%hd208267208401%_
                               _%tl208268208403%_
                               _%__splice208744208745%_
                               _%target208292208326%_
                               _%tl208294208328%_)
                              (let ()
                                (declare (not safe))
                                (_%g208259208305%_)))))
                      (let () (declare (not safe)) (_%g208259208305%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl208268208403%_))
                                                      (let ((_%__splice208744208745%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl208268208403%_
                        '0))))
                (let ((_%tl208294208328%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208744208745%_ '1)))
                      (_%target208292208326%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208744208745%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl208294208328%_))
                      (_%__match208803208804%_
                       _%e208263208390%_
                       _%hd208264208393%_
                       _%tl208265208395%_
                       _%e208266208398%_
                       _%hd208267208401%_
                       _%tl208268208403%_
                       _%__splice208744208745%_
                       _%target208292208326%_
                       _%tl208294208328%_)
                      (let () (declare (not safe)) (_%g208259208305%_)))))
              (let () (declare (not safe)) (_%g208259208305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl208268208403%_))
                                                  (let ((_%__splice208744208745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl208268208403%_
                                                            '0))))
                                                    (let ((_%tl208294208328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208744208745%_
                                                              '1)))
                                                          (_%target208292208326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208744208745%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208294208328%_))
                                                          (_%__match208803208804%_
                                                           _%e208263208390%_
                                                           _%hd208264208393%_
                                                           _%tl208265208395%_
                                                           _%e208266208398%_
                                                           _%hd208267208401%_
                                                           _%tl208268208403%_
                                                           _%__splice208744208745%_
                                                           _%target208292208326%_
                                                           _%tl208294208328%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208259208305%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208259208305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl208268208403%_))
                                              (let ((_%__splice208744208745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl208268208403%_
                                                        '0))))
                                                (let ((_%tl208294208328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208744208745%_
                                                          '1)))
                                                      (_%target208292208326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208744208745%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208294208328%_))
                                                      (_%__match208803208804%_
                                                       _%e208263208390%_
                                                       _%hd208264208393%_
                                                       _%tl208265208395%_
                                                       _%e208266208398%_
                                                       _%hd208267208401%_
                                                       _%tl208268208403%_
                                                       _%__splice208744208745%_
                                                       _%target208292208326%_
                                                       _%tl208294208328%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g208259208305%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208259208305%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208268208403%_))
                                      (let ((_%__splice208744208745%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl208268208403%_
                                                '0))))
                                        (let ((_%tl208294208328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208744208745%_
                                                  '1)))
                                              (_%target208292208326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208744208745%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208294208328%_))
                                              (_%__match208803208804%_
                                               _%e208263208390%_
                                               _%hd208264208393%_
                                               _%tl208265208395%_
                                               _%e208266208398%_
                                               _%hd208267208401%_
                                               _%tl208268208403%_
                                               _%__splice208744208745%_
                                               _%target208292208326%_
                                               _%tl208294208328%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g208259208305%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g208259208305%_))))))
                          (let () (declare (not safe)) (_%g208259208305%_)))))
                  (let () (declare (not safe)) (_%g208259208305%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self208217%_ _%ctx208218%_ _%stx208219%_ _%args208220%_)
        (let ((_%self208223%_ _%self208217%_))
          (if (let ((__method209385
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self208223%_ 'check-arguments))))
                (if __method209385
                    (let ()
                      (declare (not safe))
                      (__method209385
                       _%self208223%_
                       _%ctx208218%_
                       _%stx208219%_
                       _%args208220%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self208223%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature208233%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self208223%_ '2 '#f '#f)))
                     (_%signature208235%_ _%signature208233%_)
                     (_%$e208245%_
                      (if _%signature208235%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature208235%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e208245%_
                    ((lambda (_%unchecked208248%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked208248%_))
                           (let ((__tmp209407
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked208248%_
                                                          '()))
                                              (map (lambda (_%g208249208251%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx208218%_
                                                        _%g208249208251%_)))
                                                   _%args208220%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp209407
                              _%stx208219%_
                              _%ctx208218%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx208218%_ _%stx208219%_))))
                     _%$e208245%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx208218%_ _%stx208219%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx208218%_ _%stx208219%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass208669 __method-table208670)
        (let ((__check-arguments208671
               (let ((__tmp209408
                      (lambda ()
                        (let ((__method208672
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208670
                                  'check-arguments
                                  '#f))))
                          (if __method208672
                              __method208672
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209408))))
          (lambda (_%self208217%_ _%ctx208218%_ _%stx208219%_ _%args208220%_)
            (let ((_%self208223%_ _%self208217%_))
              (if ((force __check-arguments208671)
                   _%self208223%_
                   _%ctx208218%_
                   _%stx208219%_
                   _%args208220%_)
                  (let* ((_%signature208233%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self208223%_
                             '2
                             '#f
                             '#f)))
                         (_%signature208235%_ _%signature208233%_)
                         (_%$e208245%_
                          (if _%signature208235%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature208235%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e208245%_
                        ((lambda (_%unchecked208248%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked208248%_))
                               (let ((__tmp209409
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked208248%_
                                                              '()))
                                                  (map (lambda (_%g208249208251%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx208218%_
                                                            _%g208249208251%_)))
                                                       _%args208220%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp209409
                                  _%stx208219%_
                                  _%ctx208218%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx208218%_
                                  _%stx208219%_))))
                         _%$e208245%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx208218%_ _%stx208219%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx208218%_ _%stx208219%_))))))))
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
      (lambda (_%self207970%_ _%ctx207971%_ _%stx207972%_ _%args207973%_)
        (let* ((_%self207976%_ _%self207970%_)
               (_%signature207985207987%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207976%_ '2 '#f '#f))))
          (if _%signature207985207987%_
              (let* ((_%signature207989%_ _%signature207985207987%_)
                     (_%argument-types207990207992%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature207989%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types207990207992%_
                    (let* ((_%argument-types207994%_
                            _%argument-types207990207992%_)
                           (_%argument-types207999%_
                            (let ((__tmp209410
                                   (lambda (_%t207997%_)
                                     (if _%t207997%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207972%_
                                            _%t207997%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp209410
                               _%argument-types207994%_))))
                      (let _%loop208001%_ ((_%rest-args208003%_ _%args207973%_)
                                           (_%rest-types208004%_
                                            _%argument-types207999%_)
                                           (_%result208005%_ '#t))
                        (let* ((_%rest-args208006208014%_ _%rest-args208003%_)
                               (_%else208008208022%_
                                (lambda () _%result208005%_))
                               (_%K208010208083%_
                                (lambda (_%rest-args208025%_ _%arg208026%_)
                                  (let* ((_%rest-types208027208038%_
                                          _%rest-types208004%_)
                                         (_%E208031208042%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types208027208038%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K208034208071%_
                                           (lambda (_%rest-types208068%_
                                                    _%type208069%_)
                                             (_%loop208001%_
                                              _%rest-args208025%_
                                              _%rest-types208068%_
                                              (if (gxc#check-expression-type!
                                                   _%stx207972%_
                                                   _%arg208026%_
                                                   _%type208069%_)
                                                  _%result208005%_
                                                  '#f))))
                                          (_%K208033208062%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx207972%_
                                                _%argument-types207999%_))))
                                          (_%K208032208052%_
                                           (lambda (_%tail-type208046%_)
                                             (if (let ((__tmp209411
                                                        (lambda (_%g208047208049%_)
                                                          (gxc#check-expression-type!
                                                           _%stx207972%_
                                                           _%g208047208049%_
                                                           _%tail-type208046%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp209411
                                                    _%rest-args208025%_))
                                                 _%result208005%_
                                                 '#f))))
                                      (let ((_%try-match208029208065%_
                                             (lambda ()
                                               (if (null? _%rest-types208027208038%_)
                                                   (_%K208033208062%_)
                                                   (let ((_%tail-type208055%_
                                                          _%rest-types208027208038%_))
                                                     (_%K208032208052%_
                                                      _%tail-type208055%_))))))
                                        (if (pair? _%rest-types208027208038%_)
                                            (let ((_%tl208036208076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types208027208038%_)))
                                                  (_%hd208035208074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types208027208038%_))))
                                              (let ((_%type208079%_
                                                     _%hd208035208074%_)
                                                    (_%rest-types208081%_
                                                     _%tl208036208076%_))
                                                (_%K208034208071%_
                                                 _%rest-types208081%_
                                                 _%type208079%_)))
                                            (_%try-match208029208065%_))))))))
                          (if (pair? _%rest-args208006208014%_)
                              (let ((_%hd208011208086%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args208006208014%_)))
                                    (_%tl208012208088%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args208006208014%_))))
                                (let* ((_%arg208091%_ _%hd208011208086%_)
                                       (_%rest-args208093%_
                                        _%tl208012208088%_))
                                  (_%K208010208083%_
                                   _%rest-args208093%_
                                   _%arg208091%_)))
                              (_%else208008208022%_)))))
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
      (lambda (_%self207781%_ _%ctx207782%_ _%stx207783%_ _%args207784%_)
        (let* ((_%self207787%_ _%self207781%_)
               (_%g207797207807%_
                (lambda (_%g207798207804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207798207804%_))))
               (_%g207796207845%_
                (lambda (_%g207798207810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207798207810%_))
                      (let ((_%e207800207812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207798207810%_))))
                        (let ((_%hd207801207815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207800207812%_)))
                              (_%tl207802207817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207800207812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207802207817%_))
                              ((lambda (_%g207799207820%_)
                                 (let* ((_%klass207832%_
                                         (let ((__tmp209412
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207787%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207783%_
                                            __tmp209412)))
                                        (_%object207834%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207782%_
                                            _%g207799207820%_)))
                                        (_%instance?207839%_
                                         (let ((_%$e207836%_
                                                (gxc#expression-type?
                                                 _%object207834%_
                                                 _%klass207832%_)))
                                           (if _%$e207836%_
                                               _%$e207836%_
                                               (gxc#expression-type?
                                                _%g207799207820%_
                                                _%klass207832%_)))))
                                   (if _%instance?207839%_
                                       (let ((__tmp209413
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207834%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g207799207820%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207834%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209413
                                          _%stx207783%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx207782%_
                                          _%stx207783%_)))))
                               _%hd207801207815%_)
                              (_%g207797207807%_ _%g207798207810%_))))
                      (_%g207797207807%_ _%g207798207810%_)))))
          (_%g207796207845%_ _%args207784%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self207577%_ _%ctx207578%_ _%stx207579%_ _%args207580%_)
        (let* ((_%self207583%_ _%self207577%_)
               (_%g207593207603%_
                (lambda (_%g207594207600%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207594207600%_))))
               (_%g207592207656%_
                (lambda (_%g207594207606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207594207606%_))
                      (let ((_%e207596207608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207594207606%_))))
                        (let ((_%hd207597207611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207596207608%_)))
                              (_%tl207598207613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207596207608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207598207613%_))
                              ((lambda (_%g207595207616%_)
                                 (let* ((_%klass207628%_
                                         (let ((__tmp209414
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207583%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207579%_
                                            __tmp209414)))
                                        (_%object207630%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207578%_
                                            _%g207595207616%_)))
                                        (_%instance?207635%_
                                         (let ((_%$e207632%_
                                                (gxc#expression-type?
                                                 _%object207630%_
                                                 _%klass207628%_)))
                                           (if _%$e207632%_
                                               _%$e207632%_
                                               (gxc#expression-type?
                                                _%g207595207616%_
                                                _%klass207628%_))))
                                        (_%klass207638%_ _%klass207628%_))
                                   (if _%instance?207635%_
                                       (let ((__tmp209415
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207630%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g207595207616%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207630%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209415
                                          _%stx207579%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass207638%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209416
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass207638%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object207630%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209416
                                              _%stx207579%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass207638%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209417
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass207638%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object207630%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209417
                                                  _%stx207579%_))
                                               (let ((__tmp209418
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self207583%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object207630%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209418
                                                  _%stx207579%_)))))))
                               _%hd207597207611%_)
                              (_%g207593207603%_ _%g207594207606%_))))
                      (_%g207593207603%_ _%g207594207606%_)))))
          (_%g207592207656%_ _%args207580%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx207245%_)
        (let* ((_%__stx208813208814%_ _%stx207245%_)
               (_%g207250207291%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208813208814%_)))))
          (let ((_%__kont208815208816%_ (lambda () '#t))
                (_%__kont208817208818%_ (lambda () '#t))
                (_%__kont208819208820%_
                 (lambda (_%g207264207357%_ _%g207265207358%_)
                   (let ((_%rator-type207379207381%_
                          (let ((__tmp209419
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g207265207358%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp209419))))
                     (if _%rator-type207379207381%_
                         (let* ((_%rator-type207383%_
                                 _%rator-type207379207381%_)
                                (_%rator-signature207384207386%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type207383%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type207383%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature207384207386%_
                               (let* ((_%rator-signature207388%_
                                       _%rator-signature207384207386%_)
                                      (_%rator-effect207389207391%_
                                       (if _%rator-signature207388%_
                                           (##direct-structure-ref
                                            _%rator-signature207388%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect207389207391%_
                                     (let ((_%rator-effect207393%_
                                            _%rator-effect207389207391%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect207393%_)
                                               (equal? '(alloc)
                                                       _%rator-effect207393%_))
                                           (let ((__tmp209420
                                                  (let ((__tmp209421
                                                         (lambda (_%g207398207401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g207399207403%_)
                   (cons _%g207398207401%_ _%g207399207403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp209421
                                                     '()
                                                     _%g207264207357%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp209420))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont208823208824%_ (lambda () '#f)))
            (let ((_%__match208902208903%_
                   (lambda (_%e207266207303%_
                            _%hd207267207306%_
                            _%tl207268207308%_
                            _%e207269207311%_
                            _%hd207270207314%_
                            _%tl207271207316%_
                            _%e207272207319%_
                            _%hd207273207322%_
                            _%tl207274207324%_
                            _%e207275207327%_
                            _%hd207276207330%_
                            _%tl207277207332%_
                            _%__splice208821208822%_
                            _%target207278207335%_
                            _%tl207280207337%_)
                     (letrec ((_%loop207281207340%_
                               (lambda (_%hd207279207343%_
                                        _%rand207285207345%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd207279207343%_))
                                     (let ((_%e207282207347%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd207279207343%_))))
                                       (let ((_%lp-tl207284207352%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207282207347%_)))
                                             (_%lp-hd207283207350%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207282207347%_))))
                                         (_%loop207281207340%_
                                          _%lp-tl207284207352%_
                                          (cons _%lp-hd207283207350%_
                                                _%rand207285207345%_))))
                                     (let ((_%rand207286207355%_
                                            (reverse _%rand207285207345%_)))
                                       (_%__kont208819208820%_
                                        _%rand207286207355%_
                                        _%hd207276207330%_))))))
                       (_%loop207281207340%_ _%target207278207335%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208813208814%_))
                  (let ((_%e207252207434%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208813208814%_))))
                    (let ((_%tl207254207439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207252207434%_)))
                          (_%hd207253207437%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207252207434%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd207253207437%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd207253207437%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207254207439%_))
                                  (let ((_%e207255207442%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207254207439%_))))
                                    (let ((_%tl207257207447%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207255207442%_)))
                                          (_%hd207256207445%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207255207442%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl207257207447%_))
                                          (_%__kont208815208816%_)
                                          (_%__kont208823208824%_))))
                                  (_%__kont208823208824%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd207253207437%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207254207439%_))
                                      (let ((_%e207261207419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207254207439%_))))
                                        (let ((_%tl207263207424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207261207419%_)))
                                              (_%hd207262207422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207261207419%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207263207424%_))
                                              (_%__kont208817208818%_)
                                              (_%__kont208823208824%_))))
                                      (_%__kont208823208824%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd207253207437%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207254207439%_))
                                          (let ((_%e207269207311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl207254207439%_))))
                                            (let ((_%tl207271207316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207269207311%_)))
                                                  (_%hd207270207314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207269207311%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd207270207314%_))
                                                  (let ((_%e207272207319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd207270207314%_))))
                                                    (let ((_%tl207274207324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207272207319%_)))
                                                          (_%hd207273207322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207272207319%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd207273207322%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd207273207322%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207274207324%_))
                          (let ((_%e207275207327%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207274207324%_))))
                            (let ((_%tl207277207332%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207275207327%_)))
                                  (_%hd207276207330%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207275207327%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207277207332%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207271207316%_))
                                      (let ((_%__splice208821208822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl207271207316%_
                                                '0))))
                                        (let ((_%tl207280207337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208821208822%_
                                                  '1)))
                                              (_%target207278207335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208821208822%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207280207337%_))
                                              (_%__match208902208903%_
                                               _%e207252207434%_
                                               _%hd207253207437%_
                                               _%tl207254207439%_
                                               _%e207269207311%_
                                               _%hd207270207314%_
                                               _%tl207271207316%_
                                               _%e207272207319%_
                                               _%hd207273207322%_
                                               _%tl207274207324%_
                                               _%e207275207327%_
                                               _%hd207276207330%_
                                               _%tl207277207332%_
                                               _%__splice208821208822%_
                                               _%target207278207335%_
                                               _%tl207280207337%_)
                                              (_%__kont208823208824%_))))
                                      (_%__kont208823208824%_))
                                  (_%__kont208823208824%_))))
                          (_%__kont208823208824%_))
                      (_%__kont208823208824%_))
                  (_%__kont208823208824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208823208824%_))))
                                          (_%__kont208823208824%_))
                                      (_%__kont208823208824%_))))
                          (_%__kont208823208824%_))))
                  (_%__kont208823208824%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx207240%_ _%klass207241%_)
        (let ((_%expr-type207243%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx207240%_))))
          (if _%expr-type207243%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type207243%_ _%klass207241%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx207218%_ _%expr207219%_ _%type207220%_)
        (if (not _%type207220%_)
            '#f
            (let ((_%$e207223%_
                   (eq? (##structure-ref _%type207220%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e207223%_
                  _%$e207223%_
                  (let ((_%expr-type207227%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr207219%_))))
                    (if (not _%expr-type207227%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type207227%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e207231%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type207227%_
                                      'gxc#!abort::t))))
                              (if _%$e207231%_
                                  _%$e207231%_
                                  (let ((_%$e207234%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type207227%_
                                            _%type207220%_))))
                                    (if _%$e207234%_
                                        _%$e207234%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type207220%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type207220%_
                                                   _%expr-type207227%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx207218%_
                                                   _%expr207219%_
                                                   _%expr-type207227%_
                                                   _%type207220%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self207032%_ _%ctx207033%_ _%stx207034%_ _%args207035%_)
        (let* ((_%self207038%_ _%self207032%_)
               (_%klass207048%_
                (let ((__tmp209422
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self207038%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx207034%_ __tmp209422)))
               (_%fields207050%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass207048%_
                           '5
                           '#f
                           '#f))))
               (_%args207056%_
                (map (lambda (_%g207051207053%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx207033%_ _%g207051207053%_)))
                     _%args207035%_))
               (_%inline-make-object207058%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self207038%_
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
                           _%self207038%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields207050%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass207061%_ _%klass207048%_)
               (_%$e207075%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass207061%_ '6 '#f '#f))))
          (if _%$e207075%_
              ((lambda (_%ctor207078%_)
                 (let ((_%$obj207080%_
                        (let ((__tmp209423
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp209423)))
                       (_%ctor-impl207081%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass207061%_
                           _%ctor207078%_))))
                   (let ((__tmp209424
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj207080%_ '())
                                                  (cons _%inline-make-object207058%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl207081%_
                                                            (let ((__tmp209425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl207081%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj207080%_ '()))
                                             _%args207056%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp209425
                       _%stx207034%_
                       _%ctx207033%_))
                    (let ((_%$ctor207083%_
                           (let ((__tmp209426
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209426))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor207083%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self207038%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj207080%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor207078%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor207083%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor207083%_ '()))
                              (cons (cons '%#ref (cons _%$obj207080%_ '()))
                                    _%args207056%_)))
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
                             _%self207038%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor207078%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj207080%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp209424 _%stx207034%_))))
               _%$e207075%_)
              (let ((_%$e207085%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass207061%_
                        '10
                        '#f
                        '#f))))
                (if _%$e207085%_
                    ((lambda (_%metaclass207088%_)
                       (let* ((_%$obj207090%_
                               (let ((__tmp209427
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209427)))
                              (_%metakons207092%_
                               (let ((__tmp209428
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx207034%_
                                         _%metaclass207088%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp209428
                                  'instance-init!)))
                              (__tmp209429
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj207090%_
                                                             '())
                                                       (cons _%inline-make-object207058%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons207092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp209430
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons207092%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self207038%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj207090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args207056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp209430
                            _%stx207034%_
                            _%ctx207033%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self207038%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj207090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args207056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj207090%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp209429 _%stx207034%_)))
                     _%$e207085%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass207061%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp209431
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args207056%_))))
                              (declare (not safe))
                              (##fx= __tmp209431 _%fields207050%_))
                            (let ((__tmp209432
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self207038%_
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
                                              _%self207038%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args207056%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp209432
                               _%stx207034%_))
                            (let ((__tmp209434
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self207038%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp209433
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass207061%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx207034%_
                               __tmp209434
                               __tmp209433)))
                        (let ((_%$obj207097%_
                               (let ((__tmp209435
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209435))))
                          (let _%lp207099%_ ((_%rest207101%_ _%args207056%_)
                                             (_%initializers207102%_ '()))
                            (let* ((_%__stx208905208906%_ _%rest207101%_)
                                   (_%g207106207127%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx208905208906%_)))))
                              (let ((_%__kont208907208908%_
                                     (lambda (_%g207108207181%_
                                              _%g207109207182%_
                                              _%g207110207183%_)
                                       (let* ((_%slot207210%_
                                               (let ((__tmp209436
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g207110207183%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp209436)))
                                              (_%off207212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass207061%_
                                                  _%slot207210%_))))
                                         (if _%off207212%_
                                             (_%lp207099%_
                                              _%g207108207181%_
                                              (cons (cons _%off207212%_
                                                          _%g207109207182%_)
                                                    _%initializers207102%_))
                                             (let ((__tmp209437
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self207038%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx207034%_
                                                __tmp209437
                                                _%slot207210%_))))))
                                    (_%__kont208909208910%_
                                     (lambda ()
                                       (let ((__tmp209438
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object207058%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp209441
                                     (cons (cons '%#ref
                                                 (cons _%$obj207097%_ '()))
                                           '()))
                                    (__tmp209439
                                     (let ((__tmp209440
                                            (lambda (_%i207141%_ _%r207142%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self207038%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i207141%_) '()))
                              (cons (cons '%#ref (cons _%$obj207097%_ '()))
                                    (cons (cdr _%i207141%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r207142%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp209440
                                        '()
                                        _%initializers207102%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp209441 __tmp209439)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209438
                                          _%stx207034%_))))
                                    (_%__kont208911208912%_
                                     (lambda ()
                                       (let ((__tmp209442
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object207058%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj207097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args207056%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj207097%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209442
                                          _%stx207034%_)))))
                                (let* ((_%g207104207144%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx208905208906%_))
                                              (_%__kont208909208910%_)
                                              (_%__kont208911208912%_))))
                                       (_%__match208942208943%_
                                        (lambda (_%e207111207149%_
                                                 _%hd207112207152%_
                                                 _%tl207113207154%_
                                                 _%e207114207157%_
                                                 _%hd207115207160%_
                                                 _%tl207116207162%_
                                                 _%e207117207165%_
                                                 _%hd207118207168%_
                                                 _%tl207119207170%_
                                                 _%e207120207173%_
                                                 _%hd207121207176%_
                                                 _%tl207122207178%_)
                                          (let ((_%g207108207181%_
                                                 _%tl207122207178%_)
                                                (_%g207109207182%_
                                                 _%hd207121207176%_)
                                                (_%g207110207183%_
                                                 _%hd207118207168%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g207110207183%_))
                                                (_%__kont208907208908%_
                                                 _%g207108207181%_
                                                 _%g207109207182%_
                                                 _%g207110207183%_)
                                                (_%__kont208911208912%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx208905208906%_))
                                      (let ((_%e207111207149%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx208905208906%_))))
                                        (let ((_%tl207113207154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207111207149%_)))
                                              (_%hd207112207152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207111207149%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd207112207152%_))
                                              (let ((_%e207114207157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207112207152%_))))
                                                (let ((_%tl207116207162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207114207157%_)))
                                                      (_%hd207115207160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207114207157%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd207115207160%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd207115207160%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl207116207162%_))
                      (let ((_%e207117207165%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl207116207162%_))))
                        (let ((_%tl207119207170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207117207165%_)))
                              (_%hd207118207168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207117207165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207119207170%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207113207154%_))
                                  (let ((_%e207120207173%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207113207154%_))))
                                    (let ((_%tl207122207178%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207120207173%_)))
                                          (_%hd207121207176%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207120207173%_))))
                                      (_%__match208942208943%_
                                       _%e207111207149%_
                                       _%hd207112207152%_
                                       _%tl207113207154%_
                                       _%e207114207157%_
                                       _%hd207115207160%_
                                       _%tl207116207162%_
                                       _%e207117207165%_
                                       _%hd207118207168%_
                                       _%tl207119207170%_
                                       _%e207120207173%_
                                       _%hd207121207176%_
                                       _%tl207122207178%_)))
                                  (_%__kont208911208912%_))
                              (_%__kont208911208912%_))))
                      (_%__kont208911208912%_))
                  (_%__kont208911208912%_))
              (_%__kont208911208912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208911208912%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207104207144%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self206815%_ _%ctx206816%_ _%stx206817%_ _%args206818%_)
        (let* ((_%self206821%_ _%self206815%_)
               (_%arguments-ok?206831%_
                (let ((__method209386
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206821%_ 'check-arguments))))
                  (if __method209386
                      (let ()
                        (declare (not safe))
                        (__method209386
                         _%self206821%_
                         _%ctx206816%_
                         _%stx206817%_
                         _%args206818%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206821%_
                                 'check-arguments))
                        '#!void))))
               (_%g206833206843%_
                (lambda (_%g206834206840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206834206840%_))))
               (_%g206832206907%_
                (lambda (_%g206834206846%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206834206846%_))
                      (let ((_%e206836206848%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206834206846%_))))
                        (let ((_%hd206837206851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206836206848%_)))
                              (_%tl206838206853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206836206848%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206838206853%_))
                              ((lambda (_%g206835206856%_)
                                 (let* ((_%klass206869%_
                                         (let ((__tmp209443
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206821%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx206817%_
                                            __tmp209443)))
                                        (_%field206871%_
                                         (let ((__tmp209444
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206821%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass206869%_
                                            __tmp209444)))
                                        (_%object206873%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx206816%_
                                            _%g206835206856%_)))
                                        (_%klass206876%_ _%klass206869%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass206876%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp209445
                                              (cons (if (or _%arguments-ok?206831%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206821%_
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
                                 _%self206821%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field206871%_ '()))
                        (cons _%object206873%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209445
                                          _%stx206817%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206876%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp209446
                                                  (cons (if (or _%arguments-ok?206831%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206821%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206821%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206871%_ '()))
                            (cons _%object206873%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209446
                                              _%stx206817%_))
                                           (let ((_%$e206895%_
                                                  (let ((__tmp209447
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206821%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass206876%_
                                                     __tmp209447))))
                                             (if _%$e206895%_
                                                 ((lambda (_%klass206898%_)
                                                    (let ((__tmp209448
                                                           (cons (if (or _%arguments-ok?206831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206821%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self206821%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field206871%_ '()))
                                     (cons _%object206873%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp209448 _%stx206817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e206895%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self206821%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp209449
                                                            (let ((_%$obj206904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp209450
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209450))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj206904%_ '())
                                              (cons _%object206873%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass206876%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj206904%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206821%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206871%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206904%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?206831%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206904%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206821%_
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
                                                             _%self206821%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj206904%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self206821%_
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
               (gxc#xform-wrap-source __tmp209449 _%stx206817%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp209451
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object206873%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206821%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp209451 _%stx206817%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd206837206851%_)
                              (_%g206833206843%_ _%g206834206846%_))))
                      (_%g206833206843%_ _%g206834206846%_)))))
          (_%g206832206907%_ _%args206818%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass208673 __method-table208674)
        (let ((__check-arguments208675
               (let ((__tmp209452
                      (lambda ()
                        (let ((__method208676
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208674
                                  'check-arguments
                                  '#f))))
                          (if __method208676
                              __method208676
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209452)))
              (__slot208677
               (let ((__slot208678
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass208673 'slot))))
                 (if __slot208678
                     __slot208678
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self206815%_ _%ctx206816%_ _%stx206817%_ _%args206818%_)
            (let* ((_%self206821%_ _%self206815%_)
                   (_%arguments-ok?206831%_
                    ((force __check-arguments208675)
                     _%self206821%_
                     _%ctx206816%_
                     _%stx206817%_
                     _%args206818%_))
                   (_%g206833206843%_
                    (lambda (_%g206834206840%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206834206840%_))))
                   (_%g206832206907%_
                    (lambda (_%g206834206846%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206834206846%_))
                          (let ((_%e206836206848%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206834206846%_))))
                            (let ((_%hd206837206851%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206836206848%_)))
                                  (_%tl206838206853%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206836206848%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206838206853%_))
                                  ((lambda (_%g206835206856%_)
                                     (let* ((_%klass206869%_
                                             (let ((__tmp209453
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206821%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx206817%_
                                                __tmp209453)))
                                            (_%field206871%_
                                             (let ((__tmp209454
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206821%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass206869%_
                                                __tmp209454)))
                                            (_%object206873%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx206816%_
                                                _%g206835206856%_)))
                                            (_%klass206876%_ _%klass206869%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206876%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209455
                                                  (cons (if (or _%arguments-ok?206831%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206821%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206821%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206871%_ '()))
                            (cons _%object206873%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209455
                                              _%stx206817%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206876%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209456
                                                      (cons (if (or _%arguments-ok?206831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206821%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206821%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206871%_ '()))
                                (cons _%object206873%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209456
                                                  _%stx206817%_))
                                               (let ((_%$e206895%_
                                                      (let ((__tmp209457
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self206821%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass206876%_ __tmp209457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e206895%_
                                                     ((lambda (_%klass206898%_)
                                                        (let ((__tmp209458
                                                               (cons (if (or _%arguments-ok?206831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206821%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self206821%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field206871%_ '()))
                                         (cons _%object206873%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp209458 _%stx206817%_)))
              _%$e206895%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206821%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp209459
                                                                (let ((_%$obj206904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp209460
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209460))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj206904%_ '())
                                                  (cons _%object206873%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass206876%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj206904%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206821%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206871%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206904%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?206831%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206904%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206821%_
                               __slot208677
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
                        (##unchecked-structure-ref _%self206821%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj206904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206821%_
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
                   (gxc#xform-wrap-source __tmp209459 _%stx206817%_))
                 (let ((__tmp209461
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object206873%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206821%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp209461 _%stx206817%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd206837206851%_)
                                  (_%g206833206843%_ _%g206834206846%_))))
                          (_%g206833206843%_ _%g206834206846%_)))))
              (_%g206832206907%_ _%args206818%_))))))
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
      (lambda (_%self206579%_ _%ctx206580%_ _%stx206581%_ _%args206582%_)
        (let* ((_%self206585%_ _%self206579%_)
               (_%arguments-ok?206595%_
                (let ((__method209387
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206585%_ 'check-arguments))))
                  (if __method209387
                      (let ()
                        (declare (not safe))
                        (__method209387
                         _%self206585%_
                         _%ctx206580%_
                         _%stx206581%_
                         _%args206582%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206585%_
                                 'check-arguments))
                        '#!void))))
               (_%g206597206611%_
                (lambda (_%g206598206608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206598206608%_))))
               (_%g206596206690%_
                (lambda (_%g206598206614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206598206614%_))
                      (let ((_%e206601206616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206598206614%_))))
                        (let ((_%hd206602206619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206601206616%_)))
                              (_%tl206603206621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206601206616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206603206621%_))
                              (let ((_%e206604206624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206603206621%_))))
                                (let ((_%hd206605206627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206604206624%_)))
                                      (_%tl206606206629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206604206624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206606206629%_))
                                      ((lambda (_%g206599206632%_
                                                _%g206600206633%_)
                                         (let* ((_%klass206649%_
                                                 (let ((__tmp209462
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206585%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx206581%_
                                                    __tmp209462)))
                                                (_%field206651%_
                                                 (let ((__tmp209463
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206585%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass206649%_
                                                    __tmp209463)))
                                                (_%object206653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206580%_
                                                    _%g206600206633%_)))
                                                (_%value206655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206580%_
                                                    _%g206599206632%_)))
                                                (_%klass206658%_
                                                 _%klass206649%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206658%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209464
                                                      (cons (if (or _%arguments-ok?206595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206585%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206585%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206651%_ '()))
                                (cons _%object206653%_
                                      (cons _%value206655%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209464
                                                  _%stx206581%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206658%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209465
                                                          (cons (if (or _%arguments-ok?206595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206585%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206585%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206651%_ '()))
                                    (cons _%object206653%_
                                          (cons _%value206655%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209465
                                                      _%stx206581%_))
                                                   (let ((_%$e206678%_
                                                          (let ((__tmp209466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206585%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass206658%_
                     __tmp209466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e206678%_
                                                         ((lambda (_%klass206681%_)
                                                            (let ((__tmp209467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?206595%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206585%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self206585%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field206651%_ '()))
                                             (cons _%object206653%_
                                                   (cons _%value206655%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209467 _%stx206581%_)))
                  _%$e206678%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self206585%_ '4 '#f '#f))
                     (let ((__tmp209468
                            (let ((_%$obj206687%_
                                   (let ((__tmp209469
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp209469))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj206687%_ '())
                                                      (cons _%object206653%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass206658%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj206687%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206585%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field206651%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206687%_
                                                              '()))
                                                  (cons _%value206655%_
                                                        '())))))
                          (cons (if _%arguments-ok?206595%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self206585%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value206655%_ '())))))
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
                             _%self206585%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj206687%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206585%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value206655%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp209468 _%stx206581%_))
                     (let ((__tmp209470
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object206653%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206585%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value206655%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp209470
                        _%stx206581%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd206605206627%_
                                       _%hd206602206619%_)
                                      (_%g206597206611%_ _%g206598206614%_))))
                              (_%g206597206611%_ _%g206598206614%_))))
                      (_%g206597206611%_ _%g206598206614%_)))))
          (_%g206596206690%_ _%args206582%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass208679 __method-table208680)
        (let ((__check-arguments208681
               (let ((__tmp209471
                      (lambda ()
                        (let ((__method208682
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208680
                                  'check-arguments
                                  '#f))))
                          (if __method208682
                              __method208682
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209471))))
          (lambda (_%self206579%_ _%ctx206580%_ _%stx206581%_ _%args206582%_)
            (let* ((_%self206585%_ _%self206579%_)
                   (_%arguments-ok?206595%_
                    ((force __check-arguments208681)
                     _%self206585%_
                     _%ctx206580%_
                     _%stx206581%_
                     _%args206582%_))
                   (_%g206597206611%_
                    (lambda (_%g206598206608%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206598206608%_))))
                   (_%g206596206690%_
                    (lambda (_%g206598206614%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206598206614%_))
                          (let ((_%e206601206616%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206598206614%_))))
                            (let ((_%hd206602206619%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206601206616%_)))
                                  (_%tl206603206621%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206601206616%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206603206621%_))
                                  (let ((_%e206604206624%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl206603206621%_))))
                                    (let ((_%hd206605206627%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206604206624%_)))
                                          (_%tl206606206629%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206604206624%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206606206629%_))
                                          ((lambda (_%g206599206632%_
                                                    _%g206600206633%_)
                                             (let* ((_%klass206649%_
                                                     (let ((__tmp209472
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206585%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx206581%_
                                                        __tmp209472)))
                                                    (_%field206651%_
                                                     (let ((__tmp209473
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206585%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass206649%_
                                                        __tmp209473)))
                                                    (_%object206653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206580%_
                                                        _%g206600206633%_)))
                                                    (_%value206655%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206580%_
                                                        _%g206599206632%_)))
                                                    (_%klass206658%_
                                                     _%klass206649%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206658%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209474
                                                          (cons (if (or _%arguments-ok?206595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206585%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206585%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206651%_ '()))
                                    (cons _%object206653%_
                                          (cons _%value206655%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209474
                                                      _%stx206581%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass206658%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp209475
                                                              (cons (if (or _%arguments-ok?206595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self206585%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206585%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206651%_ '()))
                                        (cons _%object206653%_
                                              (cons _%value206655%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp209475 _%stx206581%_))
               (let ((_%$e206678%_
                      (let ((__tmp209476
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206585%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass206658%_
                         __tmp209476))))
                 (if _%$e206678%_
                     ((lambda (_%klass206681%_)
                        (let ((__tmp209477
                               (cons (if (or _%arguments-ok?206595%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206585%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206585%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field206651%_
                                                             '()))
                                                 (cons _%object206653%_
                                                       (cons _%value206655%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp209477 _%stx206581%_)))
                      _%$e206678%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206585%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp209478
                                (let ((_%$obj206687%_
                                       (let ((__tmp209479
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp209479))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj206687%_
                                                                '())
                                                          (cons _%object206653%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass206658%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206687%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self206585%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field206651%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value206655%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?206595%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj206687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206585%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value206655%_ '())))))
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
                                 _%self206585%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj206687%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206585%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value206655%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209478 _%stx206581%_))
                         (let ((__tmp209480
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object206653%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206585%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value206655%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp209480
                            _%stx206581%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd206605206627%_
                                           _%hd206602206619%_)
                                          (_%g206597206611%_
                                           _%g206598206614%_))))
                                  (_%g206597206611%_ _%g206598206614%_))))
                          (_%g206597206611%_ _%g206598206614%_)))))
              (_%g206596206690%_ _%args206582%_))))))
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
      (lambda (_%self206395%_ _%ctx206396%_ _%stx206397%_ _%args206398%_)
        (let* ((_%self206401%_ _%self206395%_)
               (_%self206410206420%_ _%self206401%_)
               (_%E206412206423%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206410206420%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K206413206433%_
                (lambda (_%inline206426%_ _%dispatch206427%_ _%arity206428%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self206401%_
                         _%args206398%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx206397%_
                         _%arity206428%_)))
                  (if _%inline206426%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp209481 (_%inline206426%_ _%stx206397%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp209481
                           _%stx206397%_
                           _%ctx206396%_)))
                      (if (and _%dispatch206427%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch206427%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch206427%_))
                            (let ((__tmp209482
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch206427%_
                                                           '()))
                                               _%args206398%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp209482
                               _%stx206397%_
                               _%ctx206396%_)))
                          (gxc#!procedure::optimize-call
                           _%self206401%_
                           _%ctx206396%_
                           _%stx206397%_
                           _%args206398%_)))))
               (_%e206414206436%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206410206420%_ '1 '#f '#f)))
               (_%e206415206439%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206410206420%_ '2 '#f '#f)))
               (_%e206416206442%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206410206420%_ '3 '#f '#f)))
               (_%arity206445%_ _%e206416206442%_)
               (_%e206417206447%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206410206420%_ '4 '#f '#f)))
               (_%dispatch206450%_ _%e206417206447%_)
               (_%e206418206452%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206410206420%_ '5 '#f '#f)))
               (_%inline206455%_ _%e206418206452%_))
          (_%K206413206433%_
           _%inline206455%_
           _%dispatch206450%_
           _%arity206445%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self206247%_ _%ctx206248%_ _%stx206249%_ _%args206250%_)
        (let* ((_%self206253%_ _%self206247%_)
               (_%$e206267%_
                (let ((__tmp209484
                       (lambda (_%g206262206264%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g206262206264%_
                            _%args206250%_))))
                      (__tmp209483
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206253%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp209484 __tmp209483))))
          (if _%$e206267%_
              ((lambda (_%clause206270%_)
                 (let ((__method209388
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause206270%_ 'optimize-call))))
                   (if __method209388
                       (let ()
                         (declare (not safe))
                         (__method209388
                          _%clause206270%_
                          _%ctx206248%_
                          _%stx206249%_
                          _%args206250%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause206270%_
                                  'optimize-call))
                         '#!void))))
               _%$e206267%_)
              (let ((__tmp209485
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self206253%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx206249%_
                 __tmp209485))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self205988%_ _%ctx205989%_ _%stx205990%_ _%args205991%_)
        (let* ((_%self205994%_ _%self205988%_)
               (_%self206003206012%_ _%self205994%_)
               (_%E206005206015%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206003206012%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K206006206106%_
                (lambda (_%dispatch206018%_ _%table206019%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch206018%_))
                      (let* ((_%g206020206030%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch206018%_)))
                             (_%else206022206038%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch206018%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx205989%_
                                   _%stx205990%_))))
                             (_%K206024206087%_
                              (lambda (_%main206041%_ _%keys206042%_)
                                (let ((_g209486_
                                       (gxc#!kw-lambda-split-args
                                        _%stx205990%_
                                        _%args205991%_)))
                                  (begin
                                    (let ((_g209487_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g209486_)
                                                 (##values-length _g209486_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g209487_ 2)))
                                          (error "Context expects 2 values"
                                                 _g209487_)))
                                    (let ((_%pargs206044%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209486_ 0)))
                                          (_%kwargs206045%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209486_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main206041%_))
                                        (if _%table206019%_
                                            (let ((_%xargs206053%_
                                                   (map (lambda (_%key206047%_)
                                                          (let ((_%$e206049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key206047%_ _%kwargs206045%_))))
                    (if _%$e206049%_ _%$e206049%_ '(%#ref absent-value))))
                _%keys206042%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw206055%_)
                                                 (if (memq (car _%kw206055%_)
                                                           _%keys206042%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx205990%_
                                                        _%keys206042%_
                                                        _%kw206055%_))))
                                               _%kwargs206045%_)
                                              (let ((__tmp209488
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main206041%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs206044%_
                                  _%xargs206053%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp209488
                                                 _%stx205990%_
                                                 _%ctx205989%_)))
                                            (let* ((_%kwt206057%_
                                                    (let ((__tmp209489
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp209489)))
                                                   (_%kwvars206061%_
                                                    (map (lambda (_%_206059%_)
                                                           (let ((__tmp209490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp209490)))
                 _%kwargs206045%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind206066%_
                                                    (map (lambda (_%kw206063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar206064%_)
                   (cons (cons _%kwvar206064%_ '())
                         (cons (cdr _%kw206063%_) '())))
                 _%kwargs206045%_
                 _%kwvars206061%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset206071%_
                                                    (map (lambda (_%kw206068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar206069%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt206057%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw206068%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar206069%_
                                                             '()))
                                                 '()))))))
                 _%kwargs206045%_
                 _%kwvars206061%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs206076%_
                                                    (map (lambda (_%kw206073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar206074%_)
                   (cons (car _%kw206073%_)
                         (cons '%#ref (cons _%kwvar206074%_ '()))))
                 _%kwargs206045%_
                 _%kwvars206061%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs206084%_
                                                    (map (lambda (_%key206078%_)
                                                           (let ((_%$e206080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key206078%_ _%xkwargs206076%_))))
                     (if _%$e206080%_ _%$e206080%_ '(%#ref absent-value))))
                 _%keys206042%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp209491
                                                    (cons '%#let-values
                                                          (cons _%kwbind206066%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt206057%_ '())
                                                      (cons (let ((__tmp209492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs206045%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209492 _%stx205990%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp209493
                                                             (cons (let ((__tmp209494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main206041%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt206057%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs206044%_
                                                       _%xargs206084%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp209494 _%stx205990%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp209493 _%kwset206071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp209491
                                               _%stx205990%_
                                               _%ctx205989%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g206020206030%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e206025206090%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206020206030%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e206026206093%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206020206030%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e206027206096%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206020206030%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys206099%_ _%e206027206096%_)
                                   (_%e206028206101%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g206020206030%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main206104%_ _%e206028206101%_))
                              (_%K206024206087%_
                               _%main206104%_
                               _%keys206099%_))
                            (_%else206022206038%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx205989%_ _%stx205990%_)))))
               (_%e206007206109%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206003206012%_ '1 '#f '#f)))
               (_%e206008206112%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206003206012%_ '2 '#f '#f)))
               (_%e206009206115%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206003206012%_ '3 '#f '#f)))
               (_%table206118%_ _%e206009206115%_)
               (_%e206010206120%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206003206012%_ '4 '#f '#f)))
               (_%dispatch206123%_ _%e206010206120%_))
          (_%K206006206106%_ _%dispatch206123%_ _%table206118%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx205601%_ _%args205602%_)
        (let _%lp205604%_ ((_%rest205606%_ _%args205602%_)
                           (_%pargs205607%_ '())
                           (_%kwargs205608%_ '()))
          (let* ((_%__stx208947208948%_ _%rest205606%_)
                 (_%g205614205666%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208947208948%_)))))
            (let ((_%__kont208949208950%_
                   (lambda (_%g205616205845%_ _%g205617205846%_)
                     (_%lp205604%_
                      _%g205616205845%_
                      (cons _%g205617205846%_ _%pargs205607%_)
                      _%kwargs205608%_)))
                  (_%__kont208951208952%_
                   (lambda (_%g205631205791%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g205631205791%_
                                _%pargs205607%_))
                             (reverse _%kwargs205608%_))))
                  (_%__kont208953208954%_
                   (lambda (_%g205642205738%_
                            _%g205643205739%_
                            _%g205644205740%_)
                     (let ((_%kw205757%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g205644205740%_))))
                       (if (assq _%kw205757%_ _%kwargs205608%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx205601%_
                              _%kw205757%_))
                           (_%lp205604%_
                            _%g205642205738%_
                            _%pargs205607%_
                            (cons (cons _%kw205757%_ _%g205643205739%_)
                                  _%kwargs205608%_))))))
                  (_%__kont208955208956%_
                   (lambda (_%g205657205686%_ _%g205658205687%_)
                     (_%lp205604%_
                      _%g205657205686%_
                      (cons _%g205658205687%_ _%pargs205607%_)
                      _%kwargs205608%_)))
                  (_%__kont208957208958%_
                   (lambda ()
                     (values (reverse _%pargs205607%_)
                             (reverse _%kwargs205608%_)))))
              (let ((_%__match209054209055%_
                     (lambda (_%e205645205706%_
                              _%hd205646205709%_
                              _%tl205647205711%_
                              _%e205648205714%_
                              _%hd205649205717%_
                              _%tl205650205719%_
                              _%e205651205722%_
                              _%hd205652205725%_
                              _%tl205653205727%_
                              _%e205654205730%_
                              _%hd205655205733%_
                              _%tl205656205735%_)
                       (let ((_%g205642205738%_ _%tl205656205735%_)
                             (_%g205643205739%_ _%hd205655205733%_)
                             (_%g205644205740%_ _%hd205652205725%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g205644205740%_))
                             (_%__kont208953208954%_
                              _%g205642205738%_
                              _%g205643205739%_
                              _%g205644205740%_)
                             (_%__kont208955208956%_
                              _%tl205647205711%_
                              _%hd205646205709%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx208947208948%_))
                    (let ((_%e205618205810%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx208947208948%_))))
                      (let ((_%tl205620205815%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205618205810%_)))
                            (_%hd205619205813%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205618205810%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd205619205813%_))
                            (let ((_%e205621205818%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd205619205813%_))))
                              (let ((_%tl205623205823%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205621205818%_)))
                                    (_%hd205622205821%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205621205818%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd205622205821%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd205622205821%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205623205823%_))
                                            (let ((_%e205624205826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl205623205823%_))))
                                              (let ((_%tl205626205831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205624205826%_)))
                                                    (_%hd205625205829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205624205826%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205625205829%_))
                                                    (let ((_%e205627205834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205625205829%_))))
                                                      (if (equal? _%e205627205834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205626205831%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205620205815%_))
                          (let ((_%e205628205837%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205620205815%_))))
                            (let ((_%tl205630205842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205628205837%_)))
                                  (_%hd205629205840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205628205837%_))))
                              (_%__kont208949208950%_
                               _%tl205630205842%_
                               _%hd205629205840%_)))
                          (_%__kont208955208956%_
                           _%tl205620205815%_
                           _%hd205619205813%_))
                      (_%__kont208955208956%_
                       _%tl205620205815%_
                       _%hd205619205813%_))
                  (if (equal? _%e205627205834%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205626205831%_))
                          (_%__kont208951208952%_ _%tl205620205815%_)
                          (_%__kont208955208956%_
                           _%tl205620205815%_
                           _%hd205619205813%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205626205831%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205620205815%_))
                              (let ((_%e205654205730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205620205815%_))))
                                (let ((_%tl205656205735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205654205730%_)))
                                      (_%hd205655205733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205654205730%_))))
                                  (_%__match209054209055%_
                                   _%e205618205810%_
                                   _%hd205619205813%_
                                   _%tl205620205815%_
                                   _%e205621205818%_
                                   _%hd205622205821%_
                                   _%tl205623205823%_
                                   _%e205624205826%_
                                   _%hd205625205829%_
                                   _%tl205626205831%_
                                   _%e205654205730%_
                                   _%hd205655205733%_
                                   _%tl205656205735%_)))
                              (_%__kont208955208956%_
                               _%tl205620205815%_
                               _%hd205619205813%_))
                          (_%__kont208955208956%_
                           _%tl205620205815%_
                           _%hd205619205813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205626205831%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205620205815%_))
                                                            (let ((_%e205654205730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl205620205815%_))))
                      (let ((_%tl205656205735%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205654205730%_)))
                            (_%hd205655205733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205654205730%_))))
                        (_%__match209054209055%_
                         _%e205618205810%_
                         _%hd205619205813%_
                         _%tl205620205815%_
                         _%e205621205818%_
                         _%hd205622205821%_
                         _%tl205623205823%_
                         _%e205624205826%_
                         _%hd205625205829%_
                         _%tl205626205831%_
                         _%e205654205730%_
                         _%hd205655205733%_
                         _%tl205656205735%_)))
                    (_%__kont208955208956%_
                     _%tl205620205815%_
                     _%hd205619205813%_))
                (_%__kont208955208956%_
                 _%tl205620205815%_
                 _%hd205619205813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont208955208956%_
                                             _%tl205620205815%_
                                             _%hd205619205813%_))
                                        (_%__kont208955208956%_
                                         _%tl205620205815%_
                                         _%hd205619205813%_))
                                    (_%__kont208955208956%_
                                     _%tl205620205815%_
                                     _%hd205619205813%_))))
                            (_%__kont208955208956%_
                             _%tl205620205815%_
                             _%hd205619205813%_))))
                    (_%__kont208957208958%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self205585%_ _%ctx205586%_ _%stx205587%_ _%args205588%_)
        (let ((_%self205591%_ _%self205585%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx205586%_ _%stx205587%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self205275%_ _%stx205276%_)
        (let* ((_%__stx209063209064%_ _%stx205276%_)
               (_%g205279205319%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209063209064%_)))))
          (let ((_%__kont209065209066%_
                 (lambda (_%g205281205423%_ _%g205282205424%_)
                   (let ((_%$e205451%_
                          (member 'return:
                                  (let ((__tmp209495
                                         (lambda (_%g205443205446%_
                                                  _%g205444205448%_)
                                           (cons _%g205443205446%_
                                                 _%g205444205448%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp209495
                                     '()
                                     _%g205282205424%_))
                                  gx#stx-eq?)))
                     (if _%$e205451%_
                         ((lambda (_%tail205454%_)
                            (let ((_%type205456%_
                                   (let ((__tmp209496
                                          (let ((__tmp209497
                                                 (cadr _%tail205454%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp209497))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx205276%_
                                      __tmp209496))))
                              (gxc#check-return-type!
                               _%stx205276%_
                               _%g205281205423%_
                               _%type205456%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self205275%_
                                 _%g205281205423%_))))
                          _%$e205451%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self205275%_
                            _%g205281205423%_))))))
                (_%__kont209069209070%_
                 (lambda (_%g205304205348%_ _%g205305205349%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205275%_ _%g205304205348%_)))))
            (let ((_%__match209100209101%_
                   (lambda (_%e205283205369%_
                            _%hd205284205372%_
                            _%tl205285205374%_
                            _%e205286205377%_
                            _%hd205287205380%_
                            _%tl205288205382%_
                            _%e205289205385%_
                            _%hd205290205388%_
                            _%tl205291205390%_
                            _%__splice209067209068%_
                            _%target205292205393%_
                            _%tl205294205395%_)
                     (letrec ((_%loop205295205398%_
                               (lambda (_%hd205293205401%_
                                        _%signature205299205403%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205293205401%_))
                                     (let ((_%e205296205405%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd205293205401%_))))
                                       (let ((_%lp-tl205298205410%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205296205405%_)))
                                             (_%lp-hd205297205408%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205296205405%_))))
                                         (_%loop205295205398%_
                                          _%lp-tl205298205410%_
                                          (cons _%lp-hd205297205408%_
                                                _%signature205299205403%_))))
                                     (let ((_%signature205300205413%_
                                            (reverse _%signature205299205403%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl205288205382%_))
                                           (let ((_%e205301205415%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl205288205382%_))))
                                             (let ((_%tl205303205420%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e205301205415%_)))
                                                   (_%hd205302205418%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e205301205415%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl205303205420%_))
                                                   (_%__kont209065209066%_
                                                    _%hd205302205418%_
                                                    _%signature205300205413%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g205279205319%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g205279205319%_))))))))
                       (_%loop205295205398%_ _%target205292205393%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209063209064%_))
                  (let ((_%e205283205369%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209063209064%_))))
                    (let ((_%tl205285205374%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205283205369%_)))
                          (_%hd205284205372%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205283205369%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205285205374%_))
                          (let ((_%e205286205377%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205285205374%_))))
                            (let ((_%tl205288205382%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205286205377%_)))
                                  (_%hd205287205380%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205286205377%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd205287205380%_))
                                  (let ((_%e205289205385%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205287205380%_))))
                                    (let ((_%tl205291205390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205289205385%_)))
                                          (_%hd205290205388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205289205385%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd205290205388%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd205290205388%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl205291205390%_))
                                                  (let ((_%__splice209067209068%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl205291205390%_
                                                            '0))))
                                                    (let ((_%tl205294205395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice209067209068%_
                                                              '1)))
                                                          (_%target205292205393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice209067209068%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205294205395%_))
                                                          (_%__match209100209101%_
                                                           _%e205283205369%_
                                                           _%hd205284205372%_
                                                           _%tl205285205374%_
                                                           _%e205286205377%_
                                                           _%hd205287205380%_
                                                           _%tl205288205382%_
                                                           _%e205289205385%_
                                                           _%hd205290205388%_
                                                           _%tl205291205390%_
                                                           _%__splice209067209068%_
                                                           _%target205292205393%_
                                                           _%tl205294205395%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl205288205382%_))
                      (let ((_%e205312205340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl205288205382%_))))
                        (let ((_%tl205314205345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205312205340%_)))
                              (_%hd205313205343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205312205340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205314205345%_))
                              (_%__kont209069209070%_
                               _%hd205313205343%_
                               _%hd205287205380%_)
                              (let ()
                                (declare (not safe))
                                (_%g205279205319%_)))))
                      (let () (declare (not safe)) (_%g205279205319%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205288205382%_))
                                                      (let ((_%e205312205340%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl205288205382%_))))
                (let ((_%tl205314205345%_
                       (let () (declare (not safe)) (##cdr _%e205312205340%_)))
                      (_%hd205313205343%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205312205340%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205314205345%_))
                      (_%__kont209069209070%_
                       _%hd205313205343%_
                       _%hd205287205380%_)
                      (let () (declare (not safe)) (_%g205279205319%_)))))
              (let () (declare (not safe)) (_%g205279205319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205288205382%_))
                                                  (let ((_%e205312205340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl205288205382%_))))
                                                    (let ((_%tl205314205345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205312205340%_)))
                                                          (_%hd205313205343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205312205340%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205314205345%_))
                                                          (_%__kont209069209070%_
                                                           _%hd205313205343%_
                                                           _%hd205287205380%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205279205319%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205279205319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205288205382%_))
                                              (let ((_%e205312205340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl205288205382%_))))
                                                (let ((_%tl205314205345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205312205340%_)))
                                                      (_%hd205313205343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205312205340%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205314205345%_))
                                                      (_%__kont209069209070%_
                                                       _%hd205313205343%_
                                                       _%hd205287205380%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205279205319%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205279205319%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205288205382%_))
                                      (let ((_%e205312205340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205288205382%_))))
                                        (let ((_%tl205314205345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205312205340%_)))
                                              (_%hd205313205343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205312205340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205314205345%_))
                                              (_%__kont209069209070%_
                                               _%hd205313205343%_
                                               _%hd205287205380%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205279205319%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205279205319%_))))))
                          (let () (declare (not safe)) (_%g205279205319%_)))))
                  (let () (declare (not safe)) (_%g205279205319%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx205250%_ _%expr205251%_ _%type205252%_)
        (let ((_%$e205254%_ (not _%type205252%_)))
          (if _%$e205254%_
              _%$e205254%_
              (let ((_%$e205257%_
                     (eq? (##structure-ref _%type205252%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e205257%_
                    _%$e205257%_
                    (let ((_%$e205260%_
                           (eq? (##structure-ref
                                 _%type205252%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e205260%_
                          _%$e205260%_
                          (let ((_%expr-type205264%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr205251%_))))
                            (if (not _%expr-type205264%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx205250%_
                                   _%type205252%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type205264%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx205250%_
                                       _%type205252%_
                                       _%expr-type205264%_))
                                    (let ((_%$e205268%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type205264%_
                                              'gxc#!abort::t))))
                                      (if _%$e205268%_
                                          _%$e205268%_
                                          (let ((_%$e205271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type205264%_
                                                    _%type205252%_))))
                                            (if _%$e205271%_
                                                _%$e205271%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx205250%_
                                                   _%type205252%_
                                                   _%expr-type205264%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self204676%_ _%stx204677%_)
        (let* ((_%__stx209145209146%_ _%stx204677%_)
               (_%g204682204792%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209145209146%_)))))
          (let ((_%__kont209147209148%_
                 (lambda (_%g204684205224%_
                          _%g204685205225%_
                          _%g204686205226%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g204686205226%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204676%_ _%g204685205225%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self204676%_
                          _%g204684205224%_)))))
                (_%__kont209149209150%_
                 (lambda (_%g204705205050%_
                          _%g204706205051%_
                          _%g204707205052%_
                          _%g204708205053%_)
                   (let ((_%$e205085%_
                          (let ((__tmp209498
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g204708205053%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp209498))))
                     (if _%$e205085%_
                         ((lambda (_%pred-type205088%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type205088%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type205088%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test205093%_
                                        (let ((__tmp209499
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g204708205053%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g204707205052%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp209499
                                           _%stx204677%_
                                           _%self204676%_)))
                                       (_%K205097%_
                                        (let ((__tmp209500
                                               (lambda ()
                                                 (let ((__tmp209503
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self204676%_
                                                             _%g204706205051%_))))
                                                       (__tmp209501
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g204707205052%_))
                            (let ((__tmp209502
                                   (##structure-ref
                                    _%pred-type205088%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx204677%_
                               __tmp209502)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp209503
                                                    gxc#current-compile-path-type
                                                    __tmp209501)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209500)))
                                       (_%E205100%_
                                        (let ((__tmp209504
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self204676%_
                                                    _%g204705205050%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209504)))
                                       (_%__stx209123209124%_ _%test205093%_)
                                       (_%g205104205118%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx209123209124%_)))))
                                  (let ((_%__kont209125209126%_
                                         (lambda (_%g205106205146%_
                                                  _%g205107205147%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g205106205146%_))
                                               (force _%K205097%_)
                                               (force _%E205100%_))))
                                        (_%__kont209127209128%_
                                         (lambda ()
                                           (let ((__tmp209505
                                                  (cons '%#if
                                                        (cons _%test205093%_
                                                              (cons (force _%K205097%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E205100%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209505
                                              _%stx204677%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx209123209124%_))
                                        (let ((_%e205108205130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx209123209124%_))))
                                          (let ((_%tl205110205135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e205108205130%_)))
                                                (_%hd205109205133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e205108205130%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205110205135%_))
                                                (let ((_%e205111205138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl205110205135%_))))
                                                  (let ((_%tl205113205143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205111205138%_)))
                                                        (_%hd205112205141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205111205138%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205113205143%_))
                                                        (_%__kont209125209126%_
                                                         _%hd205112205141%_
                                                         _%hd205109205133%_)
                                                        (_%__kont209127209128%_))))
                                                (_%__kont209127209128%_))))
                                        (_%__kont209127209128%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self204676%_
                                   _%stx204677%_))))
                          _%$e205085%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self204676%_
                            _%stx204677%_))))))
                (_%__kont209151209152%_
                 (lambda (_%g204742204926%_
                          _%g204743204927%_
                          _%g204744204928%_
                          _%g204745204929%_)
                   (gxc#optimize-if%
                    _%self204676%_
                    (let ((__tmp209506
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g204744204928%_
                                       (cons _%g204742204926%_
                                             (cons _%g204743204927%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209506 _%stx204677%_)))))
                (_%__kont209153209154%_
                 (lambda (_%g204773204829%_
                          _%g204774204830%_
                          _%g204775204831%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self204676%_ _%stx204677%_)))))
            (let ((_%__match209352209353%_
                   (lambda (_%e204746204854%_
                            _%hd204747204857%_
                            _%tl204748204859%_
                            _%e204749204862%_
                            _%hd204750204865%_
                            _%tl204751204867%_
                            _%e204752204870%_
                            _%hd204753204873%_
                            _%tl204754204875%_
                            _%e204755204878%_
                            _%hd204756204881%_
                            _%tl204757204883%_
                            _%e204758204886%_
                            _%hd204759204889%_
                            _%tl204760204891%_
                            _%e204761204894%_
                            _%hd204762204897%_
                            _%tl204763204899%_
                            _%e204764204902%_
                            _%hd204765204905%_
                            _%tl204766204907%_
                            _%e204767204910%_
                            _%hd204768204913%_
                            _%tl204769204915%_
                            _%e204770204918%_
                            _%hd204771204921%_
                            _%tl204772204923%_)
                     (let ((_%g204742204926%_ _%hd204771204921%_)
                           (_%g204743204927%_ _%hd204768204913%_)
                           (_%g204744204928%_ _%hd204765204905%_)
                           (_%g204745204929%_ _%hd204762204897%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g204745204929%_ 'not))
                           (_%__kont209151209152%_
                            _%g204742204926%_
                            _%g204743204927%_
                            _%g204744204928%_
                            _%g204745204929%_)
                           (_%__kont209153209154%_
                            _%hd204771204921%_
                            _%hd204768204913%_
                            _%hd204750204865%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209145209146%_))
                  (let ((_%e204687205176%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209145209146%_))))
                    (let ((_%tl204689205181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204687205176%_)))
                          (_%hd204688205179%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204687205176%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204689205181%_))
                          (let ((_%e204690205184%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204689205181%_))))
                            (let ((_%tl204692205189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204690205184%_)))
                                  (_%hd204691205187%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204690205184%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204691205187%_))
                                  (let ((_%e204693205192%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204691205187%_))))
                                    (let ((_%tl204695205197%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204693205192%_)))
                                          (_%hd204694205195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204693205192%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204694205195%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd204694205195%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204695205197%_))
                                                  (let ((_%e204696205200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204695205197%_))))
                                                    (let ((_%tl204698205205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204696205200%_)))
                                                          (_%hd204697205203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204696205200%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204698205205%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204692205189%_))
                      (let ((_%e204699205208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204692205189%_))))
                        (let ((_%tl204701205213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204699205208%_)))
                              (_%hd204700205211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204699205208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204701205213%_))
                              (let ((_%e204702205216%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204701205213%_))))
                                (let ((_%tl204704205221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204702205216%_)))
                                      (_%hd204703205219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204702205216%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204704205221%_))
                                      (_%__kont209147209148%_
                                       _%hd204703205219%_
                                       _%hd204700205211%_
                                       _%hd204697205203%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204682204792%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204682204792%_)))))
                      (let () (declare (not safe)) (_%g204682204792%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204692205189%_))
                      (let ((_%e204782204813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204692205189%_))))
                        (let ((_%tl204784204818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204782204813%_)))
                              (_%hd204783204816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204782204813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204784204818%_))
                              (let ((_%e204785204821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204784204818%_))))
                                (let ((_%tl204787204826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204785204821%_)))
                                      (_%hd204786204824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204785204821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204787204826%_))
                                      (_%__kont209153209154%_
                                       _%hd204786204824%_
                                       _%hd204783204816%_
                                       _%hd204691205187%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204682204792%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204682204792%_)))))
                      (let () (declare (not safe)) (_%g204682204792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204692205189%_))
                                                      (let ((_%e204782204813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204692205189%_))))
                (let ((_%tl204784204818%_
                       (let () (declare (not safe)) (##cdr _%e204782204813%_)))
                      (_%hd204783204816%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204782204813%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204784204818%_))
                      (let ((_%e204785204821%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204784204818%_))))
                        (let ((_%tl204787204826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204785204821%_)))
                              (_%hd204786204824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204785204821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204787204826%_))
                              (_%__kont209153209154%_
                               _%hd204786204824%_
                               _%hd204783204816%_
                               _%hd204691205187%_)
                              (let ()
                                (declare (not safe))
                                (_%g204682204792%_)))))
                      (let () (declare (not safe)) (_%g204682204792%_)))))
              (let () (declare (not safe)) (_%g204682204792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd204694205195%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204695205197%_))
                                                      (let ((_%e204718204986%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204695205197%_))))
                (let ((_%tl204720204991%_
                       (let () (declare (not safe)) (##cdr _%e204718204986%_)))
                      (_%hd204719204989%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204718204986%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd204719204989%_))
                      (let ((_%e204721204994%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204719204989%_))))
                        (let ((_%tl204723204999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204721204994%_)))
                              (_%hd204722204997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204721204994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd204722204997%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd204722204997%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204723204999%_))
                                      (let ((_%e204724205002%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204723204999%_))))
                                        (let ((_%tl204726205007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204724205002%_)))
                                              (_%hd204725205005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204724205002%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204726205007%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204720204991%_))
                                                  (let ((_%e204727205010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204720204991%_))))
                                                    (let ((_%tl204729205015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204727205010%_)))
                                                          (_%hd204728205013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204727205010%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204728205013%_))
                                                          (let ((_%e204730205018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd204728205013%_))))
                    (let ((_%tl204732205023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204730205018%_)))
                          (_%hd204731205021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204730205018%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204731205021%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd204731205021%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204732205023%_))
                                  (let ((_%e204733205026%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204732205023%_))))
                                    (let ((_%tl204735205031%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204733205026%_)))
                                          (_%hd204734205029%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204733205026%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204735205031%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204729205015%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204692205189%_))
                                                  (let ((_%e204736205034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204692205189%_))))
                                                    (let ((_%tl204738205039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204736205034%_)))
                                                          (_%hd204737205037%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204736205034%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204738205039%_))
                                                          (let ((_%e204739205042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204738205039%_))))
                    (let ((_%tl204741205047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204739205042%_)))
                          (_%hd204740205045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204739205042%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204741205047%_))
                          (_%__kont209149209150%_
                           _%hd204740205045%_
                           _%hd204737205037%_
                           _%hd204734205029%_
                           _%hd204725205005%_)
                          (let () (declare (not safe)) (_%g204682204792%_)))))
                  (let () (declare (not safe)) (_%g204682204792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204692205189%_))
                                                  (let ((_%e204782204813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204692205189%_))))
                                                    (let ((_%tl204784204818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204782204813%_)))
                                                          (_%hd204783204816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204782204813%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204784204818%_))
                                                          (let ((_%e204785204821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204784204818%_))))
                    (let ((_%tl204787204826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204785204821%_)))
                          (_%hd204786204824%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204785204821%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204787204826%_))
                          (_%__kont209153209154%_
                           _%hd204786204824%_
                           _%hd204783204816%_
                           _%hd204691205187%_)
                          (let () (declare (not safe)) (_%g204682204792%_)))))
                  (let () (declare (not safe)) (_%g204682204792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204729205015%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204692205189%_))
                                                  (let ((_%e204767204910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204692205189%_))))
                                                    (let ((_%tl204769204915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204767204910%_)))
                                                          (_%hd204768204913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204767204910%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204769204915%_))
                                                          (let ((_%e204770204918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204769204915%_))))
                    (let ((_%tl204772204923%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204770204918%_)))
                          (_%hd204771204921%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204770204918%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204772204923%_))
                          (_%__match209352209353%_
                           _%e204687205176%_
                           _%hd204688205179%_
                           _%tl204689205181%_
                           _%e204690205184%_
                           _%hd204691205187%_
                           _%tl204692205189%_
                           _%e204693205192%_
                           _%hd204694205195%_
                           _%tl204695205197%_
                           _%e204718204986%_
                           _%hd204719204989%_
                           _%tl204720204991%_
                           _%e204721204994%_
                           _%hd204722204997%_
                           _%tl204723204999%_
                           _%e204724205002%_
                           _%hd204725205005%_
                           _%tl204726205007%_
                           _%e204727205010%_
                           _%hd204728205013%_
                           _%tl204729205015%_
                           _%e204767204910%_
                           _%hd204768204913%_
                           _%tl204769204915%_
                           _%e204770204918%_
                           _%hd204771204921%_
                           _%tl204772204923%_)
                          (let () (declare (not safe)) (_%g204682204792%_)))))
                  (let () (declare (not safe)) (_%g204682204792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204692205189%_))
                                                  (let ((_%e204782204813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204692205189%_))))
                                                    (let ((_%tl204784204818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204782204813%_)))
                                                          (_%hd204783204816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204782204813%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204784204818%_))
                                                          (let ((_%e204785204821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204784204818%_))))
                    (let ((_%tl204787204826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204785204821%_)))
                          (_%hd204786204824%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204785204821%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204787204826%_))
                          (_%__kont209153209154%_
                           _%hd204786204824%_
                           _%hd204783204816%_
                           _%hd204691205187%_)
                          (let () (declare (not safe)) (_%g204682204792%_)))))
                  (let () (declare (not safe)) (_%g204682204792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204729205015%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204692205189%_))
                                          (let ((_%e204767204910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204692205189%_))))
                                            (let ((_%tl204769204915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204767204910%_)))
                                                  (_%hd204768204913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204767204910%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204769204915%_))
                                                  (let ((_%e204770204918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204769204915%_))))
                                                    (let ((_%tl204772204923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204770204918%_)))
                                                          (_%hd204771204921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204770204918%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204772204923%_))
                                                          (_%__match209352209353%_
                                                           _%e204687205176%_
                                                           _%hd204688205179%_
                                                           _%tl204689205181%_
                                                           _%e204690205184%_
                                                           _%hd204691205187%_
                                                           _%tl204692205189%_
                                                           _%e204693205192%_
                                                           _%hd204694205195%_
                                                           _%tl204695205197%_
                                                           _%e204718204986%_
                                                           _%hd204719204989%_
                                                           _%tl204720204991%_
                                                           _%e204721204994%_
                                                           _%hd204722204997%_
                                                           _%tl204723204999%_
                                                           _%e204724205002%_
                                                           _%hd204725205005%_
                                                           _%tl204726205007%_
                                                           _%e204727205010%_
                                                           _%hd204728205013%_
                                                           _%tl204729205015%_
                                                           _%e204767204910%_
                                                           _%hd204768204913%_
                                                           _%tl204769204915%_
                                                           _%e204770204918%_
                                                           _%hd204771204921%_
                                                           _%tl204772204923%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204682204792%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204692205189%_))
                                          (let ((_%e204782204813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204692205189%_))))
                                            (let ((_%tl204784204818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204782204813%_)))
                                                  (_%hd204783204816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204782204813%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204784204818%_))
                                                  (let ((_%e204785204821%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204784204818%_))))
                                                    (let ((_%tl204787204826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204785204821%_)))
                                                          (_%hd204786204824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204785204821%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204787204826%_))
                                                          (_%__kont209153209154%_
                                                           _%hd204786204824%_
                                                           _%hd204783204816%_
                                                           _%hd204691205187%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204682204792%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204729205015%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204692205189%_))
                                      (let ((_%e204767204910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204692205189%_))))
                                        (let ((_%tl204769204915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204767204910%_)))
                                              (_%hd204768204913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204767204910%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204769204915%_))
                                              (let ((_%e204770204918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204769204915%_))))
                                                (let ((_%tl204772204923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204770204918%_)))
                                                      (_%hd204771204921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204770204918%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204772204923%_))
                                                      (_%__match209352209353%_
                                                       _%e204687205176%_
                                                       _%hd204688205179%_
                                                       _%tl204689205181%_
                                                       _%e204690205184%_
                                                       _%hd204691205187%_
                                                       _%tl204692205189%_
                                                       _%e204693205192%_
                                                       _%hd204694205195%_
                                                       _%tl204695205197%_
                                                       _%e204718204986%_
                                                       _%hd204719204989%_
                                                       _%tl204720204991%_
                                                       _%e204721204994%_
                                                       _%hd204722204997%_
                                                       _%tl204723204999%_
                                                       _%e204724205002%_
                                                       _%hd204725205005%_
                                                       _%tl204726205007%_
                                                       _%e204727205010%_
                                                       _%hd204728205013%_
                                                       _%tl204729205015%_
                                                       _%e204767204910%_
                                                       _%hd204768204913%_
                                                       _%tl204769204915%_
                                                       _%e204770204918%_
                                                       _%hd204771204921%_
                                                       _%tl204772204923%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204682204792%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204682204792%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204682204792%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204692205189%_))
                                      (let ((_%e204782204813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204692205189%_))))
                                        (let ((_%tl204784204818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204782204813%_)))
                                              (_%hd204783204816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204782204813%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204784204818%_))
                                              (let ((_%e204785204821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204784204818%_))))
                                                (let ((_%tl204787204826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204785204821%_)))
                                                      (_%hd204786204824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204785204821%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204787204826%_))
                                                      (_%__kont209153209154%_
                                                       _%hd204786204824%_
                                                       _%hd204783204816%_
                                                       _%hd204691205187%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204682204792%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204682204792%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204682204792%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204729205015%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204692205189%_))
                                  (let ((_%e204767204910%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204692205189%_))))
                                    (let ((_%tl204769204915%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204767204910%_)))
                                          (_%hd204768204913%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204767204910%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204769204915%_))
                                          (let ((_%e204770204918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204769204915%_))))
                                            (let ((_%tl204772204923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204770204918%_)))
                                                  (_%hd204771204921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204770204918%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204772204923%_))
                                                  (_%__match209352209353%_
                                                   _%e204687205176%_
                                                   _%hd204688205179%_
                                                   _%tl204689205181%_
                                                   _%e204690205184%_
                                                   _%hd204691205187%_
                                                   _%tl204692205189%_
                                                   _%e204693205192%_
                                                   _%hd204694205195%_
                                                   _%tl204695205197%_
                                                   _%e204718204986%_
                                                   _%hd204719204989%_
                                                   _%tl204720204991%_
                                                   _%e204721204994%_
                                                   _%hd204722204997%_
                                                   _%tl204723204999%_
                                                   _%e204724205002%_
                                                   _%hd204725205005%_
                                                   _%tl204726205007%_
                                                   _%e204727205010%_
                                                   _%hd204728205013%_
                                                   _%tl204729205015%_
                                                   _%e204767204910%_
                                                   _%hd204768204913%_
                                                   _%tl204769204915%_
                                                   _%e204770204918%_
                                                   _%hd204771204921%_
                                                   _%tl204772204923%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204682204792%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204692205189%_))
                                  (let ((_%e204782204813%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204692205189%_))))
                                    (let ((_%tl204784204818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204782204813%_)))
                                          (_%hd204783204816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204782204813%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204784204818%_))
                                          (let ((_%e204785204821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204784204818%_))))
                                            (let ((_%tl204787204826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204785204821%_)))
                                                  (_%hd204786204824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204785204821%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204787204826%_))
                                                  (_%__kont209153209154%_
                                                   _%hd204786204824%_
                                                   _%hd204783204816%_
                                                   _%hd204691205187%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204682204792%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204729205015%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204692205189%_))
                          (let ((_%e204767204910%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204692205189%_))))
                            (let ((_%tl204769204915%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204767204910%_)))
                                  (_%hd204768204913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204767204910%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204769204915%_))
                                  (let ((_%e204770204918%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204769204915%_))))
                                    (let ((_%tl204772204923%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204770204918%_)))
                                          (_%hd204771204921%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204770204918%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204772204923%_))
                                          (_%__match209352209353%_
                                           _%e204687205176%_
                                           _%hd204688205179%_
                                           _%tl204689205181%_
                                           _%e204690205184%_
                                           _%hd204691205187%_
                                           _%tl204692205189%_
                                           _%e204693205192%_
                                           _%hd204694205195%_
                                           _%tl204695205197%_
                                           _%e204718204986%_
                                           _%hd204719204989%_
                                           _%tl204720204991%_
                                           _%e204721204994%_
                                           _%hd204722204997%_
                                           _%tl204723204999%_
                                           _%e204724205002%_
                                           _%hd204725205005%_
                                           _%tl204726205007%_
                                           _%e204727205010%_
                                           _%hd204728205013%_
                                           _%tl204729205015%_
                                           _%e204767204910%_
                                           _%hd204768204913%_
                                           _%tl204769204915%_
                                           _%e204770204918%_
                                           _%hd204771204921%_
                                           _%tl204772204923%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204682204792%_)))))
                          (let () (declare (not safe)) (_%g204682204792%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204692205189%_))
                          (let ((_%e204782204813%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204692205189%_))))
                            (let ((_%tl204784204818%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204782204813%_)))
                                  (_%hd204783204816%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204782204813%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204784204818%_))
                                  (let ((_%e204785204821%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204784204818%_))))
                                    (let ((_%tl204787204826%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204785204821%_)))
                                          (_%hd204786204824%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204785204821%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204787204826%_))
                                          (_%__kont209153209154%_
                                           _%hd204786204824%_
                                           _%hd204783204816%_
                                           _%hd204691205187%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204682204792%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g204682204792%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204692205189%_))
                                                      (let ((_%e204782204813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204692205189%_))))
                (let ((_%tl204784204818%_
                       (let () (declare (not safe)) (##cdr _%e204782204813%_)))
                      (_%hd204783204816%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204782204813%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204784204818%_))
                      (let ((_%e204785204821%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204784204818%_))))
                        (let ((_%tl204787204826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204785204821%_)))
                              (_%hd204786204824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204785204821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204787204826%_))
                              (_%__kont209153209154%_
                               _%hd204786204824%_
                               _%hd204783204816%_
                               _%hd204691205187%_)
                              (let ()
                                (declare (not safe))
                                (_%g204682204792%_)))))
                      (let () (declare (not safe)) (_%g204682204792%_)))))
              (let () (declare (not safe)) (_%g204682204792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204692205189%_))
                                                  (let ((_%e204782204813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204692205189%_))))
                                                    (let ((_%tl204784204818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204782204813%_)))
                                                          (_%hd204783204816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204782204813%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204784204818%_))
                                                          (let ((_%e204785204821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204784204818%_))))
                    (let ((_%tl204787204826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204785204821%_)))
                          (_%hd204786204824%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204785204821%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204787204826%_))
                          (_%__kont209153209154%_
                           _%hd204786204824%_
                           _%hd204783204816%_
                           _%hd204691205187%_)
                          (let () (declare (not safe)) (_%g204682204792%_)))))
                  (let () (declare (not safe)) (_%g204682204792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204692205189%_))
                                          (let ((_%e204782204813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204692205189%_))))
                                            (let ((_%tl204784204818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204782204813%_)))
                                                  (_%hd204783204816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204782204813%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204784204818%_))
                                                  (let ((_%e204785204821%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204784204818%_))))
                                                    (let ((_%tl204787204826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204785204821%_)))
                                                          (_%hd204786204824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204785204821%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204787204826%_))
                                                          (_%__kont209153209154%_
                                                           _%hd204786204824%_
                                                           _%hd204783204816%_
                                                           _%hd204691205187%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204682204792%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204692205189%_))
                                      (let ((_%e204782204813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204692205189%_))))
                                        (let ((_%tl204784204818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204782204813%_)))
                                              (_%hd204783204816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204782204813%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204784204818%_))
                                              (let ((_%e204785204821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204784204818%_))))
                                                (let ((_%tl204787204826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204785204821%_)))
                                                      (_%hd204786204824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204785204821%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204787204826%_))
                                                      (_%__kont209153209154%_
                                                       _%hd204786204824%_
                                                       _%hd204783204816%_
                                                       _%hd204691205187%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204682204792%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204682204792%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204682204792%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204692205189%_))
                                  (let ((_%e204782204813%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204692205189%_))))
                                    (let ((_%tl204784204818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204782204813%_)))
                                          (_%hd204783204816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204782204813%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204784204818%_))
                                          (let ((_%e204785204821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204784204818%_))))
                                            (let ((_%tl204787204826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204785204821%_)))
                                                  (_%hd204786204824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204785204821%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204787204826%_))
                                                  (_%__kont209153209154%_
                                                   _%hd204786204824%_
                                                   _%hd204783204816%_
                                                   _%hd204691205187%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204682204792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204682204792%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204692205189%_))
                          (let ((_%e204782204813%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204692205189%_))))
                            (let ((_%tl204784204818%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204782204813%_)))
                                  (_%hd204783204816%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204782204813%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204784204818%_))
                                  (let ((_%e204785204821%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204784204818%_))))
                                    (let ((_%tl204787204826%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204785204821%_)))
                                          (_%hd204786204824%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204785204821%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204787204826%_))
                                          (_%__kont209153209154%_
                                           _%hd204786204824%_
                                           _%hd204783204816%_
                                           _%hd204691205187%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204682204792%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204682204792%_)))))
                          (let () (declare (not safe)) (_%g204682204792%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl204692205189%_))
                  (let ((_%e204782204813%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204692205189%_))))
                    (let ((_%tl204784204818%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204782204813%_)))
                          (_%hd204783204816%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204782204813%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204784204818%_))
                          (let ((_%e204785204821%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204784204818%_))))
                            (let ((_%tl204787204826%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204785204821%_)))
                                  (_%hd204786204824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204785204821%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204787204826%_))
                                  (_%__kont209153209154%_
                                   _%hd204786204824%_
                                   _%hd204783204816%_
                                   _%hd204691205187%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g204682204792%_)))))
                          (let () (declare (not safe)) (_%g204682204792%_)))))
                  (let () (declare (not safe)) (_%g204682204792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204692205189%_))
                                                      (let ((_%e204782204813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204692205189%_))))
                (let ((_%tl204784204818%_
                       (let () (declare (not safe)) (##cdr _%e204782204813%_)))
                      (_%hd204783204816%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204782204813%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204784204818%_))
                      (let ((_%e204785204821%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204784204818%_))))
                        (let ((_%tl204787204826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204785204821%_)))
                              (_%hd204786204824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204785204821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204787204826%_))
                              (_%__kont209153209154%_
                               _%hd204786204824%_
                               _%hd204783204816%_
                               _%hd204691205187%_)
                              (let ()
                                (declare (not safe))
                                (_%g204682204792%_)))))
                      (let () (declare (not safe)) (_%g204682204792%_)))))
              (let () (declare (not safe)) (_%g204682204792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204692205189%_))
                                              (let ((_%e204782204813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204692205189%_))))
                                                (let ((_%tl204784204818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204782204813%_)))
                                                      (_%hd204783204816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204782204813%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204784204818%_))
                                                      (let ((_%e204785204821%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204784204818%_))))
                (let ((_%tl204787204826%_
                       (let () (declare (not safe)) (##cdr _%e204785204821%_)))
                      (_%hd204786204824%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204785204821%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204787204826%_))
                      (_%__kont209153209154%_
                       _%hd204786204824%_
                       _%hd204783204816%_
                       _%hd204691205187%_)
                      (let () (declare (not safe)) (_%g204682204792%_)))))
              (let () (declare (not safe)) (_%g204682204792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204682204792%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204692205189%_))
                                      (let ((_%e204782204813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204692205189%_))))
                                        (let ((_%tl204784204818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204782204813%_)))
                                              (_%hd204783204816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204782204813%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204784204818%_))
                                              (let ((_%e204785204821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204784204818%_))))
                                                (let ((_%tl204787204826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204785204821%_)))
                                                      (_%hd204786204824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204785204821%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204787204826%_))
                                                      (_%__kont209153209154%_
                                                       _%hd204786204824%_
                                                       _%hd204783204816%_
                                                       _%hd204691205187%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204682204792%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204682204792%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204682204792%_))))))
                          (let () (declare (not safe)) (_%g204682204792%_)))))
                  (let () (declare (not safe)) (_%g204682204792%_))))))))))
