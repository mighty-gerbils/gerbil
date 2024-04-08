(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712573437)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190031 (list gxc#::basic-xform::t))
            (__tmp190030 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190031
         '()
         __tmp190030
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189580%_
        (apply make-instance gxc#::optimize-call::t _%$args189580%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190032
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
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp190032)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189572%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189575%_
                (let ((__obj190022
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190022))
               (__tmp190033
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189575%_ _%stx189572%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190033
           gxc#current-compile-method
           _%self189575%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190035 (list gxc#::void::t))
            (__tmp190034 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190035
         '()
         __tmp190034
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189569%_
        (apply make-instance gxc#::check-return-type::t _%$args189569%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190036
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
                  gxc#apply-operands))
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
        (__make-promise __tmp190036)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189561%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189564%_
                (let ((__obj190024
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190024))
               (__tmp190037
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189564%_ _%stx189561%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190037
           gxc#current-compile-method
           _%self189564%_))))
    (define gxc#optimize-call%
      (lambda (_%self189162%_ _%stx189163%_)
        (let* ((_%__stx189635189636%_ _%stx189163%_)
               (_%g189166189212%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189635189636%_)))))
          (let ((_%__kont189637189638%_
                 (lambda (_%L189355%_ _%L189356%_)
                   (let* ((_%rator-id189376%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189356%_)))
                          (_%rator-type189378%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189376%_))))
                     (if (or (not _%rator-type189378%_)
                             (eq? (##structure-ref
                                   _%rator-type189378%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189162%_ _%stx189163%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189378%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190038
                                      (##structure-ref
                                       _%rator-type189378%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189376%_
                                  '" => "
                                  _%rator-type189378%_
                                  '" "
                                  __tmp190038))
                               (let* ((_%optimized189393%_
                                       (let ((__method190025
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189378%_
                                                 'optimize-call))))
                                         (if __method190025
                                             (__method190025
                                              _%rator-type189378%_
                                              _%self189162%_
                                              _%stx189163%_
                                              (let ((__tmp190039
                                                     (lambda (_%g189385189388%_
                                                              _%g189386189390%_)
                                                       (cons _%g189385189388%_
                                                             _%g189386189390%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190039
                                                 '()
                                                 _%L189355%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189378%_
                                                      'optimize-call)))))
                                      (_%__stx189583189584%_
                                       _%optimized189393%_)
                                      (_%g189396189425%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189583189584%_)))))
                                 (let ((_%__kont189585189586%_
                                        (lambda (_%L189493%_ _%L189494%_)
                                          (let* ((_%optimized-rator-id189521%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L189494%_)))
                                                 (_%rator-type189526%_
                                                  (let ((_%$e189523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id189521%_))))
                                                    (if _%$e189523%_
                                                        _%$e189523%_
                                                        _%rator-type189378%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type189526%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189521%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type189526%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type189526%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized189393%_
                                                (let ((__tmp190040
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L189494%_ '()))
                           (let ((__tmp190041
                                  (lambda (_%g189534189537%_ _%g189535189539%_)
                                    (cons _%g189534189537%_
                                          _%g189535189539%_))))
                             (declare (not safe))
                             (__foldr1 __tmp190041 '() _%L189493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190040
                                                   _%stx189163%_))))))
                                       (_%__kont189589189590%_
                                        (lambda () _%optimized189393%_)))
                                   (let ((_%__match189632189633%_
                                          (lambda (_%e189402189437%_
                                                   _%hd189401189440%_
                                                   _%tl189400189442%_
                                                   _%e189405189445%_
                                                   _%hd189404189448%_
                                                   _%tl189403189450%_
                                                   _%e189408189453%_
                                                   _%hd189407189456%_
                                                   _%tl189406189458%_
                                                   _%e189411189461%_
                                                   _%hd189410189464%_
                                                   _%tl189409189466%_
                                                   _%__splice189587189588%_
                                                   _%target189412189469%_
                                                   _%tl189414189471%_)
                                            (letrec ((_%loop189415189474%_
                                                      (lambda (_%hd189413189477%_
                                                               _%arg189419189479%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189413189477%_))
                                                            (let ((_%e189416189482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189413189477%_))))
                      (let ((_%lp-tl189418189487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189416189482%_)))
                            (_%lp-hd189417189485%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189416189482%_))))
                        (_%loop189415189474%_
                         _%lp-tl189418189487%_
                         (cons _%lp-hd189417189485%_ _%arg189419189479%_))))
                    (let ((_%arg189420189490%_ (reverse _%arg189419189479%_)))
                      (_%__kont189585189586%_
                       _%arg189420189490%_
                       _%hd189410189464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop189415189474%_
                                               _%target189412189469%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189583189584%_))
                                         (let ((_%e189402189437%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189583189584%_))))
                                           (let ((_%tl189400189442%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189402189437%_)))
                                                 (_%hd189401189440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189402189437%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189401189440%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189401189440%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189400189442%_))
                                                         (let ((_%e189405189445%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189400189442%_))))
                   (let ((_%tl189403189450%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189405189445%_)))
                         (_%hd189404189448%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189405189445%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189404189448%_))
                         (let ((_%e189408189453%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189404189448%_))))
                           (let ((_%tl189406189458%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189408189453%_)))
                                 (_%hd189407189456%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189408189453%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189407189456%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189407189456%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189406189458%_))
                                         (let ((_%e189411189461%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189406189458%_))))
                                           (let ((_%tl189409189466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189411189461%_)))
                                                 (_%hd189410189464%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189411189461%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189409189466%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189403189450%_))
                                                     (let ((_%__splice189587189588%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189403189450%_
                                                               '0))))
                                                       (let ((_%tl189414189471%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189587189588%_ '1)))
                     (_%target189412189469%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189587189588%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189414189471%_))
                     (_%__match189632189633%_
                      _%e189402189437%_
                      _%hd189401189440%_
                      _%tl189400189442%_
                      _%e189405189445%_
                      _%hd189404189448%_
                      _%tl189403189450%_
                      _%e189408189453%_
                      _%hd189407189456%_
                      _%tl189406189458%_
                      _%e189411189461%_
                      _%hd189410189464%_
                      _%tl189409189466%_
                      _%__splice189587189588%_
                      _%target189412189469%_
                      _%tl189414189471%_)
                     (_%__kont189589189590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189589189590%_))
                                                 (_%__kont189589189590%_))))
                                         (_%__kont189589189590%_))
                                     (_%__kont189589189590%_))
                                 (_%__kont189589189590%_))))
                         (_%__kont189589189590%_))))
                 (_%__kont189589189590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189589189590%_))
                                                 (_%__kont189589189590%_))))
                                         (_%__kont189589189590%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189378%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189378%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190042
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L189356%_
                                                                '()))
                                                    (map (lambda (_%g189545189547%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self189162%_
                                                              _%g189545189547%_)))
                                                         (let ((__tmp190043
                                                                (lambda (_%g189549189552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g189550189554%_)
                          (cons _%g189549189552%_ _%g189550189554%_))))
                   (declare (not safe))
                   (__foldr1 __tmp190043 '() _%L189355%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190042
                                    _%stx189163%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189163%_
                                    _%rator-type189378%_))))))))
                (_%__kont189641189642%_
                 (lambda (_%L189257%_ _%L189258%_)
                   (let ((_%rator-type189275%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189258%_))))
                     (if (and _%rator-type189275%_
                              (eq? (##structure-ref
                                    _%rator-type189275%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type189275%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type189275%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type189275%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp190044
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self189162%_
                                               _%L189258%_))
                                            (map (lambda (_%g189277189279%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189162%_
                                                      _%g189277189279%_)))
                                                 (let ((__tmp190045
                                                        (lambda (_%g189281189284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g189282189286%_)
                  (cons _%g189281189284%_ _%g189282189286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp190045
                                                    '()
                                                    _%L189257%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190044 _%stx189163%_))
                         (if (or (not _%rator-type189275%_)
                                 (let ((__tmp190046
                                        (##structure-ref
                                         _%rator-type189275%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190046 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189162%_ _%stx189163%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189163%_
                                _%rator-type189275%_))))))))
            (let* ((_%__match189702189703%_
                    (lambda (_%e189195189217%_
                             _%hd189194189220%_
                             _%tl189193189222%_
                             _%e189198189225%_
                             _%hd189197189228%_
                             _%tl189196189230%_
                             _%__splice189643189644%_
                             _%target189199189233%_
                             _%tl189201189235%_)
                      (letrec ((_%loop189202189238%_
                                (lambda (_%hd189200189241%_
                                         _%rand189206189243%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189200189241%_))
                                      (let ((_%e189203189246%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189200189241%_))))
                                        (let ((_%lp-tl189205189251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189203189246%_)))
                                              (_%lp-hd189204189249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189203189246%_))))
                                          (_%loop189202189238%_
                                           _%lp-tl189205189251%_
                                           (cons _%lp-hd189204189249%_
                                                 _%rand189206189243%_))))
                                      (let ((_%rand189207189254%_
                                             (reverse _%rand189206189243%_)))
                                        (_%__kont189641189642%_
                                         _%rand189207189254%_
                                         _%hd189197189228%_))))))
                        (_%loop189202189238%_ _%target189199189233%_ '()))))
                   (_%__match189682189683%_
                    (lambda (_%e189172189299%_
                             _%hd189171189302%_
                             _%tl189170189304%_
                             _%e189175189307%_
                             _%hd189174189310%_
                             _%tl189173189312%_
                             _%e189178189315%_
                             _%hd189177189318%_
                             _%tl189176189320%_
                             _%e189181189323%_
                             _%hd189180189326%_
                             _%tl189179189328%_
                             _%__splice189639189640%_
                             _%target189182189331%_
                             _%tl189184189333%_)
                      (letrec ((_%loop189185189336%_
                                (lambda (_%hd189183189339%_
                                         _%rand189189189341%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189183189339%_))
                                      (let ((_%e189186189344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189183189339%_))))
                                        (let ((_%lp-tl189188189349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189186189344%_)))
                                              (_%lp-hd189187189347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189186189344%_))))
                                          (_%loop189185189336%_
                                           _%lp-tl189188189349%_
                                           (cons _%lp-hd189187189347%_
                                                 _%rand189189189341%_))))
                                      (let ((_%rand189190189352%_
                                             (reverse _%rand189189189341%_)))
                                        (_%__kont189637189638%_
                                         _%rand189190189352%_
                                         _%hd189180189326%_))))))
                        (_%loop189185189336%_ _%target189182189331%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189635189636%_))
                  (let ((_%e189172189299%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189635189636%_))))
                    (let ((_%tl189170189304%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189172189299%_)))
                          (_%hd189171189302%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189172189299%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189170189304%_))
                          (let ((_%e189175189307%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189170189304%_))))
                            (let ((_%tl189173189312%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189175189307%_)))
                                  (_%hd189174189310%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189175189307%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189174189310%_))
                                  (let ((_%e189178189315%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189174189310%_))))
                                    (let ((_%tl189176189320%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189178189315%_)))
                                          (_%hd189177189318%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189178189315%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189177189318%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189177189318%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189176189320%_))
                                                  (let ((_%e189181189323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189176189320%_))))
                                                    (let ((_%tl189179189328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189181189323%_)))
                                                          (_%hd189180189326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189181189323%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189179189328%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189173189312%_))
                      (let ((_%__splice189639189640%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189173189312%_
                                '0))))
                        (let ((_%tl189184189333%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189639189640%_ '1)))
                              (_%target189182189331%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189639189640%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189184189333%_))
                              (_%__match189682189683%_
                               _%e189172189299%_
                               _%hd189171189302%_
                               _%tl189170189304%_
                               _%e189175189307%_
                               _%hd189174189310%_
                               _%tl189173189312%_
                               _%e189178189315%_
                               _%hd189177189318%_
                               _%tl189176189320%_
                               _%e189181189323%_
                               _%hd189180189326%_
                               _%tl189179189328%_
                               _%__splice189639189640%_
                               _%target189182189331%_
                               _%tl189184189333%_)
                              (let ()
                                (declare (not safe))
                                (_%g189166189212%_)))))
                      (let () (declare (not safe)) (_%g189166189212%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189173189312%_))
                      (let ((_%__splice189643189644%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189173189312%_
                                '0))))
                        (let ((_%tl189201189235%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189643189644%_ '1)))
                              (_%target189199189233%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189643189644%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189201189235%_))
                              (_%__match189702189703%_
                               _%e189172189299%_
                               _%hd189171189302%_
                               _%tl189170189304%_
                               _%e189175189307%_
                               _%hd189174189310%_
                               _%tl189173189312%_
                               _%__splice189643189644%_
                               _%target189199189233%_
                               _%tl189201189235%_)
                              (let ()
                                (declare (not safe))
                                (_%g189166189212%_)))))
                      (let () (declare (not safe)) (_%g189166189212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189173189312%_))
                                                      (let ((_%__splice189643189644%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189173189312%_ '0))))
                (let ((_%tl189201189235%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189643189644%_ '1)))
                      (_%target189199189233%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189643189644%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189201189235%_))
                      (_%__match189702189703%_
                       _%e189172189299%_
                       _%hd189171189302%_
                       _%tl189170189304%_
                       _%e189175189307%_
                       _%hd189174189310%_
                       _%tl189173189312%_
                       _%__splice189643189644%_
                       _%target189199189233%_
                       _%tl189201189235%_)
                      (let () (declare (not safe)) (_%g189166189212%_)))))
              (let () (declare (not safe)) (_%g189166189212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189173189312%_))
                                                  (let ((_%__splice189643189644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189173189312%_
                                                            '0))))
                                                    (let ((_%tl189201189235%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189643189644%_
                                                              '1)))
                                                          (_%target189199189233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189643189644%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189201189235%_))
                                                          (_%__match189702189703%_
                                                           _%e189172189299%_
                                                           _%hd189171189302%_
                                                           _%tl189170189304%_
                                                           _%e189175189307%_
                                                           _%hd189174189310%_
                                                           _%tl189173189312%_
                                                           _%__splice189643189644%_
                                                           _%target189199189233%_
                                                           _%tl189201189235%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189166189212%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189166189212%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189173189312%_))
                                              (let ((_%__splice189643189644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189173189312%_
                                                        '0))))
                                                (let ((_%tl189201189235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189643189644%_
                                                          '1)))
                                                      (_%target189199189233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189643189644%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189201189235%_))
                                                      (_%__match189702189703%_
                                                       _%e189172189299%_
                                                       _%hd189171189302%_
                                                       _%tl189170189304%_
                                                       _%e189175189307%_
                                                       _%hd189174189310%_
                                                       _%tl189173189312%_
                                                       _%__splice189643189644%_
                                                       _%target189199189233%_
                                                       _%tl189201189235%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189166189212%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189166189212%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189173189312%_))
                                      (let ((_%__splice189643189644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189173189312%_
                                                '0))))
                                        (let ((_%tl189201189235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189643189644%_
                                                  '1)))
                                              (_%target189199189233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189643189644%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189201189235%_))
                                              (_%__match189702189703%_
                                               _%e189172189299%_
                                               _%hd189171189302%_
                                               _%tl189170189304%_
                                               _%e189175189307%_
                                               _%hd189174189310%_
                                               _%tl189173189312%_
                                               _%__splice189643189644%_
                                               _%target189199189233%_
                                               _%tl189201189235%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189166189212%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189166189212%_))))))
                          (let () (declare (not safe)) (_%g189166189212%_)))))
                  (let () (declare (not safe)) (_%g189166189212%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189124%_ _%ctx189125%_ _%stx189126%_ _%args189127%_)
        (let ((_%self189130%_ _%self189124%_))
          (if (let ((__method190026
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189130%_ 'check-arguments))))
                (if __method190026
                    (__method190026
                     _%self189130%_
                     _%ctx189125%_
                     _%stx189126%_
                     _%args189127%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self189130%_
                             'check-arguments))))
              (let* ((_%signature189140%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189130%_ '2 '#f '#f)))
                     (_%signature189142%_ _%signature189140%_)
                     (_%$e189152%_
                      (if _%signature189142%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189142%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189152%_
                    ((lambda (_%unchecked189155%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189155%_))
                           (let ((__tmp190047
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked189155%_
                                                          '()))
                                              (map (lambda (_%g189156189158%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189125%_
                                                        _%g189156189158%_)))
                                                   _%args189127%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190047 _%stx189126%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189125%_ _%stx189126%_))))
                     _%$e189152%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189125%_ _%stx189126%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189125%_ _%stx189126%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188875%_ _%ctx188876%_ _%stx188877%_ _%args188878%_)
        (let* ((_%self188881%_ _%self188875%_)
               (_%signature188890188892%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self188881%_ '2 '#f '#f))))
          (if _%signature188890188892%_
              (let* ((_%signature188895%_ _%signature188890188892%_)
                     (_%argument-types188896188898%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature188895%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types188896188898%_
                    (let* ((_%argument-types188901%_
                            _%argument-types188896188898%_)
                           (_%argument-types188906%_
                            (let ((__tmp190048
                                   (lambda (_%t188904%_)
                                     (if _%t188904%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188877%_
                                            _%t188904%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp190048
                               _%argument-types188901%_))))
                      (let _%loop188908%_ ((_%rest-args188910%_ _%args188878%_)
                                           (_%rest-types188911%_
                                            _%argument-types188906%_)
                                           (_%result188912%_ '#t))
                        (let* ((_%rest-args188913188921%_ _%rest-args188910%_)
                               (_%else188915188929%_
                                (lambda () _%result188912%_))
                               (_%K188917188990%_
                                (lambda (_%rest-args188932%_ _%arg188933%_)
                                  (let* ((_%rest-types188934188945%_
                                          _%rest-types188911%_)
                                         (_%E188938188949%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types188934188945%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K188941188978%_
                                           (lambda (_%rest-types188975%_
                                                    _%type188976%_)
                                             (_%loop188908%_
                                              _%rest-args188932%_
                                              _%rest-types188975%_
                                              (if (gxc#check-expression-type!
                                                   _%stx188877%_
                                                   _%arg188933%_
                                                   _%type188976%_)
                                                  _%result188912%_
                                                  '#f))))
                                          (_%K188940188969%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx188877%_
                                                _%argument-types188906%_))))
                                          (_%K188939188959%_
                                           (lambda (_%tail-type188953%_)
                                             (if (let ((__tmp190049
                                                        (lambda (_%g188954188956%_)
                                                          (gxc#check-expression-type!
                                                           _%stx188877%_
                                                           _%g188954188956%_
                                                           _%tail-type188953%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp190049
                                                    _%rest-args188932%_))
                                                 _%result188912%_
                                                 '#f))))
                                      (let ((_%try-match188936188972%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types188934188945%_))
                                                   (_%K188940188969%_)
                                                   (let ((_%tail-type188962%_
                                                          _%rest-types188934188945%_))
                                                     (_%K188939188959%_
                                                      _%tail-type188962%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types188934188945%_))
                                            (let ((_%tl188943188983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types188934188945%_)))
                                                  (_%hd188942188981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types188934188945%_))))
                                              (let ((_%type188986%_
                                                     _%hd188942188981%_)
                                                    (_%rest-types188988%_
                                                     _%tl188943188983%_))
                                                (_%K188941188978%_
                                                 _%rest-types188988%_
                                                 _%type188986%_)))
                                            (_%try-match188936188972%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args188913188921%_))
                              (let ((_%hd188918188993%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args188913188921%_)))
                                    (_%tl188919188995%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args188913188921%_))))
                                (let* ((_%arg188998%_ _%hd188918188993%_)
                                       (_%rest-args189000%_
                                        _%tl188919188995%_))
                                  (_%K188917188990%_
                                   _%rest-args189000%_
                                   _%arg188998%_)))
                              (_%else188915188929%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self188686%_ _%ctx188687%_ _%stx188688%_ _%args188689%_)
        (let* ((_%self188692%_ _%self188686%_)
               (_%g188702188712%_
                (lambda (_%g188703188709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188703188709%_))))
               (_%g188701188750%_
                (lambda (_%g188703188715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188703188715%_))
                      (let ((_%e188707188717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188703188715%_))))
                        (let ((_%hd188706188720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188707188717%_)))
                              (_%tl188705188722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188707188717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188705188722%_))
                              ((lambda (_%L188725%_)
                                 (let* ((_%klass188737%_
                                         (let ((__tmp190050
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188692%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188688%_
                                            __tmp190050)))
                                        (_%object188739%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188687%_
                                            _%L188725%_)))
                                        (_%instance?188744%_
                                         (let ((_%$e188741%_
                                                (gxc#expression-type?
                                                 _%object188739%_
                                                 _%klass188737%_)))
                                           (if _%$e188741%_
                                               _%$e188741%_
                                               (gxc#expression-type?
                                                _%L188725%_
                                                _%klass188737%_)))))
                                   (if _%instance?188744%_
                                       (let ((__tmp190051
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188739%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188725%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188739%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190051
                                          _%stx188688%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx188687%_
                                          _%stx188688%_)))))
                               _%hd188706188720%_)
                              (_%g188702188712%_ _%g188703188715%_))))
                      (_%g188702188712%_ _%g188703188715%_)))))
          (_%g188701188750%_ _%args188689%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188482%_ _%ctx188483%_ _%stx188484%_ _%args188485%_)
        (let* ((_%self188488%_ _%self188482%_)
               (_%g188498188508%_
                (lambda (_%g188499188505%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188499188505%_))))
               (_%g188497188561%_
                (lambda (_%g188499188511%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188499188511%_))
                      (let ((_%e188503188513%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188499188511%_))))
                        (let ((_%hd188502188516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188503188513%_)))
                              (_%tl188501188518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188503188513%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188501188518%_))
                              ((lambda (_%L188521%_)
                                 (let* ((_%klass188533%_
                                         (let ((__tmp190052
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188488%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188484%_
                                            __tmp190052)))
                                        (_%object188535%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188483%_
                                            _%L188521%_)))
                                        (_%instance?188540%_
                                         (let ((_%$e188537%_
                                                (gxc#expression-type?
                                                 _%object188535%_
                                                 _%klass188533%_)))
                                           (if _%$e188537%_
                                               _%$e188537%_
                                               (gxc#expression-type?
                                                _%L188521%_
                                                _%klass188533%_))))
                                        (_%klass188543%_ _%klass188533%_))
                                   (if _%instance?188540%_
                                       (let ((__tmp190053
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188535%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188521%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188535%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190053
                                          _%stx188484%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188543%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp190054
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass188543%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object188535%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190054
                                              _%stx188484%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188543%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190055
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188543%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object188535%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190055
                                                  _%stx188484%_))
                                               (let ((__tmp190056
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188488%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188535%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190056
                                                  _%stx188484%_)))))))
                               _%hd188502188516%_)
                              (_%g188498188508%_ _%g188499188511%_))))
                      (_%g188498188508%_ _%g188499188511%_)))))
          (_%g188497188561%_ _%args188485%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188145%_)
        (let* ((_%__stx189712189713%_ _%stx188145%_)
               (_%g188150188191%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189712189713%_)))))
          (let ((_%__kont189714189715%_ (lambda () '#t))
                (_%__kont189716189717%_ (lambda () '#t))
                (_%__kont189718189719%_
                 (lambda (_%L188259%_ _%L188260%_)
                   (let ((_%rator-type188281188283%_
                          (let ((__tmp190057
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188260%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190057))))
                     (if _%rator-type188281188283%_
                         (let* ((_%rator-type188286%_
                                 _%rator-type188281188283%_)
                                (_%rator-signature188287188289%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188286%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188286%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188287188289%_
                               (let* ((_%rator-signature188292%_
                                       _%rator-signature188287188289%_)
                                      (_%rator-effect188293188295%_
                                       (if _%rator-signature188292%_
                                           (##direct-structure-ref
                                            _%rator-signature188292%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188293188295%_
                                     (let ((_%rator-effect188298%_
                                            _%rator-effect188293188295%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188298%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188298%_))
                                           (let ((__tmp190058
                                                  (let ((__tmp190059
                                                         (lambda (_%g188303188306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188304188308%_)
                   (cons _%g188303188306%_ _%g188304188308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190059
                                                     '()
                                                     _%L188259%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190058))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189722189723%_ (lambda () '#f)))
            (let ((_%__match189801189802%_
                   (lambda (_%e188168188203%_
                            _%hd188167188206%_
                            _%tl188166188208%_
                            _%e188171188211%_
                            _%hd188170188214%_
                            _%tl188169188216%_
                            _%e188174188219%_
                            _%hd188173188222%_
                            _%tl188172188224%_
                            _%e188177188227%_
                            _%hd188176188230%_
                            _%tl188175188232%_
                            _%__splice189720189721%_
                            _%target188178188235%_
                            _%tl188180188237%_)
                     (letrec ((_%loop188181188240%_
                               (lambda (_%hd188179188243%_
                                        _%rand188185188245%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188179188243%_))
                                     (let ((_%e188182188248%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188179188243%_))))
                                       (let ((_%lp-tl188184188253%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188182188248%_)))
                                             (_%lp-hd188183188251%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188182188248%_))))
                                         (_%loop188181188240%_
                                          _%lp-tl188184188253%_
                                          (cons _%lp-hd188183188251%_
                                                _%rand188185188245%_))))
                                     (let ((_%rand188186188256%_
                                            (reverse _%rand188185188245%_)))
                                       (_%__kont189718189719%_
                                        _%rand188186188256%_
                                        _%hd188176188230%_))))))
                       (_%loop188181188240%_ _%target188178188235%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189712189713%_))
                  (let ((_%e188154188339%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189712189713%_))))
                    (let ((_%tl188152188344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188154188339%_)))
                          (_%hd188153188342%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188154188339%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188153188342%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188153188342%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188152188344%_))
                                  (let ((_%e188157188347%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188152188344%_))))
                                    (let ((_%tl188155188352%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188157188347%_)))
                                          (_%hd188156188350%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188157188347%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188155188352%_))
                                          (_%__kont189714189715%_)
                                          (_%__kont189722189723%_))))
                                  (_%__kont189722189723%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188153188342%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188152188344%_))
                                      (let ((_%e188163188324%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188152188344%_))))
                                        (let ((_%tl188161188329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188163188324%_)))
                                              (_%hd188162188327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188163188324%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188161188329%_))
                                              (_%__kont189716189717%_)
                                              (_%__kont189722189723%_))))
                                      (_%__kont189722189723%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188153188342%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188152188344%_))
                                          (let ((_%e188171188211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188152188344%_))))
                                            (let ((_%tl188169188216%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188171188211%_)))
                                                  (_%hd188170188214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188171188211%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188170188214%_))
                                                  (let ((_%e188174188219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188170188214%_))))
                                                    (let ((_%tl188172188224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188174188219%_)))
                                                          (_%hd188173188222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188174188219%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188173188222%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188173188222%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188172188224%_))
                          (let ((_%e188177188227%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188172188224%_))))
                            (let ((_%tl188175188232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188177188227%_)))
                                  (_%hd188176188230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188177188227%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188175188232%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188169188216%_))
                                      (let ((_%__splice189720189721%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188169188216%_
                                                '0))))
                                        (let ((_%tl188180188237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189720189721%_
                                                  '1)))
                                              (_%target188178188235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189720189721%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188180188237%_))
                                              (_%__match189801189802%_
                                               _%e188154188339%_
                                               _%hd188153188342%_
                                               _%tl188152188344%_
                                               _%e188171188211%_
                                               _%hd188170188214%_
                                               _%tl188169188216%_
                                               _%e188174188219%_
                                               _%hd188173188222%_
                                               _%tl188172188224%_
                                               _%e188177188227%_
                                               _%hd188176188230%_
                                               _%tl188175188232%_
                                               _%__splice189720189721%_
                                               _%target188178188235%_
                                               _%tl188180188237%_)
                                              (_%__kont189722189723%_))))
                                      (_%__kont189722189723%_))
                                  (_%__kont189722189723%_))))
                          (_%__kont189722189723%_))
                      (_%__kont189722189723%_))
                  (_%__kont189722189723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189722189723%_))))
                                          (_%__kont189722189723%_))
                                      (_%__kont189722189723%_))))
                          (_%__kont189722189723%_))))
                  (_%__kont189722189723%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188140%_ _%klass188141%_)
        (let ((_%expr-type188143%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188140%_))))
          (if _%expr-type188143%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188143%_ _%klass188141%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188118%_ _%expr188119%_ _%type188120%_)
        (if (not _%type188120%_)
            '#f
            (let ((_%$e188123%_
                   (eq? (##structure-ref _%type188120%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188123%_
                  _%$e188123%_
                  (let ((_%expr-type188127%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188119%_))))
                    (if (not _%expr-type188127%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188127%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e188131%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188127%_
                                      'gxc#!abort::t))))
                              (if _%$e188131%_
                                  _%$e188131%_
                                  (let ((_%$e188134%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188127%_
                                            _%type188120%_))))
                                    (if _%$e188134%_
                                        _%$e188134%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188120%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188120%_
                                                   _%expr-type188127%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188118%_
                                                   _%expr188119%_
                                                   _%expr-type188127%_
                                                   _%type188120%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187932%_ _%ctx187933%_ _%stx187934%_ _%args187935%_)
        (let* ((_%self187938%_ _%self187932%_)
               (_%klass187948%_
                (let ((__tmp190060
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self187938%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx187934%_ __tmp190060)))
               (_%fields187950%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass187948%_
                           '5
                           '#f
                           '#f))))
               (_%args187956%_
                (map (lambda (_%g187951187953%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx187933%_ _%g187951187953%_)))
                     _%args187935%_))
               (_%inline-make-object187958%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187938%_
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
                           _%self187938%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields187950%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass187961%_ _%klass187948%_)
               (_%$e187975%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass187961%_ '6 '#f '#f))))
          (if _%$e187975%_
              ((lambda (_%ctor187978%_)
                 (let ((_%$obj187980%_
                        (let ((__tmp190061
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp190061)))
                       (_%ctor-impl187981%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass187961%_
                           _%ctor187978%_))))
                   (let ((__tmp190062
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj187980%_ '())
                                                  (cons _%inline-make-object187958%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl187981%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl187981%_ '()))
                                (cons (cons '%#ref (cons _%$obj187980%_ '()))
                                      _%args187956%_)))
                    (let ((_%$ctor187983%_
                           (let ((__tmp190063
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190063))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor187983%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187938%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj187980%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor187978%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor187983%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor187983%_ '()))
                              (cons (cons '%#ref (cons _%$obj187980%_ '()))
                                    _%args187956%_)))
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
                             _%self187938%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor187978%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj187980%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp190062 _%stx187934%_))))
               _%$e187975%_)
              (let ((_%$e187985%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass187961%_
                        '10
                        '#f
                        '#f))))
                (if _%$e187985%_
                    ((lambda (_%metaclass187988%_)
                       (let* ((_%$obj187990%_
                               (let ((__tmp190064
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190064)))
                              (_%metakons187992%_
                               (let ((__tmp190065
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx187934%_
                                         _%metaclass187988%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp190065
                                  'instance-init!)))
                              (__tmp190066
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj187990%_
                                                             '())
                                                       (cons _%inline-make-object187958%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons187992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons187992%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self187938%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj187990%_
                                                             '()))
                                                 _%args187956%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self187938%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj187990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args187956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj187990%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190066 _%stx187934%_)))
                     _%$e187985%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass187961%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp190067
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args187956%_))))
                              (declare (not safe))
                              (##fx= __tmp190067 _%fields187950%_))
                            (let ((__tmp190068
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187938%_
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
                                              _%self187938%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args187956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190068
                               _%stx187934%_))
                            (let ((__tmp190070
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self187938%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp190069
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass187961%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx187934%_
                               __tmp190070
                               __tmp190069)))
                        (let ((_%$obj187997%_
                               (let ((__tmp190071
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190071))))
                          (let _%lp187999%_ ((_%rest188001%_ _%args187956%_)
                                             (_%initializers188002%_ '()))
                            (let* ((_%__stx189804189805%_ _%rest188001%_)
                                   (_%g188006188027%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx189804189805%_)))))
                              (let ((_%__kont189806189807%_
                                     (lambda (_%L188081%_
                                              _%L188082%_
                                              _%L188083%_)
                                       (let* ((_%slot188110%_
                                               (let ((__tmp190072
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L188083%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp190072)))
                                              (_%off188112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass187961%_
                                                  _%slot188110%_))))
                                         (if _%off188112%_
                                             (_%lp187999%_
                                              _%L188081%_
                                              (cons (cons _%off188112%_
                                                          _%L188082%_)
                                                    _%initializers188002%_))
                                             (let ((__tmp190073
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187938%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx187934%_
                                                __tmp190073
                                                _%slot188110%_))))))
                                    (_%__kont189808189809%_
                                     (lambda ()
                                       (let ((__tmp190074
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj187997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object187958%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp190077
                                     (cons (cons '%#ref
                                                 (cons _%$obj187997%_ '()))
                                           '()))
                                    (__tmp190075
                                     (let ((__tmp190076
                                            (lambda (_%i188041%_ _%r188042%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187938%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i188041%_) '()))
                              (cons (cons '%#ref (cons _%$obj187997%_ '()))
                                    (cons (cdr _%i188041%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r188042%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp190076
                                        '()
                                        _%initializers188002%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp190077 __tmp190075)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190074
                                          _%stx187934%_))))
                                    (_%__kont189810189811%_
                                     (lambda ()
                                       (let ((__tmp190078
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj187997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object187958%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args187956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj187997%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190078
                                          _%stx187934%_)))))
                                (let* ((_%g188004188044%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx189804189805%_))
                                              (_%__kont189808189809%_)
                                              (_%__kont189810189811%_))))
                                       (_%__match189841189842%_
                                        (lambda (_%e188013188049%_
                                                 _%hd188012188052%_
                                                 _%tl188011188054%_
                                                 _%e188016188057%_
                                                 _%hd188015188060%_
                                                 _%tl188014188062%_
                                                 _%e188019188065%_
                                                 _%hd188018188068%_
                                                 _%tl188017188070%_
                                                 _%e188022188073%_
                                                 _%hd188021188076%_
                                                 _%tl188020188078%_)
                                          (let ((_%L188081%_
                                                 _%tl188020188078%_)
                                                (_%L188082%_
                                                 _%hd188021188076%_)
                                                (_%L188083%_
                                                 _%hd188018188068%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L188083%_))
                                                (_%__kont189806189807%_
                                                 _%L188081%_
                                                 _%L188082%_
                                                 _%L188083%_)
                                                (_%__kont189810189811%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx189804189805%_))
                                      (let ((_%e188013188049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx189804189805%_))))
                                        (let ((_%tl188011188054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188013188049%_)))
                                              (_%hd188012188052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188013188049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd188012188052%_))
                                              (let ((_%e188016188057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd188012188052%_))))
                                                (let ((_%tl188014188062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188016188057%_)))
                                                      (_%hd188015188060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188016188057%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd188015188060%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd188015188060%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188014188062%_))
                      (let ((_%e188019188065%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188014188062%_))))
                        (let ((_%tl188017188070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188019188065%_)))
                              (_%hd188018188068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188019188065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188017188070%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188011188054%_))
                                  (let ((_%e188022188073%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188011188054%_))))
                                    (let ((_%tl188020188078%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188022188073%_)))
                                          (_%hd188021188076%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188022188073%_))))
                                      (_%__match189841189842%_
                                       _%e188013188049%_
                                       _%hd188012188052%_
                                       _%tl188011188054%_
                                       _%e188016188057%_
                                       _%hd188015188060%_
                                       _%tl188014188062%_
                                       _%e188019188065%_
                                       _%hd188018188068%_
                                       _%tl188017188070%_
                                       _%e188022188073%_
                                       _%hd188021188076%_
                                       _%tl188020188078%_)))
                                  (_%__kont189810189811%_))
                              (_%__kont189810189811%_))))
                      (_%__kont189810189811%_))
                  (_%__kont189810189811%_))
              (_%__kont189810189811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189810189811%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188004188044%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187715%_ _%ctx187716%_ _%stx187717%_ _%args187718%_)
        (let* ((_%self187721%_ _%self187715%_)
               (_%arguments-ok?187731%_
                (let ((__method190027
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187721%_ 'check-arguments))))
                  (if __method190027
                      (__method190027
                       _%self187721%_
                       _%ctx187716%_
                       _%stx187717%_
                       _%args187718%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187721%_
                               'check-arguments)))))
               (_%g187733187743%_
                (lambda (_%g187734187740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187734187740%_))))
               (_%g187732187807%_
                (lambda (_%g187734187746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187734187746%_))
                      (let ((_%e187738187748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187734187746%_))))
                        (let ((_%hd187737187751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187738187748%_)))
                              (_%tl187736187753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187738187748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187736187753%_))
                              ((lambda (_%L187756%_)
                                 (let* ((_%klass187769%_
                                         (let ((__tmp190079
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187721%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx187717%_
                                            __tmp190079)))
                                        (_%field187771%_
                                         (let ((__tmp190080
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187721%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass187769%_
                                            __tmp190080)))
                                        (_%object187773%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx187716%_
                                            _%L187756%_)))
                                        (_%klass187776%_ _%klass187769%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass187776%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp190081
                                              (cons (if (or _%arguments-ok?187731%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187721%_
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
                                 _%self187721%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field187771%_ '()))
                        (cons _%object187773%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190081
                                          _%stx187717%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass187776%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp190082
                                                  (cons (if (or _%arguments-ok?187731%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187721%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187721%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field187771%_ '()))
                            (cons _%object187773%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190082
                                              _%stx187717%_))
                                           (let ((_%$e187795%_
                                                  (let ((__tmp190083
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self187721%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass187776%_
                                                     __tmp190083))))
                                             (if _%$e187795%_
                                                 ((lambda (_%klass187798%_)
                                                    (let ((__tmp190084
                                                           (cons (if (or _%arguments-ok?187731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187721%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self187721%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field187771%_ '()))
                                     (cons _%object187773%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190084 _%stx187717%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e187795%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187721%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190085
                                                            (let ((_%$obj187804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp190086
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190086))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj187804%_ '())
                                              (cons _%object187773%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass187776%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187804%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187721%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187771%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj187804%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?187731%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187804%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187721%_
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
                                                             _%self187721%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187804%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187721%_
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
               (gxc#xform-wrap-source __tmp190085 _%stx187717%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp190087
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object187773%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187721%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190087 _%stx187717%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd187737187751%_)
                              (_%g187733187743%_ _%g187734187746%_))))
                      (_%g187733187743%_ _%g187734187746%_)))))
          (_%g187732187807%_ _%args187718%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187479%_ _%ctx187480%_ _%stx187481%_ _%args187482%_)
        (let* ((_%self187485%_ _%self187479%_)
               (_%arguments-ok?187495%_
                (let ((__method190028
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187485%_ 'check-arguments))))
                  (if __method190028
                      (__method190028
                       _%self187485%_
                       _%ctx187480%_
                       _%stx187481%_
                       _%args187482%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187485%_
                               'check-arguments)))))
               (_%g187497187511%_
                (lambda (_%g187498187508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187498187508%_))))
               (_%g187496187590%_
                (lambda (_%g187498187514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187498187514%_))
                      (let ((_%e187503187516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187498187514%_))))
                        (let ((_%hd187502187519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187503187516%_)))
                              (_%tl187501187521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187503187516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187501187521%_))
                              (let ((_%e187506187524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187501187521%_))))
                                (let ((_%hd187505187527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187506187524%_)))
                                      (_%tl187504187529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187506187524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187504187529%_))
                                      ((lambda (_%L187532%_ _%L187533%_)
                                         (let* ((_%klass187549%_
                                                 (let ((__tmp190088
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187485%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx187481%_
                                                    __tmp190088)))
                                                (_%field187551%_
                                                 (let ((__tmp190089
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187485%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass187549%_
                                                    __tmp190089)))
                                                (_%object187553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187480%_
                                                    _%L187533%_)))
                                                (_%value187555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187480%_
                                                    _%L187532%_)))
                                                (_%klass187558%_
                                                 _%klass187549%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187558%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190090
                                                      (cons (if (or _%arguments-ok?187495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187485%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187485%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field187551%_ '()))
                                (cons _%object187553%_
                                      (cons _%value187555%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190090
                                                  _%stx187481%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187558%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp190091
                                                          (cons (if (or _%arguments-ok?187495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187485%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187485%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187551%_ '()))
                                    (cons _%object187553%_
                                          (cons _%value187555%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190091
                                                      _%stx187481%_))
                                                   (let ((_%$e187578%_
                                                          (let ((__tmp190092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187485%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187558%_
                     __tmp190092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187578%_
                                                         ((lambda (_%klass187581%_)
                                                            (let ((__tmp190093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187495%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187485%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187485%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187551%_ '()))
                                             (cons _%object187553%_
                                                   (cons _%value187555%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190093 _%stx187481%_)))
                  _%$e187578%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187485%_ '4 '#f '#f))
                     (let ((__tmp190094
                            (let ((_%$obj187587%_
                                   (let ((__tmp190095
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190095))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj187587%_ '())
                                                      (cons _%object187553%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass187558%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj187587%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187485%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field187551%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj187587%_
                                                              '()))
                                                  (cons _%value187555%_
                                                        '())))))
                          (cons (if _%arguments-ok?187495%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187485%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value187555%_ '())))))
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
                             _%self187485%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187587%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187485%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value187555%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190094 _%stx187481%_))
                     (let ((__tmp190096
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object187553%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187485%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value187555%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp190096
                        _%stx187481%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187505187527%_
                                       _%hd187502187519%_)
                                      (_%g187497187511%_ _%g187498187514%_))))
                              (_%g187497187511%_ _%g187498187514%_))))
                      (_%g187497187511%_ _%g187498187514%_)))))
          (_%g187496187590%_ _%args187482%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187294%_ _%ctx187295%_ _%stx187296%_ _%args187297%_)
        (let* ((_%self187300%_ _%self187294%_)
               (_%self187309187319%_ _%self187300%_)
               (_%E187311187323%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187309187319%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K187312187333%_
                (lambda (_%inline187326%_ _%dispatch187327%_ _%arity187328%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self187300%_
                         _%args187297%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx187296%_
                         _%arity187328%_)))
                  (if _%inline187326%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp190097
                               (let ((__tmp190098
                                      (_%inline187326%_ _%stx187296%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190098
                                  _%stx187296%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx187295%_ __tmp190097)))
                      (if (and _%dispatch187327%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch187327%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch187327%_))
                            (let ((__tmp190099
                                   (let ((__tmp190100
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch187327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args187297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp190100
                                      _%stx187296%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx187295%_ __tmp190099)))
                          (gxc#!procedure::optimize-call
                           _%self187300%_
                           _%ctx187295%_
                           _%stx187296%_
                           _%args187297%_))))))
          (if '#t
              (let* ((_%e187313187336%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187309187319%_
                         '1
                         '#f
                         '#f)))
                     (_%e187314187339%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187309187319%_
                         '2
                         '#f
                         '#f)))
                     (_%e187315187342%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187309187319%_
                         '3
                         '#f
                         '#f)))
                     (_%arity187345%_ _%e187315187342%_)
                     (_%e187316187347%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187309187319%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187350%_ _%e187316187347%_)
                     (_%e187317187352%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187309187319%_
                         '5
                         '#f
                         '#f)))
                     (_%inline187355%_ _%e187317187352%_))
                (_%K187312187333%_
                 _%inline187355%_
                 _%dispatch187350%_
                 _%arity187345%_))
              (_%E187311187323%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187146%_ _%ctx187147%_ _%stx187148%_ _%args187149%_)
        (let* ((_%self187152%_ _%self187146%_)
               (_%$e187166%_
                (let ((__tmp190102
                       (lambda (_%g187161187163%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g187161187163%_
                            _%args187149%_))))
                      (__tmp190101
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self187152%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp190102 __tmp190101))))
          (if _%$e187166%_
              ((lambda (_%clause187169%_)
                 (let ((__method190029
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause187169%_ 'optimize-call))))
                   (if __method190029
                       (__method190029
                        _%clause187169%_
                        _%ctx187147%_
                        _%stx187148%_
                        _%args187149%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method"
                                _%clause187169%_
                                'optimize-call)))))
               _%$e187166%_)
              (let ((__tmp190103
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187152%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx187148%_
                 __tmp190103))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186886%_ _%ctx186887%_ _%stx186888%_ _%args186889%_)
        (let* ((_%self186892%_ _%self186886%_)
               (_%self186901186910%_ _%self186892%_)
               (_%E186903186914%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self186901186910%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K186904187005%_
                (lambda (_%dispatch186917%_ _%table186918%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch186917%_))
                      (let* ((_%g186919186929%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch186917%_)))
                             (_%else186921186937%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch186917%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx186887%_
                                   _%stx186888%_))))
                             (_%K186923186986%_
                              (lambda (_%main186940%_ _%keys186941%_)
                                (let ((_g190104_
                                       (gxc#!kw-lambda-split-args
                                        _%stx186888%_
                                        _%args186889%_)))
                                  (begin
                                    (let ((_g190105_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190104_)
                                                 (##vector-length _g190104_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190105_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190105_)))
                                    (let ((_%pargs186943%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190104_ 0)))
                                          (_%kwargs186944%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190104_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main186940%_))
                                        (if _%table186918%_
                                            (let ((_%xargs186952%_
                                                   (map (lambda (_%key186946%_)
                                                          (let ((_%$e186948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key186946%_ _%kwargs186944%_))))
                    (if _%$e186948%_ _%$e186948%_ '(%#ref absent-value))))
                _%keys186941%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw186954%_)
                                                 (if (memq (car _%kw186954%_)
                                                           _%keys186941%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx186888%_
                                                        _%keys186941%_
                                                        _%kw186954%_))))
                                               _%kwargs186944%_)
                                              (let ((__tmp190106
                                                     (let ((__tmp190107
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main186940%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs186943%_
                                         _%xargs186952%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190107 _%stx186888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx186887%_
                                                 __tmp190106)))
                                            (let* ((_%kwt186956%_
                                                    (let ((__tmp190108
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp190108)))
                                                   (_%kwvars186960%_
                                                    (map (lambda (_%_186958%_)
                                                           (let ((__tmp190109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp190109)))
                 _%kwargs186944%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind186965%_
                                                    (map (lambda (_%kw186962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar186963%_)
                   (cons (cons _%kwvar186963%_ '())
                         (cons (cdr _%kw186962%_) '())))
                 _%kwargs186944%_
                 _%kwvars186960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset186970%_
                                                    (map (lambda (_%kw186967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar186968%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt186956%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw186967%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar186968%_
                                                             '()))
                                                 '()))))))
                 _%kwargs186944%_
                 _%kwvars186960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs186975%_
                                                    (map (lambda (_%kw186972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar186973%_)
                   (cons (car _%kw186972%_)
                         (cons '%#ref (cons _%kwvar186973%_ '()))))
                 _%kwargs186944%_
                 _%kwvars186960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs186983%_
                                                    (map (lambda (_%key186977%_)
                                                           (let ((_%$e186979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key186977%_ _%xkwargs186975%_))))
                     (if _%$e186979%_ _%$e186979%_ '(%#ref absent-value))))
                 _%keys186941%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190110
                                                    (let ((__tmp190111
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind186965%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt186956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp190112
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs186944%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190112 _%stx186888%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp190113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp190114
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main186940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt186956%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs186943%_ _%xargs186983%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190114
                                     _%stx186888%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp190113 _%kwset186970%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190111 _%stx186888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx186887%_
                                               __tmp190110))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g186919186929%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e186924186989%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g186919186929%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e186925186992%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g186919186929%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e186926186995%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g186919186929%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys186998%_ _%e186926186995%_)
                                   (_%e186927187000%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g186919186929%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main187003%_ _%e186927187000%_))
                              (_%K186923186986%_
                               _%main187003%_
                               _%keys186998%_))
                            (_%else186921186937%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx186887%_ _%stx186888%_))))))
          (if '#t
              (let* ((_%e186905187008%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self186901186910%_
                         '1
                         '#f
                         '#f)))
                     (_%e186906187011%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self186901186910%_
                         '2
                         '#f
                         '#f)))
                     (_%e186907187014%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self186901186910%_
                         '3
                         '#f
                         '#f)))
                     (_%table187017%_ _%e186907187014%_)
                     (_%e186908187019%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self186901186910%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187022%_ _%e186908187019%_))
                (_%K186904187005%_ _%dispatch187022%_ _%table187017%_))
              (_%E186903186914%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186499%_ _%args186500%_)
        (let _%lp186502%_ ((_%rest186504%_ _%args186500%_)
                           (_%pargs186505%_ '())
                           (_%kwargs186506%_ '()))
          (let* ((_%__stx189846189847%_ _%rest186504%_)
                 (_%g186512186564%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189846189847%_)))))
            (let ((_%__kont189848189849%_
                   (lambda (_%L186743%_ _%L186744%_)
                     (_%lp186502%_
                      _%L186743%_
                      (cons _%L186744%_ _%pargs186505%_)
                      _%kwargs186506%_)))
                  (_%__kont189850189851%_
                   (lambda (_%L186689%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186689%_ _%pargs186505%_))
                             (reverse _%kwargs186506%_))))
                  (_%__kont189852189853%_
                   (lambda (_%L186636%_ _%L186637%_ _%L186638%_)
                     (let ((_%kw186655%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186638%_))))
                       (if (assq _%kw186655%_ _%kwargs186506%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186499%_
                              _%kw186655%_))
                           (_%lp186502%_
                            _%L186636%_
                            _%pargs186505%_
                            (cons (cons _%kw186655%_ _%L186637%_)
                                  _%kwargs186506%_))))))
                  (_%__kont189854189855%_
                   (lambda (_%L186584%_ _%L186585%_)
                     (_%lp186502%_
                      _%L186584%_
                      (cons _%L186585%_ _%pargs186505%_)
                      _%kwargs186506%_)))
                  (_%__kont189856189857%_
                   (lambda ()
                     (values (reverse _%pargs186505%_)
                             (reverse _%kwargs186506%_)))))
              (let ((_%__match189953189954%_
                     (lambda (_%e186545186604%_
                              _%hd186544186607%_
                              _%tl186543186609%_
                              _%e186548186612%_
                              _%hd186547186615%_
                              _%tl186546186617%_
                              _%e186551186620%_
                              _%hd186550186623%_
                              _%tl186549186625%_
                              _%e186554186628%_
                              _%hd186553186631%_
                              _%tl186552186633%_)
                       (let ((_%L186636%_ _%tl186552186633%_)
                             (_%L186637%_ _%hd186553186631%_)
                             (_%L186638%_ _%hd186550186623%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186638%_))
                             (_%__kont189852189853%_
                              _%L186636%_
                              _%L186637%_
                              _%L186638%_)
                             (_%__kont189854189855%_
                              _%tl186543186609%_
                              _%hd186544186607%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189846189847%_))
                    (let ((_%e186518186708%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189846189847%_))))
                      (let ((_%tl186516186713%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186518186708%_)))
                            (_%hd186517186711%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186518186708%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186517186711%_))
                            (let ((_%e186521186716%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186517186711%_))))
                              (let ((_%tl186519186721%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186521186716%_)))
                                    (_%hd186520186719%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186521186716%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186520186719%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186520186719%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186519186721%_))
                                            (let ((_%e186524186724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186519186721%_))))
                                              (let ((_%tl186522186729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186524186724%_)))
                                                    (_%hd186523186727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186524186724%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186523186727%_))
                                                    (let ((_%e186525186732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186523186727%_))))
                                                      (if (equal? _%e186525186732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186522186729%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186516186713%_))
                          (let ((_%e186528186735%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186516186713%_))))
                            (let ((_%tl186526186740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186528186735%_)))
                                  (_%hd186527186738%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186528186735%_))))
                              (_%__kont189848189849%_
                               _%tl186526186740%_
                               _%hd186527186738%_)))
                          (_%__kont189854189855%_
                           _%tl186516186713%_
                           _%hd186517186711%_))
                      (_%__kont189854189855%_
                       _%tl186516186713%_
                       _%hd186517186711%_))
                  (if (equal? _%e186525186732%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186522186729%_))
                          (_%__kont189850189851%_ _%tl186516186713%_)
                          (_%__kont189854189855%_
                           _%tl186516186713%_
                           _%hd186517186711%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186522186729%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186516186713%_))
                              (let ((_%e186554186628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186516186713%_))))
                                (let ((_%tl186552186633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186554186628%_)))
                                      (_%hd186553186631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186554186628%_))))
                                  (_%__match189953189954%_
                                   _%e186518186708%_
                                   _%hd186517186711%_
                                   _%tl186516186713%_
                                   _%e186521186716%_
                                   _%hd186520186719%_
                                   _%tl186519186721%_
                                   _%e186524186724%_
                                   _%hd186523186727%_
                                   _%tl186522186729%_
                                   _%e186554186628%_
                                   _%hd186553186631%_
                                   _%tl186552186633%_)))
                              (_%__kont189854189855%_
                               _%tl186516186713%_
                               _%hd186517186711%_))
                          (_%__kont189854189855%_
                           _%tl186516186713%_
                           _%hd186517186711%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186522186729%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186516186713%_))
                                                            (let ((_%e186554186628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186516186713%_))))
                      (let ((_%tl186552186633%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186554186628%_)))
                            (_%hd186553186631%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186554186628%_))))
                        (_%__match189953189954%_
                         _%e186518186708%_
                         _%hd186517186711%_
                         _%tl186516186713%_
                         _%e186521186716%_
                         _%hd186520186719%_
                         _%tl186519186721%_
                         _%e186524186724%_
                         _%hd186523186727%_
                         _%tl186522186729%_
                         _%e186554186628%_
                         _%hd186553186631%_
                         _%tl186552186633%_)))
                    (_%__kont189854189855%_
                     _%tl186516186713%_
                     _%hd186517186711%_))
                (_%__kont189854189855%_
                 _%tl186516186713%_
                 _%hd186517186711%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189854189855%_
                                             _%tl186516186713%_
                                             _%hd186517186711%_))
                                        (_%__kont189854189855%_
                                         _%tl186516186713%_
                                         _%hd186517186711%_))
                                    (_%__kont189854189855%_
                                     _%tl186516186713%_
                                     _%hd186517186711%_))))
                            (_%__kont189854189855%_
                             _%tl186516186713%_
                             _%hd186517186711%_))))
                    (_%__kont189856189857%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186483%_ _%ctx186484%_ _%stx186485%_ _%args186486%_)
        (let ((_%self186489%_ _%self186483%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186484%_ _%stx186485%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186171%_ _%stx186172%_)
        (let* ((_%__stx189962189963%_ _%stx186172%_)
               (_%g186175186215%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189962189963%_)))))
          (let ((_%__kont189964189965%_
                 (lambda (_%L186321%_ _%L186322%_)
                   (let ((_%$e186349%_
                          (member 'return:
                                  (let ((__tmp190115
                                         (lambda (_%g186341186344%_
                                                  _%g186342186346%_)
                                           (cons _%g186341186344%_
                                                 _%g186342186346%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190115 '() _%L186322%_))
                                  gx#stx-eq?)))
                     (if _%$e186349%_
                         ((lambda (_%tail186352%_)
                            (let ((_%type186354%_
                                   (let ((__tmp190116
                                          (let ((__tmp190117
                                                 (cadr _%tail186352%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190117))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186172%_
                                      __tmp190116))))
                              (gxc#check-return-type!
                               _%stx186172%_
                               _%L186321%_
                               _%type186354%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186171%_
                                 _%L186321%_))))
                          _%$e186349%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186171%_ _%L186321%_))))))
                (_%__kont189968189969%_
                 (lambda (_%L186244%_ _%L186245%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186171%_ _%L186244%_)))))
            (let ((_%__match189999190000%_
                   (lambda (_%e186181186265%_
                            _%hd186180186268%_
                            _%tl186179186270%_
                            _%e186184186273%_
                            _%hd186183186276%_
                            _%tl186182186278%_
                            _%e186187186281%_
                            _%hd186186186284%_
                            _%tl186185186286%_
                            _%__splice189966189967%_
                            _%target186188186289%_
                            _%tl186190186291%_)
                     (letrec ((_%loop186191186294%_
                               (lambda (_%hd186189186297%_
                                        _%signature186195186299%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186189186297%_))
                                     (let ((_%e186192186302%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186189186297%_))))
                                       (let ((_%lp-tl186194186307%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186192186302%_)))
                                             (_%lp-hd186193186305%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186192186302%_))))
                                         (_%loop186191186294%_
                                          _%lp-tl186194186307%_
                                          (cons _%lp-hd186193186305%_
                                                _%signature186195186299%_))))
                                     (let ((_%signature186196186310%_
                                            (reverse _%signature186195186299%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186182186278%_))
                                           (let ((_%e186199186313%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186182186278%_))))
                                             (let ((_%tl186197186318%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186199186313%_)))
                                                   (_%hd186198186316%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186199186313%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186197186318%_))
                                                   (_%__kont189964189965%_
                                                    _%hd186198186316%_
                                                    _%signature186196186310%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186175186215%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186175186215%_))))))))
                       (_%loop186191186294%_ _%target186188186289%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189962189963%_))
                  (let ((_%e186181186265%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189962189963%_))))
                    (let ((_%tl186179186270%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186181186265%_)))
                          (_%hd186180186268%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186181186265%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186179186270%_))
                          (let ((_%e186184186273%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186179186270%_))))
                            (let ((_%tl186182186278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186184186273%_)))
                                  (_%hd186183186276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186184186273%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186183186276%_))
                                  (let ((_%e186187186281%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186183186276%_))))
                                    (let ((_%tl186185186286%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186187186281%_)))
                                          (_%hd186186186284%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186187186281%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186186186284%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186186186284%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186185186286%_))
                                                  (let ((_%__splice189966189967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186185186286%_
                                                            '0))))
                                                    (let ((_%tl186190186291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189966189967%_
                                                              '1)))
                                                          (_%target186188186289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189966189967%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186190186291%_))
                                                          (_%__match189999190000%_
                                                           _%e186181186265%_
                                                           _%hd186180186268%_
                                                           _%tl186179186270%_
                                                           _%e186184186273%_
                                                           _%hd186183186276%_
                                                           _%tl186182186278%_
                                                           _%e186187186281%_
                                                           _%hd186186186284%_
                                                           _%tl186185186286%_
                                                           _%__splice189966189967%_
                                                           _%target186188186289%_
                                                           _%tl186190186291%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186182186278%_))
                      (let ((_%e186210186236%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186182186278%_))))
                        (let ((_%tl186208186241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186210186236%_)))
                              (_%hd186209186239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186210186236%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186208186241%_))
                              (_%__kont189968189969%_
                               _%hd186209186239%_
                               _%hd186183186276%_)
                              (let ()
                                (declare (not safe))
                                (_%g186175186215%_)))))
                      (let () (declare (not safe)) (_%g186175186215%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186182186278%_))
                                                      (let ((_%e186210186236%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186182186278%_))))
                (let ((_%tl186208186241%_
                       (let () (declare (not safe)) (##cdr _%e186210186236%_)))
                      (_%hd186209186239%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186210186236%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186208186241%_))
                      (_%__kont189968189969%_
                       _%hd186209186239%_
                       _%hd186183186276%_)
                      (let () (declare (not safe)) (_%g186175186215%_)))))
              (let () (declare (not safe)) (_%g186175186215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186182186278%_))
                                                  (let ((_%e186210186236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186182186278%_))))
                                                    (let ((_%tl186208186241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186210186236%_)))
                                                          (_%hd186209186239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186210186236%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186208186241%_))
                                                          (_%__kont189968189969%_
                                                           _%hd186209186239%_
                                                           _%hd186183186276%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186175186215%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186175186215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186182186278%_))
                                              (let ((_%e186210186236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186182186278%_))))
                                                (let ((_%tl186208186241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186210186236%_)))
                                                      (_%hd186209186239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186210186236%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186208186241%_))
                                                      (_%__kont189968189969%_
                                                       _%hd186209186239%_
                                                       _%hd186183186276%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186175186215%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186175186215%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186182186278%_))
                                      (let ((_%e186210186236%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186182186278%_))))
                                        (let ((_%tl186208186241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186210186236%_)))
                                              (_%hd186209186239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186210186236%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186208186241%_))
                                              (_%__kont189968189969%_
                                               _%hd186209186239%_
                                               _%hd186183186276%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186175186215%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186175186215%_))))))
                          (let () (declare (not safe)) (_%g186175186215%_)))))
                  (let () (declare (not safe)) (_%g186175186215%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186149%_ _%expr186150%_ _%type186151%_)
        (let ((_%$e186153%_ (not _%type186151%_)))
          (if _%$e186153%_
              _%$e186153%_
              (let ((_%$e186156%_
                     (eq? (##structure-ref _%type186151%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186156%_
                    _%$e186156%_
                    (let ((_%expr-type186160%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186150%_))))
                      (if (not _%expr-type186160%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186149%_
                             _%type186151%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186160%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186149%_
                                 _%type186151%_
                                 _%expr-type186160%_))
                              (let ((_%$e186164%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186160%_
                                        'gxc#!abort::t))))
                                (if _%$e186164%_
                                    _%$e186164%_
                                    (let ((_%$e186167%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186160%_
                                              _%type186151%_))))
                                      (if _%$e186167%_
                                          _%$e186167%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186149%_
                                             _%type186151%_
                                             _%expr-type186160%_)))))))))))))))))
