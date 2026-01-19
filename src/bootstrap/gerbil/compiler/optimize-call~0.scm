(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1768864956)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp209312 (list gxc#::basic-xform::t))
            (__tmp209311 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp209312
         '()
         __tmp209311
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args208589%_
        (apply make-instance gxc#::optimize-call::t _%$args208589%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp209313
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
        (__make-atomic-promise __tmp209313)))
    (define gxc#apply-optimize-call
      (lambda (_%stx208581%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self208584%_
                (let ((__obj209303
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj209303))
               (__tmp209314
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208584%_ _%stx208581%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209314
           gxc#current-compile-method
           _%self208584%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp209316 (list gxc#::void::t))
            (__tmp209315 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp209316
         '()
         __tmp209315
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args208578%_
        (apply make-instance gxc#::check-return-type::t _%$args208578%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp209317
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
        (__make-atomic-promise __tmp209317)))
    (define gxc#apply-check-return-type
      (lambda (_%stx208570%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self208573%_
                (let ((__obj209305
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj209305))
               (__tmp209318
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208573%_ _%stx208570%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209318
           gxc#current-compile-method
           _%self208573%_))))
    (define gxc#optimize-call%
      (lambda (_%self208171%_ _%stx208172%_)
        (let* ((_%__stx208658208659%_ _%stx208172%_)
               (_%g208175208221%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208658208659%_)))))
          (let ((_%__kont208660208661%_
                 (lambda (_%L208364%_ _%L208365%_)
                   (let* ((_%rator-id208385%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L208365%_)))
                          (_%rator-type208387%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id208385%_))))
                     (if (or (not _%rator-type208387%_)
                             (eq? (##structure-ref
                                   _%rator-type208387%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self208171%_ _%stx208172%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type208387%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp209319
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type208387%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id208385%_
                                  '" => "
                                  _%rator-type208387%_
                                  '" "
                                  __tmp209319))
                               (let* ((_%optimized208402%_
                                       (let ((__method209306
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type208387%_
                                                 'optimize-call))))
                                         (if __method209306
                                             (let ((__tmp209320
                                                    (let ((__tmp209321
                                                           (lambda (_%g208394208397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g208395208399%_)
                     (cons _%g208394208397%_ _%g208395208399%_))))
              (declare (not safe))
              (__foldr1 __tmp209321 '() _%L208364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method209306
                                                _%rator-type208387%_
                                                _%self208171%_
                                                _%stx208172%_
                                                __tmp209320))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type208387%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx208606208607%_
                                       _%optimized208402%_)
                                      (_%g208405208434%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx208606208607%_)))))
                                 (let ((_%__kont208608208609%_
                                        (lambda (_%L208502%_ _%L208503%_)
                                          (let* ((_%optimized-rator-id208530%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L208503%_)))
                                                 (_%rator-type208535%_
                                                  (let ((_%$e208532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id208530%_))))
                                                    (if _%$e208532%_
                                                        _%$e208532%_
                                                        _%rator-type208387%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type208535%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id208530%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type208535%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type208535%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized208402%_
                                                (let ((__tmp209322
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L208503%_ '()))
                           (let ((__tmp209323
                                  (lambda (_%g208543208546%_ _%g208544208548%_)
                                    (cons _%g208543208546%_
                                          _%g208544208548%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209323 '() _%L208502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp209322
                                                   _%stx208172%_))))))
                                       (_%__kont208612208613%_
                                        (lambda () _%optimized208402%_)))
                                   (let ((_%__match208655208656%_
                                          (lambda (_%e208409208446%_
                                                   _%hd208410208449%_
                                                   _%tl208411208451%_
                                                   _%e208412208454%_
                                                   _%hd208413208457%_
                                                   _%tl208414208459%_
                                                   _%e208415208462%_
                                                   _%hd208416208465%_
                                                   _%tl208417208467%_
                                                   _%e208418208470%_
                                                   _%hd208419208473%_
                                                   _%tl208420208475%_
                                                   _%__splice208610208611%_
                                                   _%target208421208478%_
                                                   _%tl208423208480%_)
                                            (letrec ((_%loop208424208483%_
                                                      (lambda (_%hd208422208486%_
                                                               _%arg208428208488%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd208422208486%_))
                                                            (let ((_%e208425208491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd208422208486%_))))
                      (let ((_%lp-tl208427208496%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208425208491%_)))
                            (_%lp-hd208426208494%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208425208491%_))))
                        (_%loop208424208483%_
                         _%lp-tl208427208496%_
                         (cons _%lp-hd208426208494%_ _%arg208428208488%_))))
                    (let ((_%arg208429208499%_ (reverse _%arg208428208488%_)))
                      (_%__kont208608208609%_
                       _%arg208429208499%_
                       _%hd208419208473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop208424208483%_
                                               _%target208421208478%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx208606208607%_))
                                         (let ((_%e208409208446%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx208606208607%_))))
                                           (let ((_%tl208411208451%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208409208446%_)))
                                                 (_%hd208410208449%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208409208446%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd208410208449%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd208410208449%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl208411208451%_))
                                                         (let ((_%e208412208454%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl208411208451%_))))
                   (let ((_%tl208414208459%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208412208454%_)))
                         (_%hd208413208457%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208412208454%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd208413208457%_))
                         (let ((_%e208415208462%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd208413208457%_))))
                           (let ((_%tl208417208467%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208415208462%_)))
                                 (_%hd208416208465%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208415208462%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd208416208465%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd208416208465%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl208417208467%_))
                                         (let ((_%e208418208470%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl208417208467%_))))
                                           (let ((_%tl208420208475%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208418208470%_)))
                                                 (_%hd208419208473%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208418208470%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl208420208475%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl208414208459%_))
                                                     (let ((_%__splice208610208611%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl208414208459%_
                                                               '0))))
                                                       (let ((_%tl208423208480%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice208610208611%_ '1)))
                     (_%target208421208478%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice208610208611%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl208423208480%_))
                     (_%__match208655208656%_
                      _%e208409208446%_
                      _%hd208410208449%_
                      _%tl208411208451%_
                      _%e208412208454%_
                      _%hd208413208457%_
                      _%tl208414208459%_
                      _%e208415208462%_
                      _%hd208416208465%_
                      _%tl208417208467%_
                      _%e208418208470%_
                      _%hd208419208473%_
                      _%tl208420208475%_
                      _%__splice208610208611%_
                      _%target208421208478%_
                      _%tl208423208480%_)
                     (_%__kont208612208613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208612208613%_))
                                                 (_%__kont208612208613%_))))
                                         (_%__kont208612208613%_))
                                     (_%__kont208612208613%_))
                                 (_%__kont208612208613%_))))
                         (_%__kont208612208613%_))))
                 (_%__kont208612208613%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont208612208613%_))
                                                 (_%__kont208612208613%_))))
                                         (_%__kont208612208613%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type208387%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type208387%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp209324
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L208365%_
                                                                '()))
                                                    (map (lambda (_%g208554208556%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self208171%_
                                                              _%g208554208556%_)))
                                                         (let ((__tmp209325
                                                                (lambda (_%g208558208561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g208559208563%_)
                          (cons _%g208558208561%_ _%g208559208563%_))))
                   (declare (not safe))
                   (__foldr1 __tmp209325 '() _%L208364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp209324
                                    _%stx208172%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx208172%_
                                    _%rator-type208387%_))))))))
                (_%__kont208664208665%_
                 (lambda (_%L208266%_ _%L208267%_)
                   (let ((_%rator-type208284%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L208267%_))))
                     (if (and _%rator-type208284%_
                              (eq? (##structure-ref
                                    _%rator-type208284%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type208284%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type208284%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type208284%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp209326
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208171%_
                                               _%L208267%_))
                                            (map (lambda (_%g208286208288%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208171%_
                                                      _%g208286208288%_)))
                                                 (let ((__tmp209327
                                                        (lambda (_%g208290208293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g208291208295%_)
                  (cons _%g208290208293%_ _%g208291208295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp209327
                                                    '()
                                                    _%L208266%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209326 _%stx208172%_))
                         (if (or (not _%rator-type208284%_)
                                 (let ((__tmp209328
                                        (##structure-ref
                                         _%rator-type208284%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp209328 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self208171%_ _%stx208172%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx208172%_
                                _%rator-type208284%_))))))))
            (let* ((_%__match208725208726%_
                    (lambda (_%e208202208226%_
                             _%hd208203208229%_
                             _%tl208204208231%_
                             _%e208205208234%_
                             _%hd208206208237%_
                             _%tl208207208239%_
                             _%__splice208666208667%_
                             _%target208208208242%_
                             _%tl208210208244%_)
                      (letrec ((_%loop208211208247%_
                                (lambda (_%hd208209208250%_
                                         _%rand208215208252%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208209208250%_))
                                      (let ((_%e208212208255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208209208250%_))))
                                        (let ((_%lp-tl208214208260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208212208255%_)))
                                              (_%lp-hd208213208258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208212208255%_))))
                                          (_%loop208211208247%_
                                           _%lp-tl208214208260%_
                                           (cons _%lp-hd208213208258%_
                                                 _%rand208215208252%_))))
                                      (let ((_%rand208216208263%_
                                             (reverse _%rand208215208252%_)))
                                        (_%__kont208664208665%_
                                         _%rand208216208263%_
                                         _%hd208206208237%_))))))
                        (_%loop208211208247%_ _%target208208208242%_ '()))))
                   (_%__match208705208706%_
                    (lambda (_%e208179208308%_
                             _%hd208180208311%_
                             _%tl208181208313%_
                             _%e208182208316%_
                             _%hd208183208319%_
                             _%tl208184208321%_
                             _%e208185208324%_
                             _%hd208186208327%_
                             _%tl208187208329%_
                             _%e208188208332%_
                             _%hd208189208335%_
                             _%tl208190208337%_
                             _%__splice208662208663%_
                             _%target208191208340%_
                             _%tl208193208342%_)
                      (letrec ((_%loop208194208345%_
                                (lambda (_%hd208192208348%_
                                         _%rand208198208350%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd208192208348%_))
                                      (let ((_%e208195208353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd208192208348%_))))
                                        (let ((_%lp-tl208197208358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208195208353%_)))
                                              (_%lp-hd208196208356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208195208353%_))))
                                          (_%loop208194208345%_
                                           _%lp-tl208197208358%_
                                           (cons _%lp-hd208196208356%_
                                                 _%rand208198208350%_))))
                                      (let ((_%rand208199208361%_
                                             (reverse _%rand208198208350%_)))
                                        (_%__kont208660208661%_
                                         _%rand208199208361%_
                                         _%hd208189208335%_))))))
                        (_%loop208194208345%_ _%target208191208340%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208658208659%_))
                  (let ((_%e208179208308%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208658208659%_))))
                    (let ((_%tl208181208313%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208179208308%_)))
                          (_%hd208180208311%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208179208308%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208181208313%_))
                          (let ((_%e208182208316%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl208181208313%_))))
                            (let ((_%tl208184208321%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208182208316%_)))
                                  (_%hd208183208319%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208182208316%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd208183208319%_))
                                  (let ((_%e208185208324%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208183208319%_))))
                                    (let ((_%tl208187208329%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208185208324%_)))
                                          (_%hd208186208327%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208185208324%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd208186208327%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd208186208327%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208187208329%_))
                                                  (let ((_%e208188208332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208187208329%_))))
                                                    (let ((_%tl208190208337%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208188208332%_)))
                                                          (_%hd208189208335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208188208332%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208190208337%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl208184208321%_))
                      (let ((_%__splice208662208663%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208184208321%_
                                '0))))
                        (let ((_%tl208193208342%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208662208663%_ '1)))
                              (_%target208191208340%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208662208663%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208193208342%_))
                              (_%__match208705208706%_
                               _%e208179208308%_
                               _%hd208180208311%_
                               _%tl208181208313%_
                               _%e208182208316%_
                               _%hd208183208319%_
                               _%tl208184208321%_
                               _%e208185208324%_
                               _%hd208186208327%_
                               _%tl208187208329%_
                               _%e208188208332%_
                               _%hd208189208335%_
                               _%tl208190208337%_
                               _%__splice208662208663%_
                               _%target208191208340%_
                               _%tl208193208342%_)
                              (let ()
                                (declare (not safe))
                                (_%g208175208221%_)))))
                      (let () (declare (not safe)) (_%g208175208221%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl208184208321%_))
                      (let ((_%__splice208666208667%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl208184208321%_
                                '0))))
                        (let ((_%tl208210208244%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208666208667%_ '1)))
                              (_%target208208208242%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208666208667%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208210208244%_))
                              (_%__match208725208726%_
                               _%e208179208308%_
                               _%hd208180208311%_
                               _%tl208181208313%_
                               _%e208182208316%_
                               _%hd208183208319%_
                               _%tl208184208321%_
                               _%__splice208666208667%_
                               _%target208208208242%_
                               _%tl208210208244%_)
                              (let ()
                                (declare (not safe))
                                (_%g208175208221%_)))))
                      (let () (declare (not safe)) (_%g208175208221%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl208184208321%_))
                                                      (let ((_%__splice208666208667%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl208184208321%_
                        '0))))
                (let ((_%tl208210208244%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208666208667%_ '1)))
                      (_%target208208208242%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208666208667%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl208210208244%_))
                      (_%__match208725208726%_
                       _%e208179208308%_
                       _%hd208180208311%_
                       _%tl208181208313%_
                       _%e208182208316%_
                       _%hd208183208319%_
                       _%tl208184208321%_
                       _%__splice208666208667%_
                       _%target208208208242%_
                       _%tl208210208244%_)
                      (let () (declare (not safe)) (_%g208175208221%_)))))
              (let () (declare (not safe)) (_%g208175208221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl208184208321%_))
                                                  (let ((_%__splice208666208667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl208184208321%_
                                                            '0))))
                                                    (let ((_%tl208210208244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208666208667%_
                                                              '1)))
                                                          (_%target208208208242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208666208667%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208210208244%_))
                                                          (_%__match208725208726%_
                                                           _%e208179208308%_
                                                           _%hd208180208311%_
                                                           _%tl208181208313%_
                                                           _%e208182208316%_
                                                           _%hd208183208319%_
                                                           _%tl208184208321%_
                                                           _%__splice208666208667%_
                                                           _%target208208208242%_
                                                           _%tl208210208244%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g208175208221%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g208175208221%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl208184208321%_))
                                              (let ((_%__splice208666208667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl208184208321%_
                                                        '0))))
                                                (let ((_%tl208210208244%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208666208667%_
                                                          '1)))
                                                      (_%target208208208242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208666208667%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208210208244%_))
                                                      (_%__match208725208726%_
                                                       _%e208179208308%_
                                                       _%hd208180208311%_
                                                       _%tl208181208313%_
                                                       _%e208182208316%_
                                                       _%hd208183208319%_
                                                       _%tl208184208321%_
                                                       _%__splice208666208667%_
                                                       _%target208208208242%_
                                                       _%tl208210208244%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g208175208221%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g208175208221%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208184208321%_))
                                      (let ((_%__splice208666208667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl208184208321%_
                                                '0))))
                                        (let ((_%tl208210208244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208666208667%_
                                                  '1)))
                                              (_%target208208208242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208666208667%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208210208244%_))
                                              (_%__match208725208726%_
                                               _%e208179208308%_
                                               _%hd208180208311%_
                                               _%tl208181208313%_
                                               _%e208182208316%_
                                               _%hd208183208319%_
                                               _%tl208184208321%_
                                               _%__splice208666208667%_
                                               _%target208208208242%_
                                               _%tl208210208244%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g208175208221%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g208175208221%_))))))
                          (let () (declare (not safe)) (_%g208175208221%_)))))
                  (let () (declare (not safe)) (_%g208175208221%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self208133%_ _%ctx208134%_ _%stx208135%_ _%args208136%_)
        (let ((_%self208139%_ _%self208133%_))
          (if (let ((__method209307
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self208139%_ 'check-arguments))))
                (if __method209307
                    (let ()
                      (declare (not safe))
                      (__method209307
                       _%self208139%_
                       _%ctx208134%_
                       _%stx208135%_
                       _%args208136%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self208139%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature208149%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self208139%_ '2 '#f '#f)))
                     (_%signature208151%_ _%signature208149%_)
                     (_%$e208161%_
                      (if _%signature208151%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature208151%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e208161%_
                    ((lambda (_%unchecked208164%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked208164%_))
                           (let ((__tmp209329
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked208164%_
                                                          '()))
                                              (map (lambda (_%g208165208167%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx208134%_
                                                        _%g208165208167%_)))
                                                   _%args208136%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp209329
                              _%stx208135%_
                              _%ctx208134%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx208134%_ _%stx208135%_))))
                     _%$e208161%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx208134%_ _%stx208135%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx208134%_ _%stx208135%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass208591 __method-table208592)
        (let ((__check-arguments208593
               (let ((__tmp209330
                      (lambda ()
                        (let ((__method208594
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208592
                                  'check-arguments
                                  '#f))))
                          (if __method208594
                              __method208594
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209330))))
          (lambda (_%self208133%_ _%ctx208134%_ _%stx208135%_ _%args208136%_)
            (let ((_%self208139%_ _%self208133%_))
              (if ((force __check-arguments208593)
                   _%self208139%_
                   _%ctx208134%_
                   _%stx208135%_
                   _%args208136%_)
                  (let* ((_%signature208149%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self208139%_
                             '2
                             '#f
                             '#f)))
                         (_%signature208151%_ _%signature208149%_)
                         (_%$e208161%_
                          (if _%signature208151%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature208151%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e208161%_
                        ((lambda (_%unchecked208164%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked208164%_))
                               (let ((__tmp209331
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked208164%_
                                                              '()))
                                                  (map (lambda (_%g208165208167%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx208134%_
                                                            _%g208165208167%_)))
                                                       _%args208136%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp209331
                                  _%stx208135%_
                                  _%ctx208134%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx208134%_
                                  _%stx208135%_))))
                         _%$e208161%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx208134%_ _%stx208135%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx208134%_ _%stx208135%_))))))))
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
      (lambda (_%self207884%_ _%ctx207885%_ _%stx207886%_ _%args207887%_)
        (let* ((_%self207890%_ _%self207884%_)
               (_%signature207899207901%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207890%_ '2 '#f '#f))))
          (if _%signature207899207901%_
              (let* ((_%signature207904%_ _%signature207899207901%_)
                     (_%argument-types207905207907%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature207904%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types207905207907%_
                    (let* ((_%argument-types207910%_
                            _%argument-types207905207907%_)
                           (_%argument-types207915%_
                            (let ((__tmp209332
                                   (lambda (_%t207913%_)
                                     (if _%t207913%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207886%_
                                            _%t207913%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp209332
                               _%argument-types207910%_))))
                      (let _%loop207917%_ ((_%rest-args207919%_ _%args207887%_)
                                           (_%rest-types207920%_
                                            _%argument-types207915%_)
                                           (_%result207921%_ '#t))
                        (let* ((_%rest-args207922207930%_ _%rest-args207919%_)
                               (_%else207924207938%_
                                (lambda () _%result207921%_))
                               (_%K207926207999%_
                                (lambda (_%rest-args207941%_ _%arg207942%_)
                                  (let* ((_%rest-types207943207954%_
                                          _%rest-types207920%_)
                                         (_%E207947207958%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types207943207954%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K207950207987%_
                                           (lambda (_%rest-types207984%_
                                                    _%type207985%_)
                                             (_%loop207917%_
                                              _%rest-args207941%_
                                              _%rest-types207984%_
                                              (if (gxc#check-expression-type!
                                                   _%stx207886%_
                                                   _%arg207942%_
                                                   _%type207985%_)
                                                  _%result207921%_
                                                  '#f))))
                                          (_%K207949207978%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx207886%_
                                                _%argument-types207915%_))))
                                          (_%K207948207968%_
                                           (lambda (_%tail-type207962%_)
                                             (if (let ((__tmp209333
                                                        (lambda (_%g207963207965%_)
                                                          (gxc#check-expression-type!
                                                           _%stx207886%_
                                                           _%g207963207965%_
                                                           _%tail-type207962%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp209333
                                                    _%rest-args207941%_))
                                                 _%result207921%_
                                                 '#f))))
                                      (let ((_%try-match207945207981%_
                                             (lambda ()
                                               (if (null? _%rest-types207943207954%_)
                                                   (_%K207949207978%_)
                                                   (let ((_%tail-type207971%_
                                                          _%rest-types207943207954%_))
                                                     (_%K207948207968%_
                                                      _%tail-type207971%_))))))
                                        (if (pair? _%rest-types207943207954%_)
                                            (let ((_%tl207952207992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types207943207954%_)))
                                                  (_%hd207951207990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types207943207954%_))))
                                              (let ((_%type207995%_
                                                     _%hd207951207990%_)
                                                    (_%rest-types207997%_
                                                     _%tl207952207992%_))
                                                (_%K207950207987%_
                                                 _%rest-types207997%_
                                                 _%type207995%_)))
                                            (_%try-match207945207981%_))))))))
                          (if (pair? _%rest-args207922207930%_)
                              (let ((_%hd207927208002%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args207922207930%_)))
                                    (_%tl207928208004%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args207922207930%_))))
                                (let* ((_%arg208007%_ _%hd207927208002%_)
                                       (_%rest-args208009%_
                                        _%tl207928208004%_))
                                  (_%K207926207999%_
                                   _%rest-args208009%_
                                   _%arg208007%_)))
                              (_%else207924207938%_)))))
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
      (lambda (_%self207695%_ _%ctx207696%_ _%stx207697%_ _%args207698%_)
        (let* ((_%self207701%_ _%self207695%_)
               (_%g207711207721%_
                (lambda (_%g207712207718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207712207718%_))))
               (_%g207710207759%_
                (lambda (_%g207712207724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207712207724%_))
                      (let ((_%e207714207726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207712207724%_))))
                        (let ((_%hd207715207729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207714207726%_)))
                              (_%tl207716207731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207714207726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207716207731%_))
                              ((lambda (_%L207734%_)
                                 (let* ((_%klass207746%_
                                         (let ((__tmp209334
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207701%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207697%_
                                            __tmp209334)))
                                        (_%object207748%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207696%_
                                            _%L207734%_)))
                                        (_%instance?207753%_
                                         (let ((_%$e207750%_
                                                (gxc#expression-type?
                                                 _%object207748%_
                                                 _%klass207746%_)))
                                           (if _%$e207750%_
                                               _%$e207750%_
                                               (gxc#expression-type?
                                                _%L207734%_
                                                _%klass207746%_)))))
                                   (if _%instance?207753%_
                                       (let ((__tmp209335
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207748%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L207734%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207748%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209335
                                          _%stx207697%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx207696%_
                                          _%stx207697%_)))))
                               _%hd207715207729%_)
                              (_%g207711207721%_ _%g207712207724%_))))
                      (_%g207711207721%_ _%g207712207724%_)))))
          (_%g207710207759%_ _%args207698%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self207491%_ _%ctx207492%_ _%stx207493%_ _%args207494%_)
        (let* ((_%self207497%_ _%self207491%_)
               (_%g207507207517%_
                (lambda (_%g207508207514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207508207514%_))))
               (_%g207506207570%_
                (lambda (_%g207508207520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207508207520%_))
                      (let ((_%e207510207522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207508207520%_))))
                        (let ((_%hd207511207525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207510207522%_)))
                              (_%tl207512207527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207510207522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207512207527%_))
                              ((lambda (_%L207530%_)
                                 (let* ((_%klass207542%_
                                         (let ((__tmp209336
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self207497%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx207493%_
                                            __tmp209336)))
                                        (_%object207544%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx207492%_
                                            _%L207530%_)))
                                        (_%instance?207549%_
                                         (let ((_%$e207546%_
                                                (gxc#expression-type?
                                                 _%object207544%_
                                                 _%klass207542%_)))
                                           (if _%$e207546%_
                                               _%$e207546%_
                                               (gxc#expression-type?
                                                _%L207530%_
                                                _%klass207542%_))))
                                        (_%klass207552%_ _%klass207542%_))
                                   (if _%instance?207549%_
                                       (let ((__tmp209337
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object207544%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L207530%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object207544%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209337
                                          _%stx207493%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass207552%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209338
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass207552%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object207544%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209338
                                              _%stx207493%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass207552%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209339
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass207552%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object207544%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209339
                                                  _%stx207493%_))
                                               (let ((__tmp209340
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self207497%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object207544%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209340
                                                  _%stx207493%_)))))))
                               _%hd207511207525%_)
                              (_%g207507207517%_ _%g207508207520%_))))
                      (_%g207507207517%_ _%g207508207520%_)))))
          (_%g207506207570%_ _%args207494%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx207154%_)
        (let* ((_%__stx208735208736%_ _%stx207154%_)
               (_%g207159207200%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208735208736%_)))))
          (let ((_%__kont208737208738%_ (lambda () '#t))
                (_%__kont208739208740%_ (lambda () '#t))
                (_%__kont208741208742%_
                 (lambda (_%L207268%_ _%L207269%_)
                   (let ((_%rator-type207290207292%_
                          (let ((__tmp209341
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L207269%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp209341))))
                     (if _%rator-type207290207292%_
                         (let* ((_%rator-type207295%_
                                 _%rator-type207290207292%_)
                                (_%rator-signature207296207298%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type207295%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type207295%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature207296207298%_
                               (let* ((_%rator-signature207301%_
                                       _%rator-signature207296207298%_)
                                      (_%rator-effect207302207304%_
                                       (if _%rator-signature207301%_
                                           (##direct-structure-ref
                                            _%rator-signature207301%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect207302207304%_
                                     (let ((_%rator-effect207307%_
                                            _%rator-effect207302207304%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect207307%_)
                                               (equal? '(alloc)
                                                       _%rator-effect207307%_))
                                           (let ((__tmp209342
                                                  (let ((__tmp209343
                                                         (lambda (_%g207312207315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g207313207317%_)
                   (cons _%g207312207315%_ _%g207313207317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp209343
                                                     '()
                                                     _%L207268%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp209342))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont208745208746%_ (lambda () '#f)))
            (let ((_%__match208824208825%_
                   (lambda (_%e207175207212%_
                            _%hd207176207215%_
                            _%tl207177207217%_
                            _%e207178207220%_
                            _%hd207179207223%_
                            _%tl207180207225%_
                            _%e207181207228%_
                            _%hd207182207231%_
                            _%tl207183207233%_
                            _%e207184207236%_
                            _%hd207185207239%_
                            _%tl207186207241%_
                            _%__splice208743208744%_
                            _%target207187207244%_
                            _%tl207189207246%_)
                     (letrec ((_%loop207190207249%_
                               (lambda (_%hd207188207252%_
                                        _%rand207194207254%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd207188207252%_))
                                     (let ((_%e207191207257%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd207188207252%_))))
                                       (let ((_%lp-tl207193207262%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207191207257%_)))
                                             (_%lp-hd207192207260%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207191207257%_))))
                                         (_%loop207190207249%_
                                          _%lp-tl207193207262%_
                                          (cons _%lp-hd207192207260%_
                                                _%rand207194207254%_))))
                                     (let ((_%rand207195207265%_
                                            (reverse _%rand207194207254%_)))
                                       (_%__kont208741208742%_
                                        _%rand207195207265%_
                                        _%hd207185207239%_))))))
                       (_%loop207190207249%_ _%target207187207244%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208735208736%_))
                  (let ((_%e207161207348%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208735208736%_))))
                    (let ((_%tl207163207353%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207161207348%_)))
                          (_%hd207162207351%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207161207348%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd207162207351%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd207162207351%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207163207353%_))
                                  (let ((_%e207164207356%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207163207353%_))))
                                    (let ((_%tl207166207361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207164207356%_)))
                                          (_%hd207165207359%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207164207356%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl207166207361%_))
                                          (_%__kont208737208738%_)
                                          (_%__kont208745208746%_))))
                                  (_%__kont208745208746%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd207162207351%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207163207353%_))
                                      (let ((_%e207170207333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207163207353%_))))
                                        (let ((_%tl207172207338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207170207333%_)))
                                              (_%hd207171207336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207170207333%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207172207338%_))
                                              (_%__kont208739208740%_)
                                              (_%__kont208745208746%_))))
                                      (_%__kont208745208746%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd207162207351%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207163207353%_))
                                          (let ((_%e207178207220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl207163207353%_))))
                                            (let ((_%tl207180207225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207178207220%_)))
                                                  (_%hd207179207223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207178207220%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd207179207223%_))
                                                  (let ((_%e207181207228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd207179207223%_))))
                                                    (let ((_%tl207183207233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207181207228%_)))
                                                          (_%hd207182207231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207181207228%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd207182207231%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd207182207231%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207183207233%_))
                          (let ((_%e207184207236%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207183207233%_))))
                            (let ((_%tl207186207241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207184207236%_)))
                                  (_%hd207185207239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207184207236%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207186207241%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207180207225%_))
                                      (let ((_%__splice208743208744%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl207180207225%_
                                                '0))))
                                        (let ((_%tl207189207246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208743208744%_
                                                  '1)))
                                              (_%target207187207244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208743208744%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207189207246%_))
                                              (_%__match208824208825%_
                                               _%e207161207348%_
                                               _%hd207162207351%_
                                               _%tl207163207353%_
                                               _%e207178207220%_
                                               _%hd207179207223%_
                                               _%tl207180207225%_
                                               _%e207181207228%_
                                               _%hd207182207231%_
                                               _%tl207183207233%_
                                               _%e207184207236%_
                                               _%hd207185207239%_
                                               _%tl207186207241%_
                                               _%__splice208743208744%_
                                               _%target207187207244%_
                                               _%tl207189207246%_)
                                              (_%__kont208745208746%_))))
                                      (_%__kont208745208746%_))
                                  (_%__kont208745208746%_))))
                          (_%__kont208745208746%_))
                      (_%__kont208745208746%_))
                  (_%__kont208745208746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208745208746%_))))
                                          (_%__kont208745208746%_))
                                      (_%__kont208745208746%_))))
                          (_%__kont208745208746%_))))
                  (_%__kont208745208746%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx207149%_ _%klass207150%_)
        (let ((_%expr-type207152%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx207149%_))))
          (if _%expr-type207152%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type207152%_ _%klass207150%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx207127%_ _%expr207128%_ _%type207129%_)
        (if (not _%type207129%_)
            '#f
            (let ((_%$e207132%_
                   (eq? (##structure-ref _%type207129%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e207132%_
                  _%$e207132%_
                  (let ((_%expr-type207136%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr207128%_))))
                    (if (not _%expr-type207136%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type207136%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e207140%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type207136%_
                                      'gxc#!abort::t))))
                              (if _%$e207140%_
                                  _%$e207140%_
                                  (let ((_%$e207143%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type207136%_
                                            _%type207129%_))))
                                    (if _%$e207143%_
                                        _%$e207143%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type207129%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type207129%_
                                                   _%expr-type207136%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx207127%_
                                                   _%expr207128%_
                                                   _%expr-type207136%_
                                                   _%type207129%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self206941%_ _%ctx206942%_ _%stx206943%_ _%args206944%_)
        (let* ((_%self206947%_ _%self206941%_)
               (_%klass206957%_
                (let ((__tmp209344
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206947%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx206943%_ __tmp209344)))
               (_%fields206959%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass206957%_
                           '5
                           '#f
                           '#f))))
               (_%args206965%_
                (map (lambda (_%g206960206962%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx206942%_ _%g206960206962%_)))
                     _%args206944%_))
               (_%inline-make-object206967%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self206947%_
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
                           _%self206947%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields206959%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass206970%_ _%klass206957%_)
               (_%$e206984%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass206970%_ '6 '#f '#f))))
          (if _%$e206984%_
              ((lambda (_%ctor206987%_)
                 (let ((_%$obj206989%_
                        (let ((__tmp209345
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp209345)))
                       (_%ctor-impl206990%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass206970%_
                           _%ctor206987%_))))
                   (let ((__tmp209346
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj206989%_ '())
                                                  (cons _%inline-make-object206967%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl206990%_
                                                            (let ((__tmp209347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl206990%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj206989%_ '()))
                                             _%args206965%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp209347
                       _%stx206943%_
                       _%ctx206942%_))
                    (let ((_%$ctor206992%_
                           (let ((__tmp209348
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209348))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor206992%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206947%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj206989%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor206987%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor206992%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor206992%_ '()))
                              (cons (cons '%#ref (cons _%$obj206989%_ '()))
                                    _%args206965%_)))
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
                             _%self206947%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor206987%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj206989%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp209346 _%stx206943%_))))
               _%$e206984%_)
              (let ((_%$e206994%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass206970%_
                        '10
                        '#f
                        '#f))))
                (if _%$e206994%_
                    ((lambda (_%metaclass206997%_)
                       (let* ((_%$obj206999%_
                               (let ((__tmp209349
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209349)))
                              (_%metakons207001%_
                               (let ((__tmp209350
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx206943%_
                                         _%metaclass206997%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp209350
                                  'instance-init!)))
                              (__tmp209351
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj206999%_
                                                             '())
                                                       (cons _%inline-make-object206967%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons207001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp209352
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons207001%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self206947%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj206999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args206965%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp209352
                            _%stx206943%_
                            _%ctx206942%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206947%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj206999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args206965%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj206999%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp209351 _%stx206943%_)))
                     _%$e206994%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass206970%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp209353
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args206965%_))))
                              (declare (not safe))
                              (##fx= __tmp209353 _%fields206959%_))
                            (let ((__tmp209354
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self206947%_
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
                                              _%self206947%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args206965%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp209354
                               _%stx206943%_))
                            (let ((__tmp209356
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self206947%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp209355
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass206970%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx206943%_
                               __tmp209356
                               __tmp209355)))
                        (let ((_%$obj207006%_
                               (let ((__tmp209357
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209357))))
                          (let _%lp207008%_ ((_%rest207010%_ _%args206965%_)
                                             (_%initializers207011%_ '()))
                            (let* ((_%__stx208827208828%_ _%rest207010%_)
                                   (_%g207015207036%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx208827208828%_)))))
                              (let ((_%__kont208829208830%_
                                     (lambda (_%L207090%_
                                              _%L207091%_
                                              _%L207092%_)
                                       (let* ((_%slot207119%_
                                               (let ((__tmp209358
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L207092%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp209358)))
                                              (_%off207121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass206970%_
                                                  _%slot207119%_))))
                                         (if _%off207121%_
                                             (_%lp207008%_
                                              _%L207090%_
                                              (cons (cons _%off207121%_
                                                          _%L207091%_)
                                                    _%initializers207011%_))
                                             (let ((__tmp209359
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206947%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx206943%_
                                                __tmp209359
                                                _%slot207119%_))))))
                                    (_%__kont208831208832%_
                                     (lambda ()
                                       (let ((__tmp209360
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object206967%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp209363
                                     (cons (cons '%#ref
                                                 (cons _%$obj207006%_ '()))
                                           '()))
                                    (__tmp209361
                                     (let ((__tmp209362
                                            (lambda (_%i207050%_ _%r207051%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206947%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i207050%_) '()))
                              (cons (cons '%#ref (cons _%$obj207006%_ '()))
                                    (cons (cdr _%i207050%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r207051%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp209362
                                        '()
                                        _%initializers207011%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp209363 __tmp209361)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209360
                                          _%stx206943%_))))
                                    (_%__kont208833208834%_
                                     (lambda ()
                                       (let ((__tmp209364
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj207006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object206967%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj207006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args206965%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj207006%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209364
                                          _%stx206943%_)))))
                                (let* ((_%g207013207053%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx208827208828%_))
                                              (_%__kont208831208832%_)
                                              (_%__kont208833208834%_))))
                                       (_%__match208864208865%_
                                        (lambda (_%e207020207058%_
                                                 _%hd207021207061%_
                                                 _%tl207022207063%_
                                                 _%e207023207066%_
                                                 _%hd207024207069%_
                                                 _%tl207025207071%_
                                                 _%e207026207074%_
                                                 _%hd207027207077%_
                                                 _%tl207028207079%_
                                                 _%e207029207082%_
                                                 _%hd207030207085%_
                                                 _%tl207031207087%_)
                                          (let ((_%L207090%_
                                                 _%tl207031207087%_)
                                                (_%L207091%_
                                                 _%hd207030207085%_)
                                                (_%L207092%_
                                                 _%hd207027207077%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L207092%_))
                                                (_%__kont208829208830%_
                                                 _%L207090%_
                                                 _%L207091%_
                                                 _%L207092%_)
                                                (_%__kont208833208834%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx208827208828%_))
                                      (let ((_%e207020207058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx208827208828%_))))
                                        (let ((_%tl207022207063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207020207058%_)))
                                              (_%hd207021207061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207020207058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd207021207061%_))
                                              (let ((_%e207023207066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207021207061%_))))
                                                (let ((_%tl207025207071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207023207066%_)))
                                                      (_%hd207024207069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207023207066%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd207024207069%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd207024207069%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl207025207071%_))
                      (let ((_%e207026207074%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl207025207071%_))))
                        (let ((_%tl207028207079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207026207074%_)))
                              (_%hd207027207077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207026207074%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207028207079%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207022207063%_))
                                  (let ((_%e207029207082%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207022207063%_))))
                                    (let ((_%tl207031207087%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207029207082%_)))
                                          (_%hd207030207085%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207029207082%_))))
                                      (_%__match208864208865%_
                                       _%e207020207058%_
                                       _%hd207021207061%_
                                       _%tl207022207063%_
                                       _%e207023207066%_
                                       _%hd207024207069%_
                                       _%tl207025207071%_
                                       _%e207026207074%_
                                       _%hd207027207077%_
                                       _%tl207028207079%_
                                       _%e207029207082%_
                                       _%hd207030207085%_
                                       _%tl207031207087%_)))
                                  (_%__kont208833208834%_))
                              (_%__kont208833208834%_))))
                      (_%__kont208833208834%_))
                  (_%__kont208833208834%_))
              (_%__kont208833208834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208833208834%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207013207053%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self206724%_ _%ctx206725%_ _%stx206726%_ _%args206727%_)
        (let* ((_%self206730%_ _%self206724%_)
               (_%arguments-ok?206740%_
                (let ((__method209308
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206730%_ 'check-arguments))))
                  (if __method209308
                      (let ()
                        (declare (not safe))
                        (__method209308
                         _%self206730%_
                         _%ctx206725%_
                         _%stx206726%_
                         _%args206727%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206730%_
                                 'check-arguments))
                        '#!void))))
               (_%g206742206752%_
                (lambda (_%g206743206749%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206743206749%_))))
               (_%g206741206816%_
                (lambda (_%g206743206755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206743206755%_))
                      (let ((_%e206745206757%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206743206755%_))))
                        (let ((_%hd206746206760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206745206757%_)))
                              (_%tl206747206762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206745206757%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206747206762%_))
                              ((lambda (_%L206765%_)
                                 (let* ((_%klass206778%_
                                         (let ((__tmp209365
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206730%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx206726%_
                                            __tmp209365)))
                                        (_%field206780%_
                                         (let ((__tmp209366
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self206730%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass206778%_
                                            __tmp209366)))
                                        (_%object206782%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx206725%_
                                            _%L206765%_)))
                                        (_%klass206785%_ _%klass206778%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass206785%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp209367
                                              (cons (if (or _%arguments-ok?206740%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206730%_
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
                                 _%self206730%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field206780%_ '()))
                        (cons _%object206782%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp209367
                                          _%stx206726%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206785%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp209368
                                                  (cons (if (or _%arguments-ok?206740%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206730%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206730%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206780%_ '()))
                            (cons _%object206782%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209368
                                              _%stx206726%_))
                                           (let ((_%$e206804%_
                                                  (let ((__tmp209369
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206730%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass206785%_
                                                     __tmp209369))))
                                             (if _%$e206804%_
                                                 ((lambda (_%klass206807%_)
                                                    (let ((__tmp209370
                                                           (cons (if (or _%arguments-ok?206740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206730%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self206730%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field206780%_ '()))
                                     (cons _%object206782%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp209370 _%stx206726%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e206804%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self206730%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp209371
                                                            (let ((_%$obj206813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp209372
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp209372))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj206813%_ '())
                                              (cons _%object206782%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass206785%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj206813%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206730%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206780%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206813%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?206740%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206813%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206730%_
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
                                                             _%self206730%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj206813%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self206730%_
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
               (gxc#xform-wrap-source __tmp209371 _%stx206726%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp209373
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object206782%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206730%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp209373 _%stx206726%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd206746206760%_)
                              (_%g206742206752%_ _%g206743206755%_))))
                      (_%g206742206752%_ _%g206743206755%_)))))
          (_%g206741206816%_ _%args206727%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass208595 __method-table208596)
        (let ((__check-arguments208597
               (let ((__tmp209374
                      (lambda ()
                        (let ((__method208598
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208596
                                  'check-arguments
                                  '#f))))
                          (if __method208598
                              __method208598
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209374)))
              (__slot208599
               (let ((__slot208600
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass208595 'slot))))
                 (if __slot208600
                     __slot208600
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self206724%_ _%ctx206725%_ _%stx206726%_ _%args206727%_)
            (let* ((_%self206730%_ _%self206724%_)
                   (_%arguments-ok?206740%_
                    ((force __check-arguments208597)
                     _%self206730%_
                     _%ctx206725%_
                     _%stx206726%_
                     _%args206727%_))
                   (_%g206742206752%_
                    (lambda (_%g206743206749%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206743206749%_))))
                   (_%g206741206816%_
                    (lambda (_%g206743206755%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206743206755%_))
                          (let ((_%e206745206757%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206743206755%_))))
                            (let ((_%hd206746206760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206745206757%_)))
                                  (_%tl206747206762%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206745206757%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206747206762%_))
                                  ((lambda (_%L206765%_)
                                     (let* ((_%klass206778%_
                                             (let ((__tmp209375
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206730%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx206726%_
                                                __tmp209375)))
                                            (_%field206780%_
                                             (let ((__tmp209376
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self206730%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass206778%_
                                                __tmp209376)))
                                            (_%object206782%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx206725%_
                                                _%L206765%_)))
                                            (_%klass206785%_ _%klass206778%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass206785%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp209377
                                                  (cons (if (or _%arguments-ok?206740%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206730%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206730%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field206780%_ '()))
                            (cons _%object206782%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209377
                                              _%stx206726%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206785%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209378
                                                      (cons (if (or _%arguments-ok?206740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206730%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206730%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206780%_ '()))
                                (cons _%object206782%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209378
                                                  _%stx206726%_))
                                               (let ((_%$e206804%_
                                                      (let ((__tmp209379
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self206730%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass206785%_ __tmp209379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e206804%_
                                                     ((lambda (_%klass206807%_)
                                                        (let ((__tmp209380
                                                               (cons (if (or _%arguments-ok?206740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206730%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self206730%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field206780%_ '()))
                                         (cons _%object206782%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp209380 _%stx206726%_)))
              _%$e206804%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self206730%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp209381
                                                                (let ((_%$obj206813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp209382
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp209382))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj206813%_ '())
                                                  (cons _%object206782%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass206785%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj206813%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206730%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206780%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj206813%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?206740%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206813%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206730%_
                               __slot208599
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
                        (##unchecked-structure-ref _%self206730%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj206813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206730%_
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
                   (gxc#xform-wrap-source __tmp209381 _%stx206726%_))
                 (let ((__tmp209383
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object206782%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206730%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp209383 _%stx206726%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd206746206760%_)
                                  (_%g206742206752%_ _%g206743206755%_))))
                          (_%g206742206752%_ _%g206743206755%_)))))
              (_%g206741206816%_ _%args206727%_))))))
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
      (lambda (_%self206488%_ _%ctx206489%_ _%stx206490%_ _%args206491%_)
        (let* ((_%self206494%_ _%self206488%_)
               (_%arguments-ok?206504%_
                (let ((__method209309
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self206494%_ 'check-arguments))))
                  (if __method209309
                      (let ()
                        (declare (not safe))
                        (__method209309
                         _%self206494%_
                         _%ctx206489%_
                         _%stx206490%_
                         _%args206491%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self206494%_
                                 'check-arguments))
                        '#!void))))
               (_%g206506206520%_
                (lambda (_%g206507206517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206507206517%_))))
               (_%g206505206599%_
                (lambda (_%g206507206523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206507206523%_))
                      (let ((_%e206510206525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206507206523%_))))
                        (let ((_%hd206511206528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206510206525%_)))
                              (_%tl206512206530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206510206525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206512206530%_))
                              (let ((_%e206513206533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206512206530%_))))
                                (let ((_%hd206514206536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206513206533%_)))
                                      (_%tl206515206538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206513206533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206515206538%_))
                                      ((lambda (_%L206541%_ _%L206542%_)
                                         (let* ((_%klass206558%_
                                                 (let ((__tmp209384
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206494%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx206490%_
                                                    __tmp209384)))
                                                (_%field206560%_
                                                 (let ((__tmp209385
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self206494%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass206558%_
                                                    __tmp209385)))
                                                (_%object206562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206489%_
                                                    _%L206542%_)))
                                                (_%value206564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx206489%_
                                                    _%L206541%_)))
                                                (_%klass206567%_
                                                 _%klass206558%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass206567%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp209386
                                                      (cons (if (or _%arguments-ok?206504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self206494%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206494%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field206560%_ '()))
                                (cons _%object206562%_
                                      (cons _%value206564%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp209386
                                                  _%stx206490%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206567%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209387
                                                          (cons (if (or _%arguments-ok?206504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206494%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206494%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206560%_ '()))
                                    (cons _%object206562%_
                                          (cons _%value206564%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209387
                                                      _%stx206490%_))
                                                   (let ((_%$e206587%_
                                                          (let ((__tmp209388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206494%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass206567%_
                     __tmp209388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e206587%_
                                                         ((lambda (_%klass206590%_)
                                                            (let ((__tmp209389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?206504%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206494%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self206494%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field206560%_ '()))
                                             (cons _%object206562%_
                                                   (cons _%value206564%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209389 _%stx206490%_)))
                  _%$e206587%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self206494%_ '4 '#f '#f))
                     (let ((__tmp209390
                            (let ((_%$obj206596%_
                                   (let ((__tmp209391
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp209391))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj206596%_ '())
                                                      (cons _%object206562%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass206567%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj206596%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206494%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field206560%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj206596%_
                                                              '()))
                                                  (cons _%value206564%_
                                                        '())))))
                          (cons (if _%arguments-ok?206504%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self206494%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value206564%_ '())))))
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
                             _%self206494%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj206596%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self206494%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value206564%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp209390 _%stx206490%_))
                     (let ((__tmp209392
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object206562%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self206494%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value206564%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp209392
                        _%stx206490%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd206514206536%_
                                       _%hd206511206528%_)
                                      (_%g206506206520%_ _%g206507206523%_))))
                              (_%g206506206520%_ _%g206507206523%_))))
                      (_%g206506206520%_ _%g206507206523%_)))))
          (_%g206505206599%_ _%args206491%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass208601 __method-table208602)
        (let ((__check-arguments208603
               (let ((__tmp209393
                      (lambda ()
                        (let ((__method208604
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table208602
                                  'check-arguments
                                  '#f))))
                          (if __method208604
                              __method208604
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp209393))))
          (lambda (_%self206488%_ _%ctx206489%_ _%stx206490%_ _%args206491%_)
            (let* ((_%self206494%_ _%self206488%_)
                   (_%arguments-ok?206504%_
                    ((force __check-arguments208603)
                     _%self206494%_
                     _%ctx206489%_
                     _%stx206490%_
                     _%args206491%_))
                   (_%g206506206520%_
                    (lambda (_%g206507206517%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g206507206517%_))))
                   (_%g206505206599%_
                    (lambda (_%g206507206523%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g206507206523%_))
                          (let ((_%e206510206525%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g206507206523%_))))
                            (let ((_%hd206511206528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206510206525%_)))
                                  (_%tl206512206530%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206510206525%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206512206530%_))
                                  (let ((_%e206513206533%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl206512206530%_))))
                                    (let ((_%hd206514206536%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206513206533%_)))
                                          (_%tl206515206538%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206513206533%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206515206538%_))
                                          ((lambda (_%L206541%_ _%L206542%_)
                                             (let* ((_%klass206558%_
                                                     (let ((__tmp209394
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206494%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx206490%_
                                                        __tmp209394)))
                                                    (_%field206560%_
                                                     (let ((__tmp209395
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self206494%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass206558%_
                                                        __tmp209395)))
                                                    (_%object206562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206489%_
                                                        _%L206542%_)))
                                                    (_%value206564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx206489%_
                                                        _%L206541%_)))
                                                    (_%klass206567%_
                                                     _%klass206558%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass206567%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp209396
                                                          (cons (if (or _%arguments-ok?206504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self206494%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206494%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field206560%_ '()))
                                    (cons _%object206562%_
                                          (cons _%value206564%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209396
                                                      _%stx206490%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass206567%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp209397
                                                              (cons (if (or _%arguments-ok?206504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self206494%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self206494%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field206560%_ '()))
                                        (cons _%object206562%_
                                              (cons _%value206564%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp209397 _%stx206490%_))
               (let ((_%$e206587%_
                      (let ((__tmp209398
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self206494%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass206567%_
                         __tmp209398))))
                 (if _%$e206587%_
                     ((lambda (_%klass206590%_)
                        (let ((__tmp209399
                               (cons (if (or _%arguments-ok?206504%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self206494%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self206494%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field206560%_
                                                             '()))
                                                 (cons _%object206562%_
                                                       (cons _%value206564%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp209399 _%stx206490%_)))
                      _%$e206587%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self206494%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp209400
                                (let ((_%$obj206596%_
                                       (let ((__tmp209401
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp209401))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj206596%_
                                                                '())
                                                          (cons _%object206562%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass206567%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj206596%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self206494%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field206560%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj206596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value206564%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?206504%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj206596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self206494%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value206564%_ '())))))
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
                                 _%self206494%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj206596%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self206494%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value206564%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp209400 _%stx206490%_))
                         (let ((__tmp209402
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object206562%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206494%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value206564%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp209402
                            _%stx206490%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd206514206536%_
                                           _%hd206511206528%_)
                                          (_%g206506206520%_
                                           _%g206507206523%_))))
                                  (_%g206506206520%_ _%g206507206523%_))))
                          (_%g206506206520%_ _%g206507206523%_)))))
              (_%g206505206599%_ _%args206491%_))))))
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
      (lambda (_%self206303%_ _%ctx206304%_ _%stx206305%_ _%args206306%_)
        (let* ((_%self206309%_ _%self206303%_)
               (_%self206318206328%_ _%self206309%_)
               (_%E206320206332%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206318206328%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K206321206342%_
                (lambda (_%inline206335%_ _%dispatch206336%_ _%arity206337%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self206309%_
                         _%args206306%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx206305%_
                         _%arity206337%_)))
                  (if _%inline206335%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp209403 (_%inline206335%_ _%stx206305%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp209403
                           _%stx206305%_
                           _%ctx206304%_)))
                      (if (and _%dispatch206336%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch206336%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch206336%_))
                            (let ((__tmp209404
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch206336%_
                                                           '()))
                                               _%args206306%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp209404
                               _%stx206305%_
                               _%ctx206304%_)))
                          (gxc#!procedure::optimize-call
                           _%self206309%_
                           _%ctx206304%_
                           _%stx206305%_
                           _%args206306%_)))))
               (_%e206322206345%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206318206328%_ '1 '#f '#f)))
               (_%e206323206348%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206318206328%_ '2 '#f '#f)))
               (_%e206324206351%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206318206328%_ '3 '#f '#f)))
               (_%arity206354%_ _%e206324206351%_)
               (_%e206325206356%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206318206328%_ '4 '#f '#f)))
               (_%dispatch206359%_ _%e206325206356%_)
               (_%e206326206361%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206318206328%_ '5 '#f '#f)))
               (_%inline206364%_ _%e206326206361%_))
          (_%K206321206342%_
           _%inline206364%_
           _%dispatch206359%_
           _%arity206354%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self206155%_ _%ctx206156%_ _%stx206157%_ _%args206158%_)
        (let* ((_%self206161%_ _%self206155%_)
               (_%$e206175%_
                (let ((__tmp209406
                       (lambda (_%g206170206172%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g206170206172%_
                            _%args206158%_))))
                      (__tmp209405
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206161%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp209406 __tmp209405))))
          (if _%$e206175%_
              ((lambda (_%clause206178%_)
                 (let ((__method209310
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause206178%_ 'optimize-call))))
                   (if __method209310
                       (let ()
                         (declare (not safe))
                         (__method209310
                          _%clause206178%_
                          _%ctx206156%_
                          _%stx206157%_
                          _%args206158%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause206178%_
                                  'optimize-call))
                         '#!void))))
               _%$e206175%_)
              (let ((__tmp209407
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self206161%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx206157%_
                 __tmp209407))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self205895%_ _%ctx205896%_ _%stx205897%_ _%args205898%_)
        (let* ((_%self205901%_ _%self205895%_)
               (_%self205910205919%_ _%self205901%_)
               (_%E205912205923%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self205910205919%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K205913206014%_
                (lambda (_%dispatch205926%_ _%table205927%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch205926%_))
                      (let* ((_%g205928205938%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch205926%_)))
                             (_%else205930205946%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch205926%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx205896%_
                                   _%stx205897%_))))
                             (_%K205932205995%_
                              (lambda (_%main205949%_ _%keys205950%_)
                                (let ((_g209408_
                                       (gxc#!kw-lambda-split-args
                                        _%stx205897%_
                                        _%args205898%_)))
                                  (begin
                                    (let ((_g209409_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g209408_)
                                                 (##values-length _g209408_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g209409_ 2)))
                                          (error "Context expects 2 values"
                                                 _g209409_)))
                                    (let ((_%pargs205952%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209408_ 0)))
                                          (_%kwargs205953%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g209408_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main205949%_))
                                        (if _%table205927%_
                                            (let ((_%xargs205961%_
                                                   (map (lambda (_%key205955%_)
                                                          (let ((_%$e205957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key205955%_ _%kwargs205953%_))))
                    (if _%$e205957%_ _%$e205957%_ '(%#ref absent-value))))
                _%keys205950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw205963%_)
                                                 (if (memq (car _%kw205963%_)
                                                           _%keys205950%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx205897%_
                                                        _%keys205950%_
                                                        _%kw205963%_))))
                                               _%kwargs205953%_)
                                              (let ((__tmp209410
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main205949%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs205952%_
                                  _%xargs205961%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp209410
                                                 _%stx205897%_
                                                 _%ctx205896%_)))
                                            (let* ((_%kwt205965%_
                                                    (let ((__tmp209411
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp209411)))
                                                   (_%kwvars205969%_
                                                    (map (lambda (_%_205967%_)
                                                           (let ((__tmp209412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp209412)))
                 _%kwargs205953%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind205974%_
                                                    (map (lambda (_%kw205971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205972%_)
                   (cons (cons _%kwvar205972%_ '())
                         (cons (cdr _%kw205971%_) '())))
                 _%kwargs205953%_
                 _%kwvars205969%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset205979%_
                                                    (map (lambda (_%kw205976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205977%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt205965%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw205976%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar205977%_
                                                             '()))
                                                 '()))))))
                 _%kwargs205953%_
                 _%kwvars205969%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs205984%_
                                                    (map (lambda (_%kw205981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar205982%_)
                   (cons (car _%kw205981%_)
                         (cons '%#ref (cons _%kwvar205982%_ '()))))
                 _%kwargs205953%_
                 _%kwvars205969%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs205992%_
                                                    (map (lambda (_%key205986%_)
                                                           (let ((_%$e205988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key205986%_ _%xkwargs205984%_))))
                     (if _%$e205988%_ _%$e205988%_ '(%#ref absent-value))))
                 _%keys205950%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp209413
                                                    (cons '%#let-values
                                                          (cons _%kwbind205974%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt205965%_ '())
                                                      (cons (let ((__tmp209414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs205953%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209414 _%stx205897%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp209415
                                                             (cons (let ((__tmp209416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main205949%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt205965%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs205952%_
                                                       _%xargs205992%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp209416 _%stx205897%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp209415 _%kwset205979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp209413
                                               _%stx205897%_
                                               _%ctx205896%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g205928205938%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e205933205998%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205928205938%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e205934206001%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205928205938%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e205935206004%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205928205938%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys206007%_ _%e205935206004%_)
                                   (_%e205936206009%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g205928205938%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main206012%_ _%e205936206009%_))
                              (_%K205932205995%_
                               _%main206012%_
                               _%keys206007%_))
                            (_%else205930205946%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx205896%_ _%stx205897%_)))))
               (_%e205914206017%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205910205919%_ '1 '#f '#f)))
               (_%e205915206020%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205910205919%_ '2 '#f '#f)))
               (_%e205916206023%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205910205919%_ '3 '#f '#f)))
               (_%table206026%_ _%e205916206023%_)
               (_%e205917206028%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205910205919%_ '4 '#f '#f)))
               (_%dispatch206031%_ _%e205917206028%_))
          (_%K205913206014%_ _%dispatch206031%_ _%table206026%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx205508%_ _%args205509%_)
        (let _%lp205511%_ ((_%rest205513%_ _%args205509%_)
                           (_%pargs205514%_ '())
                           (_%kwargs205515%_ '()))
          (let* ((_%__stx208869208870%_ _%rest205513%_)
                 (_%g205521205573%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208869208870%_)))))
            (let ((_%__kont208871208872%_
                   (lambda (_%L205752%_ _%L205753%_)
                     (_%lp205511%_
                      _%L205752%_
                      (cons _%L205753%_ _%pargs205514%_)
                      _%kwargs205515%_)))
                  (_%__kont208873208874%_
                   (lambda (_%L205698%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L205698%_ _%pargs205514%_))
                             (reverse _%kwargs205515%_))))
                  (_%__kont208875208876%_
                   (lambda (_%L205645%_ _%L205646%_ _%L205647%_)
                     (let ((_%kw205664%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L205647%_))))
                       (if (assq _%kw205664%_ _%kwargs205515%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx205508%_
                              _%kw205664%_))
                           (_%lp205511%_
                            _%L205645%_
                            _%pargs205514%_
                            (cons (cons _%kw205664%_ _%L205646%_)
                                  _%kwargs205515%_))))))
                  (_%__kont208877208878%_
                   (lambda (_%L205593%_ _%L205594%_)
                     (_%lp205511%_
                      _%L205593%_
                      (cons _%L205594%_ _%pargs205514%_)
                      _%kwargs205515%_)))
                  (_%__kont208879208880%_
                   (lambda ()
                     (values (reverse _%pargs205514%_)
                             (reverse _%kwargs205515%_)))))
              (let ((_%__match208976208977%_
                     (lambda (_%e205552205613%_
                              _%hd205553205616%_
                              _%tl205554205618%_
                              _%e205555205621%_
                              _%hd205556205624%_
                              _%tl205557205626%_
                              _%e205558205629%_
                              _%hd205559205632%_
                              _%tl205560205634%_
                              _%e205561205637%_
                              _%hd205562205640%_
                              _%tl205563205642%_)
                       (let ((_%L205645%_ _%tl205563205642%_)
                             (_%L205646%_ _%hd205562205640%_)
                             (_%L205647%_ _%hd205559205632%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L205647%_))
                             (_%__kont208875208876%_
                              _%L205645%_
                              _%L205646%_
                              _%L205647%_)
                             (_%__kont208877208878%_
                              _%tl205554205618%_
                              _%hd205553205616%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx208869208870%_))
                    (let ((_%e205525205717%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx208869208870%_))))
                      (let ((_%tl205527205722%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205525205717%_)))
                            (_%hd205526205720%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205525205717%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd205526205720%_))
                            (let ((_%e205528205725%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd205526205720%_))))
                              (let ((_%tl205530205730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205528205725%_)))
                                    (_%hd205529205728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205528205725%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd205529205728%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd205529205728%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205530205730%_))
                                            (let ((_%e205531205733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl205530205730%_))))
                                              (let ((_%tl205533205738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205531205733%_)))
                                                    (_%hd205532205736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205531205733%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205532205736%_))
                                                    (let ((_%e205534205741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205532205736%_))))
                                                      (if (equal? _%e205534205741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205533205738%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205527205722%_))
                          (let ((_%e205535205744%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205527205722%_))))
                            (let ((_%tl205537205749%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205535205744%_)))
                                  (_%hd205536205747%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205535205744%_))))
                              (_%__kont208871208872%_
                               _%tl205537205749%_
                               _%hd205536205747%_)))
                          (_%__kont208877208878%_
                           _%tl205527205722%_
                           _%hd205526205720%_))
                      (_%__kont208877208878%_
                       _%tl205527205722%_
                       _%hd205526205720%_))
                  (if (equal? _%e205534205741%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205533205738%_))
                          (_%__kont208873208874%_ _%tl205527205722%_)
                          (_%__kont208877208878%_
                           _%tl205527205722%_
                           _%hd205526205720%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205533205738%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205527205722%_))
                              (let ((_%e205561205637%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205527205722%_))))
                                (let ((_%tl205563205642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205561205637%_)))
                                      (_%hd205562205640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205561205637%_))))
                                  (_%__match208976208977%_
                                   _%e205525205717%_
                                   _%hd205526205720%_
                                   _%tl205527205722%_
                                   _%e205528205725%_
                                   _%hd205529205728%_
                                   _%tl205530205730%_
                                   _%e205531205733%_
                                   _%hd205532205736%_
                                   _%tl205533205738%_
                                   _%e205561205637%_
                                   _%hd205562205640%_
                                   _%tl205563205642%_)))
                              (_%__kont208877208878%_
                               _%tl205527205722%_
                               _%hd205526205720%_))
                          (_%__kont208877208878%_
                           _%tl205527205722%_
                           _%hd205526205720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205533205738%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205527205722%_))
                                                            (let ((_%e205561205637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl205527205722%_))))
                      (let ((_%tl205563205642%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205561205637%_)))
                            (_%hd205562205640%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205561205637%_))))
                        (_%__match208976208977%_
                         _%e205525205717%_
                         _%hd205526205720%_
                         _%tl205527205722%_
                         _%e205528205725%_
                         _%hd205529205728%_
                         _%tl205530205730%_
                         _%e205531205733%_
                         _%hd205532205736%_
                         _%tl205533205738%_
                         _%e205561205637%_
                         _%hd205562205640%_
                         _%tl205563205642%_)))
                    (_%__kont208877208878%_
                     _%tl205527205722%_
                     _%hd205526205720%_))
                (_%__kont208877208878%_
                 _%tl205527205722%_
                 _%hd205526205720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont208877208878%_
                                             _%tl205527205722%_
                                             _%hd205526205720%_))
                                        (_%__kont208877208878%_
                                         _%tl205527205722%_
                                         _%hd205526205720%_))
                                    (_%__kont208877208878%_
                                     _%tl205527205722%_
                                     _%hd205526205720%_))))
                            (_%__kont208877208878%_
                             _%tl205527205722%_
                             _%hd205526205720%_))))
                    (_%__kont208879208880%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self205492%_ _%ctx205493%_ _%stx205494%_ _%args205495%_)
        (let ((_%self205498%_ _%self205492%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx205493%_ _%stx205494%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self205180%_ _%stx205181%_)
        (let* ((_%__stx208985208986%_ _%stx205181%_)
               (_%g205184205224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208985208986%_)))))
          (let ((_%__kont208987208988%_
                 (lambda (_%L205330%_ _%L205331%_)
                   (let ((_%$e205358%_
                          (member 'return:
                                  (let ((__tmp209417
                                         (lambda (_%g205350205353%_
                                                  _%g205351205355%_)
                                           (cons _%g205350205353%_
                                                 _%g205351205355%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp209417 '() _%L205331%_))
                                  gx#stx-eq?)))
                     (if _%$e205358%_
                         ((lambda (_%tail205361%_)
                            (let ((_%type205363%_
                                   (let ((__tmp209418
                                          (let ((__tmp209419
                                                 (cadr _%tail205361%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp209419))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx205181%_
                                      __tmp209418))))
                              (gxc#check-return-type!
                               _%stx205181%_
                               _%L205330%_
                               _%type205363%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self205180%_
                                 _%L205330%_))))
                          _%$e205358%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self205180%_ _%L205330%_))))))
                (_%__kont208991208992%_
                 (lambda (_%L205253%_ _%L205254%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205180%_ _%L205253%_)))))
            (let ((_%__match209022209023%_
                   (lambda (_%e205188205274%_
                            _%hd205189205277%_
                            _%tl205190205279%_
                            _%e205191205282%_
                            _%hd205192205285%_
                            _%tl205193205287%_
                            _%e205194205290%_
                            _%hd205195205293%_
                            _%tl205196205295%_
                            _%__splice208989208990%_
                            _%target205197205298%_
                            _%tl205199205300%_)
                     (letrec ((_%loop205200205303%_
                               (lambda (_%hd205198205306%_
                                        _%signature205204205308%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205198205306%_))
                                     (let ((_%e205201205311%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd205198205306%_))))
                                       (let ((_%lp-tl205203205316%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205201205311%_)))
                                             (_%lp-hd205202205314%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205201205311%_))))
                                         (_%loop205200205303%_
                                          _%lp-tl205203205316%_
                                          (cons _%lp-hd205202205314%_
                                                _%signature205204205308%_))))
                                     (let ((_%signature205205205319%_
                                            (reverse _%signature205204205308%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl205193205287%_))
                                           (let ((_%e205206205322%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl205193205287%_))))
                                             (let ((_%tl205208205327%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e205206205322%_)))
                                                   (_%hd205207205325%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e205206205322%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl205208205327%_))
                                                   (_%__kont208987208988%_
                                                    _%hd205207205325%_
                                                    _%signature205205205319%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g205184205224%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g205184205224%_))))))))
                       (_%loop205200205303%_ _%target205197205298%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208985208986%_))
                  (let ((_%e205188205274%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208985208986%_))))
                    (let ((_%tl205190205279%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205188205274%_)))
                          (_%hd205189205277%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205188205274%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205190205279%_))
                          (let ((_%e205191205282%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205190205279%_))))
                            (let ((_%tl205193205287%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205191205282%_)))
                                  (_%hd205192205285%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205191205282%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd205192205285%_))
                                  (let ((_%e205194205290%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205192205285%_))))
                                    (let ((_%tl205196205295%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205194205290%_)))
                                          (_%hd205195205293%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205194205290%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd205195205293%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd205195205293%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl205196205295%_))
                                                  (let ((_%__splice208989208990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl205196205295%_
                                                            '0))))
                                                    (let ((_%tl205199205300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208989208990%_
                                                              '1)))
                                                          (_%target205197205298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice208989208990%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205199205300%_))
                                                          (_%__match209022209023%_
                                                           _%e205188205274%_
                                                           _%hd205189205277%_
                                                           _%tl205190205279%_
                                                           _%e205191205282%_
                                                           _%hd205192205285%_
                                                           _%tl205193205287%_
                                                           _%e205194205290%_
                                                           _%hd205195205293%_
                                                           _%tl205196205295%_
                                                           _%__splice208989208990%_
                                                           _%target205197205298%_
                                                           _%tl205199205300%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl205193205287%_))
                      (let ((_%e205217205245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl205193205287%_))))
                        (let ((_%tl205219205250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205217205245%_)))
                              (_%hd205218205248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205217205245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205219205250%_))
                              (_%__kont208991208992%_
                               _%hd205218205248%_
                               _%hd205192205285%_)
                              (let ()
                                (declare (not safe))
                                (_%g205184205224%_)))))
                      (let () (declare (not safe)) (_%g205184205224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205193205287%_))
                                                      (let ((_%e205217205245%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl205193205287%_))))
                (let ((_%tl205219205250%_
                       (let () (declare (not safe)) (##cdr _%e205217205245%_)))
                      (_%hd205218205248%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205217205245%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205219205250%_))
                      (_%__kont208991208992%_
                       _%hd205218205248%_
                       _%hd205192205285%_)
                      (let () (declare (not safe)) (_%g205184205224%_)))))
              (let () (declare (not safe)) (_%g205184205224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205193205287%_))
                                                  (let ((_%e205217205245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl205193205287%_))))
                                                    (let ((_%tl205219205250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205217205245%_)))
                                                          (_%hd205218205248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205217205245%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205219205250%_))
                                                          (_%__kont208991208992%_
                                                           _%hd205218205248%_
                                                           _%hd205192205285%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205184205224%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205184205224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205193205287%_))
                                              (let ((_%e205217205245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl205193205287%_))))
                                                (let ((_%tl205219205250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205217205245%_)))
                                                      (_%hd205218205248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205217205245%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205219205250%_))
                                                      (_%__kont208991208992%_
                                                       _%hd205218205248%_
                                                       _%hd205192205285%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205184205224%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205184205224%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205193205287%_))
                                      (let ((_%e205217205245%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205193205287%_))))
                                        (let ((_%tl205219205250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205217205245%_)))
                                              (_%hd205218205248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205217205245%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205219205250%_))
                                              (_%__kont208991208992%_
                                               _%hd205218205248%_
                                               _%hd205192205285%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205184205224%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205184205224%_))))))
                          (let () (declare (not safe)) (_%g205184205224%_)))))
                  (let () (declare (not safe)) (_%g205184205224%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx205155%_ _%expr205156%_ _%type205157%_)
        (let ((_%$e205159%_ (not _%type205157%_)))
          (if _%$e205159%_
              _%$e205159%_
              (let ((_%$e205162%_
                     (eq? (##structure-ref _%type205157%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e205162%_
                    _%$e205162%_
                    (let ((_%$e205165%_
                           (eq? (##structure-ref
                                 _%type205157%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e205165%_
                          _%$e205165%_
                          (let ((_%expr-type205169%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr205156%_))))
                            (if (not _%expr-type205169%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx205155%_
                                   _%type205157%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type205169%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx205155%_
                                       _%type205157%_
                                       _%expr-type205169%_))
                                    (let ((_%$e205173%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type205169%_
                                              'gxc#!abort::t))))
                                      (if _%$e205173%_
                                          _%$e205173%_
                                          (let ((_%$e205176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type205169%_
                                                    _%type205157%_))))
                                            (if _%$e205176%_
                                                _%$e205176%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx205155%_
                                                   _%type205157%_
                                                   _%expr-type205169%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self204581%_ _%stx204582%_)
        (let* ((_%__stx209067209068%_ _%stx204582%_)
               (_%g204587204697%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209067209068%_)))))
          (let ((_%__kont209069209070%_
                 (lambda (_%L205129%_ _%L205130%_ _%L205131%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L205131%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204581%_ _%L205130%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self204581%_ _%L205129%_)))))
                (_%__kont209071209072%_
                 (lambda (_%L204955%_ _%L204956%_ _%L204957%_ _%L204958%_)
                   (let ((_%$e204990%_
                          (let ((__tmp209420
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L204958%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp209420))))
                     (if _%$e204990%_
                         ((lambda (_%pred-type204993%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type204993%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type204993%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test204998%_
                                        (let ((__tmp209421
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L204958%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L204957%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp209421
                                           _%stx204582%_
                                           _%self204581%_)))
                                       (_%K205002%_
                                        (let ((__tmp209422
                                               (lambda ()
                                                 (let ((__tmp209425
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self204581%_
                                                             _%L204956%_))))
                                                       (__tmp209423
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L204957%_))
                            (let ((__tmp209424
                                   (##structure-ref
                                    _%pred-type204993%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx204582%_
                               __tmp209424)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp209425
                                                    gxc#current-compile-path-type
                                                    __tmp209423)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209422)))
                                       (_%E205005%_
                                        (let ((__tmp209426
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self204581%_
                                                    _%L204955%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp209426)))
                                       (_%__stx209045209046%_ _%test204998%_)
                                       (_%g205009205023%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx209045209046%_)))))
                                  (let ((_%__kont209047209048%_
                                         (lambda (_%L205051%_ _%L205052%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L205051%_))
                                               (force _%K205002%_)
                                               (force _%E205005%_))))
                                        (_%__kont209049209050%_
                                         (lambda ()
                                           (let ((__tmp209427
                                                  (cons '%#if
                                                        (cons _%test204998%_
                                                              (cons (force _%K205002%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E205005%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp209427
                                              _%stx204582%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx209045209046%_))
                                        (let ((_%e205013205035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx209045209046%_))))
                                          (let ((_%tl205015205040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e205013205035%_)))
                                                (_%hd205014205038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e205013205035%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205015205040%_))
                                                (let ((_%e205016205043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl205015205040%_))))
                                                  (let ((_%tl205018205048%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205016205043%_)))
                                                        (_%hd205017205046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205016205043%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205018205048%_))
                                                        (_%__kont209047209048%_
                                                         _%hd205017205046%_
                                                         _%hd205014205038%_)
                                                        (_%__kont209049209050%_))))
                                                (_%__kont209049209050%_))))
                                        (_%__kont209049209050%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self204581%_
                                   _%stx204582%_))))
                          _%$e204990%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self204581%_
                            _%stx204582%_))))))
                (_%__kont209073209074%_
                 (lambda (_%L204831%_ _%L204832%_ _%L204833%_ _%L204834%_)
                   (gxc#optimize-if%
                    _%self204581%_
                    (let ((__tmp209428
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L204833%_
                                       (cons _%L204831%_
                                             (cons _%L204832%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp209428 _%stx204582%_)))))
                (_%__kont209075209076%_
                 (lambda (_%L204734%_ _%L204735%_ _%L204736%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self204581%_ _%stx204582%_)))))
            (let ((_%__match209274209275%_
                   (lambda (_%e204651204759%_
                            _%hd204652204762%_
                            _%tl204653204764%_
                            _%e204654204767%_
                            _%hd204655204770%_
                            _%tl204656204772%_
                            _%e204657204775%_
                            _%hd204658204778%_
                            _%tl204659204780%_
                            _%e204660204783%_
                            _%hd204661204786%_
                            _%tl204662204788%_
                            _%e204663204791%_
                            _%hd204664204794%_
                            _%tl204665204796%_
                            _%e204666204799%_
                            _%hd204667204802%_
                            _%tl204668204804%_
                            _%e204669204807%_
                            _%hd204670204810%_
                            _%tl204671204812%_
                            _%e204672204815%_
                            _%hd204673204818%_
                            _%tl204674204820%_
                            _%e204675204823%_
                            _%hd204676204826%_
                            _%tl204677204828%_)
                     (let ((_%L204831%_ _%hd204676204826%_)
                           (_%L204832%_ _%hd204673204818%_)
                           (_%L204833%_ _%hd204670204810%_)
                           (_%L204834%_ _%hd204667204802%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L204834%_ 'not))
                           (_%__kont209073209074%_
                            _%L204831%_
                            _%L204832%_
                            _%L204833%_
                            _%L204834%_)
                           (_%__kont209075209076%_
                            _%hd204676204826%_
                            _%hd204673204818%_
                            _%hd204655204770%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209067209068%_))
                  (let ((_%e204592205081%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209067209068%_))))
                    (let ((_%tl204594205086%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204592205081%_)))
                          (_%hd204593205084%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204592205081%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204594205086%_))
                          (let ((_%e204595205089%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204594205086%_))))
                            (let ((_%tl204597205094%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204595205089%_)))
                                  (_%hd204596205092%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204595205089%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204596205092%_))
                                  (let ((_%e204598205097%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204596205092%_))))
                                    (let ((_%tl204600205102%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204598205097%_)))
                                          (_%hd204599205100%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204598205097%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204599205100%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd204599205100%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204600205102%_))
                                                  (let ((_%e204601205105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204600205102%_))))
                                                    (let ((_%tl204603205110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204601205105%_)))
                                                          (_%hd204602205108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204601205105%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204603205110%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204597205094%_))
                      (let ((_%e204604205113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204597205094%_))))
                        (let ((_%tl204606205118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204604205113%_)))
                              (_%hd204605205116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204604205113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204606205118%_))
                              (let ((_%e204607205121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204606205118%_))))
                                (let ((_%tl204609205126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204607205121%_)))
                                      (_%hd204608205124%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204607205121%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204609205126%_))
                                      (_%__kont209069209070%_
                                       _%hd204608205124%_
                                       _%hd204605205116%_
                                       _%hd204602205108%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204587204697%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204587204697%_)))))
                      (let () (declare (not safe)) (_%g204587204697%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204597205094%_))
                      (let ((_%e204687204718%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204597205094%_))))
                        (let ((_%tl204689204723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204687204718%_)))
                              (_%hd204688204721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204687204718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204689204723%_))
                              (let ((_%e204690204726%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204689204723%_))))
                                (let ((_%tl204692204731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204690204726%_)))
                                      (_%hd204691204729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204690204726%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204692204731%_))
                                      (_%__kont209075209076%_
                                       _%hd204691204729%_
                                       _%hd204688204721%_
                                       _%hd204596205092%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204587204697%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204587204697%_)))))
                      (let () (declare (not safe)) (_%g204587204697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204597205094%_))
                                                      (let ((_%e204687204718%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204597205094%_))))
                (let ((_%tl204689204723%_
                       (let () (declare (not safe)) (##cdr _%e204687204718%_)))
                      (_%hd204688204721%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204687204718%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204689204723%_))
                      (let ((_%e204690204726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204689204723%_))))
                        (let ((_%tl204692204731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204690204726%_)))
                              (_%hd204691204729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204690204726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204692204731%_))
                              (_%__kont209075209076%_
                               _%hd204691204729%_
                               _%hd204688204721%_
                               _%hd204596205092%_)
                              (let ()
                                (declare (not safe))
                                (_%g204587204697%_)))))
                      (let () (declare (not safe)) (_%g204587204697%_)))))
              (let () (declare (not safe)) (_%g204587204697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd204599205100%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204600205102%_))
                                                      (let ((_%e204623204891%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204600205102%_))))
                (let ((_%tl204625204896%_
                       (let () (declare (not safe)) (##cdr _%e204623204891%_)))
                      (_%hd204624204894%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204623204891%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd204624204894%_))
                      (let ((_%e204626204899%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204624204894%_))))
                        (let ((_%tl204628204904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204626204899%_)))
                              (_%hd204627204902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204626204899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd204627204902%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd204627204902%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204628204904%_))
                                      (let ((_%e204629204907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204628204904%_))))
                                        (let ((_%tl204631204912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204629204907%_)))
                                              (_%hd204630204910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204629204907%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204631204912%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204625204896%_))
                                                  (let ((_%e204632204915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204625204896%_))))
                                                    (let ((_%tl204634204920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204632204915%_)))
                                                          (_%hd204633204918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204632204915%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204633204918%_))
                                                          (let ((_%e204635204923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd204633204918%_))))
                    (let ((_%tl204637204928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204635204923%_)))
                          (_%hd204636204926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204635204923%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204636204926%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd204636204926%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204637204928%_))
                                  (let ((_%e204638204931%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204637204928%_))))
                                    (let ((_%tl204640204936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204638204931%_)))
                                          (_%hd204639204934%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204638204931%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204640204936%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204634204920%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204597205094%_))
                                                  (let ((_%e204641204939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204597205094%_))))
                                                    (let ((_%tl204643204944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204641204939%_)))
                                                          (_%hd204642204942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204641204939%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204643204944%_))
                                                          (let ((_%e204644204947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204643204944%_))))
                    (let ((_%tl204646204952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204644204947%_)))
                          (_%hd204645204950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204644204947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204646204952%_))
                          (_%__kont209071209072%_
                           _%hd204645204950%_
                           _%hd204642204942%_
                           _%hd204639204934%_
                           _%hd204630204910%_)
                          (let () (declare (not safe)) (_%g204587204697%_)))))
                  (let () (declare (not safe)) (_%g204587204697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204597205094%_))
                                                  (let ((_%e204687204718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204597205094%_))))
                                                    (let ((_%tl204689204723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204687204718%_)))
                                                          (_%hd204688204721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204687204718%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204689204723%_))
                                                          (let ((_%e204690204726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204689204723%_))))
                    (let ((_%tl204692204731%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204690204726%_)))
                          (_%hd204691204729%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204690204726%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204692204731%_))
                          (_%__kont209075209076%_
                           _%hd204691204729%_
                           _%hd204688204721%_
                           _%hd204596205092%_)
                          (let () (declare (not safe)) (_%g204587204697%_)))))
                  (let () (declare (not safe)) (_%g204587204697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204634204920%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204597205094%_))
                                                  (let ((_%e204672204815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204597205094%_))))
                                                    (let ((_%tl204674204820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204672204815%_)))
                                                          (_%hd204673204818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204672204815%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204674204820%_))
                                                          (let ((_%e204675204823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204674204820%_))))
                    (let ((_%tl204677204828%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204675204823%_)))
                          (_%hd204676204826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204675204823%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204677204828%_))
                          (_%__match209274209275%_
                           _%e204592205081%_
                           _%hd204593205084%_
                           _%tl204594205086%_
                           _%e204595205089%_
                           _%hd204596205092%_
                           _%tl204597205094%_
                           _%e204598205097%_
                           _%hd204599205100%_
                           _%tl204600205102%_
                           _%e204623204891%_
                           _%hd204624204894%_
                           _%tl204625204896%_
                           _%e204626204899%_
                           _%hd204627204902%_
                           _%tl204628204904%_
                           _%e204629204907%_
                           _%hd204630204910%_
                           _%tl204631204912%_
                           _%e204632204915%_
                           _%hd204633204918%_
                           _%tl204634204920%_
                           _%e204672204815%_
                           _%hd204673204818%_
                           _%tl204674204820%_
                           _%e204675204823%_
                           _%hd204676204826%_
                           _%tl204677204828%_)
                          (let () (declare (not safe)) (_%g204587204697%_)))))
                  (let () (declare (not safe)) (_%g204587204697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204597205094%_))
                                                  (let ((_%e204687204718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204597205094%_))))
                                                    (let ((_%tl204689204723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204687204718%_)))
                                                          (_%hd204688204721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204687204718%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204689204723%_))
                                                          (let ((_%e204690204726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204689204723%_))))
                    (let ((_%tl204692204731%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204690204726%_)))
                          (_%hd204691204729%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204690204726%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204692204731%_))
                          (_%__kont209075209076%_
                           _%hd204691204729%_
                           _%hd204688204721%_
                           _%hd204596205092%_)
                          (let () (declare (not safe)) (_%g204587204697%_)))))
                  (let () (declare (not safe)) (_%g204587204697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204634204920%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204597205094%_))
                                          (let ((_%e204672204815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204597205094%_))))
                                            (let ((_%tl204674204820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204672204815%_)))
                                                  (_%hd204673204818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204672204815%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204674204820%_))
                                                  (let ((_%e204675204823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204674204820%_))))
                                                    (let ((_%tl204677204828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204675204823%_)))
                                                          (_%hd204676204826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204675204823%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204677204828%_))
                                                          (_%__match209274209275%_
                                                           _%e204592205081%_
                                                           _%hd204593205084%_
                                                           _%tl204594205086%_
                                                           _%e204595205089%_
                                                           _%hd204596205092%_
                                                           _%tl204597205094%_
                                                           _%e204598205097%_
                                                           _%hd204599205100%_
                                                           _%tl204600205102%_
                                                           _%e204623204891%_
                                                           _%hd204624204894%_
                                                           _%tl204625204896%_
                                                           _%e204626204899%_
                                                           _%hd204627204902%_
                                                           _%tl204628204904%_
                                                           _%e204629204907%_
                                                           _%hd204630204910%_
                                                           _%tl204631204912%_
                                                           _%e204632204915%_
                                                           _%hd204633204918%_
                                                           _%tl204634204920%_
                                                           _%e204672204815%_
                                                           _%hd204673204818%_
                                                           _%tl204674204820%_
                                                           _%e204675204823%_
                                                           _%hd204676204826%_
                                                           _%tl204677204828%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204587204697%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204597205094%_))
                                          (let ((_%e204687204718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204597205094%_))))
                                            (let ((_%tl204689204723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204687204718%_)))
                                                  (_%hd204688204721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204687204718%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204689204723%_))
                                                  (let ((_%e204690204726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204689204723%_))))
                                                    (let ((_%tl204692204731%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204690204726%_)))
                                                          (_%hd204691204729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204690204726%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204692204731%_))
                                                          (_%__kont209075209076%_
                                                           _%hd204691204729%_
                                                           _%hd204688204721%_
                                                           _%hd204596205092%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204587204697%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204634204920%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204597205094%_))
                                      (let ((_%e204672204815%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204597205094%_))))
                                        (let ((_%tl204674204820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204672204815%_)))
                                              (_%hd204673204818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204672204815%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204674204820%_))
                                              (let ((_%e204675204823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204674204820%_))))
                                                (let ((_%tl204677204828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204675204823%_)))
                                                      (_%hd204676204826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204675204823%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204677204828%_))
                                                      (_%__match209274209275%_
                                                       _%e204592205081%_
                                                       _%hd204593205084%_
                                                       _%tl204594205086%_
                                                       _%e204595205089%_
                                                       _%hd204596205092%_
                                                       _%tl204597205094%_
                                                       _%e204598205097%_
                                                       _%hd204599205100%_
                                                       _%tl204600205102%_
                                                       _%e204623204891%_
                                                       _%hd204624204894%_
                                                       _%tl204625204896%_
                                                       _%e204626204899%_
                                                       _%hd204627204902%_
                                                       _%tl204628204904%_
                                                       _%e204629204907%_
                                                       _%hd204630204910%_
                                                       _%tl204631204912%_
                                                       _%e204632204915%_
                                                       _%hd204633204918%_
                                                       _%tl204634204920%_
                                                       _%e204672204815%_
                                                       _%hd204673204818%_
                                                       _%tl204674204820%_
                                                       _%e204675204823%_
                                                       _%hd204676204826%_
                                                       _%tl204677204828%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204587204697%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204587204697%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204587204697%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204597205094%_))
                                      (let ((_%e204687204718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204597205094%_))))
                                        (let ((_%tl204689204723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204687204718%_)))
                                              (_%hd204688204721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204687204718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204689204723%_))
                                              (let ((_%e204690204726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204689204723%_))))
                                                (let ((_%tl204692204731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204690204726%_)))
                                                      (_%hd204691204729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204690204726%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204692204731%_))
                                                      (_%__kont209075209076%_
                                                       _%hd204691204729%_
                                                       _%hd204688204721%_
                                                       _%hd204596205092%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204587204697%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204587204697%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204587204697%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204634204920%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204597205094%_))
                                  (let ((_%e204672204815%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204597205094%_))))
                                    (let ((_%tl204674204820%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204672204815%_)))
                                          (_%hd204673204818%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204672204815%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204674204820%_))
                                          (let ((_%e204675204823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204674204820%_))))
                                            (let ((_%tl204677204828%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204675204823%_)))
                                                  (_%hd204676204826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204675204823%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204677204828%_))
                                                  (_%__match209274209275%_
                                                   _%e204592205081%_
                                                   _%hd204593205084%_
                                                   _%tl204594205086%_
                                                   _%e204595205089%_
                                                   _%hd204596205092%_
                                                   _%tl204597205094%_
                                                   _%e204598205097%_
                                                   _%hd204599205100%_
                                                   _%tl204600205102%_
                                                   _%e204623204891%_
                                                   _%hd204624204894%_
                                                   _%tl204625204896%_
                                                   _%e204626204899%_
                                                   _%hd204627204902%_
                                                   _%tl204628204904%_
                                                   _%e204629204907%_
                                                   _%hd204630204910%_
                                                   _%tl204631204912%_
                                                   _%e204632204915%_
                                                   _%hd204633204918%_
                                                   _%tl204634204920%_
                                                   _%e204672204815%_
                                                   _%hd204673204818%_
                                                   _%tl204674204820%_
                                                   _%e204675204823%_
                                                   _%hd204676204826%_
                                                   _%tl204677204828%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204587204697%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204597205094%_))
                                  (let ((_%e204687204718%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204597205094%_))))
                                    (let ((_%tl204689204723%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204687204718%_)))
                                          (_%hd204688204721%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204687204718%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204689204723%_))
                                          (let ((_%e204690204726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204689204723%_))))
                                            (let ((_%tl204692204731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204690204726%_)))
                                                  (_%hd204691204729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204690204726%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204692204731%_))
                                                  (_%__kont209075209076%_
                                                   _%hd204691204729%_
                                                   _%hd204688204721%_
                                                   _%hd204596205092%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204587204697%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204634204920%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204597205094%_))
                          (let ((_%e204672204815%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204597205094%_))))
                            (let ((_%tl204674204820%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204672204815%_)))
                                  (_%hd204673204818%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204672204815%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204674204820%_))
                                  (let ((_%e204675204823%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204674204820%_))))
                                    (let ((_%tl204677204828%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204675204823%_)))
                                          (_%hd204676204826%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204675204823%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204677204828%_))
                                          (_%__match209274209275%_
                                           _%e204592205081%_
                                           _%hd204593205084%_
                                           _%tl204594205086%_
                                           _%e204595205089%_
                                           _%hd204596205092%_
                                           _%tl204597205094%_
                                           _%e204598205097%_
                                           _%hd204599205100%_
                                           _%tl204600205102%_
                                           _%e204623204891%_
                                           _%hd204624204894%_
                                           _%tl204625204896%_
                                           _%e204626204899%_
                                           _%hd204627204902%_
                                           _%tl204628204904%_
                                           _%e204629204907%_
                                           _%hd204630204910%_
                                           _%tl204631204912%_
                                           _%e204632204915%_
                                           _%hd204633204918%_
                                           _%tl204634204920%_
                                           _%e204672204815%_
                                           _%hd204673204818%_
                                           _%tl204674204820%_
                                           _%e204675204823%_
                                           _%hd204676204826%_
                                           _%tl204677204828%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204587204697%_)))))
                          (let () (declare (not safe)) (_%g204587204697%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204597205094%_))
                          (let ((_%e204687204718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204597205094%_))))
                            (let ((_%tl204689204723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204687204718%_)))
                                  (_%hd204688204721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204687204718%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204689204723%_))
                                  (let ((_%e204690204726%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204689204723%_))))
                                    (let ((_%tl204692204731%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204690204726%_)))
                                          (_%hd204691204729%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204690204726%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204692204731%_))
                                          (_%__kont209075209076%_
                                           _%hd204691204729%_
                                           _%hd204688204721%_
                                           _%hd204596205092%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204587204697%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g204587204697%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204597205094%_))
                                                      (let ((_%e204687204718%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204597205094%_))))
                (let ((_%tl204689204723%_
                       (let () (declare (not safe)) (##cdr _%e204687204718%_)))
                      (_%hd204688204721%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204687204718%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204689204723%_))
                      (let ((_%e204690204726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204689204723%_))))
                        (let ((_%tl204692204731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204690204726%_)))
                              (_%hd204691204729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204690204726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204692204731%_))
                              (_%__kont209075209076%_
                               _%hd204691204729%_
                               _%hd204688204721%_
                               _%hd204596205092%_)
                              (let ()
                                (declare (not safe))
                                (_%g204587204697%_)))))
                      (let () (declare (not safe)) (_%g204587204697%_)))))
              (let () (declare (not safe)) (_%g204587204697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204597205094%_))
                                                  (let ((_%e204687204718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204597205094%_))))
                                                    (let ((_%tl204689204723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204687204718%_)))
                                                          (_%hd204688204721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204687204718%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204689204723%_))
                                                          (let ((_%e204690204726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204689204723%_))))
                    (let ((_%tl204692204731%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204690204726%_)))
                          (_%hd204691204729%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204690204726%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204692204731%_))
                          (_%__kont209075209076%_
                           _%hd204691204729%_
                           _%hd204688204721%_
                           _%hd204596205092%_)
                          (let () (declare (not safe)) (_%g204587204697%_)))))
                  (let () (declare (not safe)) (_%g204587204697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204597205094%_))
                                          (let ((_%e204687204718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204597205094%_))))
                                            (let ((_%tl204689204723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204687204718%_)))
                                                  (_%hd204688204721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204687204718%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204689204723%_))
                                                  (let ((_%e204690204726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204689204723%_))))
                                                    (let ((_%tl204692204731%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204690204726%_)))
                                                          (_%hd204691204729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204690204726%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204692204731%_))
                                                          (_%__kont209075209076%_
                                                           _%hd204691204729%_
                                                           _%hd204688204721%_
                                                           _%hd204596205092%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204587204697%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204597205094%_))
                                      (let ((_%e204687204718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204597205094%_))))
                                        (let ((_%tl204689204723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204687204718%_)))
                                              (_%hd204688204721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204687204718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204689204723%_))
                                              (let ((_%e204690204726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204689204723%_))))
                                                (let ((_%tl204692204731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204690204726%_)))
                                                      (_%hd204691204729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204690204726%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204692204731%_))
                                                      (_%__kont209075209076%_
                                                       _%hd204691204729%_
                                                       _%hd204688204721%_
                                                       _%hd204596205092%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204587204697%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204587204697%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204587204697%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204597205094%_))
                                  (let ((_%e204687204718%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204597205094%_))))
                                    (let ((_%tl204689204723%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204687204718%_)))
                                          (_%hd204688204721%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204687204718%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204689204723%_))
                                          (let ((_%e204690204726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204689204723%_))))
                                            (let ((_%tl204692204731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204690204726%_)))
                                                  (_%hd204691204729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204690204726%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204692204731%_))
                                                  (_%__kont209075209076%_
                                                   _%hd204691204729%_
                                                   _%hd204688204721%_
                                                   _%hd204596205092%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204587204697%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204587204697%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204597205094%_))
                          (let ((_%e204687204718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204597205094%_))))
                            (let ((_%tl204689204723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204687204718%_)))
                                  (_%hd204688204721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204687204718%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204689204723%_))
                                  (let ((_%e204690204726%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204689204723%_))))
                                    (let ((_%tl204692204731%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204690204726%_)))
                                          (_%hd204691204729%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204690204726%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204692204731%_))
                                          (_%__kont209075209076%_
                                           _%hd204691204729%_
                                           _%hd204688204721%_
                                           _%hd204596205092%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g204587204697%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204587204697%_)))))
                          (let () (declare (not safe)) (_%g204587204697%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl204597205094%_))
                  (let ((_%e204687204718%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204597205094%_))))
                    (let ((_%tl204689204723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204687204718%_)))
                          (_%hd204688204721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204687204718%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204689204723%_))
                          (let ((_%e204690204726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204689204723%_))))
                            (let ((_%tl204692204731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204690204726%_)))
                                  (_%hd204691204729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204690204726%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204692204731%_))
                                  (_%__kont209075209076%_
                                   _%hd204691204729%_
                                   _%hd204688204721%_
                                   _%hd204596205092%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g204587204697%_)))))
                          (let () (declare (not safe)) (_%g204587204697%_)))))
                  (let () (declare (not safe)) (_%g204587204697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204597205094%_))
                                                      (let ((_%e204687204718%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204597205094%_))))
                (let ((_%tl204689204723%_
                       (let () (declare (not safe)) (##cdr _%e204687204718%_)))
                      (_%hd204688204721%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204687204718%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204689204723%_))
                      (let ((_%e204690204726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204689204723%_))))
                        (let ((_%tl204692204731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204690204726%_)))
                              (_%hd204691204729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204690204726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204692204731%_))
                              (_%__kont209075209076%_
                               _%hd204691204729%_
                               _%hd204688204721%_
                               _%hd204596205092%_)
                              (let ()
                                (declare (not safe))
                                (_%g204587204697%_)))))
                      (let () (declare (not safe)) (_%g204587204697%_)))))
              (let () (declare (not safe)) (_%g204587204697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204597205094%_))
                                              (let ((_%e204687204718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204597205094%_))))
                                                (let ((_%tl204689204723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204687204718%_)))
                                                      (_%hd204688204721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204687204718%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204689204723%_))
                                                      (let ((_%e204690204726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204689204723%_))))
                (let ((_%tl204692204731%_
                       (let () (declare (not safe)) (##cdr _%e204690204726%_)))
                      (_%hd204691204729%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204690204726%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204692204731%_))
                      (_%__kont209075209076%_
                       _%hd204691204729%_
                       _%hd204688204721%_
                       _%hd204596205092%_)
                      (let () (declare (not safe)) (_%g204587204697%_)))))
              (let () (declare (not safe)) (_%g204587204697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204587204697%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204597205094%_))
                                      (let ((_%e204687204718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204597205094%_))))
                                        (let ((_%tl204689204723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204687204718%_)))
                                              (_%hd204688204721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204687204718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204689204723%_))
                                              (let ((_%e204690204726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204689204723%_))))
                                                (let ((_%tl204692204731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204690204726%_)))
                                                      (_%hd204691204729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204690204726%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204692204731%_))
                                                      (_%__kont209075209076%_
                                                       _%hd204691204729%_
                                                       _%hd204688204721%_
                                                       _%hd204596205092%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204587204697%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204587204697%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204587204697%_))))))
                          (let () (declare (not safe)) (_%g204587204697%_)))))
                  (let () (declare (not safe)) (_%g204587204697%_))))))))))
