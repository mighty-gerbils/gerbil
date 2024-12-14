(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1734215277)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp197552 (list gxc#::basic-xform::t))
            (__tmp197551 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp197552
         '()
         __tmp197551
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args196829%_
        (apply make-instance gxc#::optimize-call::t _%$args196829%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp197553
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
        (__make-promise __tmp197553)))
    (define gxc#apply-optimize-call
      (lambda (_%stx196821%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self196824%_
                (let ((__obj197543
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj197543))
               (__tmp197554
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196824%_ _%stx196821%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197554
           gxc#current-compile-method
           _%self196824%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp197556 (list gxc#::void::t))
            (__tmp197555 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp197556
         '()
         __tmp197555
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args196818%_
        (apply make-instance gxc#::check-return-type::t _%$args196818%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp197557
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
        (__make-promise __tmp197557)))
    (define gxc#apply-check-return-type
      (lambda (_%stx196810%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self196813%_
                (let ((__obj197545
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj197545))
               (__tmp197558
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196813%_ _%stx196810%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197558
           gxc#current-compile-method
           _%self196813%_))))
    (define gxc#optimize-call%
      (lambda (_%self196411%_ _%stx196412%_)
        (let* ((_%__stx196898196899%_ _%stx196412%_)
               (_%g196415196461%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196898196899%_)))))
          (let ((_%__kont196900196901%_
                 (lambda (_%L196604%_ _%L196605%_)
                   (let* ((_%rator-id196625%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L196605%_)))
                          (_%rator-type196627%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id196625%_))))
                     (if (or (not _%rator-type196627%_)
                             (eq? (##structure-ref
                                   _%rator-type196627%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self196411%_ _%stx196412%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type196627%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp197559
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type196627%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id196625%_
                                  '" => "
                                  _%rator-type196627%_
                                  '" "
                                  __tmp197559))
                               (let* ((_%optimized196642%_
                                       (let ((__method197546
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type196627%_
                                                 'optimize-call))))
                                         (if __method197546
                                             (let ((__tmp197560
                                                    (let ((__tmp197561
                                                           (lambda (_%g196634196637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196635196639%_)
                     (cons _%g196634196637%_ _%g196635196639%_))))
              (declare (not safe))
              (__foldr1 __tmp197561 '() _%L196604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method197546
                                                _%rator-type196627%_
                                                _%self196411%_
                                                _%stx196412%_
                                                __tmp197560))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type196627%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx196846196847%_
                                       _%optimized196642%_)
                                      (_%g196645196674%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx196846196847%_)))))
                                 (let ((_%__kont196848196849%_
                                        (lambda (_%L196742%_ _%L196743%_)
                                          (let* ((_%optimized-rator-id196770%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L196743%_)))
                                                 (_%rator-type196775%_
                                                  (let ((_%$e196772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id196770%_))))
                                                    (if _%$e196772%_
                                                        _%$e196772%_
                                                        _%rator-type196627%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type196775%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id196770%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type196775%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type196775%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized196642%_
                                                (let ((__tmp197562
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L196743%_ '()))
                           (let ((__tmp197563
                                  (lambda (_%g196783196786%_ _%g196784196788%_)
                                    (cons _%g196783196786%_
                                          _%g196784196788%_))))
                             (declare (not safe))
                             (__foldr1 __tmp197563 '() _%L196742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp197562
                                                   _%stx196412%_))))))
                                       (_%__kont196852196853%_
                                        (lambda () _%optimized196642%_)))
                                   (let ((_%__match196895196896%_
                                          (lambda (_%e196649196686%_
                                                   _%hd196650196689%_
                                                   _%tl196651196691%_
                                                   _%e196652196694%_
                                                   _%hd196653196697%_
                                                   _%tl196654196699%_
                                                   _%e196655196702%_
                                                   _%hd196656196705%_
                                                   _%tl196657196707%_
                                                   _%e196658196710%_
                                                   _%hd196659196713%_
                                                   _%tl196660196715%_
                                                   _%__splice196850196851%_
                                                   _%target196661196718%_
                                                   _%tl196663196720%_)
                                            (letrec ((_%loop196664196723%_
                                                      (lambda (_%hd196662196726%_
                                                               _%arg196668196728%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd196662196726%_))
                                                            (let ((_%e196665196731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd196662196726%_))))
                      (let ((_%lp-tl196667196736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196665196731%_)))
                            (_%lp-hd196666196734%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196665196731%_))))
                        (_%loop196664196723%_
                         _%lp-tl196667196736%_
                         (cons _%lp-hd196666196734%_ _%arg196668196728%_))))
                    (let ((_%arg196669196739%_ (reverse _%arg196668196728%_)))
                      (_%__kont196848196849%_
                       _%arg196669196739%_
                       _%hd196659196713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop196664196723%_
                                               _%target196661196718%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx196846196847%_))
                                         (let ((_%e196649196686%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx196846196847%_))))
                                           (let ((_%tl196651196691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196649196686%_)))
                                                 (_%hd196650196689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196649196686%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd196650196689%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd196650196689%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl196651196691%_))
                                                         (let ((_%e196652196694%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl196651196691%_))))
                   (let ((_%tl196654196699%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e196652196694%_)))
                         (_%hd196653196697%_
                          (let ()
                            (declare (not safe))
                            (##car _%e196652196694%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd196653196697%_))
                         (let ((_%e196655196702%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd196653196697%_))))
                           (let ((_%tl196657196707%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196655196702%_)))
                                 (_%hd196656196705%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196655196702%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd196656196705%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd196656196705%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl196657196707%_))
                                         (let ((_%e196658196710%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl196657196707%_))))
                                           (let ((_%tl196660196715%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196658196710%_)))
                                                 (_%hd196659196713%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196658196710%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl196660196715%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl196654196699%_))
                                                     (let ((_%__splice196850196851%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl196654196699%_
                                                               '0))))
                                                       (let ((_%tl196663196720%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice196850196851%_ '1)))
                     (_%target196661196718%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice196850196851%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196663196720%_))
                     (_%__match196895196896%_
                      _%e196649196686%_
                      _%hd196650196689%_
                      _%tl196651196691%_
                      _%e196652196694%_
                      _%hd196653196697%_
                      _%tl196654196699%_
                      _%e196655196702%_
                      _%hd196656196705%_
                      _%tl196657196707%_
                      _%e196658196710%_
                      _%hd196659196713%_
                      _%tl196660196715%_
                      _%__splice196850196851%_
                      _%target196661196718%_
                      _%tl196663196720%_)
                     (_%__kont196852196853%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196852196853%_))
                                                 (_%__kont196852196853%_))))
                                         (_%__kont196852196853%_))
                                     (_%__kont196852196853%_))
                                 (_%__kont196852196853%_))))
                         (_%__kont196852196853%_))))
                 (_%__kont196852196853%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196852196853%_))
                                                 (_%__kont196852196853%_))))
                                         (_%__kont196852196853%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type196627%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type196627%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp197564
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L196605%_
                                                                '()))
                                                    (map (lambda (_%g196794196796%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self196411%_
                                                              _%g196794196796%_)))
                                                         (let ((__tmp197565
                                                                (lambda (_%g196798196801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g196799196803%_)
                          (cons _%g196798196801%_ _%g196799196803%_))))
                   (declare (not safe))
                   (__foldr1 __tmp197565 '() _%L196604%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp197564
                                    _%stx196412%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx196412%_
                                    _%rator-type196627%_))))))))
                (_%__kont196904196905%_
                 (lambda (_%L196506%_ _%L196507%_)
                   (let ((_%rator-type196524%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L196507%_))))
                     (if (and _%rator-type196524%_
                              (eq? (##structure-ref
                                    _%rator-type196524%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type196524%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type196524%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type196524%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp197566
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196411%_
                                               _%L196507%_))
                                            (map (lambda (_%g196526196528%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196411%_
                                                      _%g196526196528%_)))
                                                 (let ((__tmp197567
                                                        (lambda (_%g196530196533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g196531196535%_)
                  (cons _%g196530196533%_ _%g196531196535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp197567
                                                    '()
                                                    _%L196506%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197566 _%stx196412%_))
                         (if (or (not _%rator-type196524%_)
                                 (let ((__tmp197568
                                        (##structure-ref
                                         _%rator-type196524%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp197568 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self196411%_ _%stx196412%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx196412%_
                                _%rator-type196524%_))))))))
            (let* ((_%__match196965196966%_
                    (lambda (_%e196442196466%_
                             _%hd196443196469%_
                             _%tl196444196471%_
                             _%e196445196474%_
                             _%hd196446196477%_
                             _%tl196447196479%_
                             _%__splice196906196907%_
                             _%target196448196482%_
                             _%tl196450196484%_)
                      (letrec ((_%loop196451196487%_
                                (lambda (_%hd196449196490%_
                                         _%rand196455196492%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196449196490%_))
                                      (let ((_%e196452196495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196449196490%_))))
                                        (let ((_%lp-tl196454196500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196452196495%_)))
                                              (_%lp-hd196453196498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196452196495%_))))
                                          (_%loop196451196487%_
                                           _%lp-tl196454196500%_
                                           (cons _%lp-hd196453196498%_
                                                 _%rand196455196492%_))))
                                      (let ((_%rand196456196503%_
                                             (reverse _%rand196455196492%_)))
                                        (_%__kont196904196905%_
                                         _%rand196456196503%_
                                         _%hd196446196477%_))))))
                        (_%loop196451196487%_ _%target196448196482%_ '()))))
                   (_%__match196945196946%_
                    (lambda (_%e196419196548%_
                             _%hd196420196551%_
                             _%tl196421196553%_
                             _%e196422196556%_
                             _%hd196423196559%_
                             _%tl196424196561%_
                             _%e196425196564%_
                             _%hd196426196567%_
                             _%tl196427196569%_
                             _%e196428196572%_
                             _%hd196429196575%_
                             _%tl196430196577%_
                             _%__splice196902196903%_
                             _%target196431196580%_
                             _%tl196433196582%_)
                      (letrec ((_%loop196434196585%_
                                (lambda (_%hd196432196588%_
                                         _%rand196438196590%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196432196588%_))
                                      (let ((_%e196435196593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196432196588%_))))
                                        (let ((_%lp-tl196437196598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196435196593%_)))
                                              (_%lp-hd196436196596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196435196593%_))))
                                          (_%loop196434196585%_
                                           _%lp-tl196437196598%_
                                           (cons _%lp-hd196436196596%_
                                                 _%rand196438196590%_))))
                                      (let ((_%rand196439196601%_
                                             (reverse _%rand196438196590%_)))
                                        (_%__kont196900196901%_
                                         _%rand196439196601%_
                                         _%hd196429196575%_))))))
                        (_%loop196434196585%_ _%target196431196580%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196898196899%_))
                  (let ((_%e196419196548%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196898196899%_))))
                    (let ((_%tl196421196553%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196419196548%_)))
                          (_%hd196420196551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196419196548%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196421196553%_))
                          (let ((_%e196422196556%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196421196553%_))))
                            (let ((_%tl196424196561%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196422196556%_)))
                                  (_%hd196423196559%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196422196556%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196423196559%_))
                                  (let ((_%e196425196564%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196423196559%_))))
                                    (let ((_%tl196427196569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196425196564%_)))
                                          (_%hd196426196567%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196425196564%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196426196567%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196426196567%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196427196569%_))
                                                  (let ((_%e196428196572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196427196569%_))))
                                                    (let ((_%tl196430196577%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196428196572%_)))
                                                          (_%hd196429196575%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196428196572%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196430196577%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196424196561%_))
                      (let ((_%__splice196902196903%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196424196561%_
                                '0))))
                        (let ((_%tl196433196582%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196902196903%_ '1)))
                              (_%target196431196580%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196902196903%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196433196582%_))
                              (_%__match196945196946%_
                               _%e196419196548%_
                               _%hd196420196551%_
                               _%tl196421196553%_
                               _%e196422196556%_
                               _%hd196423196559%_
                               _%tl196424196561%_
                               _%e196425196564%_
                               _%hd196426196567%_
                               _%tl196427196569%_
                               _%e196428196572%_
                               _%hd196429196575%_
                               _%tl196430196577%_
                               _%__splice196902196903%_
                               _%target196431196580%_
                               _%tl196433196582%_)
                              (let ()
                                (declare (not safe))
                                (_%g196415196461%_)))))
                      (let () (declare (not safe)) (_%g196415196461%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl196424196561%_))
                      (let ((_%__splice196906196907%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196424196561%_
                                '0))))
                        (let ((_%tl196450196484%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196906196907%_ '1)))
                              (_%target196448196482%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196906196907%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196450196484%_))
                              (_%__match196965196966%_
                               _%e196419196548%_
                               _%hd196420196551%_
                               _%tl196421196553%_
                               _%e196422196556%_
                               _%hd196423196559%_
                               _%tl196424196561%_
                               _%__splice196906196907%_
                               _%target196448196482%_
                               _%tl196450196484%_)
                              (let ()
                                (declare (not safe))
                                (_%g196415196461%_)))))
                      (let () (declare (not safe)) (_%g196415196461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196424196561%_))
                                                      (let ((_%__splice196906196907%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl196424196561%_ '0))))
                (let ((_%tl196450196484%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196906196907%_ '1)))
                      (_%target196448196482%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196906196907%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196450196484%_))
                      (_%__match196965196966%_
                       _%e196419196548%_
                       _%hd196420196551%_
                       _%tl196421196553%_
                       _%e196422196556%_
                       _%hd196423196559%_
                       _%tl196424196561%_
                       _%__splice196906196907%_
                       _%target196448196482%_
                       _%tl196450196484%_)
                      (let () (declare (not safe)) (_%g196415196461%_)))))
              (let () (declare (not safe)) (_%g196415196461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl196424196561%_))
                                                  (let ((_%__splice196906196907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl196424196561%_
                                                            '0))))
                                                    (let ((_%tl196450196484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196906196907%_
                                                              '1)))
                                                          (_%target196448196482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196906196907%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196450196484%_))
                                                          (_%__match196965196966%_
                                                           _%e196419196548%_
                                                           _%hd196420196551%_
                                                           _%tl196421196553%_
                                                           _%e196422196556%_
                                                           _%hd196423196559%_
                                                           _%tl196424196561%_
                                                           _%__splice196906196907%_
                                                           _%target196448196482%_
                                                           _%tl196450196484%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196415196461%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g196415196461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl196424196561%_))
                                              (let ((_%__splice196906196907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl196424196561%_
                                                        '0))))
                                                (let ((_%tl196450196484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196906196907%_
                                                          '1)))
                                                      (_%target196448196482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196906196907%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196450196484%_))
                                                      (_%__match196965196966%_
                                                       _%e196419196548%_
                                                       _%hd196420196551%_
                                                       _%tl196421196553%_
                                                       _%e196422196556%_
                                                       _%hd196423196559%_
                                                       _%tl196424196561%_
                                                       _%__splice196906196907%_
                                                       _%target196448196482%_
                                                       _%tl196450196484%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196415196461%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g196415196461%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196424196561%_))
                                      (let ((_%__splice196906196907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196424196561%_
                                                '0))))
                                        (let ((_%tl196450196484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196906196907%_
                                                  '1)))
                                              (_%target196448196482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196906196907%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196450196484%_))
                                              (_%__match196965196966%_
                                               _%e196419196548%_
                                               _%hd196420196551%_
                                               _%tl196421196553%_
                                               _%e196422196556%_
                                               _%hd196423196559%_
                                               _%tl196424196561%_
                                               _%__splice196906196907%_
                                               _%target196448196482%_
                                               _%tl196450196484%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g196415196461%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196415196461%_))))))
                          (let () (declare (not safe)) (_%g196415196461%_)))))
                  (let () (declare (not safe)) (_%g196415196461%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self192790196371%_ _%ctx196373%_ _%stx196374%_ _%args196375%_)
        (let* ((_%self196377%_ _%self192790196371%_)
               (_%self196379%_ _%self196377%_))
          (if (let ((__method197547
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self196379%_ 'check-arguments))))
                (if __method197547
                    (let ()
                      (declare (not safe))
                      (__method197547
                       _%self196379%_
                       _%ctx196373%_
                       _%stx196374%_
                       _%args196375%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self196379%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature196389%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196379%_ '2 '#f '#f)))
                     (_%signature196391%_ _%signature196389%_)
                     (_%$e196401%_
                      (if _%signature196391%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196391%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e196401%_
                    ((lambda (_%unchecked196404%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked196404%_))
                           (let ((__tmp197569
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked196404%_
                                                          '()))
                                              (map (lambda (_%g196405196407%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx196373%_
                                                        _%g196405196407%_)))
                                                   _%args196375%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp197569
                              _%stx196374%_
                              _%ctx196373%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx196373%_ _%stx196374%_))))
                     _%$e196401%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx196373%_ _%stx196374%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx196373%_ _%stx196374%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass196831 __method-table196832)
        (let ((__check-arguments196833
               (let ((__tmp197570
                      (lambda ()
                        (let ((__method196834
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196832
                                  'check-arguments
                                  '#f))))
                          (if __method196834
                              __method196834
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197570))))
          (lambda (_%self192790196371%_
                   _%ctx196373%_
                   _%stx196374%_
                   _%args196375%_)
            (let* ((_%self196377%_ _%self192790196371%_)
                   (_%self196379%_ _%self196377%_))
              (if ((force __check-arguments196833)
                   _%self196379%_
                   _%ctx196373%_
                   _%stx196374%_
                   _%args196375%_)
                  (let* ((_%signature196389%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self196379%_
                             '2
                             '#f
                             '#f)))
                         (_%signature196391%_ _%signature196389%_)
                         (_%$e196401%_
                          (if _%signature196391%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature196391%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e196401%_
                        ((lambda (_%unchecked196404%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked196404%_))
                               (let ((__tmp197571
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked196404%_
                                                              '()))
                                                  (map (lambda (_%g196405196407%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx196373%_
                                                            _%g196405196407%_)))
                                                       _%args196375%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp197571
                                  _%stx196374%_
                                  _%ctx196373%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx196373%_
                                  _%stx196374%_))))
                         _%$e196401%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx196373%_ _%stx196374%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx196373%_ _%stx196374%_))))))))
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
      (lambda (_%self192791196120%_ _%ctx196122%_ _%stx196123%_ _%args196124%_)
        (let* ((_%self196126%_ _%self192791196120%_)
               (_%self196128%_ _%self196126%_)
               (_%signature196137196139%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196128%_ '2 '#f '#f))))
          (if _%signature196137196139%_
              (let* ((_%signature196142%_ _%signature196137196139%_)
                     (_%argument-types196143196145%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature196142%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types196143196145%_
                    (let* ((_%argument-types196148%_
                            _%argument-types196143196145%_)
                           (_%argument-types196153%_
                            (let ((__tmp197572
                                   (lambda (_%t196151%_)
                                     (if _%t196151%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196123%_
                                            _%t196151%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp197572
                               _%argument-types196148%_))))
                      (let _%loop196155%_ ((_%rest-args196157%_ _%args196124%_)
                                           (_%rest-types196158%_
                                            _%argument-types196153%_)
                                           (_%result196159%_ '#t))
                        (let* ((_%rest-args196160196168%_ _%rest-args196157%_)
                               (_%else196162196176%_
                                (lambda () _%result196159%_))
                               (_%K196164196237%_
                                (lambda (_%rest-args196179%_ _%arg196180%_)
                                  (let* ((_%rest-types196181196192%_
                                          _%rest-types196158%_)
                                         (_%E196185196196%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types196181196192%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K196188196225%_
                                           (lambda (_%rest-types196222%_
                                                    _%type196223%_)
                                             (_%loop196155%_
                                              _%rest-args196179%_
                                              _%rest-types196222%_
                                              (if (gxc#check-expression-type!
                                                   _%stx196123%_
                                                   _%arg196180%_
                                                   _%type196223%_)
                                                  _%result196159%_
                                                  '#f))))
                                          (_%K196187196216%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx196123%_
                                                _%argument-types196153%_))))
                                          (_%K196186196206%_
                                           (lambda (_%tail-type196200%_)
                                             (if (let ((__tmp197573
                                                        (lambda (_%g196201196203%_)
                                                          (gxc#check-expression-type!
                                                           _%stx196123%_
                                                           _%g196201196203%_
                                                           _%tail-type196200%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp197573
                                                    _%rest-args196179%_))
                                                 _%result196159%_
                                                 '#f))))
                                      (let ((_%try-match196183196219%_
                                             (lambda ()
                                               (if (null? _%rest-types196181196192%_)
                                                   (_%K196187196216%_)
                                                   (let ((_%tail-type196209%_
                                                          _%rest-types196181196192%_))
                                                     (_%K196186196206%_
                                                      _%tail-type196209%_))))))
                                        (if (pair? _%rest-types196181196192%_)
                                            (let ((_%tl196190196230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types196181196192%_)))
                                                  (_%hd196189196228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types196181196192%_))))
                                              (let ((_%type196233%_
                                                     _%hd196189196228%_)
                                                    (_%rest-types196235%_
                                                     _%tl196190196230%_))
                                                (_%K196188196225%_
                                                 _%rest-types196235%_
                                                 _%type196233%_)))
                                            (_%try-match196183196219%_))))))))
                          (if (pair? _%rest-args196160196168%_)
                              (let ((_%hd196165196240%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args196160196168%_)))
                                    (_%tl196166196242%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args196160196168%_))))
                                (let* ((_%arg196245%_ _%hd196165196240%_)
                                       (_%rest-args196247%_
                                        _%tl196166196242%_))
                                  (_%K196164196237%_
                                   _%rest-args196247%_
                                   _%arg196245%_)))
                              (_%else196162196176%_)))))
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
      (lambda (_%self192792195929%_ _%ctx195931%_ _%stx195932%_ _%args195933%_)
        (let* ((_%self195935%_ _%self192792195929%_)
               (_%self195937%_ _%self195935%_)
               (_%g195947195957%_
                (lambda (_%g195948195954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195948195954%_))))
               (_%g195946195995%_
                (lambda (_%g195948195960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195948195960%_))
                      (let ((_%e195950195962%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195948195960%_))))
                        (let ((_%hd195951195965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195950195962%_)))
                              (_%tl195952195967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195950195962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195952195967%_))
                              ((lambda (_%L195970%_)
                                 (let* ((_%klass195982%_
                                         (let ((__tmp197574
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195937%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195932%_
                                            __tmp197574)))
                                        (_%object195984%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195931%_
                                            _%L195970%_)))
                                        (_%instance?195989%_
                                         (let ((_%$e195986%_
                                                (gxc#expression-type?
                                                 _%object195984%_
                                                 _%klass195982%_)))
                                           (if _%$e195986%_
                                               _%$e195986%_
                                               (gxc#expression-type?
                                                _%L195970%_
                                                _%klass195982%_)))))
                                   (if _%instance?195989%_
                                       (let ((__tmp197575
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195984%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195970%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195984%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197575
                                          _%stx195932%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx195931%_
                                          _%stx195932%_)))))
                               _%hd195951195965%_)
                              (_%g195947195957%_ _%g195948195960%_))))
                      (_%g195947195957%_ _%g195948195960%_)))))
          (_%g195946195995%_ _%args195933%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self192793195723%_ _%ctx195725%_ _%stx195726%_ _%args195727%_)
        (let* ((_%self195729%_ _%self192793195723%_)
               (_%self195731%_ _%self195729%_)
               (_%g195741195751%_
                (lambda (_%g195742195748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195742195748%_))))
               (_%g195740195804%_
                (lambda (_%g195742195754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195742195754%_))
                      (let ((_%e195744195756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195742195754%_))))
                        (let ((_%hd195745195759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195744195756%_)))
                              (_%tl195746195761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195744195756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195746195761%_))
                              ((lambda (_%L195764%_)
                                 (let* ((_%klass195776%_
                                         (let ((__tmp197576
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195731%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195726%_
                                            __tmp197576)))
                                        (_%object195778%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195725%_
                                            _%L195764%_)))
                                        (_%instance?195783%_
                                         (let ((_%$e195780%_
                                                (gxc#expression-type?
                                                 _%object195778%_
                                                 _%klass195776%_)))
                                           (if _%$e195780%_
                                               _%$e195780%_
                                               (gxc#expression-type?
                                                _%L195764%_
                                                _%klass195776%_))))
                                        (_%klass195786%_ _%klass195776%_))
                                   (if _%instance?195783%_
                                       (let ((__tmp197577
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195778%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195764%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195778%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197577
                                          _%stx195726%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195786%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197578
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass195786%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object195778%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197578
                                              _%stx195726%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195786%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197579
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass195786%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object195778%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197579
                                                  _%stx195726%_))
                                               (let ((__tmp197580
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self195731%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object195778%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197580
                                                  _%stx195726%_)))))))
                               _%hd195745195759%_)
                              (_%g195741195751%_ _%g195742195754%_))))
                      (_%g195741195751%_ _%g195742195754%_)))))
          (_%g195740195804%_ _%args195727%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx195386%_)
        (let* ((_%__stx196975196976%_ _%stx195386%_)
               (_%g195391195432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196975196976%_)))))
          (let ((_%__kont196977196978%_ (lambda () '#t))
                (_%__kont196979196980%_ (lambda () '#t))
                (_%__kont196981196982%_
                 (lambda (_%L195500%_ _%L195501%_)
                   (let ((_%rator-type195522195524%_
                          (let ((__tmp197581
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L195501%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp197581))))
                     (if _%rator-type195522195524%_
                         (let* ((_%rator-type195527%_
                                 _%rator-type195522195524%_)
                                (_%rator-signature195528195530%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type195527%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type195527%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature195528195530%_
                               (let* ((_%rator-signature195533%_
                                       _%rator-signature195528195530%_)
                                      (_%rator-effect195534195536%_
                                       (if _%rator-signature195533%_
                                           (##direct-structure-ref
                                            _%rator-signature195533%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect195534195536%_
                                     (let ((_%rator-effect195539%_
                                            _%rator-effect195534195536%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect195539%_)
                                               (equal? '(alloc)
                                                       _%rator-effect195539%_))
                                           (let ((__tmp197582
                                                  (let ((__tmp197583
                                                         (lambda (_%g195544195547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195545195549%_)
                   (cons _%g195544195547%_ _%g195545195549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp197583
                                                     '()
                                                     _%L195500%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp197582))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont196985196986%_ (lambda () '#f)))
            (let ((_%__match197064197065%_
                   (lambda (_%e195407195444%_
                            _%hd195408195447%_
                            _%tl195409195449%_
                            _%e195410195452%_
                            _%hd195411195455%_
                            _%tl195412195457%_
                            _%e195413195460%_
                            _%hd195414195463%_
                            _%tl195415195465%_
                            _%e195416195468%_
                            _%hd195417195471%_
                            _%tl195418195473%_
                            _%__splice196983196984%_
                            _%target195419195476%_
                            _%tl195421195478%_)
                     (letrec ((_%loop195422195481%_
                               (lambda (_%hd195420195484%_
                                        _%rand195426195486%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195420195484%_))
                                     (let ((_%e195423195489%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195420195484%_))))
                                       (let ((_%lp-tl195425195494%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195423195489%_)))
                                             (_%lp-hd195424195492%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195423195489%_))))
                                         (_%loop195422195481%_
                                          _%lp-tl195425195494%_
                                          (cons _%lp-hd195424195492%_
                                                _%rand195426195486%_))))
                                     (let ((_%rand195427195497%_
                                            (reverse _%rand195426195486%_)))
                                       (_%__kont196981196982%_
                                        _%rand195427195497%_
                                        _%hd195417195471%_))))))
                       (_%loop195422195481%_ _%target195419195476%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196975196976%_))
                  (let ((_%e195393195580%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196975196976%_))))
                    (let ((_%tl195395195585%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195393195580%_)))
                          (_%hd195394195583%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195393195580%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd195394195583%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd195394195583%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195395195585%_))
                                  (let ((_%e195396195588%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195395195585%_))))
                                    (let ((_%tl195398195593%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195396195588%_)))
                                          (_%hd195397195591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195396195588%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195398195593%_))
                                          (_%__kont196977196978%_)
                                          (_%__kont196985196986%_))))
                                  (_%__kont196985196986%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd195394195583%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195395195585%_))
                                      (let ((_%e195402195565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195395195585%_))))
                                        (let ((_%tl195404195570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195402195565%_)))
                                              (_%hd195403195568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195402195565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195404195570%_))
                                              (_%__kont196979196980%_)
                                              (_%__kont196985196986%_))))
                                      (_%__kont196985196986%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd195394195583%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195395195585%_))
                                          (let ((_%e195410195452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl195395195585%_))))
                                            (let ((_%tl195412195457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195410195452%_)))
                                                  (_%hd195411195455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195410195452%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd195411195455%_))
                                                  (let ((_%e195413195460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd195411195455%_))))
                                                    (let ((_%tl195415195465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195413195460%_)))
                                                          (_%hd195414195463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195413195460%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd195414195463%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd195414195463%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195415195465%_))
                          (let ((_%e195416195468%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195415195465%_))))
                            (let ((_%tl195418195473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195416195468%_)))
                                  (_%hd195417195471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195416195468%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195418195473%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195412195457%_))
                                      (let ((_%__splice196983196984%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195412195457%_
                                                '0))))
                                        (let ((_%tl195421195478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196983196984%_
                                                  '1)))
                                              (_%target195419195476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196983196984%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195421195478%_))
                                              (_%__match197064197065%_
                                               _%e195393195580%_
                                               _%hd195394195583%_
                                               _%tl195395195585%_
                                               _%e195410195452%_
                                               _%hd195411195455%_
                                               _%tl195412195457%_
                                               _%e195413195460%_
                                               _%hd195414195463%_
                                               _%tl195415195465%_
                                               _%e195416195468%_
                                               _%hd195417195471%_
                                               _%tl195418195473%_
                                               _%__splice196983196984%_
                                               _%target195419195476%_
                                               _%tl195421195478%_)
                                              (_%__kont196985196986%_))))
                                      (_%__kont196985196986%_))
                                  (_%__kont196985196986%_))))
                          (_%__kont196985196986%_))
                      (_%__kont196985196986%_))
                  (_%__kont196985196986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont196985196986%_))))
                                          (_%__kont196985196986%_))
                                      (_%__kont196985196986%_))))
                          (_%__kont196985196986%_))))
                  (_%__kont196985196986%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx195381%_ _%klass195382%_)
        (let ((_%expr-type195384%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx195381%_))))
          (if _%expr-type195384%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type195384%_ _%klass195382%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx195359%_ _%expr195360%_ _%type195361%_)
        (if (not _%type195361%_)
            '#f
            (let ((_%$e195364%_
                   (eq? (##structure-ref _%type195361%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e195364%_
                  _%$e195364%_
                  (let ((_%expr-type195368%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr195360%_))))
                    (if (not _%expr-type195368%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type195368%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e195372%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type195368%_
                                      'gxc#!abort::t))))
                              (if _%$e195372%_
                                  _%$e195372%_
                                  (let ((_%$e195375%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type195368%_
                                            _%type195361%_))))
                                    (if _%$e195375%_
                                        _%$e195375%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type195361%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type195361%_
                                                   _%expr-type195368%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx195359%_
                                                   _%expr195360%_
                                                   _%expr-type195368%_
                                                   _%type195361%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self192794195171%_ _%ctx195173%_ _%stx195174%_ _%args195175%_)
        (let* ((_%self195177%_ _%self192794195171%_)
               (_%self195179%_ _%self195177%_)
               (_%klass195189%_
                (let ((__tmp197584
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195179%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx195174%_ __tmp197584)))
               (_%fields195191%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195189%_
                           '5
                           '#f
                           '#f))))
               (_%args195197%_
                (map (lambda (_%g195192195194%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx195173%_ _%g195192195194%_)))
                     _%args195175%_))
               (_%inline-make-object195199%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self195179%_
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
                           _%self195179%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields195191%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass195202%_ _%klass195189%_)
               (_%$e195216%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass195202%_ '6 '#f '#f))))
          (if _%$e195216%_
              ((lambda (_%ctor195219%_)
                 (let ((_%$obj195221%_
                        (let ((__tmp197585
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp197585)))
                       (_%ctor-impl195222%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass195202%_
                           _%ctor195219%_))))
                   (let ((__tmp197586
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195221%_ '())
                                                  (cons _%inline-make-object195199%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl195222%_
                                                            (let ((__tmp197587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl195222%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj195221%_ '()))
                                             _%args195197%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp197587
                       _%stx195174%_
                       _%ctx195173%_))
                    (let ((_%$ctor195224%_
                           (let ((__tmp197588
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197588))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor195224%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195179%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj195221%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor195219%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor195224%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor195224%_ '()))
                              (cons (cons '%#ref (cons _%$obj195221%_ '()))
                                    _%args195197%_)))
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
                             _%self195179%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor195219%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj195221%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp197586 _%stx195174%_))))
               _%$e195216%_)
              (let ((_%$e195226%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass195202%_
                        '10
                        '#f
                        '#f))))
                (if _%$e195226%_
                    ((lambda (_%metaclass195229%_)
                       (let* ((_%$obj195231%_
                               (let ((__tmp197589
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197589)))
                              (_%metakons195233%_
                               (let ((__tmp197590
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx195174%_
                                         _%metaclass195229%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp197590
                                  'instance-init!)))
                              (__tmp197591
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj195231%_
                                                             '())
                                                       (cons _%inline-make-object195199%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons195233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp197592
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons195233%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self195179%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args195197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp197592
                            _%stx195174%_
                            _%ctx195173%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195179%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj195231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args195197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj195231%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp197591 _%stx195174%_)))
                     _%$e195226%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195202%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp197593
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args195197%_))))
                              (declare (not safe))
                              (##fx= __tmp197593 _%fields195191%_))
                            (let ((__tmp197594
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self195179%_
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
                                              _%self195179%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args195197%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp197594
                               _%stx195174%_))
                            (let ((__tmp197596
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self195179%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp197595
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195202%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx195174%_
                               __tmp197596
                               __tmp197595)))
                        (let ((_%$obj195238%_
                               (let ((__tmp197597
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197597))))
                          (let _%lp195240%_ ((_%rest195242%_ _%args195197%_)
                                             (_%initializers195243%_ '()))
                            (let* ((_%__stx197067197068%_ _%rest195242%_)
                                   (_%g195247195268%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx197067197068%_)))))
                              (let ((_%__kont197069197070%_
                                     (lambda (_%L195322%_
                                              _%L195323%_
                                              _%L195324%_)
                                       (let* ((_%slot195351%_
                                               (let ((__tmp197598
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L195324%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp197598)))
                                              (_%off195353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass195202%_
                                                  _%slot195351%_))))
                                         (if _%off195353%_
                                             (_%lp195240%_
                                              _%L195322%_
                                              (cons (cons _%off195353%_
                                                          _%L195323%_)
                                                    _%initializers195243%_))
                                             (let ((__tmp197599
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195179%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx195174%_
                                                __tmp197599
                                                _%slot195351%_))))))
                                    (_%__kont197071197072%_
                                     (lambda ()
                                       (let ((__tmp197600
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj195238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195199%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp197603
                                     (cons (cons '%#ref
                                                 (cons _%$obj195238%_ '()))
                                           '()))
                                    (__tmp197601
                                     (let ((__tmp197602
                                            (lambda (_%i195282%_ _%r195283%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195179%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i195282%_) '()))
                              (cons (cons '%#ref (cons _%$obj195238%_ '()))
                                    (cons (cdr _%i195282%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r195283%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp197602
                                        '()
                                        _%initializers195243%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp197603 __tmp197601)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197600
                                          _%stx195174%_))))
                                    (_%__kont197073197074%_
                                     (lambda ()
                                       (let ((__tmp197604
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj195238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195199%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args195197%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj195238%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197604
                                          _%stx195174%_)))))
                                (let* ((_%g195245195285%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx197067197068%_))
                                              (_%__kont197071197072%_)
                                              (_%__kont197073197074%_))))
                                       (_%__match197104197105%_
                                        (lambda (_%e195252195290%_
                                                 _%hd195253195293%_
                                                 _%tl195254195295%_
                                                 _%e195255195298%_
                                                 _%hd195256195301%_
                                                 _%tl195257195303%_
                                                 _%e195258195306%_
                                                 _%hd195259195309%_
                                                 _%tl195260195311%_
                                                 _%e195261195314%_
                                                 _%hd195262195317%_
                                                 _%tl195263195319%_)
                                          (let ((_%L195322%_
                                                 _%tl195263195319%_)
                                                (_%L195323%_
                                                 _%hd195262195317%_)
                                                (_%L195324%_
                                                 _%hd195259195309%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L195324%_))
                                                (_%__kont197069197070%_
                                                 _%L195322%_
                                                 _%L195323%_
                                                 _%L195324%_)
                                                (_%__kont197073197074%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx197067197068%_))
                                      (let ((_%e195252195290%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx197067197068%_))))
                                        (let ((_%tl195254195295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195252195290%_)))
                                              (_%hd195253195293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195252195290%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd195253195293%_))
                                              (let ((_%e195255195298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd195253195293%_))))
                                                (let ((_%tl195257195303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195255195298%_)))
                                                      (_%hd195256195301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195255195298%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd195256195301%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd195256195301%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl195257195303%_))
                      (let ((_%e195258195306%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl195257195303%_))))
                        (let ((_%tl195260195311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195258195306%_)))
                              (_%hd195259195309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195258195306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195260195311%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195254195295%_))
                                  (let ((_%e195261195314%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195254195295%_))))
                                    (let ((_%tl195263195319%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195261195314%_)))
                                          (_%hd195262195317%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195261195314%_))))
                                      (_%__match197104197105%_
                                       _%e195252195290%_
                                       _%hd195253195293%_
                                       _%tl195254195295%_
                                       _%e195255195298%_
                                       _%hd195256195301%_
                                       _%tl195257195303%_
                                       _%e195258195306%_
                                       _%hd195259195309%_
                                       _%tl195260195311%_
                                       _%e195261195314%_
                                       _%hd195262195317%_
                                       _%tl195263195319%_)))
                                  (_%__kont197073197074%_))
                              (_%__kont197073197074%_))))
                      (_%__kont197073197074%_))
                  (_%__kont197073197074%_))
              (_%__kont197073197074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197073197074%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g195245195285%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self192795194952%_ _%ctx194954%_ _%stx194955%_ _%args194956%_)
        (let* ((_%self194958%_ _%self192795194952%_)
               (_%self194960%_ _%self194958%_)
               (_%arguments-ok?194970%_
                (let ((__method197548
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194960%_ 'check-arguments))))
                  (if __method197548
                      (let ()
                        (declare (not safe))
                        (__method197548
                         _%self194960%_
                         _%ctx194954%_
                         _%stx194955%_
                         _%args194956%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194960%_
                                 'check-arguments))
                        '#!void))))
               (_%g194972194982%_
                (lambda (_%g194973194979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194973194979%_))))
               (_%g194971195046%_
                (lambda (_%g194973194985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194973194985%_))
                      (let ((_%e194975194987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194973194985%_))))
                        (let ((_%hd194976194990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194975194987%_)))
                              (_%tl194977194992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194975194987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194977194992%_))
                              ((lambda (_%L194995%_)
                                 (let* ((_%klass195008%_
                                         (let ((__tmp197605
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194960%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194955%_
                                            __tmp197605)))
                                        (_%field195010%_
                                         (let ((__tmp197606
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194960%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass195008%_
                                            __tmp197606)))
                                        (_%object195012%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194954%_
                                            _%L194995%_)))
                                        (_%klass195015%_ _%klass195008%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass195015%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp197607
                                              (cons (if (or _%arguments-ok?194970%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194960%_
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
                                 _%self194960%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field195010%_ '()))
                        (cons _%object195012%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197607
                                          _%stx194955%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195015%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp197608
                                                  (cons (if (or _%arguments-ok?194970%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194960%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194960%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195010%_ '()))
                            (cons _%object195012%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197608
                                              _%stx194955%_))
                                           (let ((_%$e195034%_
                                                  (let ((__tmp197609
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194960%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass195015%_
                                                     __tmp197609))))
                                             (if _%$e195034%_
                                                 ((lambda (_%klass195037%_)
                                                    (let ((__tmp197610
                                                           (cons (if (or _%arguments-ok?194970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194960%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self194960%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field195010%_ '()))
                                     (cons _%object195012%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp197610 _%stx194955%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e195034%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self194960%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp197611
                                                            (let ((_%$obj195043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp197612
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197612))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj195043%_ '())
                                              (cons _%object195012%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass195015%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj195043%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194960%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195010%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195043%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?194970%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195043%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194960%_
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
                                                             _%self194960%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj195043%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self194960%_
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
               (gxc#xform-wrap-source __tmp197611 _%stx194955%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp197613
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object195012%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194960%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp197613 _%stx194955%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd194976194990%_)
                              (_%g194972194982%_ _%g194973194985%_))))
                      (_%g194972194982%_ _%g194973194985%_)))))
          (_%g194971195046%_ _%args194956%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass196835 __method-table196836)
        (let ((__check-arguments196837
               (let ((__tmp197614
                      (lambda ()
                        (let ((__method196838
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196836
                                  'check-arguments
                                  '#f))))
                          (if __method196838
                              __method196838
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197614)))
              (__slot196839
               (let ((__slot196840
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass196835 'slot))))
                 (if __slot196840
                     __slot196840
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self192795194952%_
                   _%ctx194954%_
                   _%stx194955%_
                   _%args194956%_)
            (let* ((_%self194958%_ _%self192795194952%_)
                   (_%self194960%_ _%self194958%_)
                   (_%arguments-ok?194970%_
                    ((force __check-arguments196837)
                     _%self194960%_
                     _%ctx194954%_
                     _%stx194955%_
                     _%args194956%_))
                   (_%g194972194982%_
                    (lambda (_%g194973194979%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194973194979%_))))
                   (_%g194971195046%_
                    (lambda (_%g194973194985%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194973194985%_))
                          (let ((_%e194975194987%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194973194985%_))))
                            (let ((_%hd194976194990%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194975194987%_)))
                                  (_%tl194977194992%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194975194987%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194977194992%_))
                                  ((lambda (_%L194995%_)
                                     (let* ((_%klass195008%_
                                             (let ((__tmp197615
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194960%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx194955%_
                                                __tmp197615)))
                                            (_%field195010%_
                                             (let ((__tmp197616
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194960%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass195008%_
                                                __tmp197616)))
                                            (_%object195012%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx194954%_
                                                _%L194995%_)))
                                            (_%klass195015%_ _%klass195008%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195015%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197617
                                                  (cons (if (or _%arguments-ok?194970%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194960%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194960%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195010%_ '()))
                            (cons _%object195012%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197617
                                              _%stx194955%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195015%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197618
                                                      (cons (if (or _%arguments-ok?194970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194960%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194960%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195010%_ '()))
                                (cons _%object195012%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197618
                                                  _%stx194955%_))
                                               (let ((_%$e195034%_
                                                      (let ((__tmp197619
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self194960%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass195015%_ __tmp197619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e195034%_
                                                     ((lambda (_%klass195037%_)
                                                        (let ((__tmp197620
                                                               (cons (if (or _%arguments-ok?194970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194960%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self194960%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field195010%_ '()))
                                         (cons _%object195012%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp197620 _%stx194955%_)))
              _%$e195034%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194960%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp197621
                                                                (let ((_%$obj195043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp197622
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197622))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195043%_ '())
                                                  (cons _%object195012%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass195015%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj195043%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194960%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195010%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195043%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?194970%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195043%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194960%_
                               __slot196839
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
                        (##unchecked-structure-ref _%self194960%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194960%_
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
                   (gxc#xform-wrap-source __tmp197621 _%stx194955%_))
                 (let ((__tmp197623
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object195012%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194960%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp197623 _%stx194955%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194976194990%_)
                                  (_%g194972194982%_ _%g194973194985%_))))
                          (_%g194972194982%_ _%g194973194985%_)))))
              (_%g194971195046%_ _%args194956%_))))))
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
      (lambda (_%self192796194714%_ _%ctx194716%_ _%stx194717%_ _%args194718%_)
        (let* ((_%self194720%_ _%self192796194714%_)
               (_%self194722%_ _%self194720%_)
               (_%arguments-ok?194732%_
                (let ((__method197549
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194722%_ 'check-arguments))))
                  (if __method197549
                      (let ()
                        (declare (not safe))
                        (__method197549
                         _%self194722%_
                         _%ctx194716%_
                         _%stx194717%_
                         _%args194718%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194722%_
                                 'check-arguments))
                        '#!void))))
               (_%g194734194748%_
                (lambda (_%g194735194745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194735194745%_))))
               (_%g194733194827%_
                (lambda (_%g194735194751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194735194751%_))
                      (let ((_%e194738194753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194735194751%_))))
                        (let ((_%hd194739194756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194738194753%_)))
                              (_%tl194740194758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194738194753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194740194758%_))
                              (let ((_%e194741194761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194740194758%_))))
                                (let ((_%hd194742194764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194741194761%_)))
                                      (_%tl194743194766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194741194761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194743194766%_))
                                      ((lambda (_%L194769%_ _%L194770%_)
                                         (let* ((_%klass194786%_
                                                 (let ((__tmp197624
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194722%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx194717%_
                                                    __tmp197624)))
                                                (_%field194788%_
                                                 (let ((__tmp197625
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194722%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass194786%_
                                                    __tmp197625)))
                                                (_%object194790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194716%_
                                                    _%L194770%_)))
                                                (_%value194792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194716%_
                                                    _%L194769%_)))
                                                (_%klass194795%_
                                                 _%klass194786%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194795%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197626
                                                      (cons (if (or _%arguments-ok?194732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194722%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194722%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194788%_ '()))
                                (cons _%object194790%_
                                      (cons _%value194792%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197626
                                                  _%stx194717%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194795%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197627
                                                          (cons (if (or _%arguments-ok?194732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194722%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194722%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194788%_ '()))
                                    (cons _%object194790%_
                                          (cons _%value194792%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197627
                                                      _%stx194717%_))
                                                   (let ((_%$e194815%_
                                                          (let ((__tmp197628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194722%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass194795%_
                     __tmp197628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e194815%_
                                                         ((lambda (_%klass194818%_)
                                                            (let ((__tmp197629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?194732%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194722%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self194722%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field194788%_ '()))
                                             (cons _%object194790%_
                                                   (cons _%value194792%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197629 _%stx194717%_)))
                  _%$e194815%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self194722%_ '4 '#f '#f))
                     (let ((__tmp197630
                            (let ((_%$obj194824%_
                                   (let ((__tmp197631
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp197631))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj194824%_ '())
                                                      (cons _%object194790%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass194795%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj194824%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194722%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field194788%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194824%_
                                                              '()))
                                                  (cons _%value194792%_
                                                        '())))))
                          (cons (if _%arguments-ok?194732%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self194722%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value194792%_ '())))))
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
                             _%self194722%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj194824%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194722%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value194792%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp197630 _%stx194717%_))
                     (let ((__tmp197632
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object194790%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194722%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value194792%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp197632
                        _%stx194717%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd194742194764%_
                                       _%hd194739194756%_)
                                      (_%g194734194748%_ _%g194735194751%_))))
                              (_%g194734194748%_ _%g194735194751%_))))
                      (_%g194734194748%_ _%g194735194751%_)))))
          (_%g194733194827%_ _%args194718%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass196841 __method-table196842)
        (let ((__check-arguments196843
               (let ((__tmp197633
                      (lambda ()
                        (let ((__method196844
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196842
                                  'check-arguments
                                  '#f))))
                          (if __method196844
                              __method196844
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197633))))
          (lambda (_%self192796194714%_
                   _%ctx194716%_
                   _%stx194717%_
                   _%args194718%_)
            (let* ((_%self194720%_ _%self192796194714%_)
                   (_%self194722%_ _%self194720%_)
                   (_%arguments-ok?194732%_
                    ((force __check-arguments196843)
                     _%self194722%_
                     _%ctx194716%_
                     _%stx194717%_
                     _%args194718%_))
                   (_%g194734194748%_
                    (lambda (_%g194735194745%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194735194745%_))))
                   (_%g194733194827%_
                    (lambda (_%g194735194751%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194735194751%_))
                          (let ((_%e194738194753%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194735194751%_))))
                            (let ((_%hd194739194756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194738194753%_)))
                                  (_%tl194740194758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194738194753%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194740194758%_))
                                  (let ((_%e194741194761%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194740194758%_))))
                                    (let ((_%hd194742194764%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194741194761%_)))
                                          (_%tl194743194766%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194741194761%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194743194766%_))
                                          ((lambda (_%L194769%_ _%L194770%_)
                                             (let* ((_%klass194786%_
                                                     (let ((__tmp197634
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194722%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194717%_
                                                        __tmp197634)))
                                                    (_%field194788%_
                                                     (let ((__tmp197635
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194722%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass194786%_
                                                        __tmp197635)))
                                                    (_%object194790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194716%_
                                                        _%L194770%_)))
                                                    (_%value194792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194716%_
                                                        _%L194769%_)))
                                                    (_%klass194795%_
                                                     _%klass194786%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194795%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197636
                                                          (cons (if (or _%arguments-ok?194732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194722%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194722%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194788%_ '()))
                                    (cons _%object194790%_
                                          (cons _%value194792%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197636
                                                      _%stx194717%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass194795%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp197637
                                                              (cons (if (or _%arguments-ok?194732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self194722%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194722%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194788%_ '()))
                                        (cons _%object194790%_
                                              (cons _%value194792%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp197637 _%stx194717%_))
               (let ((_%$e194815%_
                      (let ((__tmp197638
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194722%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass194795%_
                         __tmp197638))))
                 (if _%$e194815%_
                     ((lambda (_%klass194818%_)
                        (let ((__tmp197639
                               (cons (if (or _%arguments-ok?194732%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194722%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194722%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field194788%_
                                                             '()))
                                                 (cons _%object194790%_
                                                       (cons _%value194792%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp197639 _%stx194717%_)))
                      _%$e194815%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194722%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp197640
                                (let ((_%$obj194824%_
                                       (let ((__tmp197641
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp197641))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj194824%_
                                                                '())
                                                          (cons _%object194790%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass194795%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194824%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self194722%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field194788%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value194792%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?194732%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj194824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194722%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value194792%_ '())))))
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
                                 _%self194722%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj194824%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194722%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value194792%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197640 _%stx194717%_))
                         (let ((__tmp197642
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object194790%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194722%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value194792%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp197642
                            _%stx194717%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd194742194764%_
                                           _%hd194739194756%_)
                                          (_%g194734194748%_
                                           _%g194735194751%_))))
                                  (_%g194734194748%_ _%g194735194751%_))))
                          (_%g194734194748%_ _%g194735194751%_)))))
              (_%g194733194827%_ _%args194718%_))))))
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
      (lambda (_%self192797194527%_ _%ctx194529%_ _%stx194530%_ _%args194531%_)
        (let* ((_%self194533%_ _%self192797194527%_)
               (_%self194535%_ _%self194533%_)
               (_%self194544194554%_ _%self194535%_)
               (_%E194546194558%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194544194554%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K194547194568%_
                (lambda (_%inline194561%_ _%dispatch194562%_ _%arity194563%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self194535%_
                         _%args194531%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx194530%_
                         _%arity194563%_)))
                  (if _%inline194561%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp197643 (_%inline194561%_ _%stx194530%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp197643
                           _%stx194530%_
                           _%ctx194529%_)))
                      (if (and _%dispatch194562%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch194562%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch194562%_))
                            (let ((__tmp197644
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch194562%_
                                                           '()))
                                               _%args194531%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp197644
                               _%stx194530%_
                               _%ctx194529%_)))
                          (gxc#!procedure::optimize-call
                           _%self194535%_
                           _%ctx194529%_
                           _%stx194530%_
                           _%args194531%_)))))
               (_%e194548194571%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194544194554%_ '1 '#f '#f)))
               (_%e194549194574%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194544194554%_ '2 '#f '#f)))
               (_%e194550194577%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194544194554%_ '3 '#f '#f)))
               (_%arity194580%_ _%e194550194577%_)
               (_%e194551194582%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194544194554%_ '4 '#f '#f)))
               (_%dispatch194585%_ _%e194551194582%_)
               (_%e194552194587%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194544194554%_ '5 '#f '#f)))
               (_%inline194590%_ _%e194552194587%_))
          (_%K194547194568%_
           _%inline194590%_
           _%dispatch194585%_
           _%arity194580%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self192798194377%_ _%ctx194379%_ _%stx194380%_ _%args194381%_)
        (let* ((_%self194383%_ _%self192798194377%_)
               (_%self194385%_ _%self194383%_)
               (_%$e194399%_
                (let ((__tmp197646
                       (lambda (_%g194394194396%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g194394194396%_
                            _%args194381%_))))
                      (__tmp197645
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194385%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp197646 __tmp197645))))
          (if _%$e194399%_
              ((lambda (_%clause194402%_)
                 (let ((__method197550
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause194402%_ 'optimize-call))))
                   (if __method197550
                       (let ()
                         (declare (not safe))
                         (__method197550
                          _%clause194402%_
                          _%ctx194379%_
                          _%stx194380%_
                          _%args194381%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause194402%_
                                  'optimize-call))
                         '#!void))))
               _%$e194399%_)
              (let ((__tmp197647
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194385%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx194380%_
                 __tmp197647))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self192799194115%_ _%ctx194117%_ _%stx194118%_ _%args194119%_)
        (let* ((_%self194121%_ _%self192799194115%_)
               (_%self194123%_ _%self194121%_)
               (_%self194132194141%_ _%self194123%_)
               (_%E194134194145%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194132194141%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K194135194236%_
                (lambda (_%dispatch194148%_ _%table194149%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch194148%_))
                      (let* ((_%g194150194160%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch194148%_)))
                             (_%else194152194168%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch194148%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx194117%_
                                   _%stx194118%_))))
                             (_%K194154194217%_
                              (lambda (_%main194171%_ _%keys194172%_)
                                (let ((_g197648_
                                       (gxc#!kw-lambda-split-args
                                        _%stx194118%_
                                        _%args194119%_)))
                                  (begin
                                    (let ((_g197649_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g197648_)
                                                 (##values-length _g197648_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g197649_ 2)))
                                          (error "Context expects 2 values"
                                                 _g197649_)))
                                    (let ((_%pargs194174%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g197648_ 0)))
                                          (_%kwargs194175%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g197648_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main194171%_))
                                        (if _%table194149%_
                                            (let ((_%xargs194183%_
                                                   (map (lambda (_%key194177%_)
                                                          (let ((_%$e194179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key194177%_ _%kwargs194175%_))))
                    (if _%$e194179%_ _%$e194179%_ '(%#ref absent-value))))
                _%keys194172%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw194185%_)
                                                 (if (memq (car _%kw194185%_)
                                                           _%keys194172%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx194118%_
                                                        _%keys194172%_
                                                        _%kw194185%_))))
                                               _%kwargs194175%_)
                                              (let ((__tmp197650
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main194171%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs194174%_
                                  _%xargs194183%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp197650
                                                 _%stx194118%_
                                                 _%ctx194117%_)))
                                            (let* ((_%kwt194187%_
                                                    (let ((__tmp197651
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp197651)))
                                                   (_%kwvars194191%_
                                                    (map (lambda (_%_194189%_)
                                                           (let ((__tmp197652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp197652)))
                 _%kwargs194175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind194196%_
                                                    (map (lambda (_%kw194193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194194%_)
                   (cons (cons _%kwvar194194%_ '())
                         (cons (cdr _%kw194193%_) '())))
                 _%kwargs194175%_
                 _%kwvars194191%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset194201%_
                                                    (map (lambda (_%kw194198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194199%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt194187%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw194198%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar194199%_
                                                             '()))
                                                 '()))))))
                 _%kwargs194175%_
                 _%kwvars194191%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs194206%_
                                                    (map (lambda (_%kw194203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194204%_)
                   (cons (car _%kw194203%_)
                         (cons '%#ref (cons _%kwvar194204%_ '()))))
                 _%kwargs194175%_
                 _%kwvars194191%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs194214%_
                                                    (map (lambda (_%key194208%_)
                                                           (let ((_%$e194210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key194208%_ _%xkwargs194206%_))))
                     (if _%$e194210%_ _%$e194210%_ '(%#ref absent-value))))
                 _%keys194172%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp197653
                                                    (cons '%#let-values
                                                          (cons _%kwbind194196%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt194187%_ '())
                                                      (cons (let ((__tmp197654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs194175%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197654 _%stx194118%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp197655
                                                             (cons (let ((__tmp197656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main194171%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt194187%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs194174%_
                                                       _%xargs194214%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp197656 _%stx194118%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp197655 _%kwset194201%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp197653
                                               _%stx194118%_
                                               _%ctx194117%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g194150194160%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e194155194220%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194150194160%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e194156194223%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194150194160%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e194157194226%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194150194160%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys194229%_ _%e194157194226%_)
                                   (_%e194158194231%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194150194160%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main194234%_ _%e194158194231%_))
                              (_%K194154194217%_
                               _%main194234%_
                               _%keys194229%_))
                            (_%else194152194168%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx194117%_ _%stx194118%_)))))
               (_%e194136194239%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194132194141%_ '1 '#f '#f)))
               (_%e194137194242%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194132194141%_ '2 '#f '#f)))
               (_%e194138194245%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194132194141%_ '3 '#f '#f)))
               (_%table194248%_ _%e194138194245%_)
               (_%e194139194250%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194132194141%_ '4 '#f '#f)))
               (_%dispatch194253%_ _%e194139194250%_))
          (_%K194135194236%_ _%dispatch194253%_ _%table194248%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx193728%_ _%args193729%_)
        (let _%lp193731%_ ((_%rest193733%_ _%args193729%_)
                           (_%pargs193734%_ '())
                           (_%kwargs193735%_ '()))
          (let* ((_%__stx197109197110%_ _%rest193733%_)
                 (_%g193741193793%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197109197110%_)))))
            (let ((_%__kont197111197112%_
                   (lambda (_%L193972%_ _%L193973%_)
                     (_%lp193731%_
                      _%L193972%_
                      (cons _%L193973%_ _%pargs193734%_)
                      _%kwargs193735%_)))
                  (_%__kont197113197114%_
                   (lambda (_%L193918%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L193918%_ _%pargs193734%_))
                             (reverse _%kwargs193735%_))))
                  (_%__kont197115197116%_
                   (lambda (_%L193865%_ _%L193866%_ _%L193867%_)
                     (let ((_%kw193884%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L193867%_))))
                       (if (assq _%kw193884%_ _%kwargs193735%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx193728%_
                              _%kw193884%_))
                           (_%lp193731%_
                            _%L193865%_
                            _%pargs193734%_
                            (cons (cons _%kw193884%_ _%L193866%_)
                                  _%kwargs193735%_))))))
                  (_%__kont197117197118%_
                   (lambda (_%L193813%_ _%L193814%_)
                     (_%lp193731%_
                      _%L193813%_
                      (cons _%L193814%_ _%pargs193734%_)
                      _%kwargs193735%_)))
                  (_%__kont197119197120%_
                   (lambda ()
                     (values (reverse _%pargs193734%_)
                             (reverse _%kwargs193735%_)))))
              (let ((_%__match197216197217%_
                     (lambda (_%e193772193833%_
                              _%hd193773193836%_
                              _%tl193774193838%_
                              _%e193775193841%_
                              _%hd193776193844%_
                              _%tl193777193846%_
                              _%e193778193849%_
                              _%hd193779193852%_
                              _%tl193780193854%_
                              _%e193781193857%_
                              _%hd193782193860%_
                              _%tl193783193862%_)
                       (let ((_%L193865%_ _%tl193783193862%_)
                             (_%L193866%_ _%hd193782193860%_)
                             (_%L193867%_ _%hd193779193852%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L193867%_))
                             (_%__kont197115197116%_
                              _%L193865%_
                              _%L193866%_
                              _%L193867%_)
                             (_%__kont197117197118%_
                              _%tl193774193838%_
                              _%hd193773193836%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197109197110%_))
                    (let ((_%e193745193937%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197109197110%_))))
                      (let ((_%tl193747193942%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193745193937%_)))
                            (_%hd193746193940%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193745193937%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193746193940%_))
                            (let ((_%e193748193945%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193746193940%_))))
                              (let ((_%tl193750193950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193748193945%_)))
                                    (_%hd193749193948%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193748193945%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193749193948%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193749193948%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193750193950%_))
                                            (let ((_%e193751193953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193750193950%_))))
                                              (let ((_%tl193753193958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193751193953%_)))
                                                    (_%hd193752193956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193751193953%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd193752193956%_))
                                                    (let ((_%e193754193961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd193752193956%_))))
                                                      (if (equal? _%e193754193961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193753193958%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193747193942%_))
                          (let ((_%e193755193964%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193747193942%_))))
                            (let ((_%tl193757193969%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193755193964%_)))
                                  (_%hd193756193967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193755193964%_))))
                              (_%__kont197111197112%_
                               _%tl193757193969%_
                               _%hd193756193967%_)))
                          (_%__kont197117197118%_
                           _%tl193747193942%_
                           _%hd193746193940%_))
                      (_%__kont197117197118%_
                       _%tl193747193942%_
                       _%hd193746193940%_))
                  (if (equal? _%e193754193961%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193753193958%_))
                          (_%__kont197113197114%_ _%tl193747193942%_)
                          (_%__kont197117197118%_
                           _%tl193747193942%_
                           _%hd193746193940%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193753193958%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193747193942%_))
                              (let ((_%e193781193857%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193747193942%_))))
                                (let ((_%tl193783193862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193781193857%_)))
                                      (_%hd193782193860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193781193857%_))))
                                  (_%__match197216197217%_
                                   _%e193745193937%_
                                   _%hd193746193940%_
                                   _%tl193747193942%_
                                   _%e193748193945%_
                                   _%hd193749193948%_
                                   _%tl193750193950%_
                                   _%e193751193953%_
                                   _%hd193752193956%_
                                   _%tl193753193958%_
                                   _%e193781193857%_
                                   _%hd193782193860%_
                                   _%tl193783193862%_)))
                              (_%__kont197117197118%_
                               _%tl193747193942%_
                               _%hd193746193940%_))
                          (_%__kont197117197118%_
                           _%tl193747193942%_
                           _%hd193746193940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193753193958%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193747193942%_))
                                                            (let ((_%e193781193857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193747193942%_))))
                      (let ((_%tl193783193862%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193781193857%_)))
                            (_%hd193782193860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193781193857%_))))
                        (_%__match197216197217%_
                         _%e193745193937%_
                         _%hd193746193940%_
                         _%tl193747193942%_
                         _%e193748193945%_
                         _%hd193749193948%_
                         _%tl193750193950%_
                         _%e193751193953%_
                         _%hd193752193956%_
                         _%tl193753193958%_
                         _%e193781193857%_
                         _%hd193782193860%_
                         _%tl193783193862%_)))
                    (_%__kont197117197118%_
                     _%tl193747193942%_
                     _%hd193746193940%_))
                (_%__kont197117197118%_
                 _%tl193747193942%_
                 _%hd193746193940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont197117197118%_
                                             _%tl193747193942%_
                                             _%hd193746193940%_))
                                        (_%__kont197117197118%_
                                         _%tl193747193942%_
                                         _%hd193746193940%_))
                                    (_%__kont197117197118%_
                                     _%tl193747193942%_
                                     _%hd193746193940%_))))
                            (_%__kont197117197118%_
                             _%tl193747193942%_
                             _%hd193746193940%_))))
                    (_%__kont197119197120%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self192800193710%_ _%ctx193712%_ _%stx193713%_ _%args193714%_)
        (let* ((_%self193716%_ _%self192800193710%_)
               (_%self193718%_ _%self193716%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx193712%_ _%stx193713%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self193398%_ _%stx193399%_)
        (let* ((_%__stx197225197226%_ _%stx193399%_)
               (_%g193402193442%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197225197226%_)))))
          (let ((_%__kont197227197228%_
                 (lambda (_%L193548%_ _%L193549%_)
                   (let ((_%$e193576%_
                          (member 'return:
                                  (let ((__tmp197657
                                         (lambda (_%g193568193571%_
                                                  _%g193569193573%_)
                                           (cons _%g193568193571%_
                                                 _%g193569193573%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp197657 '() _%L193549%_))
                                  gx#stx-eq?)))
                     (if _%$e193576%_
                         ((lambda (_%tail193579%_)
                            (let ((_%type193581%_
                                   (let ((__tmp197658
                                          (let ((__tmp197659
                                                 (cadr _%tail193579%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp197659))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx193399%_
                                      __tmp197658))))
                              (gxc#check-return-type!
                               _%stx193399%_
                               _%L193548%_
                               _%type193581%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self193398%_
                                 _%L193548%_))))
                          _%$e193576%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self193398%_ _%L193548%_))))))
                (_%__kont197231197232%_
                 (lambda (_%L193471%_ _%L193472%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self193398%_ _%L193471%_)))))
            (let ((_%__match197262197263%_
                   (lambda (_%e193406193492%_
                            _%hd193407193495%_
                            _%tl193408193497%_
                            _%e193409193500%_
                            _%hd193410193503%_
                            _%tl193411193505%_
                            _%e193412193508%_
                            _%hd193413193511%_
                            _%tl193414193513%_
                            _%__splice197229197230%_
                            _%target193415193516%_
                            _%tl193417193518%_)
                     (letrec ((_%loop193418193521%_
                               (lambda (_%hd193416193524%_
                                        _%signature193422193526%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193416193524%_))
                                     (let ((_%e193419193529%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193416193524%_))))
                                       (let ((_%lp-tl193421193534%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193419193529%_)))
                                             (_%lp-hd193420193532%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193419193529%_))))
                                         (_%loop193418193521%_
                                          _%lp-tl193421193534%_
                                          (cons _%lp-hd193420193532%_
                                                _%signature193422193526%_))))
                                     (let ((_%signature193423193537%_
                                            (reverse _%signature193422193526%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl193411193505%_))
                                           (let ((_%e193424193540%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl193411193505%_))))
                                             (let ((_%tl193426193545%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193424193540%_)))
                                                   (_%hd193425193543%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193424193540%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl193426193545%_))
                                                   (_%__kont197227197228%_
                                                    _%hd193425193543%_
                                                    _%signature193423193537%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g193402193442%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g193402193442%_))))))))
                       (_%loop193418193521%_ _%target193415193516%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197225197226%_))
                  (let ((_%e193406193492%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197225197226%_))))
                    (let ((_%tl193408193497%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193406193492%_)))
                          (_%hd193407193495%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193406193492%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193408193497%_))
                          (let ((_%e193409193500%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193408193497%_))))
                            (let ((_%tl193411193505%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193409193500%_)))
                                  (_%hd193410193503%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193409193500%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193410193503%_))
                                  (let ((_%e193412193508%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193410193503%_))))
                                    (let ((_%tl193414193513%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193412193508%_)))
                                          (_%hd193413193511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193412193508%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193413193511%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd193413193511%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193414193513%_))
                                                  (let ((_%__splice197229197230%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193414193513%_
                                                            '0))))
                                                    (let ((_%tl193417193518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197229197230%_
                                                              '1)))
                                                          (_%target193415193516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197229197230%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193417193518%_))
                                                          (_%__match197262197263%_
                                                           _%e193406193492%_
                                                           _%hd193407193495%_
                                                           _%tl193408193497%_
                                                           _%e193409193500%_
                                                           _%hd193410193503%_
                                                           _%tl193411193505%_
                                                           _%e193412193508%_
                                                           _%hd193413193511%_
                                                           _%tl193414193513%_
                                                           _%__splice197229197230%_
                                                           _%target193415193516%_
                                                           _%tl193417193518%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193411193505%_))
                      (let ((_%e193435193463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193411193505%_))))
                        (let ((_%tl193437193468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193435193463%_)))
                              (_%hd193436193466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193435193463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193437193468%_))
                              (_%__kont197231197232%_
                               _%hd193436193466%_
                               _%hd193410193503%_)
                              (let ()
                                (declare (not safe))
                                (_%g193402193442%_)))))
                      (let () (declare (not safe)) (_%g193402193442%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193411193505%_))
                                                      (let ((_%e193435193463%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193411193505%_))))
                (let ((_%tl193437193468%_
                       (let () (declare (not safe)) (##cdr _%e193435193463%_)))
                      (_%hd193436193466%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193435193463%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193437193468%_))
                      (_%__kont197231197232%_
                       _%hd193436193466%_
                       _%hd193410193503%_)
                      (let () (declare (not safe)) (_%g193402193442%_)))))
              (let () (declare (not safe)) (_%g193402193442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193411193505%_))
                                                  (let ((_%e193435193463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193411193505%_))))
                                                    (let ((_%tl193437193468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193435193463%_)))
                                                          (_%hd193436193466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193435193463%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193437193468%_))
                                                          (_%__kont197231197232%_
                                                           _%hd193436193466%_
                                                           _%hd193410193503%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193402193442%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193402193442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193411193505%_))
                                              (let ((_%e193435193463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193411193505%_))))
                                                (let ((_%tl193437193468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193435193463%_)))
                                                      (_%hd193436193466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193435193463%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193437193468%_))
                                                      (_%__kont197231197232%_
                                                       _%hd193436193466%_
                                                       _%hd193410193503%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193402193442%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193402193442%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193411193505%_))
                                      (let ((_%e193435193463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193411193505%_))))
                                        (let ((_%tl193437193468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193435193463%_)))
                                              (_%hd193436193466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193435193463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193437193468%_))
                                              (_%__kont197231197232%_
                                               _%hd193436193466%_
                                               _%hd193410193503%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g193402193442%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193402193442%_))))))
                          (let () (declare (not safe)) (_%g193402193442%_)))))
                  (let () (declare (not safe)) (_%g193402193442%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx193376%_ _%expr193377%_ _%type193378%_)
        (let ((_%$e193380%_ (not _%type193378%_)))
          (if _%$e193380%_
              _%$e193380%_
              (let ((_%$e193383%_
                     (eq? (##structure-ref _%type193378%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e193383%_
                    _%$e193383%_
                    (let ((_%expr-type193387%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr193377%_))))
                      (if (not _%expr-type193387%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx193376%_
                             _%type193378%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type193387%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx193376%_
                                 _%type193378%_
                                 _%expr-type193387%_))
                              (let ((_%$e193391%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type193387%_
                                        'gxc#!abort::t))))
                                (if _%$e193391%_
                                    _%$e193391%_
                                    (let ((_%$e193394%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type193387%_
                                              _%type193378%_))))
                                      (if _%$e193394%_
                                          _%$e193394%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx193376%_
                                             _%type193378%_
                                             _%expr-type193387%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self192802%_ _%stx192803%_)
        (let* ((_%__stx197307197308%_ _%stx192803%_)
               (_%g192808192918%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197307197308%_)))))
          (let ((_%__kont197309197310%_
                 (lambda (_%L193350%_ _%L193351%_ _%L193352%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L193352%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192802%_ _%L193351%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192802%_ _%L193350%_)))))
                (_%__kont197311197312%_
                 (lambda (_%L193176%_ _%L193177%_ _%L193178%_ _%L193179%_)
                   (let ((_%$e193211%_
                          (let ((__tmp197660
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193179%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp197660))))
                     (if _%$e193211%_
                         ((lambda (_%pred-type193214%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193214%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193214%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test193219%_
                                        (let ((__tmp197661
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L193179%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L193178%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp197661
                                           _%stx192803%_
                                           _%self192802%_)))
                                       (_%K193223%_
                                        (let ((__tmp197662
                                               (lambda ()
                                                 (let ((__tmp197665
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self192802%_
                                                             _%L193177%_))))
                                                       (__tmp197663
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L193178%_))
                            (let ((__tmp197664
                                   (##structure-ref
                                    _%pred-type193214%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx192803%_
                               __tmp197664)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp197665
                                                    gxc#current-compile-path-type
                                                    __tmp197663)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197662)))
                                       (_%E193226%_
                                        (let ((__tmp197666
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self192802%_
                                                    _%L193176%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197666)))
                                       (_%__stx197285197286%_ _%test193219%_)
                                       (_%g193230193244%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx197285197286%_)))))
                                  (let ((_%__kont197287197288%_
                                         (lambda (_%L193272%_ _%L193273%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L193272%_))
                                               (force _%K193223%_)
                                               (force _%E193226%_))))
                                        (_%__kont197289197290%_
                                         (lambda ()
                                           (let ((__tmp197667
                                                  (cons '%#if
                                                        (cons _%test193219%_
                                                              (cons (force _%K193223%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E193226%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197667
                                              _%stx192803%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx197285197286%_))
                                        (let ((_%e193234193256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx197285197286%_))))
                                          (let ((_%tl193236193261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193234193256%_)))
                                                (_%hd193235193259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193234193256%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193236193261%_))
                                                (let ((_%e193237193264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193236193261%_))))
                                                  (let ((_%tl193239193269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193237193264%_)))
                                                        (_%hd193238193267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193237193264%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193239193269%_))
                                                        (_%__kont197287197288%_
                                                         _%hd193238193267%_
                                                         _%hd193235193259%_)
                                                        (_%__kont197289197290%_))))
                                                (_%__kont197289197290%_))))
                                        (_%__kont197289197290%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self192802%_
                                   _%stx192803%_))))
                          _%$e193211%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self192802%_
                            _%stx192803%_))))))
                (_%__kont197313197314%_
                 (lambda (_%L193052%_ _%L193053%_ _%L193054%_ _%L193055%_)
                   (gxc#optimize-if%
                    _%self192802%_
                    (let ((__tmp197668
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L193054%_
                                       (cons _%L193052%_
                                             (cons _%L193053%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197668 _%stx192803%_)))))
                (_%__kont197315197316%_
                 (lambda (_%L192955%_ _%L192956%_ _%L192957%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self192802%_ _%stx192803%_)))))
            (let ((_%__match197514197515%_
                   (lambda (_%e192872192980%_
                            _%hd192873192983%_
                            _%tl192874192985%_
                            _%e192875192988%_
                            _%hd192876192991%_
                            _%tl192877192993%_
                            _%e192878192996%_
                            _%hd192879192999%_
                            _%tl192880193001%_
                            _%e192881193004%_
                            _%hd192882193007%_
                            _%tl192883193009%_
                            _%e192884193012%_
                            _%hd192885193015%_
                            _%tl192886193017%_
                            _%e192887193020%_
                            _%hd192888193023%_
                            _%tl192889193025%_
                            _%e192890193028%_
                            _%hd192891193031%_
                            _%tl192892193033%_
                            _%e192893193036%_
                            _%hd192894193039%_
                            _%tl192895193041%_
                            _%e192896193044%_
                            _%hd192897193047%_
                            _%tl192898193049%_)
                     (let ((_%L193052%_ _%hd192897193047%_)
                           (_%L193053%_ _%hd192894193039%_)
                           (_%L193054%_ _%hd192891193031%_)
                           (_%L193055%_ _%hd192888193023%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L193055%_ 'not))
                           (_%__kont197313197314%_
                            _%L193052%_
                            _%L193053%_
                            _%L193054%_
                            _%L193055%_)
                           (_%__kont197315197316%_
                            _%hd192897193047%_
                            _%hd192894193039%_
                            _%hd192876192991%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197307197308%_))
                  (let ((_%e192813193302%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197307197308%_))))
                    (let ((_%tl192815193307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192813193302%_)))
                          (_%hd192814193305%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192813193302%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192815193307%_))
                          (let ((_%e192816193310%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192815193307%_))))
                            (let ((_%tl192818193315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192816193310%_)))
                                  (_%hd192817193313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192816193310%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192817193313%_))
                                  (let ((_%e192819193318%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192817193313%_))))
                                    (let ((_%tl192821193323%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192819193318%_)))
                                          (_%hd192820193321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192819193318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192820193321%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd192820193321%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192821193323%_))
                                                  (let ((_%e192822193326%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192821193323%_))))
                                                    (let ((_%tl192824193331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192822193326%_)))
                                                          (_%hd192823193329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192822193326%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192824193331%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192818193315%_))
                      (let ((_%e192825193334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192818193315%_))))
                        (let ((_%tl192827193339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192825193334%_)))
                              (_%hd192826193337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192825193334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192827193339%_))
                              (let ((_%e192828193342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192827193339%_))))
                                (let ((_%tl192830193347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192828193342%_)))
                                      (_%hd192829193345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192828193342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192830193347%_))
                                      (_%__kont197309197310%_
                                       _%hd192829193345%_
                                       _%hd192826193337%_
                                       _%hd192823193329%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192808192918%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192808192918%_)))))
                      (let () (declare (not safe)) (_%g192808192918%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192818193315%_))
                      (let ((_%e192908192939%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192818193315%_))))
                        (let ((_%tl192910192944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192908192939%_)))
                              (_%hd192909192942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192908192939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192910192944%_))
                              (let ((_%e192911192947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192910192944%_))))
                                (let ((_%tl192913192952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192911192947%_)))
                                      (_%hd192912192950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192911192947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192913192952%_))
                                      (_%__kont197315197316%_
                                       _%hd192912192950%_
                                       _%hd192909192942%_
                                       _%hd192817193313%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192808192918%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192808192918%_)))))
                      (let () (declare (not safe)) (_%g192808192918%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192818193315%_))
                                                      (let ((_%e192908192939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192818193315%_))))
                (let ((_%tl192910192944%_
                       (let () (declare (not safe)) (##cdr _%e192908192939%_)))
                      (_%hd192909192942%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192908192939%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192910192944%_))
                      (let ((_%e192911192947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192910192944%_))))
                        (let ((_%tl192913192952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192911192947%_)))
                              (_%hd192912192950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192911192947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192913192952%_))
                              (_%__kont197315197316%_
                               _%hd192912192950%_
                               _%hd192909192942%_
                               _%hd192817193313%_)
                              (let ()
                                (declare (not safe))
                                (_%g192808192918%_)))))
                      (let () (declare (not safe)) (_%g192808192918%_)))))
              (let () (declare (not safe)) (_%g192808192918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd192820193321%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192821193323%_))
                                                      (let ((_%e192844193112%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192821193323%_))))
                (let ((_%tl192846193117%_
                       (let () (declare (not safe)) (##cdr _%e192844193112%_)))
                      (_%hd192845193115%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192844193112%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192845193115%_))
                      (let ((_%e192847193120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192845193115%_))))
                        (let ((_%tl192849193125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192847193120%_)))
                              (_%hd192848193123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192847193120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192848193123%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192848193123%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192849193125%_))
                                      (let ((_%e192850193128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192849193125%_))))
                                        (let ((_%tl192852193133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192850193128%_)))
                                              (_%hd192851193131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192850193128%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192852193133%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192846193117%_))
                                                  (let ((_%e192853193136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192846193117%_))))
                                                    (let ((_%tl192855193141%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192853193136%_)))
                                                          (_%hd192854193139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192853193136%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192854193139%_))
                                                          (let ((_%e192856193144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192854193139%_))))
                    (let ((_%tl192858193149%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192856193144%_)))
                          (_%hd192857193147%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192856193144%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192857193147%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd192857193147%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192858193149%_))
                                  (let ((_%e192859193152%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192858193149%_))))
                                    (let ((_%tl192861193157%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192859193152%_)))
                                          (_%hd192860193155%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192859193152%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192861193157%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192855193141%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192818193315%_))
                                                  (let ((_%e192862193160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192818193315%_))))
                                                    (let ((_%tl192864193165%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192862193160%_)))
                                                          (_%hd192863193163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192862193160%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192864193165%_))
                                                          (let ((_%e192865193168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192864193165%_))))
                    (let ((_%tl192867193173%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192865193168%_)))
                          (_%hd192866193171%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192865193168%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192867193173%_))
                          (_%__kont197311197312%_
                           _%hd192866193171%_
                           _%hd192863193163%_
                           _%hd192860193155%_
                           _%hd192851193131%_)
                          (let () (declare (not safe)) (_%g192808192918%_)))))
                  (let () (declare (not safe)) (_%g192808192918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192818193315%_))
                                                  (let ((_%e192908192939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192818193315%_))))
                                                    (let ((_%tl192910192944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192908192939%_)))
                                                          (_%hd192909192942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192908192939%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192910192944%_))
                                                          (let ((_%e192911192947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192910192944%_))))
                    (let ((_%tl192913192952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192911192947%_)))
                          (_%hd192912192950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192911192947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192913192952%_))
                          (_%__kont197315197316%_
                           _%hd192912192950%_
                           _%hd192909192942%_
                           _%hd192817193313%_)
                          (let () (declare (not safe)) (_%g192808192918%_)))))
                  (let () (declare (not safe)) (_%g192808192918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192855193141%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192818193315%_))
                                                  (let ((_%e192893193036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192818193315%_))))
                                                    (let ((_%tl192895193041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192893193036%_)))
                                                          (_%hd192894193039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192893193036%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192895193041%_))
                                                          (let ((_%e192896193044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192895193041%_))))
                    (let ((_%tl192898193049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192896193044%_)))
                          (_%hd192897193047%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192896193044%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192898193049%_))
                          (_%__match197514197515%_
                           _%e192813193302%_
                           _%hd192814193305%_
                           _%tl192815193307%_
                           _%e192816193310%_
                           _%hd192817193313%_
                           _%tl192818193315%_
                           _%e192819193318%_
                           _%hd192820193321%_
                           _%tl192821193323%_
                           _%e192844193112%_
                           _%hd192845193115%_
                           _%tl192846193117%_
                           _%e192847193120%_
                           _%hd192848193123%_
                           _%tl192849193125%_
                           _%e192850193128%_
                           _%hd192851193131%_
                           _%tl192852193133%_
                           _%e192853193136%_
                           _%hd192854193139%_
                           _%tl192855193141%_
                           _%e192893193036%_
                           _%hd192894193039%_
                           _%tl192895193041%_
                           _%e192896193044%_
                           _%hd192897193047%_
                           _%tl192898193049%_)
                          (let () (declare (not safe)) (_%g192808192918%_)))))
                  (let () (declare (not safe)) (_%g192808192918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192818193315%_))
                                                  (let ((_%e192908192939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192818193315%_))))
                                                    (let ((_%tl192910192944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192908192939%_)))
                                                          (_%hd192909192942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192908192939%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192910192944%_))
                                                          (let ((_%e192911192947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192910192944%_))))
                    (let ((_%tl192913192952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192911192947%_)))
                          (_%hd192912192950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192911192947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192913192952%_))
                          (_%__kont197315197316%_
                           _%hd192912192950%_
                           _%hd192909192942%_
                           _%hd192817193313%_)
                          (let () (declare (not safe)) (_%g192808192918%_)))))
                  (let () (declare (not safe)) (_%g192808192918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192855193141%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192818193315%_))
                                          (let ((_%e192893193036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192818193315%_))))
                                            (let ((_%tl192895193041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192893193036%_)))
                                                  (_%hd192894193039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192893193036%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192895193041%_))
                                                  (let ((_%e192896193044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192895193041%_))))
                                                    (let ((_%tl192898193049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192896193044%_)))
                                                          (_%hd192897193047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192896193044%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192898193049%_))
                                                          (_%__match197514197515%_
                                                           _%e192813193302%_
                                                           _%hd192814193305%_
                                                           _%tl192815193307%_
                                                           _%e192816193310%_
                                                           _%hd192817193313%_
                                                           _%tl192818193315%_
                                                           _%e192819193318%_
                                                           _%hd192820193321%_
                                                           _%tl192821193323%_
                                                           _%e192844193112%_
                                                           _%hd192845193115%_
                                                           _%tl192846193117%_
                                                           _%e192847193120%_
                                                           _%hd192848193123%_
                                                           _%tl192849193125%_
                                                           _%e192850193128%_
                                                           _%hd192851193131%_
                                                           _%tl192852193133%_
                                                           _%e192853193136%_
                                                           _%hd192854193139%_
                                                           _%tl192855193141%_
                                                           _%e192893193036%_
                                                           _%hd192894193039%_
                                                           _%tl192895193041%_
                                                           _%e192896193044%_
                                                           _%hd192897193047%_
                                                           _%tl192898193049%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192808192918%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192818193315%_))
                                          (let ((_%e192908192939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192818193315%_))))
                                            (let ((_%tl192910192944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192908192939%_)))
                                                  (_%hd192909192942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192908192939%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192910192944%_))
                                                  (let ((_%e192911192947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192910192944%_))))
                                                    (let ((_%tl192913192952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192911192947%_)))
                                                          (_%hd192912192950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192911192947%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192913192952%_))
                                                          (_%__kont197315197316%_
                                                           _%hd192912192950%_
                                                           _%hd192909192942%_
                                                           _%hd192817193313%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192808192918%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192855193141%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192818193315%_))
                                      (let ((_%e192893193036%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192818193315%_))))
                                        (let ((_%tl192895193041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192893193036%_)))
                                              (_%hd192894193039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192893193036%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192895193041%_))
                                              (let ((_%e192896193044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192895193041%_))))
                                                (let ((_%tl192898193049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192896193044%_)))
                                                      (_%hd192897193047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192896193044%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192898193049%_))
                                                      (_%__match197514197515%_
                                                       _%e192813193302%_
                                                       _%hd192814193305%_
                                                       _%tl192815193307%_
                                                       _%e192816193310%_
                                                       _%hd192817193313%_
                                                       _%tl192818193315%_
                                                       _%e192819193318%_
                                                       _%hd192820193321%_
                                                       _%tl192821193323%_
                                                       _%e192844193112%_
                                                       _%hd192845193115%_
                                                       _%tl192846193117%_
                                                       _%e192847193120%_
                                                       _%hd192848193123%_
                                                       _%tl192849193125%_
                                                       _%e192850193128%_
                                                       _%hd192851193131%_
                                                       _%tl192852193133%_
                                                       _%e192853193136%_
                                                       _%hd192854193139%_
                                                       _%tl192855193141%_
                                                       _%e192893193036%_
                                                       _%hd192894193039%_
                                                       _%tl192895193041%_
                                                       _%e192896193044%_
                                                       _%hd192897193047%_
                                                       _%tl192898193049%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192808192918%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192808192918%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192808192918%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192818193315%_))
                                      (let ((_%e192908192939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192818193315%_))))
                                        (let ((_%tl192910192944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192908192939%_)))
                                              (_%hd192909192942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192908192939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192910192944%_))
                                              (let ((_%e192911192947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192910192944%_))))
                                                (let ((_%tl192913192952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192911192947%_)))
                                                      (_%hd192912192950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192911192947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192913192952%_))
                                                      (_%__kont197315197316%_
                                                       _%hd192912192950%_
                                                       _%hd192909192942%_
                                                       _%hd192817193313%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192808192918%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192808192918%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192808192918%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192855193141%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192818193315%_))
                                  (let ((_%e192893193036%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192818193315%_))))
                                    (let ((_%tl192895193041%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192893193036%_)))
                                          (_%hd192894193039%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192893193036%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192895193041%_))
                                          (let ((_%e192896193044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192895193041%_))))
                                            (let ((_%tl192898193049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192896193044%_)))
                                                  (_%hd192897193047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192896193044%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192898193049%_))
                                                  (_%__match197514197515%_
                                                   _%e192813193302%_
                                                   _%hd192814193305%_
                                                   _%tl192815193307%_
                                                   _%e192816193310%_
                                                   _%hd192817193313%_
                                                   _%tl192818193315%_
                                                   _%e192819193318%_
                                                   _%hd192820193321%_
                                                   _%tl192821193323%_
                                                   _%e192844193112%_
                                                   _%hd192845193115%_
                                                   _%tl192846193117%_
                                                   _%e192847193120%_
                                                   _%hd192848193123%_
                                                   _%tl192849193125%_
                                                   _%e192850193128%_
                                                   _%hd192851193131%_
                                                   _%tl192852193133%_
                                                   _%e192853193136%_
                                                   _%hd192854193139%_
                                                   _%tl192855193141%_
                                                   _%e192893193036%_
                                                   _%hd192894193039%_
                                                   _%tl192895193041%_
                                                   _%e192896193044%_
                                                   _%hd192897193047%_
                                                   _%tl192898193049%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192808192918%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192818193315%_))
                                  (let ((_%e192908192939%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192818193315%_))))
                                    (let ((_%tl192910192944%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192908192939%_)))
                                          (_%hd192909192942%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192908192939%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192910192944%_))
                                          (let ((_%e192911192947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192910192944%_))))
                                            (let ((_%tl192913192952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192911192947%_)))
                                                  (_%hd192912192950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192911192947%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192913192952%_))
                                                  (_%__kont197315197316%_
                                                   _%hd192912192950%_
                                                   _%hd192909192942%_
                                                   _%hd192817193313%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192808192918%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192855193141%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192818193315%_))
                          (let ((_%e192893193036%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192818193315%_))))
                            (let ((_%tl192895193041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192893193036%_)))
                                  (_%hd192894193039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192893193036%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192895193041%_))
                                  (let ((_%e192896193044%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192895193041%_))))
                                    (let ((_%tl192898193049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192896193044%_)))
                                          (_%hd192897193047%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192896193044%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192898193049%_))
                                          (_%__match197514197515%_
                                           _%e192813193302%_
                                           _%hd192814193305%_
                                           _%tl192815193307%_
                                           _%e192816193310%_
                                           _%hd192817193313%_
                                           _%tl192818193315%_
                                           _%e192819193318%_
                                           _%hd192820193321%_
                                           _%tl192821193323%_
                                           _%e192844193112%_
                                           _%hd192845193115%_
                                           _%tl192846193117%_
                                           _%e192847193120%_
                                           _%hd192848193123%_
                                           _%tl192849193125%_
                                           _%e192850193128%_
                                           _%hd192851193131%_
                                           _%tl192852193133%_
                                           _%e192853193136%_
                                           _%hd192854193139%_
                                           _%tl192855193141%_
                                           _%e192893193036%_
                                           _%hd192894193039%_
                                           _%tl192895193041%_
                                           _%e192896193044%_
                                           _%hd192897193047%_
                                           _%tl192898193049%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192808192918%_)))))
                          (let () (declare (not safe)) (_%g192808192918%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192818193315%_))
                          (let ((_%e192908192939%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192818193315%_))))
                            (let ((_%tl192910192944%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192908192939%_)))
                                  (_%hd192909192942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192908192939%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192910192944%_))
                                  (let ((_%e192911192947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192910192944%_))))
                                    (let ((_%tl192913192952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192911192947%_)))
                                          (_%hd192912192950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192911192947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192913192952%_))
                                          (_%__kont197315197316%_
                                           _%hd192912192950%_
                                           _%hd192909192942%_
                                           _%hd192817193313%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192808192918%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g192808192918%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192818193315%_))
                                                      (let ((_%e192908192939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192818193315%_))))
                (let ((_%tl192910192944%_
                       (let () (declare (not safe)) (##cdr _%e192908192939%_)))
                      (_%hd192909192942%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192908192939%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192910192944%_))
                      (let ((_%e192911192947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192910192944%_))))
                        (let ((_%tl192913192952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192911192947%_)))
                              (_%hd192912192950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192911192947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192913192952%_))
                              (_%__kont197315197316%_
                               _%hd192912192950%_
                               _%hd192909192942%_
                               _%hd192817193313%_)
                              (let ()
                                (declare (not safe))
                                (_%g192808192918%_)))))
                      (let () (declare (not safe)) (_%g192808192918%_)))))
              (let () (declare (not safe)) (_%g192808192918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192818193315%_))
                                                  (let ((_%e192908192939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192818193315%_))))
                                                    (let ((_%tl192910192944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192908192939%_)))
                                                          (_%hd192909192942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192908192939%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192910192944%_))
                                                          (let ((_%e192911192947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192910192944%_))))
                    (let ((_%tl192913192952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192911192947%_)))
                          (_%hd192912192950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192911192947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192913192952%_))
                          (_%__kont197315197316%_
                           _%hd192912192950%_
                           _%hd192909192942%_
                           _%hd192817193313%_)
                          (let () (declare (not safe)) (_%g192808192918%_)))))
                  (let () (declare (not safe)) (_%g192808192918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192818193315%_))
                                          (let ((_%e192908192939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192818193315%_))))
                                            (let ((_%tl192910192944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192908192939%_)))
                                                  (_%hd192909192942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192908192939%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192910192944%_))
                                                  (let ((_%e192911192947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192910192944%_))))
                                                    (let ((_%tl192913192952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192911192947%_)))
                                                          (_%hd192912192950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192911192947%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192913192952%_))
                                                          (_%__kont197315197316%_
                                                           _%hd192912192950%_
                                                           _%hd192909192942%_
                                                           _%hd192817193313%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192808192918%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192818193315%_))
                                      (let ((_%e192908192939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192818193315%_))))
                                        (let ((_%tl192910192944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192908192939%_)))
                                              (_%hd192909192942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192908192939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192910192944%_))
                                              (let ((_%e192911192947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192910192944%_))))
                                                (let ((_%tl192913192952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192911192947%_)))
                                                      (_%hd192912192950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192911192947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192913192952%_))
                                                      (_%__kont197315197316%_
                                                       _%hd192912192950%_
                                                       _%hd192909192942%_
                                                       _%hd192817193313%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192808192918%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192808192918%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192808192918%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192818193315%_))
                                  (let ((_%e192908192939%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192818193315%_))))
                                    (let ((_%tl192910192944%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192908192939%_)))
                                          (_%hd192909192942%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192908192939%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192910192944%_))
                                          (let ((_%e192911192947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192910192944%_))))
                                            (let ((_%tl192913192952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192911192947%_)))
                                                  (_%hd192912192950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192911192947%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192913192952%_))
                                                  (_%__kont197315197316%_
                                                   _%hd192912192950%_
                                                   _%hd192909192942%_
                                                   _%hd192817193313%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192808192918%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192808192918%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192818193315%_))
                          (let ((_%e192908192939%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192818193315%_))))
                            (let ((_%tl192910192944%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192908192939%_)))
                                  (_%hd192909192942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192908192939%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192910192944%_))
                                  (let ((_%e192911192947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192910192944%_))))
                                    (let ((_%tl192913192952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192911192947%_)))
                                          (_%hd192912192950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192911192947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192913192952%_))
                                          (_%__kont197315197316%_
                                           _%hd192912192950%_
                                           _%hd192909192942%_
                                           _%hd192817193313%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192808192918%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192808192918%_)))))
                          (let () (declare (not safe)) (_%g192808192918%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl192818193315%_))
                  (let ((_%e192908192939%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192818193315%_))))
                    (let ((_%tl192910192944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192908192939%_)))
                          (_%hd192909192942%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192908192939%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192910192944%_))
                          (let ((_%e192911192947%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192910192944%_))))
                            (let ((_%tl192913192952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192911192947%_)))
                                  (_%hd192912192950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192911192947%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192913192952%_))
                                  (_%__kont197315197316%_
                                   _%hd192912192950%_
                                   _%hd192909192942%_
                                   _%hd192817193313%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g192808192918%_)))))
                          (let () (declare (not safe)) (_%g192808192918%_)))))
                  (let () (declare (not safe)) (_%g192808192918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192818193315%_))
                                                      (let ((_%e192908192939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192818193315%_))))
                (let ((_%tl192910192944%_
                       (let () (declare (not safe)) (##cdr _%e192908192939%_)))
                      (_%hd192909192942%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192908192939%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192910192944%_))
                      (let ((_%e192911192947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192910192944%_))))
                        (let ((_%tl192913192952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192911192947%_)))
                              (_%hd192912192950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192911192947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192913192952%_))
                              (_%__kont197315197316%_
                               _%hd192912192950%_
                               _%hd192909192942%_
                               _%hd192817193313%_)
                              (let ()
                                (declare (not safe))
                                (_%g192808192918%_)))))
                      (let () (declare (not safe)) (_%g192808192918%_)))))
              (let () (declare (not safe)) (_%g192808192918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192818193315%_))
                                              (let ((_%e192908192939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192818193315%_))))
                                                (let ((_%tl192910192944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192908192939%_)))
                                                      (_%hd192909192942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192908192939%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192910192944%_))
                                                      (let ((_%e192911192947%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192910192944%_))))
                (let ((_%tl192913192952%_
                       (let () (declare (not safe)) (##cdr _%e192911192947%_)))
                      (_%hd192912192950%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192911192947%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192913192952%_))
                      (_%__kont197315197316%_
                       _%hd192912192950%_
                       _%hd192909192942%_
                       _%hd192817193313%_)
                      (let () (declare (not safe)) (_%g192808192918%_)))))
              (let () (declare (not safe)) (_%g192808192918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g192808192918%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192818193315%_))
                                      (let ((_%e192908192939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192818193315%_))))
                                        (let ((_%tl192910192944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192908192939%_)))
                                              (_%hd192909192942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192908192939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192910192944%_))
                                              (let ((_%e192911192947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192910192944%_))))
                                                (let ((_%tl192913192952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192911192947%_)))
                                                      (_%hd192912192950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192911192947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192913192952%_))
                                                      (_%__kont197315197316%_
                                                       _%hd192912192950%_
                                                       _%hd192909192942%_
                                                       _%hd192817193313%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192808192918%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192808192918%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192808192918%_))))))
                          (let () (declare (not safe)) (_%g192808192918%_)))))
                  (let () (declare (not safe)) (_%g192808192918%_))))))))))
