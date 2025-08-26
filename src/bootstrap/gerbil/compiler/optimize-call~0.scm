(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1756224522)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp205607 (list gxc#::basic-xform::t))
            (__tmp205606 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp205607
         '()
         __tmp205606
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args204884%_
        (apply make-instance gxc#::optimize-call::t _%$args204884%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp205608
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
        (__make-promise __tmp205608)))
    (define gxc#apply-optimize-call
      (lambda (_%stx204876%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self204879%_
                (let ((__obj205598
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj205598))
               (__tmp205609
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204879%_ _%stx204876%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205609
           gxc#current-compile-method
           _%self204879%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp205611 (list gxc#::void::t))
            (__tmp205610 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp205611
         '()
         __tmp205610
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args204873%_
        (apply make-instance gxc#::check-return-type::t _%$args204873%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp205612
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
        (__make-promise __tmp205612)))
    (define gxc#apply-check-return-type
      (lambda (_%stx204865%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self204868%_
                (let ((__obj205600
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj205600))
               (__tmp205613
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204868%_ _%stx204865%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205613
           gxc#current-compile-method
           _%self204868%_))))
    (define gxc#optimize-call%
      (lambda (_%self204466%_ _%stx204467%_)
        (let* ((_%__stx204953204954%_ _%stx204467%_)
               (_%g204470204516%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204953204954%_)))))
          (let ((_%__kont204955204956%_
                 (lambda (_%L204659%_ _%L204660%_)
                   (let* ((_%rator-id204680%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L204660%_)))
                          (_%rator-type204682%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id204680%_))))
                     (if (or (not _%rator-type204682%_)
                             (eq? (##structure-ref
                                   _%rator-type204682%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self204466%_ _%stx204467%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type204682%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp205614
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type204682%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id204680%_
                                  '" => "
                                  _%rator-type204682%_
                                  '" "
                                  __tmp205614))
                               (let* ((_%optimized204697%_
                                       (let ((__method205601
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type204682%_
                                                 'optimize-call))))
                                         (if __method205601
                                             (let ((__tmp205615
                                                    (let ((__tmp205616
                                                           (lambda (_%g204689204692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204690204694%_)
                     (cons _%g204689204692%_ _%g204690204694%_))))
              (declare (not safe))
              (__foldr1 __tmp205616 '() _%L204659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method205601
                                                _%rator-type204682%_
                                                _%self204466%_
                                                _%stx204467%_
                                                __tmp205615))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type204682%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx204901204902%_
                                       _%optimized204697%_)
                                      (_%g204700204729%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx204901204902%_)))))
                                 (let ((_%__kont204903204904%_
                                        (lambda (_%L204797%_ _%L204798%_)
                                          (let* ((_%optimized-rator-id204825%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L204798%_)))
                                                 (_%rator-type204830%_
                                                  (let ((_%$e204827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id204825%_))))
                                                    (if _%$e204827%_
                                                        _%$e204827%_
                                                        _%rator-type204682%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type204830%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id204825%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type204830%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type204830%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized204697%_
                                                (let ((__tmp205617
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L204798%_ '()))
                           (let ((__tmp205618
                                  (lambda (_%g204838204841%_ _%g204839204843%_)
                                    (cons _%g204838204841%_
                                          _%g204839204843%_))))
                             (declare (not safe))
                             (__foldr1 __tmp205618 '() _%L204797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp205617
                                                   _%stx204467%_))))))
                                       (_%__kont204907204908%_
                                        (lambda () _%optimized204697%_)))
                                   (let ((_%__match204950204951%_
                                          (lambda (_%e204704204741%_
                                                   _%hd204705204744%_
                                                   _%tl204706204746%_
                                                   _%e204707204749%_
                                                   _%hd204708204752%_
                                                   _%tl204709204754%_
                                                   _%e204710204757%_
                                                   _%hd204711204760%_
                                                   _%tl204712204762%_
                                                   _%e204713204765%_
                                                   _%hd204714204768%_
                                                   _%tl204715204770%_
                                                   _%__splice204905204906%_
                                                   _%target204716204773%_
                                                   _%tl204718204775%_)
                                            (letrec ((_%loop204719204778%_
                                                      (lambda (_%hd204717204781%_
                                                               _%arg204723204783%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd204717204781%_))
                                                            (let ((_%e204720204786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd204717204781%_))))
                      (let ((_%lp-tl204722204791%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204720204786%_)))
                            (_%lp-hd204721204789%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204720204786%_))))
                        (_%loop204719204778%_
                         _%lp-tl204722204791%_
                         (cons _%lp-hd204721204789%_ _%arg204723204783%_))))
                    (let ((_%arg204724204794%_ (reverse _%arg204723204783%_)))
                      (_%__kont204903204904%_
                       _%arg204724204794%_
                       _%hd204714204768%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop204719204778%_
                                               _%target204716204773%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx204901204902%_))
                                         (let ((_%e204704204741%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx204901204902%_))))
                                           (let ((_%tl204706204746%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e204704204741%_)))
                                                 (_%hd204705204744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e204704204741%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd204705204744%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd204705204744%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl204706204746%_))
                                                         (let ((_%e204707204749%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl204706204746%_))))
                   (let ((_%tl204709204754%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e204707204749%_)))
                         (_%hd204708204752%_
                          (let ()
                            (declare (not safe))
                            (##car _%e204707204749%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd204708204752%_))
                         (let ((_%e204710204757%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd204708204752%_))))
                           (let ((_%tl204712204762%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e204710204757%_)))
                                 (_%hd204711204760%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e204710204757%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd204711204760%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd204711204760%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl204712204762%_))
                                         (let ((_%e204713204765%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl204712204762%_))))
                                           (let ((_%tl204715204770%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e204713204765%_)))
                                                 (_%hd204714204768%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e204713204765%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl204715204770%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl204709204754%_))
                                                     (let ((_%__splice204905204906%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl204709204754%_
                                                               '0))))
                                                       (let ((_%tl204718204775%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice204905204906%_ '1)))
                     (_%target204716204773%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice204905204906%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl204718204775%_))
                     (_%__match204950204951%_
                      _%e204704204741%_
                      _%hd204705204744%_
                      _%tl204706204746%_
                      _%e204707204749%_
                      _%hd204708204752%_
                      _%tl204709204754%_
                      _%e204710204757%_
                      _%hd204711204760%_
                      _%tl204712204762%_
                      _%e204713204765%_
                      _%hd204714204768%_
                      _%tl204715204770%_
                      _%__splice204905204906%_
                      _%target204716204773%_
                      _%tl204718204775%_)
                     (_%__kont204907204908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont204907204908%_))
                                                 (_%__kont204907204908%_))))
                                         (_%__kont204907204908%_))
                                     (_%__kont204907204908%_))
                                 (_%__kont204907204908%_))))
                         (_%__kont204907204908%_))))
                 (_%__kont204907204908%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont204907204908%_))
                                                 (_%__kont204907204908%_))))
                                         (_%__kont204907204908%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type204682%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type204682%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp205619
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L204660%_
                                                                '()))
                                                    (map (lambda (_%g204849204851%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self204466%_
                                                              _%g204849204851%_)))
                                                         (let ((__tmp205620
                                                                (lambda (_%g204853204856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g204854204858%_)
                          (cons _%g204853204856%_ _%g204854204858%_))))
                   (declare (not safe))
                   (__foldr1 __tmp205620 '() _%L204659%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp205619
                                    _%stx204467%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx204467%_
                                    _%rator-type204682%_))))))))
                (_%__kont204959204960%_
                 (lambda (_%L204561%_ _%L204562%_)
                   (let ((_%rator-type204579%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L204562%_))))
                     (if (and _%rator-type204579%_
                              (eq? (##structure-ref
                                    _%rator-type204579%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type204579%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type204579%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type204579%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp205621
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self204466%_
                                               _%L204562%_))
                                            (map (lambda (_%g204581204583%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self204466%_
                                                      _%g204581204583%_)))
                                                 (let ((__tmp205622
                                                        (lambda (_%g204585204588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g204586204590%_)
                  (cons _%g204585204588%_ _%g204586204590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp205622
                                                    '()
                                                    _%L204561%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp205621 _%stx204467%_))
                         (if (or (not _%rator-type204579%_)
                                 (let ((__tmp205623
                                        (##structure-ref
                                         _%rator-type204579%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp205623 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self204466%_ _%stx204467%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx204467%_
                                _%rator-type204579%_))))))))
            (let* ((_%__match205020205021%_
                    (lambda (_%e204497204521%_
                             _%hd204498204524%_
                             _%tl204499204526%_
                             _%e204500204529%_
                             _%hd204501204532%_
                             _%tl204502204534%_
                             _%__splice204961204962%_
                             _%target204503204537%_
                             _%tl204505204539%_)
                      (letrec ((_%loop204506204542%_
                                (lambda (_%hd204504204545%_
                                         _%rand204510204547%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204504204545%_))
                                      (let ((_%e204507204550%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204504204545%_))))
                                        (let ((_%lp-tl204509204555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204507204550%_)))
                                              (_%lp-hd204508204553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204507204550%_))))
                                          (_%loop204506204542%_
                                           _%lp-tl204509204555%_
                                           (cons _%lp-hd204508204553%_
                                                 _%rand204510204547%_))))
                                      (let ((_%rand204511204558%_
                                             (reverse _%rand204510204547%_)))
                                        (_%__kont204959204960%_
                                         _%rand204511204558%_
                                         _%hd204501204532%_))))))
                        (_%loop204506204542%_ _%target204503204537%_ '()))))
                   (_%__match205000205001%_
                    (lambda (_%e204474204603%_
                             _%hd204475204606%_
                             _%tl204476204608%_
                             _%e204477204611%_
                             _%hd204478204614%_
                             _%tl204479204616%_
                             _%e204480204619%_
                             _%hd204481204622%_
                             _%tl204482204624%_
                             _%e204483204627%_
                             _%hd204484204630%_
                             _%tl204485204632%_
                             _%__splice204957204958%_
                             _%target204486204635%_
                             _%tl204488204637%_)
                      (letrec ((_%loop204489204640%_
                                (lambda (_%hd204487204643%_
                                         _%rand204493204645%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204487204643%_))
                                      (let ((_%e204490204648%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204487204643%_))))
                                        (let ((_%lp-tl204492204653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204490204648%_)))
                                              (_%lp-hd204491204651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204490204648%_))))
                                          (_%loop204489204640%_
                                           _%lp-tl204492204653%_
                                           (cons _%lp-hd204491204651%_
                                                 _%rand204493204645%_))))
                                      (let ((_%rand204494204656%_
                                             (reverse _%rand204493204645%_)))
                                        (_%__kont204955204956%_
                                         _%rand204494204656%_
                                         _%hd204484204630%_))))))
                        (_%loop204489204640%_ _%target204486204635%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204953204954%_))
                  (let ((_%e204474204603%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204953204954%_))))
                    (let ((_%tl204476204608%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204474204603%_)))
                          (_%hd204475204606%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204474204603%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204476204608%_))
                          (let ((_%e204477204611%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204476204608%_))))
                            (let ((_%tl204479204616%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204477204611%_)))
                                  (_%hd204478204614%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204477204611%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204478204614%_))
                                  (let ((_%e204480204619%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204478204614%_))))
                                    (let ((_%tl204482204624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204480204619%_)))
                                          (_%hd204481204622%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204480204619%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204481204622%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204481204622%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204482204624%_))
                                                  (let ((_%e204483204627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204482204624%_))))
                                                    (let ((_%tl204485204632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204483204627%_)))
                                                          (_%hd204484204630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204483204627%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204485204632%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl204479204616%_))
                      (let ((_%__splice204957204958%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204479204616%_
                                '0))))
                        (let ((_%tl204488204637%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204957204958%_ '1)))
                              (_%target204486204635%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204957204958%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204488204637%_))
                              (_%__match205000205001%_
                               _%e204474204603%_
                               _%hd204475204606%_
                               _%tl204476204608%_
                               _%e204477204611%_
                               _%hd204478204614%_
                               _%tl204479204616%_
                               _%e204480204619%_
                               _%hd204481204622%_
                               _%tl204482204624%_
                               _%e204483204627%_
                               _%hd204484204630%_
                               _%tl204485204632%_
                               _%__splice204957204958%_
                               _%target204486204635%_
                               _%tl204488204637%_)
                              (let ()
                                (declare (not safe))
                                (_%g204470204516%_)))))
                      (let () (declare (not safe)) (_%g204470204516%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl204479204616%_))
                      (let ((_%__splice204961204962%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204479204616%_
                                '0))))
                        (let ((_%tl204505204539%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204961204962%_ '1)))
                              (_%target204503204537%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204961204962%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204505204539%_))
                              (_%__match205020205021%_
                               _%e204474204603%_
                               _%hd204475204606%_
                               _%tl204476204608%_
                               _%e204477204611%_
                               _%hd204478204614%_
                               _%tl204479204616%_
                               _%__splice204961204962%_
                               _%target204503204537%_
                               _%tl204505204539%_)
                              (let ()
                                (declare (not safe))
                                (_%g204470204516%_)))))
                      (let () (declare (not safe)) (_%g204470204516%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204479204616%_))
                                                      (let ((_%__splice204961204962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204479204616%_
                        '0))))
                (let ((_%tl204505204539%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204961204962%_ '1)))
                      (_%target204503204537%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204961204962%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204505204539%_))
                      (_%__match205020205021%_
                       _%e204474204603%_
                       _%hd204475204606%_
                       _%tl204476204608%_
                       _%e204477204611%_
                       _%hd204478204614%_
                       _%tl204479204616%_
                       _%__splice204961204962%_
                       _%target204503204537%_
                       _%tl204505204539%_)
                      (let () (declare (not safe)) (_%g204470204516%_)))))
              (let () (declare (not safe)) (_%g204470204516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl204479204616%_))
                                                  (let ((_%__splice204961204962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl204479204616%_
                                                            '0))))
                                                    (let ((_%tl204505204539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice204961204962%_
                                                              '1)))
                                                          (_%target204503204537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice204961204962%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204505204539%_))
                                                          (_%__match205020205021%_
                                                           _%e204474204603%_
                                                           _%hd204475204606%_
                                                           _%tl204476204608%_
                                                           _%e204477204611%_
                                                           _%hd204478204614%_
                                                           _%tl204479204616%_
                                                           _%__splice204961204962%_
                                                           _%target204503204537%_
                                                           _%tl204505204539%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204470204516%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204470204516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204479204616%_))
                                              (let ((_%__splice204961204962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204479204616%_
                                                        '0))))
                                                (let ((_%tl204505204539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204961204962%_
                                                          '1)))
                                                      (_%target204503204537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204961204962%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204505204539%_))
                                                      (_%__match205020205021%_
                                                       _%e204474204603%_
                                                       _%hd204475204606%_
                                                       _%tl204476204608%_
                                                       _%e204477204611%_
                                                       _%hd204478204614%_
                                                       _%tl204479204616%_
                                                       _%__splice204961204962%_
                                                       _%target204503204537%_
                                                       _%tl204505204539%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204470204516%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204470204516%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204479204616%_))
                                      (let ((_%__splice204961204962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl204479204616%_
                                                '0))))
                                        (let ((_%tl204505204539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204961204962%_
                                                  '1)))
                                              (_%target204503204537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204961204962%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204505204539%_))
                                              (_%__match205020205021%_
                                               _%e204474204603%_
                                               _%hd204475204606%_
                                               _%tl204476204608%_
                                               _%e204477204611%_
                                               _%hd204478204614%_
                                               _%tl204479204616%_
                                               _%__splice204961204962%_
                                               _%target204503204537%_
                                               _%tl204505204539%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g204470204516%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204470204516%_))))))
                          (let () (declare (not safe)) (_%g204470204516%_)))))
                  (let () (declare (not safe)) (_%g204470204516%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self204428%_ _%ctx204429%_ _%stx204430%_ _%args204431%_)
        (let ((_%self204434%_ _%self204428%_))
          (if (let ((__method205602
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self204434%_ 'check-arguments))))
                (if __method205602
                    (let ()
                      (declare (not safe))
                      (__method205602
                       _%self204434%_
                       _%ctx204429%_
                       _%stx204430%_
                       _%args204431%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self204434%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature204444%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self204434%_ '2 '#f '#f)))
                     (_%signature204446%_ _%signature204444%_)
                     (_%$e204456%_
                      (if _%signature204446%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature204446%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e204456%_
                    ((lambda (_%unchecked204459%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked204459%_))
                           (let ((__tmp205624
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked204459%_
                                                          '()))
                                              (map (lambda (_%g204460204462%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx204429%_
                                                        _%g204460204462%_)))
                                                   _%args204431%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp205624
                              _%stx204430%_
                              _%ctx204429%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx204429%_ _%stx204430%_))))
                     _%$e204456%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx204429%_ _%stx204430%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx204429%_ _%stx204430%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass204886 __method-table204887)
        (let ((__check-arguments204888
               (let ((__tmp205625
                      (lambda ()
                        (let ((__method204889
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table204887
                                  'check-arguments
                                  '#f))))
                          (if __method204889
                              __method204889
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp205625))))
          (lambda (_%self204428%_ _%ctx204429%_ _%stx204430%_ _%args204431%_)
            (let ((_%self204434%_ _%self204428%_))
              (if ((force __check-arguments204888)
                   _%self204434%_
                   _%ctx204429%_
                   _%stx204430%_
                   _%args204431%_)
                  (let* ((_%signature204444%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self204434%_
                             '2
                             '#f
                             '#f)))
                         (_%signature204446%_ _%signature204444%_)
                         (_%$e204456%_
                          (if _%signature204446%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature204446%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e204456%_
                        ((lambda (_%unchecked204459%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked204459%_))
                               (let ((__tmp205626
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked204459%_
                                                              '()))
                                                  (map (lambda (_%g204460204462%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx204429%_
                                                            _%g204460204462%_)))
                                                       _%args204431%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp205626
                                  _%stx204430%_
                                  _%ctx204429%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx204429%_
                                  _%stx204430%_))))
                         _%$e204456%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx204429%_ _%stx204430%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx204429%_ _%stx204430%_))))))))
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
      (lambda (_%self204179%_ _%ctx204180%_ _%stx204181%_ _%args204182%_)
        (let* ((_%self204185%_ _%self204179%_)
               (_%signature204194204196%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self204185%_ '2 '#f '#f))))
          (if _%signature204194204196%_
              (let* ((_%signature204199%_ _%signature204194204196%_)
                     (_%argument-types204200204202%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature204199%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types204200204202%_
                    (let* ((_%argument-types204205%_
                            _%argument-types204200204202%_)
                           (_%argument-types204210%_
                            (let ((__tmp205627
                                   (lambda (_%t204208%_)
                                     (if _%t204208%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204181%_
                                            _%t204208%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp205627
                               _%argument-types204205%_))))
                      (let _%loop204212%_ ((_%rest-args204214%_ _%args204182%_)
                                           (_%rest-types204215%_
                                            _%argument-types204210%_)
                                           (_%result204216%_ '#t))
                        (let* ((_%rest-args204217204225%_ _%rest-args204214%_)
                               (_%else204219204233%_
                                (lambda () _%result204216%_))
                               (_%K204221204294%_
                                (lambda (_%rest-args204236%_ _%arg204237%_)
                                  (let* ((_%rest-types204238204249%_
                                          _%rest-types204215%_)
                                         (_%E204242204253%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types204238204249%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K204245204282%_
                                           (lambda (_%rest-types204279%_
                                                    _%type204280%_)
                                             (_%loop204212%_
                                              _%rest-args204236%_
                                              _%rest-types204279%_
                                              (if (gxc#check-expression-type!
                                                   _%stx204181%_
                                                   _%arg204237%_
                                                   _%type204280%_)
                                                  _%result204216%_
                                                  '#f))))
                                          (_%K204244204273%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx204181%_
                                                _%argument-types204210%_))))
                                          (_%K204243204263%_
                                           (lambda (_%tail-type204257%_)
                                             (if (let ((__tmp205628
                                                        (lambda (_%g204258204260%_)
                                                          (gxc#check-expression-type!
                                                           _%stx204181%_
                                                           _%g204258204260%_
                                                           _%tail-type204257%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp205628
                                                    _%rest-args204236%_))
                                                 _%result204216%_
                                                 '#f))))
                                      (let ((_%try-match204240204276%_
                                             (lambda ()
                                               (if (null? _%rest-types204238204249%_)
                                                   (_%K204244204273%_)
                                                   (let ((_%tail-type204266%_
                                                          _%rest-types204238204249%_))
                                                     (_%K204243204263%_
                                                      _%tail-type204266%_))))))
                                        (if (pair? _%rest-types204238204249%_)
                                            (let ((_%tl204247204287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types204238204249%_)))
                                                  (_%hd204246204285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types204238204249%_))))
                                              (let ((_%type204290%_
                                                     _%hd204246204285%_)
                                                    (_%rest-types204292%_
                                                     _%tl204247204287%_))
                                                (_%K204245204282%_
                                                 _%rest-types204292%_
                                                 _%type204290%_)))
                                            (_%try-match204240204276%_))))))))
                          (if (pair? _%rest-args204217204225%_)
                              (let ((_%hd204222204297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args204217204225%_)))
                                    (_%tl204223204299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args204217204225%_))))
                                (let* ((_%arg204302%_ _%hd204222204297%_)
                                       (_%rest-args204304%_
                                        _%tl204223204299%_))
                                  (_%K204221204294%_
                                   _%rest-args204304%_
                                   _%arg204302%_)))
                              (_%else204219204233%_)))))
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
      (lambda (_%self203990%_ _%ctx203991%_ _%stx203992%_ _%args203993%_)
        (let* ((_%self203996%_ _%self203990%_)
               (_%g204006204016%_
                (lambda (_%g204007204013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204007204013%_))))
               (_%g204005204054%_
                (lambda (_%g204007204019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204007204019%_))
                      (let ((_%e204009204021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204007204019%_))))
                        (let ((_%hd204010204024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204009204021%_)))
                              (_%tl204011204026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204009204021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204011204026%_))
                              ((lambda (_%L204029%_)
                                 (let* ((_%klass204041%_
                                         (let ((__tmp205629
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203996%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203992%_
                                            __tmp205629)))
                                        (_%object204043%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203991%_
                                            _%L204029%_)))
                                        (_%instance?204048%_
                                         (let ((_%$e204045%_
                                                (gxc#expression-type?
                                                 _%object204043%_
                                                 _%klass204041%_)))
                                           (if _%$e204045%_
                                               _%$e204045%_
                                               (gxc#expression-type?
                                                _%L204029%_
                                                _%klass204041%_)))))
                                   (if _%instance?204048%_
                                       (let ((__tmp205630
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object204043%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L204029%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object204043%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205630
                                          _%stx203992%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx203991%_
                                          _%stx203992%_)))))
                               _%hd204010204024%_)
                              (_%g204006204016%_ _%g204007204019%_))))
                      (_%g204006204016%_ _%g204007204019%_)))))
          (_%g204005204054%_ _%args203993%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self203786%_ _%ctx203787%_ _%stx203788%_ _%args203789%_)
        (let* ((_%self203792%_ _%self203786%_)
               (_%g203802203812%_
                (lambda (_%g203803203809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203803203809%_))))
               (_%g203801203865%_
                (lambda (_%g203803203815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203803203815%_))
                      (let ((_%e203805203817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203803203815%_))))
                        (let ((_%hd203806203820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203805203817%_)))
                              (_%tl203807203822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203805203817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203807203822%_))
                              ((lambda (_%L203825%_)
                                 (let* ((_%klass203837%_
                                         (let ((__tmp205631
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203792%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203788%_
                                            __tmp205631)))
                                        (_%object203839%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203787%_
                                            _%L203825%_)))
                                        (_%instance?203844%_
                                         (let ((_%$e203841%_
                                                (gxc#expression-type?
                                                 _%object203839%_
                                                 _%klass203837%_)))
                                           (if _%$e203841%_
                                               _%$e203841%_
                                               (gxc#expression-type?
                                                _%L203825%_
                                                _%klass203837%_))))
                                        (_%klass203847%_ _%klass203837%_))
                                   (if _%instance?203844%_
                                       (let ((__tmp205632
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object203839%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L203825%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object203839%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205632
                                          _%stx203788%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203847%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp205633
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass203847%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object203839%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205633
                                              _%stx203788%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203847%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp205634
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass203847%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object203839%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205634
                                                  _%stx203788%_))
                                               (let ((__tmp205635
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self203792%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object203839%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205635
                                                  _%stx203788%_)))))))
                               _%hd203806203820%_)
                              (_%g203802203812%_ _%g203803203815%_))))
                      (_%g203802203812%_ _%g203803203815%_)))))
          (_%g203801203865%_ _%args203789%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx203449%_)
        (let* ((_%__stx205030205031%_ _%stx203449%_)
               (_%g203454203495%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205030205031%_)))))
          (let ((_%__kont205032205033%_ (lambda () '#t))
                (_%__kont205034205035%_ (lambda () '#t))
                (_%__kont205036205037%_
                 (lambda (_%L203563%_ _%L203564%_)
                   (let ((_%rator-type203585203587%_
                          (let ((__tmp205636
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L203564%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp205636))))
                     (if _%rator-type203585203587%_
                         (let* ((_%rator-type203590%_
                                 _%rator-type203585203587%_)
                                (_%rator-signature203591203593%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type203590%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type203590%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature203591203593%_
                               (let* ((_%rator-signature203596%_
                                       _%rator-signature203591203593%_)
                                      (_%rator-effect203597203599%_
                                       (if _%rator-signature203596%_
                                           (##direct-structure-ref
                                            _%rator-signature203596%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect203597203599%_
                                     (let ((_%rator-effect203602%_
                                            _%rator-effect203597203599%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect203602%_)
                                               (equal? '(alloc)
                                                       _%rator-effect203602%_))
                                           (let ((__tmp205637
                                                  (let ((__tmp205638
                                                         (lambda (_%g203607203610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g203608203612%_)
                   (cons _%g203607203610%_ _%g203608203612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp205638
                                                     '()
                                                     _%L203563%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp205637))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont205040205041%_ (lambda () '#f)))
            (let ((_%__match205119205120%_
                   (lambda (_%e203470203507%_
                            _%hd203471203510%_
                            _%tl203472203512%_
                            _%e203473203515%_
                            _%hd203474203518%_
                            _%tl203475203520%_
                            _%e203476203523%_
                            _%hd203477203526%_
                            _%tl203478203528%_
                            _%e203479203531%_
                            _%hd203480203534%_
                            _%tl203481203536%_
                            _%__splice205038205039%_
                            _%target203482203539%_
                            _%tl203484203541%_)
                     (letrec ((_%loop203485203544%_
                               (lambda (_%hd203483203547%_
                                        _%rand203489203549%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203483203547%_))
                                     (let ((_%e203486203552%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd203483203547%_))))
                                       (let ((_%lp-tl203488203557%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203486203552%_)))
                                             (_%lp-hd203487203555%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203486203552%_))))
                                         (_%loop203485203544%_
                                          _%lp-tl203488203557%_
                                          (cons _%lp-hd203487203555%_
                                                _%rand203489203549%_))))
                                     (let ((_%rand203490203560%_
                                            (reverse _%rand203489203549%_)))
                                       (_%__kont205036205037%_
                                        _%rand203490203560%_
                                        _%hd203480203534%_))))))
                       (_%loop203485203544%_ _%target203482203539%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205030205031%_))
                  (let ((_%e203456203643%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205030205031%_))))
                    (let ((_%tl203458203648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203456203643%_)))
                          (_%hd203457203646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203456203643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd203457203646%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd203457203646%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203458203648%_))
                                  (let ((_%e203459203651%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203458203648%_))))
                                    (let ((_%tl203461203656%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203459203651%_)))
                                          (_%hd203460203654%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203459203651%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203461203656%_))
                                          (_%__kont205032205033%_)
                                          (_%__kont205040205041%_))))
                                  (_%__kont205040205041%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd203457203646%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203458203648%_))
                                      (let ((_%e203465203628%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203458203648%_))))
                                        (let ((_%tl203467203633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203465203628%_)))
                                              (_%hd203466203631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203465203628%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203467203633%_))
                                              (_%__kont205034205035%_)
                                              (_%__kont205040205041%_))))
                                      (_%__kont205040205041%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd203457203646%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203458203648%_))
                                          (let ((_%e203473203515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203458203648%_))))
                                            (let ((_%tl203475203520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203473203515%_)))
                                                  (_%hd203474203518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203473203515%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203474203518%_))
                                                  (let ((_%e203476203523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203474203518%_))))
                                                    (let ((_%tl203478203528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203476203523%_)))
                                                          (_%hd203477203526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203476203523%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203477203526%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd203477203526%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203478203528%_))
                          (let ((_%e203479203531%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203478203528%_))))
                            (let ((_%tl203481203536%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203479203531%_)))
                                  (_%hd203480203534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203479203531%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203481203536%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203475203520%_))
                                      (let ((_%__splice205038205039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl203475203520%_
                                                '0))))
                                        (let ((_%tl203484203541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205038205039%_
                                                  '1)))
                                              (_%target203482203539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205038205039%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203484203541%_))
                                              (_%__match205119205120%_
                                               _%e203456203643%_
                                               _%hd203457203646%_
                                               _%tl203458203648%_
                                               _%e203473203515%_
                                               _%hd203474203518%_
                                               _%tl203475203520%_
                                               _%e203476203523%_
                                               _%hd203477203526%_
                                               _%tl203478203528%_
                                               _%e203479203531%_
                                               _%hd203480203534%_
                                               _%tl203481203536%_
                                               _%__splice205038205039%_
                                               _%target203482203539%_
                                               _%tl203484203541%_)
                                              (_%__kont205040205041%_))))
                                      (_%__kont205040205041%_))
                                  (_%__kont205040205041%_))))
                          (_%__kont205040205041%_))
                      (_%__kont205040205041%_))
                  (_%__kont205040205041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205040205041%_))))
                                          (_%__kont205040205041%_))
                                      (_%__kont205040205041%_))))
                          (_%__kont205040205041%_))))
                  (_%__kont205040205041%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx203444%_ _%klass203445%_)
        (let ((_%expr-type203447%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx203444%_))))
          (if _%expr-type203447%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type203447%_ _%klass203445%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx203422%_ _%expr203423%_ _%type203424%_)
        (if (not _%type203424%_)
            '#f
            (let ((_%$e203427%_
                   (eq? (##structure-ref _%type203424%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e203427%_
                  _%$e203427%_
                  (let ((_%expr-type203431%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr203423%_))))
                    (if (not _%expr-type203431%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type203431%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e203435%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type203431%_
                                      'gxc#!abort::t))))
                              (if _%$e203435%_
                                  _%$e203435%_
                                  (let ((_%$e203438%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type203431%_
                                            _%type203424%_))))
                                    (if _%$e203438%_
                                        _%$e203438%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type203424%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type203424%_
                                                   _%expr-type203431%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx203422%_
                                                   _%expr203423%_
                                                   _%expr-type203431%_
                                                   _%type203424%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self203236%_ _%ctx203237%_ _%stx203238%_ _%args203239%_)
        (let* ((_%self203242%_ _%self203236%_)
               (_%klass203252%_
                (let ((__tmp205639
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self203242%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx203238%_ __tmp205639)))
               (_%fields203254%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203252%_
                           '5
                           '#f
                           '#f))))
               (_%args203260%_
                (map (lambda (_%g203255203257%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx203237%_ _%g203255203257%_)))
                     _%args203239%_))
               (_%inline-make-object203262%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self203242%_
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
                           _%self203242%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields203254%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass203265%_ _%klass203252%_)
               (_%$e203279%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass203265%_ '6 '#f '#f))))
          (if _%$e203279%_
              ((lambda (_%ctor203282%_)
                 (let ((_%$obj203284%_
                        (let ((__tmp205640
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp205640)))
                       (_%ctor-impl203285%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass203265%_
                           _%ctor203282%_))))
                   (let ((__tmp205641
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203284%_ '())
                                                  (cons _%inline-make-object203262%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl203285%_
                                                            (let ((__tmp205642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl203285%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj203284%_ '()))
                                             _%args203260%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp205642
                       _%stx203238%_
                       _%ctx203237%_))
                    (let ((_%$ctor203287%_
                           (let ((__tmp205643
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp205643))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor203287%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203242%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj203284%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor203282%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor203287%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor203287%_ '()))
                              (cons (cons '%#ref (cons _%$obj203284%_ '()))
                                    _%args203260%_)))
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
                             _%self203242%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor203282%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj203284%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp205641 _%stx203238%_))))
               _%$e203279%_)
              (let ((_%$e203289%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass203265%_
                        '10
                        '#f
                        '#f))))
                (if _%$e203289%_
                    ((lambda (_%metaclass203292%_)
                       (let* ((_%$obj203294%_
                               (let ((__tmp205644
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp205644)))
                              (_%metakons203296%_
                               (let ((__tmp205645
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx203238%_
                                         _%metaclass203292%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp205645
                                  'instance-init!)))
                              (__tmp205646
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj203294%_
                                                             '())
                                                       (cons _%inline-make-object203262%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons203296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp205647
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons203296%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self203242%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args203260%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp205647
                            _%stx203238%_
                            _%ctx203237%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self203242%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj203294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args203260%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj203294%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp205646 _%stx203238%_)))
                     _%$e203289%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203265%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp205648
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args203260%_))))
                              (declare (not safe))
                              (##fx= __tmp205648 _%fields203254%_))
                            (let ((__tmp205649
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self203242%_
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
                                              _%self203242%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args203260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp205649
                               _%stx203238%_))
                            (let ((__tmp205651
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self203242%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp205650
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass203265%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx203238%_
                               __tmp205651
                               __tmp205650)))
                        (let ((_%$obj203301%_
                               (let ((__tmp205652
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp205652))))
                          (let _%lp203303%_ ((_%rest203305%_ _%args203260%_)
                                             (_%initializers203306%_ '()))
                            (let* ((_%__stx205122205123%_ _%rest203305%_)
                                   (_%g203310203331%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx205122205123%_)))))
                              (let ((_%__kont205124205125%_
                                     (lambda (_%L203385%_
                                              _%L203386%_
                                              _%L203387%_)
                                       (let* ((_%slot203414%_
                                               (let ((__tmp205653
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L203387%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp205653)))
                                              (_%off203416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass203265%_
                                                  _%slot203414%_))))
                                         (if _%off203416%_
                                             (_%lp203303%_
                                              _%L203385%_
                                              (cons (cons _%off203416%_
                                                          _%L203386%_)
                                                    _%initializers203306%_))
                                             (let ((__tmp205654
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203242%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx203238%_
                                                __tmp205654
                                                _%slot203414%_))))))
                                    (_%__kont205126205127%_
                                     (lambda ()
                                       (let ((__tmp205655
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203262%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp205658
                                     (cons (cons '%#ref
                                                 (cons _%$obj203301%_ '()))
                                           '()))
                                    (__tmp205656
                                     (let ((__tmp205657
                                            (lambda (_%i203345%_ _%r203346%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self203242%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i203345%_) '()))
                              (cons (cons '%#ref (cons _%$obj203301%_ '()))
                                    (cons (cdr _%i203345%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r203346%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp205657
                                        '()
                                        _%initializers203306%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp205658 __tmp205656)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205655
                                          _%stx203238%_))))
                                    (_%__kont205128205129%_
                                     (lambda ()
                                       (let ((__tmp205659
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203262%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args203260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj203301%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205659
                                          _%stx203238%_)))))
                                (let* ((_%g203308203348%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx205122205123%_))
                                              (_%__kont205126205127%_)
                                              (_%__kont205128205129%_))))
                                       (_%__match205159205160%_
                                        (lambda (_%e203315203353%_
                                                 _%hd203316203356%_
                                                 _%tl203317203358%_
                                                 _%e203318203361%_
                                                 _%hd203319203364%_
                                                 _%tl203320203366%_
                                                 _%e203321203369%_
                                                 _%hd203322203372%_
                                                 _%tl203323203374%_
                                                 _%e203324203377%_
                                                 _%hd203325203380%_
                                                 _%tl203326203382%_)
                                          (let ((_%L203385%_
                                                 _%tl203326203382%_)
                                                (_%L203386%_
                                                 _%hd203325203380%_)
                                                (_%L203387%_
                                                 _%hd203322203372%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L203387%_))
                                                (_%__kont205124205125%_
                                                 _%L203385%_
                                                 _%L203386%_
                                                 _%L203387%_)
                                                (_%__kont205128205129%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx205122205123%_))
                                      (let ((_%e203315203353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx205122205123%_))))
                                        (let ((_%tl203317203358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203315203353%_)))
                                              (_%hd203316203356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203315203353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203316203356%_))
                                              (let ((_%e203318203361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203316203356%_))))
                                                (let ((_%tl203320203366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203318203361%_)))
                                                      (_%hd203319203364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203318203361%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd203319203364%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd203319203364%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203320203366%_))
                      (let ((_%e203321203369%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203320203366%_))))
                        (let ((_%tl203323203374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203321203369%_)))
                              (_%hd203322203372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203321203369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203323203374%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203317203358%_))
                                  (let ((_%e203324203377%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203317203358%_))))
                                    (let ((_%tl203326203382%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203324203377%_)))
                                          (_%hd203325203380%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203324203377%_))))
                                      (_%__match205159205160%_
                                       _%e203315203353%_
                                       _%hd203316203356%_
                                       _%tl203317203358%_
                                       _%e203318203361%_
                                       _%hd203319203364%_
                                       _%tl203320203366%_
                                       _%e203321203369%_
                                       _%hd203322203372%_
                                       _%tl203323203374%_
                                       _%e203324203377%_
                                       _%hd203325203380%_
                                       _%tl203326203382%_)))
                                  (_%__kont205128205129%_))
                              (_%__kont205128205129%_))))
                      (_%__kont205128205129%_))
                  (_%__kont205128205129%_))
              (_%__kont205128205129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205128205129%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203308203348%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self203019%_ _%ctx203020%_ _%stx203021%_ _%args203022%_)
        (let* ((_%self203025%_ _%self203019%_)
               (_%arguments-ok?203035%_
                (let ((__method205603
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self203025%_ 'check-arguments))))
                  (if __method205603
                      (let ()
                        (declare (not safe))
                        (__method205603
                         _%self203025%_
                         _%ctx203020%_
                         _%stx203021%_
                         _%args203022%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self203025%_
                                 'check-arguments))
                        '#!void))))
               (_%g203037203047%_
                (lambda (_%g203038203044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203038203044%_))))
               (_%g203036203111%_
                (lambda (_%g203038203050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203038203050%_))
                      (let ((_%e203040203052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203038203050%_))))
                        (let ((_%hd203041203055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203040203052%_)))
                              (_%tl203042203057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203040203052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203042203057%_))
                              ((lambda (_%L203060%_)
                                 (let* ((_%klass203073%_
                                         (let ((__tmp205660
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203025%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203021%_
                                            __tmp205660)))
                                        (_%field203075%_
                                         (let ((__tmp205661
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203025%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass203073%_
                                            __tmp205661)))
                                        (_%object203077%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203020%_
                                            _%L203060%_)))
                                        (_%klass203080%_ _%klass203073%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass203080%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp205662
                                              (cons (if (or _%arguments-ok?203035%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203025%_
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
                                 _%self203025%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field203075%_ '()))
                        (cons _%object203077%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205662
                                          _%stx203021%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203080%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp205663
                                                  (cons (if (or _%arguments-ok?203035%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203025%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203025%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203075%_ '()))
                            (cons _%object203077%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205663
                                              _%stx203021%_))
                                           (let ((_%$e203099%_
                                                  (let ((__tmp205664
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203025%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass203080%_
                                                     __tmp205664))))
                                             (if _%$e203099%_
                                                 ((lambda (_%klass203102%_)
                                                    (let ((__tmp205665
                                                           (cons (if (or _%arguments-ok?203035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203025%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self203025%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field203075%_ '()))
                                     (cons _%object203077%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp205665 _%stx203021%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e203099%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self203025%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp205666
                                                            (let ((_%$obj203108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp205667
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp205667))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj203108%_ '())
                                              (cons _%object203077%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass203080%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj203108%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203025%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203075%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj203108%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?203035%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203108%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self203025%_
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
                                                             _%self203025%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj203108%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self203025%_
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
               (gxc#xform-wrap-source __tmp205666 _%stx203021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp205668
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object203077%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203025%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp205668 _%stx203021%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd203041203055%_)
                              (_%g203037203047%_ _%g203038203050%_))))
                      (_%g203037203047%_ _%g203038203050%_)))))
          (_%g203036203111%_ _%args203022%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass204890 __method-table204891)
        (let ((__check-arguments204892
               (let ((__tmp205669
                      (lambda ()
                        (let ((__method204893
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table204891
                                  'check-arguments
                                  '#f))))
                          (if __method204893
                              __method204893
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp205669)))
              (__slot204894
               (let ((__slot204895
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass204890 'slot))))
                 (if __slot204895
                     __slot204895
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self203019%_ _%ctx203020%_ _%stx203021%_ _%args203022%_)
            (let* ((_%self203025%_ _%self203019%_)
                   (_%arguments-ok?203035%_
                    ((force __check-arguments204892)
                     _%self203025%_
                     _%ctx203020%_
                     _%stx203021%_
                     _%args203022%_))
                   (_%g203037203047%_
                    (lambda (_%g203038203044%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g203038203044%_))))
                   (_%g203036203111%_
                    (lambda (_%g203038203050%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g203038203050%_))
                          (let ((_%e203040203052%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g203038203050%_))))
                            (let ((_%hd203041203055%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203040203052%_)))
                                  (_%tl203042203057%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203040203052%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203042203057%_))
                                  ((lambda (_%L203060%_)
                                     (let* ((_%klass203073%_
                                             (let ((__tmp205670
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203025%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx203021%_
                                                __tmp205670)))
                                            (_%field203075%_
                                             (let ((__tmp205671
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203025%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass203073%_
                                                __tmp205671)))
                                            (_%object203077%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx203020%_
                                                _%L203060%_)))
                                            (_%klass203080%_ _%klass203073%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203080%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp205672
                                                  (cons (if (or _%arguments-ok?203035%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203025%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203025%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203075%_ '()))
                            (cons _%object203077%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205672
                                              _%stx203021%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203080%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp205673
                                                      (cons (if (or _%arguments-ok?203035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self203025%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203025%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field203075%_ '()))
                                (cons _%object203077%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205673
                                                  _%stx203021%_))
                                               (let ((_%$e203099%_
                                                      (let ((__tmp205674
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self203025%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass203080%_ __tmp205674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e203099%_
                                                     ((lambda (_%klass203102%_)
                                                        (let ((__tmp205675
                                                               (cons (if (or _%arguments-ok?203035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203025%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self203025%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field203075%_ '()))
                                         (cons _%object203077%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp205675 _%stx203021%_)))
              _%$e203099%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203025%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp205676
                                                                (let ((_%$obj203108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp205677
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp205677))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203108%_ '())
                                                  (cons _%object203077%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass203080%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj203108%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203025%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field203075%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203108%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?203035%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj203108%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203025%_
                               __slot204894
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
                        (##unchecked-structure-ref _%self203025%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203025%_
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
                   (gxc#xform-wrap-source __tmp205676 _%stx203021%_))
                 (let ((__tmp205678
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object203077%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203025%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp205678 _%stx203021%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd203041203055%_)
                                  (_%g203037203047%_ _%g203038203050%_))))
                          (_%g203037203047%_ _%g203038203050%_)))))
              (_%g203036203111%_ _%args203022%_))))))
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
      (lambda (_%self202783%_ _%ctx202784%_ _%stx202785%_ _%args202786%_)
        (let* ((_%self202789%_ _%self202783%_)
               (_%arguments-ok?202799%_
                (let ((__method205604
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self202789%_ 'check-arguments))))
                  (if __method205604
                      (let ()
                        (declare (not safe))
                        (__method205604
                         _%self202789%_
                         _%ctx202784%_
                         _%stx202785%_
                         _%args202786%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self202789%_
                                 'check-arguments))
                        '#!void))))
               (_%g202801202815%_
                (lambda (_%g202802202812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202802202812%_))))
               (_%g202800202894%_
                (lambda (_%g202802202818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202802202818%_))
                      (let ((_%e202805202820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202802202818%_))))
                        (let ((_%hd202806202823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202805202820%_)))
                              (_%tl202807202825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202805202820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202807202825%_))
                              (let ((_%e202808202828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202807202825%_))))
                                (let ((_%hd202809202831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202808202828%_)))
                                      (_%tl202810202833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202808202828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202810202833%_))
                                      ((lambda (_%L202836%_ _%L202837%_)
                                         (let* ((_%klass202853%_
                                                 (let ((__tmp205679
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self202789%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx202785%_
                                                    __tmp205679)))
                                                (_%field202855%_
                                                 (let ((__tmp205680
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self202789%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass202853%_
                                                    __tmp205680)))
                                                (_%object202857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx202784%_
                                                    _%L202837%_)))
                                                (_%value202859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx202784%_
                                                    _%L202836%_)))
                                                (_%klass202862%_
                                                 _%klass202853%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass202862%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp205681
                                                      (cons (if (or _%arguments-ok?202799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self202789%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self202789%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field202855%_ '()))
                                (cons _%object202857%_
                                      (cons _%value202859%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205681
                                                  _%stx202785%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass202862%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp205682
                                                          (cons (if (or _%arguments-ok?202799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self202789%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self202789%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field202855%_ '()))
                                    (cons _%object202857%_
                                          (cons _%value202859%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp205682
                                                      _%stx202785%_))
                                                   (let ((_%$e202882%_
                                                          (let ((__tmp205683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self202789%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass202862%_
                     __tmp205683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e202882%_
                                                         ((lambda (_%klass202885%_)
                                                            (let ((__tmp205684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?202799%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self202789%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self202789%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field202855%_ '()))
                                             (cons _%object202857%_
                                                   (cons _%value202859%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp205684 _%stx202785%_)))
                  _%$e202882%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self202789%_ '4 '#f '#f))
                     (let ((__tmp205685
                            (let ((_%$obj202891%_
                                   (let ((__tmp205686
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp205686))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj202891%_ '())
                                                      (cons _%object202857%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass202862%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj202891%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self202789%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field202855%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj202891%_
                                                              '()))
                                                  (cons _%value202859%_
                                                        '())))))
                          (cons (if _%arguments-ok?202799%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj202891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self202789%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value202859%_ '())))))
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
                             _%self202789%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj202891%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self202789%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value202859%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp205685 _%stx202785%_))
                     (let ((__tmp205687
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object202857%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self202789%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value202859%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp205687
                        _%stx202785%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd202809202831%_
                                       _%hd202806202823%_)
                                      (_%g202801202815%_ _%g202802202818%_))))
                              (_%g202801202815%_ _%g202802202818%_))))
                      (_%g202801202815%_ _%g202802202818%_)))))
          (_%g202800202894%_ _%args202786%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass204896 __method-table204897)
        (let ((__check-arguments204898
               (let ((__tmp205688
                      (lambda ()
                        (let ((__method204899
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table204897
                                  'check-arguments
                                  '#f))))
                          (if __method204899
                              __method204899
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp205688))))
          (lambda (_%self202783%_ _%ctx202784%_ _%stx202785%_ _%args202786%_)
            (let* ((_%self202789%_ _%self202783%_)
                   (_%arguments-ok?202799%_
                    ((force __check-arguments204898)
                     _%self202789%_
                     _%ctx202784%_
                     _%stx202785%_
                     _%args202786%_))
                   (_%g202801202815%_
                    (lambda (_%g202802202812%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g202802202812%_))))
                   (_%g202800202894%_
                    (lambda (_%g202802202818%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g202802202818%_))
                          (let ((_%e202805202820%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g202802202818%_))))
                            (let ((_%hd202806202823%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202805202820%_)))
                                  (_%tl202807202825%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202805202820%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202807202825%_))
                                  (let ((_%e202808202828%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202807202825%_))))
                                    (let ((_%hd202809202831%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202808202828%_)))
                                          (_%tl202810202833%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202808202828%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202810202833%_))
                                          ((lambda (_%L202836%_ _%L202837%_)
                                             (let* ((_%klass202853%_
                                                     (let ((__tmp205689
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self202789%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx202785%_
                                                        __tmp205689)))
                                                    (_%field202855%_
                                                     (let ((__tmp205690
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self202789%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass202853%_
                                                        __tmp205690)))
                                                    (_%object202857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx202784%_
                                                        _%L202837%_)))
                                                    (_%value202859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx202784%_
                                                        _%L202836%_)))
                                                    (_%klass202862%_
                                                     _%klass202853%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass202862%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp205691
                                                          (cons (if (or _%arguments-ok?202799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self202789%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self202789%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field202855%_ '()))
                                    (cons _%object202857%_
                                          (cons _%value202859%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp205691
                                                      _%stx202785%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass202862%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp205692
                                                              (cons (if (or _%arguments-ok?202799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self202789%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self202789%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field202855%_ '()))
                                        (cons _%object202857%_
                                              (cons _%value202859%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp205692 _%stx202785%_))
               (let ((_%$e202882%_
                      (let ((__tmp205693
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self202789%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass202862%_
                         __tmp205693))))
                 (if _%$e202882%_
                     ((lambda (_%klass202885%_)
                        (let ((__tmp205694
                               (cons (if (or _%arguments-ok?202799%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self202789%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self202789%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field202855%_
                                                             '()))
                                                 (cons _%object202857%_
                                                       (cons _%value202859%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp205694 _%stx202785%_)))
                      _%$e202882%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self202789%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp205695
                                (let ((_%$obj202891%_
                                       (let ((__tmp205696
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp205696))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj202891%_
                                                                '())
                                                          (cons _%object202857%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass202862%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj202891%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self202789%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field202855%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj202891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value202859%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?202799%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj202891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self202789%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value202859%_ '())))))
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
                                 _%self202789%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj202891%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self202789%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value202859%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp205695 _%stx202785%_))
                         (let ((__tmp205697
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object202857%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self202789%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value202859%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp205697
                            _%stx202785%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd202809202831%_
                                           _%hd202806202823%_)
                                          (_%g202801202815%_
                                           _%g202802202818%_))))
                                  (_%g202801202815%_ _%g202802202818%_))))
                          (_%g202801202815%_ _%g202802202818%_)))))
              (_%g202800202894%_ _%args202786%_))))))
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
      (lambda (_%self202598%_ _%ctx202599%_ _%stx202600%_ _%args202601%_)
        (let* ((_%self202604%_ _%self202598%_)
               (_%self202613202623%_ _%self202604%_)
               (_%E202615202627%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self202613202623%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K202616202637%_
                (lambda (_%inline202630%_ _%dispatch202631%_ _%arity202632%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self202604%_
                         _%args202601%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx202600%_
                         _%arity202632%_)))
                  (if _%inline202630%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp205698 (_%inline202630%_ _%stx202600%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp205698
                           _%stx202600%_
                           _%ctx202599%_)))
                      (if (and _%dispatch202631%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch202631%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch202631%_))
                            (let ((__tmp205699
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch202631%_
                                                           '()))
                                               _%args202601%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp205699
                               _%stx202600%_
                               _%ctx202599%_)))
                          (gxc#!procedure::optimize-call
                           _%self202604%_
                           _%ctx202599%_
                           _%stx202600%_
                           _%args202601%_)))))
               (_%e202617202640%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202613202623%_ '1 '#f '#f)))
               (_%e202618202643%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202613202623%_ '2 '#f '#f)))
               (_%e202619202646%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202613202623%_ '3 '#f '#f)))
               (_%arity202649%_ _%e202619202646%_)
               (_%e202620202651%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202613202623%_ '4 '#f '#f)))
               (_%dispatch202654%_ _%e202620202651%_)
               (_%e202621202656%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202613202623%_ '5 '#f '#f)))
               (_%inline202659%_ _%e202621202656%_))
          (_%K202616202637%_
           _%inline202659%_
           _%dispatch202654%_
           _%arity202649%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self202450%_ _%ctx202451%_ _%stx202452%_ _%args202453%_)
        (let* ((_%self202456%_ _%self202450%_)
               (_%$e202470%_
                (let ((__tmp205701
                       (lambda (_%g202465202467%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g202465202467%_
                            _%args202453%_))))
                      (__tmp205700
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self202456%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp205701 __tmp205700))))
          (if _%$e202470%_
              ((lambda (_%clause202473%_)
                 (let ((__method205605
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause202473%_ 'optimize-call))))
                   (if __method205605
                       (let ()
                         (declare (not safe))
                         (__method205605
                          _%clause202473%_
                          _%ctx202451%_
                          _%stx202452%_
                          _%args202453%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause202473%_
                                  'optimize-call))
                         '#!void))))
               _%$e202470%_)
              (let ((__tmp205702
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self202456%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx202452%_
                 __tmp205702))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self202190%_ _%ctx202191%_ _%stx202192%_ _%args202193%_)
        (let* ((_%self202196%_ _%self202190%_)
               (_%self202205202214%_ _%self202196%_)
               (_%E202207202218%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self202205202214%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K202208202309%_
                (lambda (_%dispatch202221%_ _%table202222%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch202221%_))
                      (let* ((_%g202223202233%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch202221%_)))
                             (_%else202225202241%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch202221%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx202191%_
                                   _%stx202192%_))))
                             (_%K202227202290%_
                              (lambda (_%main202244%_ _%keys202245%_)
                                (let ((_g205703_
                                       (gxc#!kw-lambda-split-args
                                        _%stx202192%_
                                        _%args202193%_)))
                                  (begin
                                    (let ((_g205704_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205703_)
                                                 (##values-length _g205703_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205704_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205704_)))
                                    (let ((_%pargs202247%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205703_ 0)))
                                          (_%kwargs202248%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205703_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main202244%_))
                                        (if _%table202222%_
                                            (let ((_%xargs202256%_
                                                   (map (lambda (_%key202250%_)
                                                          (let ((_%$e202252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key202250%_ _%kwargs202248%_))))
                    (if _%$e202252%_ _%$e202252%_ '(%#ref absent-value))))
                _%keys202245%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw202258%_)
                                                 (if (memq (car _%kw202258%_)
                                                           _%keys202245%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx202192%_
                                                        _%keys202245%_
                                                        _%kw202258%_))))
                                               _%kwargs202248%_)
                                              (let ((__tmp205705
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main202244%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs202247%_
                                  _%xargs202256%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp205705
                                                 _%stx202192%_
                                                 _%ctx202191%_)))
                                            (let* ((_%kwt202260%_
                                                    (let ((__tmp205706
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp205706)))
                                                   (_%kwvars202264%_
                                                    (map (lambda (_%_202262%_)
                                                           (let ((__tmp205707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp205707)))
                 _%kwargs202248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind202269%_
                                                    (map (lambda (_%kw202266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202267%_)
                   (cons (cons _%kwvar202267%_ '())
                         (cons (cdr _%kw202266%_) '())))
                 _%kwargs202248%_
                 _%kwvars202264%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset202274%_
                                                    (map (lambda (_%kw202271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202272%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt202260%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw202271%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar202272%_
                                                             '()))
                                                 '()))))))
                 _%kwargs202248%_
                 _%kwvars202264%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs202279%_
                                                    (map (lambda (_%kw202276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202277%_)
                   (cons (car _%kw202276%_)
                         (cons '%#ref (cons _%kwvar202277%_ '()))))
                 _%kwargs202248%_
                 _%kwvars202264%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs202287%_
                                                    (map (lambda (_%key202281%_)
                                                           (let ((_%$e202283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key202281%_ _%xkwargs202279%_))))
                     (if _%$e202283%_ _%$e202283%_ '(%#ref absent-value))))
                 _%keys202245%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp205708
                                                    (cons '%#let-values
                                                          (cons _%kwbind202269%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt202260%_ '())
                                                      (cons (let ((__tmp205709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs202248%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp205709 _%stx202192%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp205710
                                                             (cons (let ((__tmp205711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main202244%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt202260%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs202247%_
                                                       _%xargs202287%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp205711 _%stx202192%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp205710 _%kwset202274%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp205708
                                               _%stx202192%_
                                               _%ctx202191%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g202223202233%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e202228202293%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202223202233%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e202229202296%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202223202233%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e202230202299%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202223202233%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys202302%_ _%e202230202299%_)
                                   (_%e202231202304%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202223202233%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main202307%_ _%e202231202304%_))
                              (_%K202227202290%_
                               _%main202307%_
                               _%keys202302%_))
                            (_%else202225202241%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx202191%_ _%stx202192%_)))))
               (_%e202209202312%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202205202214%_ '1 '#f '#f)))
               (_%e202210202315%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202205202214%_ '2 '#f '#f)))
               (_%e202211202318%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202205202214%_ '3 '#f '#f)))
               (_%table202321%_ _%e202211202318%_)
               (_%e202212202323%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202205202214%_ '4 '#f '#f)))
               (_%dispatch202326%_ _%e202212202323%_))
          (_%K202208202309%_ _%dispatch202326%_ _%table202321%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx201803%_ _%args201804%_)
        (let _%lp201806%_ ((_%rest201808%_ _%args201804%_)
                           (_%pargs201809%_ '())
                           (_%kwargs201810%_ '()))
          (let* ((_%__stx205164205165%_ _%rest201808%_)
                 (_%g201816201868%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205164205165%_)))))
            (let ((_%__kont205166205167%_
                   (lambda (_%L202047%_ _%L202048%_)
                     (_%lp201806%_
                      _%L202047%_
                      (cons _%L202048%_ _%pargs201809%_)
                      _%kwargs201810%_)))
                  (_%__kont205168205169%_
                   (lambda (_%L201993%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L201993%_ _%pargs201809%_))
                             (reverse _%kwargs201810%_))))
                  (_%__kont205170205171%_
                   (lambda (_%L201940%_ _%L201941%_ _%L201942%_)
                     (let ((_%kw201959%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L201942%_))))
                       (if (assq _%kw201959%_ _%kwargs201810%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx201803%_
                              _%kw201959%_))
                           (_%lp201806%_
                            _%L201940%_
                            _%pargs201809%_
                            (cons (cons _%kw201959%_ _%L201941%_)
                                  _%kwargs201810%_))))))
                  (_%__kont205172205173%_
                   (lambda (_%L201888%_ _%L201889%_)
                     (_%lp201806%_
                      _%L201888%_
                      (cons _%L201889%_ _%pargs201809%_)
                      _%kwargs201810%_)))
                  (_%__kont205174205175%_
                   (lambda ()
                     (values (reverse _%pargs201809%_)
                             (reverse _%kwargs201810%_)))))
              (let ((_%__match205271205272%_
                     (lambda (_%e201847201908%_
                              _%hd201848201911%_
                              _%tl201849201913%_
                              _%e201850201916%_
                              _%hd201851201919%_
                              _%tl201852201921%_
                              _%e201853201924%_
                              _%hd201854201927%_
                              _%tl201855201929%_
                              _%e201856201932%_
                              _%hd201857201935%_
                              _%tl201858201937%_)
                       (let ((_%L201940%_ _%tl201858201937%_)
                             (_%L201941%_ _%hd201857201935%_)
                             (_%L201942%_ _%hd201854201927%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L201942%_))
                             (_%__kont205170205171%_
                              _%L201940%_
                              _%L201941%_
                              _%L201942%_)
                             (_%__kont205172205173%_
                              _%tl201849201913%_
                              _%hd201848201911%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx205164205165%_))
                    (let ((_%e201820202012%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx205164205165%_))))
                      (let ((_%tl201822202017%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201820202012%_)))
                            (_%hd201821202015%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201820202012%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd201821202015%_))
                            (let ((_%e201823202020%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd201821202015%_))))
                              (let ((_%tl201825202025%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201823202020%_)))
                                    (_%hd201824202023%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201823202020%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201824202023%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd201824202023%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201825202025%_))
                                            (let ((_%e201826202028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201825202025%_))))
                                              (let ((_%tl201828202033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201826202028%_)))
                                                    (_%hd201827202031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201826202028%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd201827202031%_))
                                                    (let ((_%e201829202036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd201827202031%_))))
                                                      (if (equal? _%e201829202036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201828202033%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201822202017%_))
                          (let ((_%e201830202039%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201822202017%_))))
                            (let ((_%tl201832202044%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201830202039%_)))
                                  (_%hd201831202042%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201830202039%_))))
                              (_%__kont205166205167%_
                               _%tl201832202044%_
                               _%hd201831202042%_)))
                          (_%__kont205172205173%_
                           _%tl201822202017%_
                           _%hd201821202015%_))
                      (_%__kont205172205173%_
                       _%tl201822202017%_
                       _%hd201821202015%_))
                  (if (equal? _%e201829202036%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201828202033%_))
                          (_%__kont205168205169%_ _%tl201822202017%_)
                          (_%__kont205172205173%_
                           _%tl201822202017%_
                           _%hd201821202015%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201828202033%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201822202017%_))
                              (let ((_%e201856201932%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201822202017%_))))
                                (let ((_%tl201858201937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201856201932%_)))
                                      (_%hd201857201935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201856201932%_))))
                                  (_%__match205271205272%_
                                   _%e201820202012%_
                                   _%hd201821202015%_
                                   _%tl201822202017%_
                                   _%e201823202020%_
                                   _%hd201824202023%_
                                   _%tl201825202025%_
                                   _%e201826202028%_
                                   _%hd201827202031%_
                                   _%tl201828202033%_
                                   _%e201856201932%_
                                   _%hd201857201935%_
                                   _%tl201858201937%_)))
                              (_%__kont205172205173%_
                               _%tl201822202017%_
                               _%hd201821202015%_))
                          (_%__kont205172205173%_
                           _%tl201822202017%_
                           _%hd201821202015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201828202033%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201822202017%_))
                                                            (let ((_%e201856201932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201822202017%_))))
                      (let ((_%tl201858201937%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201856201932%_)))
                            (_%hd201857201935%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201856201932%_))))
                        (_%__match205271205272%_
                         _%e201820202012%_
                         _%hd201821202015%_
                         _%tl201822202017%_
                         _%e201823202020%_
                         _%hd201824202023%_
                         _%tl201825202025%_
                         _%e201826202028%_
                         _%hd201827202031%_
                         _%tl201828202033%_
                         _%e201856201932%_
                         _%hd201857201935%_
                         _%tl201858201937%_)))
                    (_%__kont205172205173%_
                     _%tl201822202017%_
                     _%hd201821202015%_))
                (_%__kont205172205173%_
                 _%tl201822202017%_
                 _%hd201821202015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont205172205173%_
                                             _%tl201822202017%_
                                             _%hd201821202015%_))
                                        (_%__kont205172205173%_
                                         _%tl201822202017%_
                                         _%hd201821202015%_))
                                    (_%__kont205172205173%_
                                     _%tl201822202017%_
                                     _%hd201821202015%_))))
                            (_%__kont205172205173%_
                             _%tl201822202017%_
                             _%hd201821202015%_))))
                    (_%__kont205174205175%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self201787%_ _%ctx201788%_ _%stx201789%_ _%args201790%_)
        (let ((_%self201793%_ _%self201787%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx201788%_ _%stx201789%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self201475%_ _%stx201476%_)
        (let* ((_%__stx205280205281%_ _%stx201476%_)
               (_%g201479201519%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205280205281%_)))))
          (let ((_%__kont205282205283%_
                 (lambda (_%L201625%_ _%L201626%_)
                   (let ((_%$e201653%_
                          (member 'return:
                                  (let ((__tmp205712
                                         (lambda (_%g201645201648%_
                                                  _%g201646201650%_)
                                           (cons _%g201645201648%_
                                                 _%g201646201650%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp205712 '() _%L201626%_))
                                  gx#stx-eq?)))
                     (if _%$e201653%_
                         ((lambda (_%tail201656%_)
                            (let ((_%type201658%_
                                   (let ((__tmp205713
                                          (let ((__tmp205714
                                                 (cadr _%tail201656%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp205714))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx201476%_
                                      __tmp205713))))
                              (gxc#check-return-type!
                               _%stx201476%_
                               _%L201625%_
                               _%type201658%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self201475%_
                                 _%L201625%_))))
                          _%$e201653%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self201475%_ _%L201625%_))))))
                (_%__kont205286205287%_
                 (lambda (_%L201548%_ _%L201549%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self201475%_ _%L201548%_)))))
            (let ((_%__match205317205318%_
                   (lambda (_%e201483201569%_
                            _%hd201484201572%_
                            _%tl201485201574%_
                            _%e201486201577%_
                            _%hd201487201580%_
                            _%tl201488201582%_
                            _%e201489201585%_
                            _%hd201490201588%_
                            _%tl201491201590%_
                            _%__splice205284205285%_
                            _%target201492201593%_
                            _%tl201494201595%_)
                     (letrec ((_%loop201495201598%_
                               (lambda (_%hd201493201601%_
                                        _%signature201499201603%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd201493201601%_))
                                     (let ((_%e201496201606%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd201493201601%_))))
                                       (let ((_%lp-tl201498201611%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201496201606%_)))
                                             (_%lp-hd201497201609%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201496201606%_))))
                                         (_%loop201495201598%_
                                          _%lp-tl201498201611%_
                                          (cons _%lp-hd201497201609%_
                                                _%signature201499201603%_))))
                                     (let ((_%signature201500201614%_
                                            (reverse _%signature201499201603%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl201488201582%_))
                                           (let ((_%e201501201617%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl201488201582%_))))
                                             (let ((_%tl201503201622%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e201501201617%_)))
                                                   (_%hd201502201620%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e201501201617%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201503201622%_))
                                                   (_%__kont205282205283%_
                                                    _%hd201502201620%_
                                                    _%signature201500201614%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g201479201519%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g201479201519%_))))))))
                       (_%loop201495201598%_ _%target201492201593%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205280205281%_))
                  (let ((_%e201483201569%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205280205281%_))))
                    (let ((_%tl201485201574%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201483201569%_)))
                          (_%hd201484201572%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201483201569%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201485201574%_))
                          (let ((_%e201486201577%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201485201574%_))))
                            (let ((_%tl201488201582%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201486201577%_)))
                                  (_%hd201487201580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201486201577%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201487201580%_))
                                  (let ((_%e201489201585%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201487201580%_))))
                                    (let ((_%tl201491201590%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201489201585%_)))
                                          (_%hd201490201588%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201489201585%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201490201588%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd201490201588%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl201491201590%_))
                                                  (let ((_%__splice205284205285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl201491201590%_
                                                            '0))))
                                                    (let ((_%tl201494201595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205284205285%_
                                                              '1)))
                                                          (_%target201492201593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205284205285%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201494201595%_))
                                                          (_%__match205317205318%_
                                                           _%e201483201569%_
                                                           _%hd201484201572%_
                                                           _%tl201485201574%_
                                                           _%e201486201577%_
                                                           _%hd201487201580%_
                                                           _%tl201488201582%_
                                                           _%e201489201585%_
                                                           _%hd201490201588%_
                                                           _%tl201491201590%_
                                                           _%__splice205284205285%_
                                                           _%target201492201593%_
                                                           _%tl201494201595%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201488201582%_))
                      (let ((_%e201512201540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201488201582%_))))
                        (let ((_%tl201514201545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201512201540%_)))
                              (_%hd201513201543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201512201540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201514201545%_))
                              (_%__kont205286205287%_
                               _%hd201513201543%_
                               _%hd201487201580%_)
                              (let ()
                                (declare (not safe))
                                (_%g201479201519%_)))))
                      (let () (declare (not safe)) (_%g201479201519%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201488201582%_))
                                                      (let ((_%e201512201540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201488201582%_))))
                (let ((_%tl201514201545%_
                       (let () (declare (not safe)) (##cdr _%e201512201540%_)))
                      (_%hd201513201543%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201512201540%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201514201545%_))
                      (_%__kont205286205287%_
                       _%hd201513201543%_
                       _%hd201487201580%_)
                      (let () (declare (not safe)) (_%g201479201519%_)))))
              (let () (declare (not safe)) (_%g201479201519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201488201582%_))
                                                  (let ((_%e201512201540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201488201582%_))))
                                                    (let ((_%tl201514201545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201512201540%_)))
                                                          (_%hd201513201543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201512201540%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201514201545%_))
                                                          (_%__kont205286205287%_
                                                           _%hd201513201543%_
                                                           _%hd201487201580%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201479201519%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201479201519%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201488201582%_))
                                              (let ((_%e201512201540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201488201582%_))))
                                                (let ((_%tl201514201545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201512201540%_)))
                                                      (_%hd201513201543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201512201540%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201514201545%_))
                                                      (_%__kont205286205287%_
                                                       _%hd201513201543%_
                                                       _%hd201487201580%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201479201519%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201479201519%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201488201582%_))
                                      (let ((_%e201512201540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201488201582%_))))
                                        (let ((_%tl201514201545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201512201540%_)))
                                              (_%hd201513201543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201512201540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201514201545%_))
                                              (_%__kont205286205287%_
                                               _%hd201513201543%_
                                               _%hd201487201580%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g201479201519%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201479201519%_))))))
                          (let () (declare (not safe)) (_%g201479201519%_)))))
                  (let () (declare (not safe)) (_%g201479201519%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx201450%_ _%expr201451%_ _%type201452%_)
        (let ((_%$e201454%_ (not _%type201452%_)))
          (if _%$e201454%_
              _%$e201454%_
              (let ((_%$e201457%_
                     (eq? (##structure-ref _%type201452%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e201457%_
                    _%$e201457%_
                    (let ((_%$e201460%_
                           (eq? (##structure-ref
                                 _%type201452%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e201460%_
                          _%$e201460%_
                          (let ((_%expr-type201464%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr201451%_))))
                            (if (not _%expr-type201464%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx201450%_
                                   _%type201452%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type201464%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx201450%_
                                       _%type201452%_
                                       _%expr-type201464%_))
                                    (let ((_%$e201468%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type201464%_
                                              'gxc#!abort::t))))
                                      (if _%$e201468%_
                                          _%$e201468%_
                                          (let ((_%$e201471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type201464%_
                                                    _%type201452%_))))
                                            (if _%$e201471%_
                                                _%$e201471%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx201450%_
                                                   _%type201452%_
                                                   _%expr-type201464%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self200876%_ _%stx200877%_)
        (let* ((_%__stx205362205363%_ _%stx200877%_)
               (_%g200882200992%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205362205363%_)))))
          (let ((_%__kont205364205365%_
                 (lambda (_%L201424%_ _%L201425%_ _%L201426%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L201426%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self200876%_ _%L201425%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self200876%_ _%L201424%_)))))
                (_%__kont205366205367%_
                 (lambda (_%L201250%_ _%L201251%_ _%L201252%_ _%L201253%_)
                   (let ((_%$e201285%_
                          (let ((__tmp205715
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L201253%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp205715))))
                     (if _%$e201285%_
                         ((lambda (_%pred-type201288%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201288%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201288%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test201293%_
                                        (let ((__tmp205716
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L201253%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L201252%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp205716
                                           _%stx200877%_
                                           _%self200876%_)))
                                       (_%K201297%_
                                        (let ((__tmp205717
                                               (lambda ()
                                                 (let ((__tmp205720
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self200876%_
                                                             _%L201251%_))))
                                                       (__tmp205718
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L201252%_))
                            (let ((__tmp205719
                                   (##structure-ref
                                    _%pred-type201288%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx200877%_
                               __tmp205719)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp205720
                                                    gxc#current-compile-path-type
                                                    __tmp205718)))))
                                          (declare (not safe))
                                          (__make-promise __tmp205717)))
                                       (_%E201300%_
                                        (let ((__tmp205721
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self200876%_
                                                    _%L201250%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp205721)))
                                       (_%__stx205340205341%_ _%test201293%_)
                                       (_%g201304201318%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205340205341%_)))))
                                  (let ((_%__kont205342205343%_
                                         (lambda (_%L201346%_ _%L201347%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L201346%_))
                                               (force _%K201297%_)
                                               (force _%E201300%_))))
                                        (_%__kont205344205345%_
                                         (lambda ()
                                           (let ((__tmp205722
                                                  (cons '%#if
                                                        (cons _%test201293%_
                                                              (cons (force _%K201297%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E201300%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205722
                                              _%stx200877%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205340205341%_))
                                        (let ((_%e201308201330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205340205341%_))))
                                          (let ((_%tl201310201335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201308201330%_)))
                                                (_%hd201309201333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201308201330%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201310201335%_))
                                                (let ((_%e201311201338%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201310201335%_))))
                                                  (let ((_%tl201313201343%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201311201338%_)))
                                                        (_%hd201312201341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201311201338%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201313201343%_))
                                                        (_%__kont205342205343%_
                                                         _%hd201312201341%_
                                                         _%hd201309201333%_)
                                                        (_%__kont205344205345%_))))
                                                (_%__kont205344205345%_))))
                                        (_%__kont205344205345%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self200876%_
                                   _%stx200877%_))))
                          _%$e201285%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self200876%_
                            _%stx200877%_))))))
                (_%__kont205368205369%_
                 (lambda (_%L201126%_ _%L201127%_ _%L201128%_ _%L201129%_)
                   (gxc#optimize-if%
                    _%self200876%_
                    (let ((__tmp205723
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L201128%_
                                       (cons _%L201126%_
                                             (cons _%L201127%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp205723 _%stx200877%_)))))
                (_%__kont205370205371%_
                 (lambda (_%L201029%_ _%L201030%_ _%L201031%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self200876%_ _%stx200877%_)))))
            (let ((_%__match205569205570%_
                   (lambda (_%e200946201054%_
                            _%hd200947201057%_
                            _%tl200948201059%_
                            _%e200949201062%_
                            _%hd200950201065%_
                            _%tl200951201067%_
                            _%e200952201070%_
                            _%hd200953201073%_
                            _%tl200954201075%_
                            _%e200955201078%_
                            _%hd200956201081%_
                            _%tl200957201083%_
                            _%e200958201086%_
                            _%hd200959201089%_
                            _%tl200960201091%_
                            _%e200961201094%_
                            _%hd200962201097%_
                            _%tl200963201099%_
                            _%e200964201102%_
                            _%hd200965201105%_
                            _%tl200966201107%_
                            _%e200967201110%_
                            _%hd200968201113%_
                            _%tl200969201115%_
                            _%e200970201118%_
                            _%hd200971201121%_
                            _%tl200972201123%_)
                     (let ((_%L201126%_ _%hd200971201121%_)
                           (_%L201127%_ _%hd200968201113%_)
                           (_%L201128%_ _%hd200965201105%_)
                           (_%L201129%_ _%hd200962201097%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L201129%_ 'not))
                           (_%__kont205368205369%_
                            _%L201126%_
                            _%L201127%_
                            _%L201128%_
                            _%L201129%_)
                           (_%__kont205370205371%_
                            _%hd200971201121%_
                            _%hd200968201113%_
                            _%hd200950201065%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205362205363%_))
                  (let ((_%e200887201376%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205362205363%_))))
                    (let ((_%tl200889201381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200887201376%_)))
                          (_%hd200888201379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200887201376%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200889201381%_))
                          (let ((_%e200890201384%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200889201381%_))))
                            (let ((_%tl200892201389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200890201384%_)))
                                  (_%hd200891201387%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200890201384%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200891201387%_))
                                  (let ((_%e200893201392%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200891201387%_))))
                                    (let ((_%tl200895201397%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200893201392%_)))
                                          (_%hd200894201395%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200893201392%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200894201395%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd200894201395%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200895201397%_))
                                                  (let ((_%e200896201400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200895201397%_))))
                                                    (let ((_%tl200898201405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200896201400%_)))
                                                          (_%hd200897201403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200896201400%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200898201405%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200892201389%_))
                      (let ((_%e200899201408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200892201389%_))))
                        (let ((_%tl200901201413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200899201408%_)))
                              (_%hd200900201411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200899201408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200901201413%_))
                              (let ((_%e200902201416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200901201413%_))))
                                (let ((_%tl200904201421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200902201416%_)))
                                      (_%hd200903201419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200902201416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200904201421%_))
                                      (_%__kont205364205365%_
                                       _%hd200903201419%_
                                       _%hd200900201411%_
                                       _%hd200897201403%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g200882200992%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200882200992%_)))))
                      (let () (declare (not safe)) (_%g200882200992%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200892201389%_))
                      (let ((_%e200982201013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200892201389%_))))
                        (let ((_%tl200984201018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200982201013%_)))
                              (_%hd200983201016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200982201013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200984201018%_))
                              (let ((_%e200985201021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200984201018%_))))
                                (let ((_%tl200987201026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200985201021%_)))
                                      (_%hd200986201024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200985201021%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200987201026%_))
                                      (_%__kont205370205371%_
                                       _%hd200986201024%_
                                       _%hd200983201016%_
                                       _%hd200891201387%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g200882200992%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200882200992%_)))))
                      (let () (declare (not safe)) (_%g200882200992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200892201389%_))
                                                      (let ((_%e200982201013%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200892201389%_))))
                (let ((_%tl200984201018%_
                       (let () (declare (not safe)) (##cdr _%e200982201013%_)))
                      (_%hd200983201016%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200982201013%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200984201018%_))
                      (let ((_%e200985201021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200984201018%_))))
                        (let ((_%tl200987201026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200985201021%_)))
                              (_%hd200986201024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200985201021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200987201026%_))
                              (_%__kont205370205371%_
                               _%hd200986201024%_
                               _%hd200983201016%_
                               _%hd200891201387%_)
                              (let ()
                                (declare (not safe))
                                (_%g200882200992%_)))))
                      (let () (declare (not safe)) (_%g200882200992%_)))))
              (let () (declare (not safe)) (_%g200882200992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd200894201395%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200895201397%_))
                                                      (let ((_%e200918201186%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200895201397%_))))
                (let ((_%tl200920201191%_
                       (let () (declare (not safe)) (##cdr _%e200918201186%_)))
                      (_%hd200919201189%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200918201186%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200919201189%_))
                      (let ((_%e200921201194%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200919201189%_))))
                        (let ((_%tl200923201199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200921201194%_)))
                              (_%hd200922201197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200921201194%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200922201197%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200922201197%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200923201199%_))
                                      (let ((_%e200924201202%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200923201199%_))))
                                        (let ((_%tl200926201207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200924201202%_)))
                                              (_%hd200925201205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200924201202%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200926201207%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200920201191%_))
                                                  (let ((_%e200927201210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200920201191%_))))
                                                    (let ((_%tl200929201215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200927201210%_)))
                                                          (_%hd200928201213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200927201210%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200928201213%_))
                                                          (let ((_%e200930201218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200928201213%_))))
                    (let ((_%tl200932201223%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200930201218%_)))
                          (_%hd200931201221%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200930201218%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200931201221%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd200931201221%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200932201223%_))
                                  (let ((_%e200933201226%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200932201223%_))))
                                    (let ((_%tl200935201231%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200933201226%_)))
                                          (_%hd200934201229%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200933201226%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200935201231%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200929201215%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200892201389%_))
                                                  (let ((_%e200936201234%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200892201389%_))))
                                                    (let ((_%tl200938201239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200936201234%_)))
                                                          (_%hd200937201237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200936201234%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200938201239%_))
                                                          (let ((_%e200939201242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200938201239%_))))
                    (let ((_%tl200941201247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200939201242%_)))
                          (_%hd200940201245%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200939201242%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200941201247%_))
                          (_%__kont205366205367%_
                           _%hd200940201245%_
                           _%hd200937201237%_
                           _%hd200934201229%_
                           _%hd200925201205%_)
                          (let () (declare (not safe)) (_%g200882200992%_)))))
                  (let () (declare (not safe)) (_%g200882200992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200892201389%_))
                                                  (let ((_%e200982201013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200892201389%_))))
                                                    (let ((_%tl200984201018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200982201013%_)))
                                                          (_%hd200983201016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200982201013%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200984201018%_))
                                                          (let ((_%e200985201021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200984201018%_))))
                    (let ((_%tl200987201026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200985201021%_)))
                          (_%hd200986201024%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200985201021%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200987201026%_))
                          (_%__kont205370205371%_
                           _%hd200986201024%_
                           _%hd200983201016%_
                           _%hd200891201387%_)
                          (let () (declare (not safe)) (_%g200882200992%_)))))
                  (let () (declare (not safe)) (_%g200882200992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200929201215%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200892201389%_))
                                                  (let ((_%e200967201110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200892201389%_))))
                                                    (let ((_%tl200969201115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200967201110%_)))
                                                          (_%hd200968201113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200967201110%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200969201115%_))
                                                          (let ((_%e200970201118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200969201115%_))))
                    (let ((_%tl200972201123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200970201118%_)))
                          (_%hd200971201121%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200970201118%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200972201123%_))
                          (_%__match205569205570%_
                           _%e200887201376%_
                           _%hd200888201379%_
                           _%tl200889201381%_
                           _%e200890201384%_
                           _%hd200891201387%_
                           _%tl200892201389%_
                           _%e200893201392%_
                           _%hd200894201395%_
                           _%tl200895201397%_
                           _%e200918201186%_
                           _%hd200919201189%_
                           _%tl200920201191%_
                           _%e200921201194%_
                           _%hd200922201197%_
                           _%tl200923201199%_
                           _%e200924201202%_
                           _%hd200925201205%_
                           _%tl200926201207%_
                           _%e200927201210%_
                           _%hd200928201213%_
                           _%tl200929201215%_
                           _%e200967201110%_
                           _%hd200968201113%_
                           _%tl200969201115%_
                           _%e200970201118%_
                           _%hd200971201121%_
                           _%tl200972201123%_)
                          (let () (declare (not safe)) (_%g200882200992%_)))))
                  (let () (declare (not safe)) (_%g200882200992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200892201389%_))
                                                  (let ((_%e200982201013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200892201389%_))))
                                                    (let ((_%tl200984201018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200982201013%_)))
                                                          (_%hd200983201016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200982201013%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200984201018%_))
                                                          (let ((_%e200985201021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200984201018%_))))
                    (let ((_%tl200987201026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200985201021%_)))
                          (_%hd200986201024%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200985201021%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200987201026%_))
                          (_%__kont205370205371%_
                           _%hd200986201024%_
                           _%hd200983201016%_
                           _%hd200891201387%_)
                          (let () (declare (not safe)) (_%g200882200992%_)))))
                  (let () (declare (not safe)) (_%g200882200992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200929201215%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200892201389%_))
                                          (let ((_%e200967201110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200892201389%_))))
                                            (let ((_%tl200969201115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200967201110%_)))
                                                  (_%hd200968201113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200967201110%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200969201115%_))
                                                  (let ((_%e200970201118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200969201115%_))))
                                                    (let ((_%tl200972201123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200970201118%_)))
                                                          (_%hd200971201121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200970201118%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200972201123%_))
                                                          (_%__match205569205570%_
                                                           _%e200887201376%_
                                                           _%hd200888201379%_
                                                           _%tl200889201381%_
                                                           _%e200890201384%_
                                                           _%hd200891201387%_
                                                           _%tl200892201389%_
                                                           _%e200893201392%_
                                                           _%hd200894201395%_
                                                           _%tl200895201397%_
                                                           _%e200918201186%_
                                                           _%hd200919201189%_
                                                           _%tl200920201191%_
                                                           _%e200921201194%_
                                                           _%hd200922201197%_
                                                           _%tl200923201199%_
                                                           _%e200924201202%_
                                                           _%hd200925201205%_
                                                           _%tl200926201207%_
                                                           _%e200927201210%_
                                                           _%hd200928201213%_
                                                           _%tl200929201215%_
                                                           _%e200967201110%_
                                                           _%hd200968201113%_
                                                           _%tl200969201115%_
                                                           _%e200970201118%_
                                                           _%hd200971201121%_
                                                           _%tl200972201123%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200882200992%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200892201389%_))
                                          (let ((_%e200982201013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200892201389%_))))
                                            (let ((_%tl200984201018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200982201013%_)))
                                                  (_%hd200983201016%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200982201013%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200984201018%_))
                                                  (let ((_%e200985201021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200984201018%_))))
                                                    (let ((_%tl200987201026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200985201021%_)))
                                                          (_%hd200986201024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200985201021%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200987201026%_))
                                                          (_%__kont205370205371%_
                                                           _%hd200986201024%_
                                                           _%hd200983201016%_
                                                           _%hd200891201387%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200882200992%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200929201215%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200892201389%_))
                                      (let ((_%e200967201110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200892201389%_))))
                                        (let ((_%tl200969201115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200967201110%_)))
                                              (_%hd200968201113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200967201110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200969201115%_))
                                              (let ((_%e200970201118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200969201115%_))))
                                                (let ((_%tl200972201123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200970201118%_)))
                                                      (_%hd200971201121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200970201118%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200972201123%_))
                                                      (_%__match205569205570%_
                                                       _%e200887201376%_
                                                       _%hd200888201379%_
                                                       _%tl200889201381%_
                                                       _%e200890201384%_
                                                       _%hd200891201387%_
                                                       _%tl200892201389%_
                                                       _%e200893201392%_
                                                       _%hd200894201395%_
                                                       _%tl200895201397%_
                                                       _%e200918201186%_
                                                       _%hd200919201189%_
                                                       _%tl200920201191%_
                                                       _%e200921201194%_
                                                       _%hd200922201197%_
                                                       _%tl200923201199%_
                                                       _%e200924201202%_
                                                       _%hd200925201205%_
                                                       _%tl200926201207%_
                                                       _%e200927201210%_
                                                       _%hd200928201213%_
                                                       _%tl200929201215%_
                                                       _%e200967201110%_
                                                       _%hd200968201113%_
                                                       _%tl200969201115%_
                                                       _%e200970201118%_
                                                       _%hd200971201121%_
                                                       _%tl200972201123%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200882200992%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200882200992%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200882200992%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200892201389%_))
                                      (let ((_%e200982201013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200892201389%_))))
                                        (let ((_%tl200984201018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200982201013%_)))
                                              (_%hd200983201016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200982201013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200984201018%_))
                                              (let ((_%e200985201021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200984201018%_))))
                                                (let ((_%tl200987201026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200985201021%_)))
                                                      (_%hd200986201024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200985201021%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200987201026%_))
                                                      (_%__kont205370205371%_
                                                       _%hd200986201024%_
                                                       _%hd200983201016%_
                                                       _%hd200891201387%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200882200992%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200882200992%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200882200992%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200929201215%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200892201389%_))
                                  (let ((_%e200967201110%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200892201389%_))))
                                    (let ((_%tl200969201115%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200967201110%_)))
                                          (_%hd200968201113%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200967201110%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200969201115%_))
                                          (let ((_%e200970201118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200969201115%_))))
                                            (let ((_%tl200972201123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200970201118%_)))
                                                  (_%hd200971201121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200970201118%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200972201123%_))
                                                  (_%__match205569205570%_
                                                   _%e200887201376%_
                                                   _%hd200888201379%_
                                                   _%tl200889201381%_
                                                   _%e200890201384%_
                                                   _%hd200891201387%_
                                                   _%tl200892201389%_
                                                   _%e200893201392%_
                                                   _%hd200894201395%_
                                                   _%tl200895201397%_
                                                   _%e200918201186%_
                                                   _%hd200919201189%_
                                                   _%tl200920201191%_
                                                   _%e200921201194%_
                                                   _%hd200922201197%_
                                                   _%tl200923201199%_
                                                   _%e200924201202%_
                                                   _%hd200925201205%_
                                                   _%tl200926201207%_
                                                   _%e200927201210%_
                                                   _%hd200928201213%_
                                                   _%tl200929201215%_
                                                   _%e200967201110%_
                                                   _%hd200968201113%_
                                                   _%tl200969201115%_
                                                   _%e200970201118%_
                                                   _%hd200971201121%_
                                                   _%tl200972201123%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200882200992%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200892201389%_))
                                  (let ((_%e200982201013%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200892201389%_))))
                                    (let ((_%tl200984201018%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200982201013%_)))
                                          (_%hd200983201016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200982201013%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200984201018%_))
                                          (let ((_%e200985201021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200984201018%_))))
                                            (let ((_%tl200987201026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200985201021%_)))
                                                  (_%hd200986201024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200985201021%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200987201026%_))
                                                  (_%__kont205370205371%_
                                                   _%hd200986201024%_
                                                   _%hd200983201016%_
                                                   _%hd200891201387%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200882200992%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200929201215%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200892201389%_))
                          (let ((_%e200967201110%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200892201389%_))))
                            (let ((_%tl200969201115%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200967201110%_)))
                                  (_%hd200968201113%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200967201110%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200969201115%_))
                                  (let ((_%e200970201118%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200969201115%_))))
                                    (let ((_%tl200972201123%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200970201118%_)))
                                          (_%hd200971201121%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200970201118%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200972201123%_))
                                          (_%__match205569205570%_
                                           _%e200887201376%_
                                           _%hd200888201379%_
                                           _%tl200889201381%_
                                           _%e200890201384%_
                                           _%hd200891201387%_
                                           _%tl200892201389%_
                                           _%e200893201392%_
                                           _%hd200894201395%_
                                           _%tl200895201397%_
                                           _%e200918201186%_
                                           _%hd200919201189%_
                                           _%tl200920201191%_
                                           _%e200921201194%_
                                           _%hd200922201197%_
                                           _%tl200923201199%_
                                           _%e200924201202%_
                                           _%hd200925201205%_
                                           _%tl200926201207%_
                                           _%e200927201210%_
                                           _%hd200928201213%_
                                           _%tl200929201215%_
                                           _%e200967201110%_
                                           _%hd200968201113%_
                                           _%tl200969201115%_
                                           _%e200970201118%_
                                           _%hd200971201121%_
                                           _%tl200972201123%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200882200992%_)))))
                          (let () (declare (not safe)) (_%g200882200992%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200892201389%_))
                          (let ((_%e200982201013%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200892201389%_))))
                            (let ((_%tl200984201018%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200982201013%_)))
                                  (_%hd200983201016%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200982201013%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200984201018%_))
                                  (let ((_%e200985201021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200984201018%_))))
                                    (let ((_%tl200987201026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200985201021%_)))
                                          (_%hd200986201024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200985201021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200987201026%_))
                                          (_%__kont205370205371%_
                                           _%hd200986201024%_
                                           _%hd200983201016%_
                                           _%hd200891201387%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200882200992%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g200882200992%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200892201389%_))
                                                      (let ((_%e200982201013%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200892201389%_))))
                (let ((_%tl200984201018%_
                       (let () (declare (not safe)) (##cdr _%e200982201013%_)))
                      (_%hd200983201016%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200982201013%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200984201018%_))
                      (let ((_%e200985201021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200984201018%_))))
                        (let ((_%tl200987201026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200985201021%_)))
                              (_%hd200986201024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200985201021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200987201026%_))
                              (_%__kont205370205371%_
                               _%hd200986201024%_
                               _%hd200983201016%_
                               _%hd200891201387%_)
                              (let ()
                                (declare (not safe))
                                (_%g200882200992%_)))))
                      (let () (declare (not safe)) (_%g200882200992%_)))))
              (let () (declare (not safe)) (_%g200882200992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200892201389%_))
                                                  (let ((_%e200982201013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200892201389%_))))
                                                    (let ((_%tl200984201018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200982201013%_)))
                                                          (_%hd200983201016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200982201013%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200984201018%_))
                                                          (let ((_%e200985201021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200984201018%_))))
                    (let ((_%tl200987201026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200985201021%_)))
                          (_%hd200986201024%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200985201021%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200987201026%_))
                          (_%__kont205370205371%_
                           _%hd200986201024%_
                           _%hd200983201016%_
                           _%hd200891201387%_)
                          (let () (declare (not safe)) (_%g200882200992%_)))))
                  (let () (declare (not safe)) (_%g200882200992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200892201389%_))
                                          (let ((_%e200982201013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200892201389%_))))
                                            (let ((_%tl200984201018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200982201013%_)))
                                                  (_%hd200983201016%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200982201013%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200984201018%_))
                                                  (let ((_%e200985201021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200984201018%_))))
                                                    (let ((_%tl200987201026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200985201021%_)))
                                                          (_%hd200986201024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200985201021%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200987201026%_))
                                                          (_%__kont205370205371%_
                                                           _%hd200986201024%_
                                                           _%hd200983201016%_
                                                           _%hd200891201387%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200882200992%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200892201389%_))
                                      (let ((_%e200982201013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200892201389%_))))
                                        (let ((_%tl200984201018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200982201013%_)))
                                              (_%hd200983201016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200982201013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200984201018%_))
                                              (let ((_%e200985201021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200984201018%_))))
                                                (let ((_%tl200987201026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200985201021%_)))
                                                      (_%hd200986201024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200985201021%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200987201026%_))
                                                      (_%__kont205370205371%_
                                                       _%hd200986201024%_
                                                       _%hd200983201016%_
                                                       _%hd200891201387%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200882200992%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200882200992%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200882200992%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200892201389%_))
                                  (let ((_%e200982201013%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200892201389%_))))
                                    (let ((_%tl200984201018%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200982201013%_)))
                                          (_%hd200983201016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200982201013%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200984201018%_))
                                          (let ((_%e200985201021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200984201018%_))))
                                            (let ((_%tl200987201026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200985201021%_)))
                                                  (_%hd200986201024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200985201021%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200987201026%_))
                                                  (_%__kont205370205371%_
                                                   _%hd200986201024%_
                                                   _%hd200983201016%_
                                                   _%hd200891201387%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200882200992%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200882200992%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200892201389%_))
                          (let ((_%e200982201013%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200892201389%_))))
                            (let ((_%tl200984201018%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200982201013%_)))
                                  (_%hd200983201016%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200982201013%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200984201018%_))
                                  (let ((_%e200985201021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200984201018%_))))
                                    (let ((_%tl200987201026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200985201021%_)))
                                          (_%hd200986201024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200985201021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200987201026%_))
                                          (_%__kont205370205371%_
                                           _%hd200986201024%_
                                           _%hd200983201016%_
                                           _%hd200891201387%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g200882200992%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200882200992%_)))))
                          (let () (declare (not safe)) (_%g200882200992%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl200892201389%_))
                  (let ((_%e200982201013%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200892201389%_))))
                    (let ((_%tl200984201018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200982201013%_)))
                          (_%hd200983201016%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200982201013%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200984201018%_))
                          (let ((_%e200985201021%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200984201018%_))))
                            (let ((_%tl200987201026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200985201021%_)))
                                  (_%hd200986201024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200985201021%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200987201026%_))
                                  (_%__kont205370205371%_
                                   _%hd200986201024%_
                                   _%hd200983201016%_
                                   _%hd200891201387%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200882200992%_)))))
                          (let () (declare (not safe)) (_%g200882200992%_)))))
                  (let () (declare (not safe)) (_%g200882200992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200892201389%_))
                                                      (let ((_%e200982201013%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200892201389%_))))
                (let ((_%tl200984201018%_
                       (let () (declare (not safe)) (##cdr _%e200982201013%_)))
                      (_%hd200983201016%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200982201013%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200984201018%_))
                      (let ((_%e200985201021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200984201018%_))))
                        (let ((_%tl200987201026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200985201021%_)))
                              (_%hd200986201024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200985201021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200987201026%_))
                              (_%__kont205370205371%_
                               _%hd200986201024%_
                               _%hd200983201016%_
                               _%hd200891201387%_)
                              (let ()
                                (declare (not safe))
                                (_%g200882200992%_)))))
                      (let () (declare (not safe)) (_%g200882200992%_)))))
              (let () (declare (not safe)) (_%g200882200992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200892201389%_))
                                              (let ((_%e200982201013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200892201389%_))))
                                                (let ((_%tl200984201018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200982201013%_)))
                                                      (_%hd200983201016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200982201013%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200984201018%_))
                                                      (let ((_%e200985201021%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200984201018%_))))
                (let ((_%tl200987201026%_
                       (let () (declare (not safe)) (##cdr _%e200985201021%_)))
                      (_%hd200986201024%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200985201021%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200987201026%_))
                      (_%__kont205370205371%_
                       _%hd200986201024%_
                       _%hd200983201016%_
                       _%hd200891201387%_)
                      (let () (declare (not safe)) (_%g200882200992%_)))))
              (let () (declare (not safe)) (_%g200882200992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200882200992%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200892201389%_))
                                      (let ((_%e200982201013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200892201389%_))))
                                        (let ((_%tl200984201018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200982201013%_)))
                                              (_%hd200983201016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200982201013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200984201018%_))
                                              (let ((_%e200985201021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200984201018%_))))
                                                (let ((_%tl200987201026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200985201021%_)))
                                                      (_%hd200986201024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200985201021%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200987201026%_))
                                                      (_%__kont205370205371%_
                                                       _%hd200986201024%_
                                                       _%hd200983201016%_
                                                       _%hd200891201387%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200882200992%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200882200992%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200882200992%_))))))
                          (let () (declare (not safe)) (_%g200882200992%_)))))
                  (let () (declare (not safe)) (_%g200882200992%_))))))))))
