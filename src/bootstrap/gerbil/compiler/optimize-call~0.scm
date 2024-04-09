(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712643214)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190142 (list gxc#::basic-xform::t))
            (__tmp190141 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190142
         '()
         __tmp190141
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189691%_
        (apply make-instance gxc#::optimize-call::t _%$args189691%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190143
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
        (__make-promise __tmp190143)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189683%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189686%_
                (let ((__obj190133
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190133))
               (__tmp190144
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189686%_ _%stx189683%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190144
           gxc#current-compile-method
           _%self189686%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190146 (list gxc#::void::t))
            (__tmp190145 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190146
         '()
         __tmp190145
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189680%_
        (apply make-instance gxc#::check-return-type::t _%$args189680%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190147
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
        (__make-promise __tmp190147)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189672%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189675%_
                (let ((__obj190135
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190135))
               (__tmp190148
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189675%_ _%stx189672%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190148
           gxc#current-compile-method
           _%self189675%_))))
    (define gxc#optimize-call%
      (lambda (_%self189273%_ _%stx189274%_)
        (let* ((_%__stx189746189747%_ _%stx189274%_)
               (_%g189277189323%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189746189747%_)))))
          (let ((_%__kont189748189749%_
                 (lambda (_%L189466%_ _%L189467%_)
                   (let* ((_%rator-id189487%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189467%_)))
                          (_%rator-type189489%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189487%_))))
                     (if (or (not _%rator-type189489%_)
                             (eq? (##structure-ref
                                   _%rator-type189489%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189273%_ _%stx189274%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189489%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190149
                                      (##structure-ref
                                       _%rator-type189489%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189487%_
                                  '" => "
                                  _%rator-type189489%_
                                  '" "
                                  __tmp190149))
                               (let* ((_%optimized189504%_
                                       (let ((__method190136
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189489%_
                                                 'optimize-call))))
                                         (if __method190136
                                             (__method190136
                                              _%rator-type189489%_
                                              _%self189273%_
                                              _%stx189274%_
                                              (let ((__tmp190150
                                                     (lambda (_%g189496189499%_
                                                              _%g189497189501%_)
                                                       (cons _%g189496189499%_
                                                             _%g189497189501%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190150
                                                 '()
                                                 _%L189466%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189489%_
                                                      'optimize-call)))))
                                      (_%__stx189694189695%_
                                       _%optimized189504%_)
                                      (_%g189507189536%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189694189695%_)))))
                                 (let ((_%__kont189696189697%_
                                        (lambda (_%L189604%_ _%L189605%_)
                                          (let* ((_%optimized-rator-id189632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L189605%_)))
                                                 (_%rator-type189637%_
                                                  (let ((_%$e189634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id189632%_))))
                                                    (if _%$e189634%_
                                                        _%$e189634%_
                                                        _%rator-type189489%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type189637%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189632%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type189637%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type189637%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized189504%_
                                                (let ((__tmp190151
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L189605%_ '()))
                           (let ((__tmp190152
                                  (lambda (_%g189645189648%_ _%g189646189650%_)
                                    (cons _%g189645189648%_
                                          _%g189646189650%_))))
                             (declare (not safe))
                             (__foldr1 __tmp190152 '() _%L189604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190151
                                                   _%stx189274%_))))))
                                       (_%__kont189700189701%_
                                        (lambda () _%optimized189504%_)))
                                   (let ((_%__match189743189744%_
                                          (lambda (_%e189511189548%_
                                                   _%hd189512189551%_
                                                   _%tl189513189553%_
                                                   _%e189514189556%_
                                                   _%hd189515189559%_
                                                   _%tl189516189561%_
                                                   _%e189517189564%_
                                                   _%hd189518189567%_
                                                   _%tl189519189569%_
                                                   _%e189520189572%_
                                                   _%hd189521189575%_
                                                   _%tl189522189577%_
                                                   _%__splice189698189699%_
                                                   _%target189523189580%_
                                                   _%tl189525189582%_)
                                            (letrec ((_%loop189526189585%_
                                                      (lambda (_%hd189524189588%_
                                                               _%arg189530189590%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189524189588%_))
                                                            (let ((_%e189527189593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189524189588%_))))
                      (let ((_%lp-tl189529189598%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189527189593%_)))
                            (_%lp-hd189528189596%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189527189593%_))))
                        (_%loop189526189585%_
                         _%lp-tl189529189598%_
                         (cons _%lp-hd189528189596%_ _%arg189530189590%_))))
                    (let ((_%arg189531189601%_ (reverse _%arg189530189590%_)))
                      (_%__kont189696189697%_
                       _%arg189531189601%_
                       _%hd189521189575%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop189526189585%_
                                               _%target189523189580%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189694189695%_))
                                         (let ((_%e189511189548%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189694189695%_))))
                                           (let ((_%tl189513189553%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189511189548%_)))
                                                 (_%hd189512189551%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189511189548%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189512189551%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189512189551%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189513189553%_))
                                                         (let ((_%e189514189556%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189513189553%_))))
                   (let ((_%tl189516189561%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189514189556%_)))
                         (_%hd189515189559%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189514189556%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189515189559%_))
                         (let ((_%e189517189564%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189515189559%_))))
                           (let ((_%tl189519189569%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189517189564%_)))
                                 (_%hd189518189567%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189517189564%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189518189567%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189518189567%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189519189569%_))
                                         (let ((_%e189520189572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189519189569%_))))
                                           (let ((_%tl189522189577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189520189572%_)))
                                                 (_%hd189521189575%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189520189572%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189522189577%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189516189561%_))
                                                     (let ((_%__splice189698189699%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189516189561%_
                                                               '0))))
                                                       (let ((_%tl189525189582%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189698189699%_ '1)))
                     (_%target189523189580%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189698189699%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189525189582%_))
                     (_%__match189743189744%_
                      _%e189511189548%_
                      _%hd189512189551%_
                      _%tl189513189553%_
                      _%e189514189556%_
                      _%hd189515189559%_
                      _%tl189516189561%_
                      _%e189517189564%_
                      _%hd189518189567%_
                      _%tl189519189569%_
                      _%e189520189572%_
                      _%hd189521189575%_
                      _%tl189522189577%_
                      _%__splice189698189699%_
                      _%target189523189580%_
                      _%tl189525189582%_)
                     (_%__kont189700189701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189700189701%_))
                                                 (_%__kont189700189701%_))))
                                         (_%__kont189700189701%_))
                                     (_%__kont189700189701%_))
                                 (_%__kont189700189701%_))))
                         (_%__kont189700189701%_))))
                 (_%__kont189700189701%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189700189701%_))
                                                 (_%__kont189700189701%_))))
                                         (_%__kont189700189701%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189489%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189489%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190153
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L189467%_
                                                                '()))
                                                    (map (lambda (_%g189656189658%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self189273%_
                                                              _%g189656189658%_)))
                                                         (let ((__tmp190154
                                                                (lambda (_%g189660189663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g189661189665%_)
                          (cons _%g189660189663%_ _%g189661189665%_))))
                   (declare (not safe))
                   (__foldr1 __tmp190154 '() _%L189466%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190153
                                    _%stx189274%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189274%_
                                    _%rator-type189489%_))))))))
                (_%__kont189752189753%_
                 (lambda (_%L189368%_ _%L189369%_)
                   (let ((_%rator-type189386%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189369%_))))
                     (if (and _%rator-type189386%_
                              (eq? (##structure-ref
                                    _%rator-type189386%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type189386%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type189386%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type189386%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp190155
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self189273%_
                                               _%L189369%_))
                                            (map (lambda (_%g189388189390%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189273%_
                                                      _%g189388189390%_)))
                                                 (let ((__tmp190156
                                                        (lambda (_%g189392189395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g189393189397%_)
                  (cons _%g189392189395%_ _%g189393189397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp190156
                                                    '()
                                                    _%L189368%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190155 _%stx189274%_))
                         (if (or (not _%rator-type189386%_)
                                 (let ((__tmp190157
                                        (##structure-ref
                                         _%rator-type189386%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190157 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189273%_ _%stx189274%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189274%_
                                _%rator-type189386%_))))))))
            (let* ((_%__match189813189814%_
                    (lambda (_%e189304189328%_
                             _%hd189305189331%_
                             _%tl189306189333%_
                             _%e189307189336%_
                             _%hd189308189339%_
                             _%tl189309189341%_
                             _%__splice189754189755%_
                             _%target189310189344%_
                             _%tl189312189346%_)
                      (letrec ((_%loop189313189349%_
                                (lambda (_%hd189311189352%_
                                         _%rand189317189354%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189311189352%_))
                                      (let ((_%e189314189357%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189311189352%_))))
                                        (let ((_%lp-tl189316189362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189314189357%_)))
                                              (_%lp-hd189315189360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189314189357%_))))
                                          (_%loop189313189349%_
                                           _%lp-tl189316189362%_
                                           (cons _%lp-hd189315189360%_
                                                 _%rand189317189354%_))))
                                      (let ((_%rand189318189365%_
                                             (reverse _%rand189317189354%_)))
                                        (_%__kont189752189753%_
                                         _%rand189318189365%_
                                         _%hd189308189339%_))))))
                        (_%loop189313189349%_ _%target189310189344%_ '()))))
                   (_%__match189793189794%_
                    (lambda (_%e189281189410%_
                             _%hd189282189413%_
                             _%tl189283189415%_
                             _%e189284189418%_
                             _%hd189285189421%_
                             _%tl189286189423%_
                             _%e189287189426%_
                             _%hd189288189429%_
                             _%tl189289189431%_
                             _%e189290189434%_
                             _%hd189291189437%_
                             _%tl189292189439%_
                             _%__splice189750189751%_
                             _%target189293189442%_
                             _%tl189295189444%_)
                      (letrec ((_%loop189296189447%_
                                (lambda (_%hd189294189450%_
                                         _%rand189300189452%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189294189450%_))
                                      (let ((_%e189297189455%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189294189450%_))))
                                        (let ((_%lp-tl189299189460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189297189455%_)))
                                              (_%lp-hd189298189458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189297189455%_))))
                                          (_%loop189296189447%_
                                           _%lp-tl189299189460%_
                                           (cons _%lp-hd189298189458%_
                                                 _%rand189300189452%_))))
                                      (let ((_%rand189301189463%_
                                             (reverse _%rand189300189452%_)))
                                        (_%__kont189748189749%_
                                         _%rand189301189463%_
                                         _%hd189291189437%_))))))
                        (_%loop189296189447%_ _%target189293189442%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189746189747%_))
                  (let ((_%e189281189410%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189746189747%_))))
                    (let ((_%tl189283189415%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189281189410%_)))
                          (_%hd189282189413%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189281189410%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189283189415%_))
                          (let ((_%e189284189418%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189283189415%_))))
                            (let ((_%tl189286189423%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189284189418%_)))
                                  (_%hd189285189421%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189284189418%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189285189421%_))
                                  (let ((_%e189287189426%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189285189421%_))))
                                    (let ((_%tl189289189431%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189287189426%_)))
                                          (_%hd189288189429%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189287189426%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189288189429%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189288189429%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189289189431%_))
                                                  (let ((_%e189290189434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189289189431%_))))
                                                    (let ((_%tl189292189439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189290189434%_)))
                                                          (_%hd189291189437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189290189434%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189292189439%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189286189423%_))
                      (let ((_%__splice189750189751%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189286189423%_
                                '0))))
                        (let ((_%tl189295189444%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189750189751%_ '1)))
                              (_%target189293189442%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189750189751%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189295189444%_))
                              (_%__match189793189794%_
                               _%e189281189410%_
                               _%hd189282189413%_
                               _%tl189283189415%_
                               _%e189284189418%_
                               _%hd189285189421%_
                               _%tl189286189423%_
                               _%e189287189426%_
                               _%hd189288189429%_
                               _%tl189289189431%_
                               _%e189290189434%_
                               _%hd189291189437%_
                               _%tl189292189439%_
                               _%__splice189750189751%_
                               _%target189293189442%_
                               _%tl189295189444%_)
                              (let ()
                                (declare (not safe))
                                (_%g189277189323%_)))))
                      (let () (declare (not safe)) (_%g189277189323%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189286189423%_))
                      (let ((_%__splice189754189755%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189286189423%_
                                '0))))
                        (let ((_%tl189312189346%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189754189755%_ '1)))
                              (_%target189310189344%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189754189755%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189312189346%_))
                              (_%__match189813189814%_
                               _%e189281189410%_
                               _%hd189282189413%_
                               _%tl189283189415%_
                               _%e189284189418%_
                               _%hd189285189421%_
                               _%tl189286189423%_
                               _%__splice189754189755%_
                               _%target189310189344%_
                               _%tl189312189346%_)
                              (let ()
                                (declare (not safe))
                                (_%g189277189323%_)))))
                      (let () (declare (not safe)) (_%g189277189323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189286189423%_))
                                                      (let ((_%__splice189754189755%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189286189423%_ '0))))
                (let ((_%tl189312189346%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189754189755%_ '1)))
                      (_%target189310189344%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189754189755%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189312189346%_))
                      (_%__match189813189814%_
                       _%e189281189410%_
                       _%hd189282189413%_
                       _%tl189283189415%_
                       _%e189284189418%_
                       _%hd189285189421%_
                       _%tl189286189423%_
                       _%__splice189754189755%_
                       _%target189310189344%_
                       _%tl189312189346%_)
                      (let () (declare (not safe)) (_%g189277189323%_)))))
              (let () (declare (not safe)) (_%g189277189323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189286189423%_))
                                                  (let ((_%__splice189754189755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189286189423%_
                                                            '0))))
                                                    (let ((_%tl189312189346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189754189755%_
                                                              '1)))
                                                          (_%target189310189344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189754189755%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189312189346%_))
                                                          (_%__match189813189814%_
                                                           _%e189281189410%_
                                                           _%hd189282189413%_
                                                           _%tl189283189415%_
                                                           _%e189284189418%_
                                                           _%hd189285189421%_
                                                           _%tl189286189423%_
                                                           _%__splice189754189755%_
                                                           _%target189310189344%_
                                                           _%tl189312189346%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189277189323%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189277189323%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189286189423%_))
                                              (let ((_%__splice189754189755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189286189423%_
                                                        '0))))
                                                (let ((_%tl189312189346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189754189755%_
                                                          '1)))
                                                      (_%target189310189344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189754189755%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189312189346%_))
                                                      (_%__match189813189814%_
                                                       _%e189281189410%_
                                                       _%hd189282189413%_
                                                       _%tl189283189415%_
                                                       _%e189284189418%_
                                                       _%hd189285189421%_
                                                       _%tl189286189423%_
                                                       _%__splice189754189755%_
                                                       _%target189310189344%_
                                                       _%tl189312189346%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189277189323%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189277189323%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189286189423%_))
                                      (let ((_%__splice189754189755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189286189423%_
                                                '0))))
                                        (let ((_%tl189312189346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189754189755%_
                                                  '1)))
                                              (_%target189310189344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189754189755%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189312189346%_))
                                              (_%__match189813189814%_
                                               _%e189281189410%_
                                               _%hd189282189413%_
                                               _%tl189283189415%_
                                               _%e189284189418%_
                                               _%hd189285189421%_
                                               _%tl189286189423%_
                                               _%__splice189754189755%_
                                               _%target189310189344%_
                                               _%tl189312189346%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189277189323%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189277189323%_))))))
                          (let () (declare (not safe)) (_%g189277189323%_)))))
                  (let () (declare (not safe)) (_%g189277189323%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189235%_ _%ctx189236%_ _%stx189237%_ _%args189238%_)
        (let ((_%self189241%_ _%self189235%_))
          (if (let ((__method190137
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189241%_ 'check-arguments))))
                (if __method190137
                    (__method190137
                     _%self189241%_
                     _%ctx189236%_
                     _%stx189237%_
                     _%args189238%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self189241%_
                             'check-arguments))))
              (let* ((_%signature189251%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189241%_ '2 '#f '#f)))
                     (_%signature189253%_ _%signature189251%_)
                     (_%$e189263%_
                      (if _%signature189253%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189253%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189263%_
                    ((lambda (_%unchecked189266%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189266%_))
                           (let ((__tmp190158
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked189266%_
                                                          '()))
                                              (map (lambda (_%g189267189269%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189236%_
                                                        _%g189267189269%_)))
                                                   _%args189238%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190158 _%stx189237%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189236%_ _%stx189237%_))))
                     _%$e189263%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189236%_ _%stx189237%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189236%_ _%stx189237%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188986%_ _%ctx188987%_ _%stx188988%_ _%args188989%_)
        (let* ((_%self188992%_ _%self188986%_)
               (_%signature189001189003%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self188992%_ '2 '#f '#f))))
          (if _%signature189001189003%_
              (let* ((_%signature189006%_ _%signature189001189003%_)
                     (_%argument-types189007189009%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature189006%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types189007189009%_
                    (let* ((_%argument-types189012%_
                            _%argument-types189007189009%_)
                           (_%argument-types189017%_
                            (let ((__tmp190159
                                   (lambda (_%t189015%_)
                                     (if _%t189015%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188988%_
                                            _%t189015%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp190159
                               _%argument-types189012%_))))
                      (let _%loop189019%_ ((_%rest-args189021%_ _%args188989%_)
                                           (_%rest-types189022%_
                                            _%argument-types189017%_)
                                           (_%result189023%_ '#t))
                        (let* ((_%rest-args189024189032%_ _%rest-args189021%_)
                               (_%else189026189040%_
                                (lambda () _%result189023%_))
                               (_%K189028189101%_
                                (lambda (_%rest-args189043%_ _%arg189044%_)
                                  (let* ((_%rest-types189045189056%_
                                          _%rest-types189022%_)
                                         (_%E189049189060%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types189045189056%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K189052189089%_
                                           (lambda (_%rest-types189086%_
                                                    _%type189087%_)
                                             (_%loop189019%_
                                              _%rest-args189043%_
                                              _%rest-types189086%_
                                              (if (gxc#check-expression-type!
                                                   _%stx188988%_
                                                   _%arg189044%_
                                                   _%type189087%_)
                                                  _%result189023%_
                                                  '#f))))
                                          (_%K189051189080%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx188988%_
                                                _%argument-types189017%_))))
                                          (_%K189050189070%_
                                           (lambda (_%tail-type189064%_)
                                             (if (let ((__tmp190160
                                                        (lambda (_%g189065189067%_)
                                                          (gxc#check-expression-type!
                                                           _%stx188988%_
                                                           _%g189065189067%_
                                                           _%tail-type189064%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp190160
                                                    _%rest-args189043%_))
                                                 _%result189023%_
                                                 '#f))))
                                      (let ((_%try-match189047189083%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types189045189056%_))
                                                   (_%K189051189080%_)
                                                   (let ((_%tail-type189073%_
                                                          _%rest-types189045189056%_))
                                                     (_%K189050189070%_
                                                      _%tail-type189073%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types189045189056%_))
                                            (let ((_%tl189054189094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types189045189056%_)))
                                                  (_%hd189053189092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types189045189056%_))))
                                              (let ((_%type189097%_
                                                     _%hd189053189092%_)
                                                    (_%rest-types189099%_
                                                     _%tl189054189094%_))
                                                (_%K189052189089%_
                                                 _%rest-types189099%_
                                                 _%type189097%_)))
                                            (_%try-match189047189083%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args189024189032%_))
                              (let ((_%hd189029189104%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args189024189032%_)))
                                    (_%tl189030189106%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args189024189032%_))))
                                (let* ((_%arg189109%_ _%hd189029189104%_)
                                       (_%rest-args189111%_
                                        _%tl189030189106%_))
                                  (_%K189028189101%_
                                   _%rest-args189111%_
                                   _%arg189109%_)))
                              (_%else189026189040%_)))))
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
      (lambda (_%self188797%_ _%ctx188798%_ _%stx188799%_ _%args188800%_)
        (let* ((_%self188803%_ _%self188797%_)
               (_%g188813188823%_
                (lambda (_%g188814188820%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188814188820%_))))
               (_%g188812188861%_
                (lambda (_%g188814188826%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188814188826%_))
                      (let ((_%e188816188828%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188814188826%_))))
                        (let ((_%hd188817188831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188816188828%_)))
                              (_%tl188818188833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188816188828%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188818188833%_))
                              ((lambda (_%L188836%_)
                                 (let* ((_%klass188848%_
                                         (let ((__tmp190161
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188803%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188799%_
                                            __tmp190161)))
                                        (_%object188850%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188798%_
                                            _%L188836%_)))
                                        (_%instance?188855%_
                                         (let ((_%$e188852%_
                                                (gxc#expression-type?
                                                 _%object188850%_
                                                 _%klass188848%_)))
                                           (if _%$e188852%_
                                               _%$e188852%_
                                               (gxc#expression-type?
                                                _%L188836%_
                                                _%klass188848%_)))))
                                   (if _%instance?188855%_
                                       (let ((__tmp190162
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188850%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188836%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188850%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190162
                                          _%stx188799%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx188798%_
                                          _%stx188799%_)))))
                               _%hd188817188831%_)
                              (_%g188813188823%_ _%g188814188826%_))))
                      (_%g188813188823%_ _%g188814188826%_)))))
          (_%g188812188861%_ _%args188800%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188593%_ _%ctx188594%_ _%stx188595%_ _%args188596%_)
        (let* ((_%self188599%_ _%self188593%_)
               (_%g188609188619%_
                (lambda (_%g188610188616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188610188616%_))))
               (_%g188608188672%_
                (lambda (_%g188610188622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188610188622%_))
                      (let ((_%e188612188624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188610188622%_))))
                        (let ((_%hd188613188627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188612188624%_)))
                              (_%tl188614188629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188612188624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188614188629%_))
                              ((lambda (_%L188632%_)
                                 (let* ((_%klass188644%_
                                         (let ((__tmp190163
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188599%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188595%_
                                            __tmp190163)))
                                        (_%object188646%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188594%_
                                            _%L188632%_)))
                                        (_%instance?188651%_
                                         (let ((_%$e188648%_
                                                (gxc#expression-type?
                                                 _%object188646%_
                                                 _%klass188644%_)))
                                           (if _%$e188648%_
                                               _%$e188648%_
                                               (gxc#expression-type?
                                                _%L188632%_
                                                _%klass188644%_))))
                                        (_%klass188654%_ _%klass188644%_))
                                   (if _%instance?188651%_
                                       (let ((__tmp190164
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188646%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188632%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188646%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190164
                                          _%stx188595%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188654%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp190165
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass188654%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object188646%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190165
                                              _%stx188595%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188654%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190166
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188654%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object188646%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190166
                                                  _%stx188595%_))
                                               (let ((__tmp190167
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188599%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188646%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190167
                                                  _%stx188595%_)))))))
                               _%hd188613188627%_)
                              (_%g188609188619%_ _%g188610188622%_))))
                      (_%g188609188619%_ _%g188610188622%_)))))
          (_%g188608188672%_ _%args188596%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188256%_)
        (let* ((_%__stx189823189824%_ _%stx188256%_)
               (_%g188261188302%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189823189824%_)))))
          (let ((_%__kont189825189826%_ (lambda () '#t))
                (_%__kont189827189828%_ (lambda () '#t))
                (_%__kont189829189830%_
                 (lambda (_%L188370%_ _%L188371%_)
                   (let ((_%rator-type188392188394%_
                          (let ((__tmp190168
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188371%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190168))))
                     (if _%rator-type188392188394%_
                         (let* ((_%rator-type188397%_
                                 _%rator-type188392188394%_)
                                (_%rator-signature188398188400%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188397%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188397%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188398188400%_
                               (let* ((_%rator-signature188403%_
                                       _%rator-signature188398188400%_)
                                      (_%rator-effect188404188406%_
                                       (if _%rator-signature188403%_
                                           (##direct-structure-ref
                                            _%rator-signature188403%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188404188406%_
                                     (let ((_%rator-effect188409%_
                                            _%rator-effect188404188406%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188409%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188409%_))
                                           (let ((__tmp190169
                                                  (let ((__tmp190170
                                                         (lambda (_%g188414188417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188415188419%_)
                   (cons _%g188414188417%_ _%g188415188419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190170
                                                     '()
                                                     _%L188370%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190169))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189833189834%_ (lambda () '#f)))
            (let ((_%__match189912189913%_
                   (lambda (_%e188277188314%_
                            _%hd188278188317%_
                            _%tl188279188319%_
                            _%e188280188322%_
                            _%hd188281188325%_
                            _%tl188282188327%_
                            _%e188283188330%_
                            _%hd188284188333%_
                            _%tl188285188335%_
                            _%e188286188338%_
                            _%hd188287188341%_
                            _%tl188288188343%_
                            _%__splice189831189832%_
                            _%target188289188346%_
                            _%tl188291188348%_)
                     (letrec ((_%loop188292188351%_
                               (lambda (_%hd188290188354%_
                                        _%rand188296188356%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188290188354%_))
                                     (let ((_%e188293188359%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188290188354%_))))
                                       (let ((_%lp-tl188295188364%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188293188359%_)))
                                             (_%lp-hd188294188362%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188293188359%_))))
                                         (_%loop188292188351%_
                                          _%lp-tl188295188364%_
                                          (cons _%lp-hd188294188362%_
                                                _%rand188296188356%_))))
                                     (let ((_%rand188297188367%_
                                            (reverse _%rand188296188356%_)))
                                       (_%__kont189829189830%_
                                        _%rand188297188367%_
                                        _%hd188287188341%_))))))
                       (_%loop188292188351%_ _%target188289188346%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189823189824%_))
                  (let ((_%e188263188450%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189823189824%_))))
                    (let ((_%tl188265188455%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188263188450%_)))
                          (_%hd188264188453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188263188450%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188264188453%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188264188453%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188265188455%_))
                                  (let ((_%e188266188458%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188265188455%_))))
                                    (let ((_%tl188268188463%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188266188458%_)))
                                          (_%hd188267188461%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188266188458%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188268188463%_))
                                          (_%__kont189825189826%_)
                                          (_%__kont189833189834%_))))
                                  (_%__kont189833189834%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188264188453%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188265188455%_))
                                      (let ((_%e188272188435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188265188455%_))))
                                        (let ((_%tl188274188440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188272188435%_)))
                                              (_%hd188273188438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188272188435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188274188440%_))
                                              (_%__kont189827189828%_)
                                              (_%__kont189833189834%_))))
                                      (_%__kont189833189834%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188264188453%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188265188455%_))
                                          (let ((_%e188280188322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188265188455%_))))
                                            (let ((_%tl188282188327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188280188322%_)))
                                                  (_%hd188281188325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188280188322%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188281188325%_))
                                                  (let ((_%e188283188330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188281188325%_))))
                                                    (let ((_%tl188285188335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188283188330%_)))
                                                          (_%hd188284188333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188283188330%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188284188333%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188284188333%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188285188335%_))
                          (let ((_%e188286188338%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188285188335%_))))
                            (let ((_%tl188288188343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188286188338%_)))
                                  (_%hd188287188341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188286188338%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188288188343%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188282188327%_))
                                      (let ((_%__splice189831189832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188282188327%_
                                                '0))))
                                        (let ((_%tl188291188348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189831189832%_
                                                  '1)))
                                              (_%target188289188346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189831189832%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188291188348%_))
                                              (_%__match189912189913%_
                                               _%e188263188450%_
                                               _%hd188264188453%_
                                               _%tl188265188455%_
                                               _%e188280188322%_
                                               _%hd188281188325%_
                                               _%tl188282188327%_
                                               _%e188283188330%_
                                               _%hd188284188333%_
                                               _%tl188285188335%_
                                               _%e188286188338%_
                                               _%hd188287188341%_
                                               _%tl188288188343%_
                                               _%__splice189831189832%_
                                               _%target188289188346%_
                                               _%tl188291188348%_)
                                              (_%__kont189833189834%_))))
                                      (_%__kont189833189834%_))
                                  (_%__kont189833189834%_))))
                          (_%__kont189833189834%_))
                      (_%__kont189833189834%_))
                  (_%__kont189833189834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189833189834%_))))
                                          (_%__kont189833189834%_))
                                      (_%__kont189833189834%_))))
                          (_%__kont189833189834%_))))
                  (_%__kont189833189834%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188251%_ _%klass188252%_)
        (let ((_%expr-type188254%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188251%_))))
          (if _%expr-type188254%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188254%_ _%klass188252%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188229%_ _%expr188230%_ _%type188231%_)
        (if (not _%type188231%_)
            '#f
            (let ((_%$e188234%_
                   (eq? (##structure-ref _%type188231%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188234%_
                  _%$e188234%_
                  (let ((_%expr-type188238%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188230%_))))
                    (if (not _%expr-type188238%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188238%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e188242%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188238%_
                                      'gxc#!abort::t))))
                              (if _%$e188242%_
                                  _%$e188242%_
                                  (let ((_%$e188245%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188238%_
                                            _%type188231%_))))
                                    (if _%$e188245%_
                                        _%$e188245%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188231%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188231%_
                                                   _%expr-type188238%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188229%_
                                                   _%expr188230%_
                                                   _%expr-type188238%_
                                                   _%type188231%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188043%_ _%ctx188044%_ _%stx188045%_ _%args188046%_)
        (let* ((_%self188049%_ _%self188043%_)
               (_%klass188059%_
                (let ((__tmp190171
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188049%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx188045%_ __tmp190171)))
               (_%fields188061%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188059%_
                           '5
                           '#f
                           '#f))))
               (_%args188067%_
                (map (lambda (_%g188062188064%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx188044%_ _%g188062188064%_)))
                     _%args188046%_))
               (_%inline-make-object188069%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188049%_
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
                           _%self188049%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields188061%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass188072%_ _%klass188059%_)
               (_%$e188086%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass188072%_ '6 '#f '#f))))
          (if _%$e188086%_
              ((lambda (_%ctor188089%_)
                 (let ((_%$obj188091%_
                        (let ((__tmp190172
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp190172)))
                       (_%ctor-impl188092%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass188072%_
                           _%ctor188089%_))))
                   (let ((__tmp190173
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj188091%_ '())
                                                  (cons _%inline-make-object188069%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl188092%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl188092%_ '()))
                                (cons (cons '%#ref (cons _%$obj188091%_ '()))
                                      _%args188067%_)))
                    (let ((_%$ctor188094%_
                           (let ((__tmp190174
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190174))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor188094%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188049%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj188091%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor188089%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor188094%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor188094%_ '()))
                              (cons (cons '%#ref (cons _%$obj188091%_ '()))
                                    _%args188067%_)))
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
                             _%self188049%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor188089%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj188091%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp190173 _%stx188045%_))))
               _%$e188086%_)
              (let ((_%$e188096%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass188072%_
                        '10
                        '#f
                        '#f))))
                (if _%$e188096%_
                    ((lambda (_%metaclass188099%_)
                       (let* ((_%$obj188101%_
                               (let ((__tmp190175
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190175)))
                              (_%metakons188103%_
                               (let ((__tmp190176
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx188045%_
                                         _%metaclass188099%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp190176
                                  'instance-init!)))
                              (__tmp190177
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj188101%_
                                                             '())
                                                       (cons _%inline-make-object188069%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons188103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons188103%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188049%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj188101%_
                                                             '()))
                                                 _%args188067%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188049%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj188101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args188067%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj188101%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190177 _%stx188045%_)))
                     _%$e188096%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188072%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp190178
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args188067%_))))
                              (declare (not safe))
                              (##fx= __tmp190178 _%fields188061%_))
                            (let ((__tmp190179
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188049%_
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
                                              _%self188049%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args188067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190179
                               _%stx188045%_))
                            (let ((__tmp190181
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self188049%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp190180
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass188072%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx188045%_
                               __tmp190181
                               __tmp190180)))
                        (let ((_%$obj188108%_
                               (let ((__tmp190182
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190182))))
                          (let _%lp188110%_ ((_%rest188112%_ _%args188067%_)
                                             (_%initializers188113%_ '()))
                            (let* ((_%__stx189915189916%_ _%rest188112%_)
                                   (_%g188117188138%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx189915189916%_)))))
                              (let ((_%__kont189917189918%_
                                     (lambda (_%L188192%_
                                              _%L188193%_
                                              _%L188194%_)
                                       (let* ((_%slot188221%_
                                               (let ((__tmp190183
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L188194%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp190183)))
                                              (_%off188223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass188072%_
                                                  _%slot188221%_))))
                                         (if _%off188223%_
                                             (_%lp188110%_
                                              _%L188192%_
                                              (cons (cons _%off188223%_
                                                          _%L188193%_)
                                                    _%initializers188113%_))
                                             (let ((__tmp190184
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188049%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx188045%_
                                                __tmp190184
                                                _%slot188221%_))))))
                                    (_%__kont189919189920%_
                                     (lambda ()
                                       (let ((__tmp190185
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188069%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp190188
                                     (cons (cons '%#ref
                                                 (cons _%$obj188108%_ '()))
                                           '()))
                                    (__tmp190186
                                     (let ((__tmp190187
                                            (lambda (_%i188152%_ _%r188153%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188049%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i188152%_) '()))
                              (cons (cons '%#ref (cons _%$obj188108%_ '()))
                                    (cons (cdr _%i188152%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r188153%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp190187
                                        '()
                                        _%initializers188113%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp190188 __tmp190186)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190185
                                          _%stx188045%_))))
                                    (_%__kont189921189922%_
                                     (lambda ()
                                       (let ((__tmp190189
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188069%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args188067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj188108%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190189
                                          _%stx188045%_)))))
                                (let* ((_%g188115188155%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx189915189916%_))
                                              (_%__kont189919189920%_)
                                              (_%__kont189921189922%_))))
                                       (_%__match189952189953%_
                                        (lambda (_%e188122188160%_
                                                 _%hd188123188163%_
                                                 _%tl188124188165%_
                                                 _%e188125188168%_
                                                 _%hd188126188171%_
                                                 _%tl188127188173%_
                                                 _%e188128188176%_
                                                 _%hd188129188179%_
                                                 _%tl188130188181%_
                                                 _%e188131188184%_
                                                 _%hd188132188187%_
                                                 _%tl188133188189%_)
                                          (let ((_%L188192%_
                                                 _%tl188133188189%_)
                                                (_%L188193%_
                                                 _%hd188132188187%_)
                                                (_%L188194%_
                                                 _%hd188129188179%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L188194%_))
                                                (_%__kont189917189918%_
                                                 _%L188192%_
                                                 _%L188193%_
                                                 _%L188194%_)
                                                (_%__kont189921189922%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx189915189916%_))
                                      (let ((_%e188122188160%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx189915189916%_))))
                                        (let ((_%tl188124188165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188122188160%_)))
                                              (_%hd188123188163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188122188160%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd188123188163%_))
                                              (let ((_%e188125188168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd188123188163%_))))
                                                (let ((_%tl188127188173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188125188168%_)))
                                                      (_%hd188126188171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188125188168%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd188126188171%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd188126188171%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188127188173%_))
                      (let ((_%e188128188176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188127188173%_))))
                        (let ((_%tl188130188181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188128188176%_)))
                              (_%hd188129188179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188128188176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188130188181%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188124188165%_))
                                  (let ((_%e188131188184%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188124188165%_))))
                                    (let ((_%tl188133188189%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188131188184%_)))
                                          (_%hd188132188187%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188131188184%_))))
                                      (_%__match189952189953%_
                                       _%e188122188160%_
                                       _%hd188123188163%_
                                       _%tl188124188165%_
                                       _%e188125188168%_
                                       _%hd188126188171%_
                                       _%tl188127188173%_
                                       _%e188128188176%_
                                       _%hd188129188179%_
                                       _%tl188130188181%_
                                       _%e188131188184%_
                                       _%hd188132188187%_
                                       _%tl188133188189%_)))
                                  (_%__kont189921189922%_))
                              (_%__kont189921189922%_))))
                      (_%__kont189921189922%_))
                  (_%__kont189921189922%_))
              (_%__kont189921189922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189921189922%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188115188155%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187826%_ _%ctx187827%_ _%stx187828%_ _%args187829%_)
        (let* ((_%self187832%_ _%self187826%_)
               (_%arguments-ok?187842%_
                (let ((__method190138
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187832%_ 'check-arguments))))
                  (if __method190138
                      (__method190138
                       _%self187832%_
                       _%ctx187827%_
                       _%stx187828%_
                       _%args187829%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187832%_
                               'check-arguments)))))
               (_%g187844187854%_
                (lambda (_%g187845187851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187845187851%_))))
               (_%g187843187918%_
                (lambda (_%g187845187857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187845187857%_))
                      (let ((_%e187847187859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187845187857%_))))
                        (let ((_%hd187848187862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187847187859%_)))
                              (_%tl187849187864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187847187859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187849187864%_))
                              ((lambda (_%L187867%_)
                                 (let* ((_%klass187880%_
                                         (let ((__tmp190190
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187832%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx187828%_
                                            __tmp190190)))
                                        (_%field187882%_
                                         (let ((__tmp190191
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187832%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass187880%_
                                            __tmp190191)))
                                        (_%object187884%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx187827%_
                                            _%L187867%_)))
                                        (_%klass187887%_ _%klass187880%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass187887%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp190192
                                              (cons (if (or _%arguments-ok?187842%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187832%_
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
                                 _%self187832%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field187882%_ '()))
                        (cons _%object187884%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190192
                                          _%stx187828%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass187887%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp190193
                                                  (cons (if (or _%arguments-ok?187842%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187832%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187832%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field187882%_ '()))
                            (cons _%object187884%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190193
                                              _%stx187828%_))
                                           (let ((_%$e187906%_
                                                  (let ((__tmp190194
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self187832%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass187887%_
                                                     __tmp190194))))
                                             (if _%$e187906%_
                                                 ((lambda (_%klass187909%_)
                                                    (let ((__tmp190195
                                                           (cons (if (or _%arguments-ok?187842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187832%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self187832%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field187882%_ '()))
                                     (cons _%object187884%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190195 _%stx187828%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e187906%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187832%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190196
                                                            (let ((_%$obj187915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp190197
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190197))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj187915%_ '())
                                              (cons _%object187884%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass187887%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187915%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187832%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187882%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj187915%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?187842%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187915%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187832%_
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
                                                             _%self187832%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187915%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187832%_
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
               (gxc#xform-wrap-source __tmp190196 _%stx187828%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp190198
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object187884%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187832%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190198 _%stx187828%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd187848187862%_)
                              (_%g187844187854%_ _%g187845187857%_))))
                      (_%g187844187854%_ _%g187845187857%_)))))
          (_%g187843187918%_ _%args187829%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187590%_ _%ctx187591%_ _%stx187592%_ _%args187593%_)
        (let* ((_%self187596%_ _%self187590%_)
               (_%arguments-ok?187606%_
                (let ((__method190139
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187596%_ 'check-arguments))))
                  (if __method190139
                      (__method190139
                       _%self187596%_
                       _%ctx187591%_
                       _%stx187592%_
                       _%args187593%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187596%_
                               'check-arguments)))))
               (_%g187608187622%_
                (lambda (_%g187609187619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187609187619%_))))
               (_%g187607187701%_
                (lambda (_%g187609187625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187609187625%_))
                      (let ((_%e187612187627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187609187625%_))))
                        (let ((_%hd187613187630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187612187627%_)))
                              (_%tl187614187632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187612187627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187614187632%_))
                              (let ((_%e187615187635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187614187632%_))))
                                (let ((_%hd187616187638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187615187635%_)))
                                      (_%tl187617187640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187615187635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187617187640%_))
                                      ((lambda (_%L187643%_ _%L187644%_)
                                         (let* ((_%klass187660%_
                                                 (let ((__tmp190199
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187596%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx187592%_
                                                    __tmp190199)))
                                                (_%field187662%_
                                                 (let ((__tmp190200
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187596%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass187660%_
                                                    __tmp190200)))
                                                (_%object187664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187591%_
                                                    _%L187644%_)))
                                                (_%value187666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187591%_
                                                    _%L187643%_)))
                                                (_%klass187669%_
                                                 _%klass187660%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187669%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190201
                                                      (cons (if (or _%arguments-ok?187606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187596%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187596%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field187662%_ '()))
                                (cons _%object187664%_
                                      (cons _%value187666%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190201
                                                  _%stx187592%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187669%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp190202
                                                          (cons (if (or _%arguments-ok?187606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187596%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187596%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187662%_ '()))
                                    (cons _%object187664%_
                                          (cons _%value187666%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190202
                                                      _%stx187592%_))
                                                   (let ((_%$e187689%_
                                                          (let ((__tmp190203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187596%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187669%_
                     __tmp190203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187689%_
                                                         ((lambda (_%klass187692%_)
                                                            (let ((__tmp190204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187606%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187596%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187596%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187662%_ '()))
                                             (cons _%object187664%_
                                                   (cons _%value187666%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190204 _%stx187592%_)))
                  _%$e187689%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187596%_ '4 '#f '#f))
                     (let ((__tmp190205
                            (let ((_%$obj187698%_
                                   (let ((__tmp190206
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190206))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj187698%_ '())
                                                      (cons _%object187664%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass187669%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj187698%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187596%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field187662%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj187698%_
                                                              '()))
                                                  (cons _%value187666%_
                                                        '())))))
                          (cons (if _%arguments-ok?187606%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187596%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value187666%_ '())))))
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
                             _%self187596%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187698%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187596%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value187666%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190205 _%stx187592%_))
                     (let ((__tmp190207
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object187664%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187596%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value187666%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp190207
                        _%stx187592%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187616187638%_
                                       _%hd187613187630%_)
                                      (_%g187608187622%_ _%g187609187625%_))))
                              (_%g187608187622%_ _%g187609187625%_))))
                      (_%g187608187622%_ _%g187609187625%_)))))
          (_%g187607187701%_ _%args187593%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187405%_ _%ctx187406%_ _%stx187407%_ _%args187408%_)
        (let* ((_%self187411%_ _%self187405%_)
               (_%self187420187430%_ _%self187411%_)
               (_%E187422187434%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187420187430%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K187423187444%_
                (lambda (_%inline187437%_ _%dispatch187438%_ _%arity187439%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self187411%_
                         _%args187408%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx187407%_
                         _%arity187439%_)))
                  (if _%inline187437%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp190208
                               (let ((__tmp190209
                                      (_%inline187437%_ _%stx187407%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190209
                                  _%stx187407%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx187406%_ __tmp190208)))
                      (if (and _%dispatch187438%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch187438%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch187438%_))
                            (let ((__tmp190210
                                   (let ((__tmp190211
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch187438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args187408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp190211
                                      _%stx187407%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx187406%_ __tmp190210)))
                          (gxc#!procedure::optimize-call
                           _%self187411%_
                           _%ctx187406%_
                           _%stx187407%_
                           _%args187408%_))))))
          (if '#t
              (let* ((_%e187424187447%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187420187430%_
                         '1
                         '#f
                         '#f)))
                     (_%e187425187450%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187420187430%_
                         '2
                         '#f
                         '#f)))
                     (_%e187426187453%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187420187430%_
                         '3
                         '#f
                         '#f)))
                     (_%arity187456%_ _%e187426187453%_)
                     (_%e187427187458%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187420187430%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187461%_ _%e187427187458%_)
                     (_%e187428187463%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187420187430%_
                         '5
                         '#f
                         '#f)))
                     (_%inline187466%_ _%e187428187463%_))
                (_%K187423187444%_
                 _%inline187466%_
                 _%dispatch187461%_
                 _%arity187456%_))
              (_%E187422187434%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187257%_ _%ctx187258%_ _%stx187259%_ _%args187260%_)
        (let* ((_%self187263%_ _%self187257%_)
               (_%$e187277%_
                (let ((__tmp190213
                       (lambda (_%g187272187274%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g187272187274%_
                            _%args187260%_))))
                      (__tmp190212
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self187263%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp190213 __tmp190212))))
          (if _%$e187277%_
              ((lambda (_%clause187280%_)
                 (let ((__method190140
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause187280%_ 'optimize-call))))
                   (if __method190140
                       (__method190140
                        _%clause187280%_
                        _%ctx187258%_
                        _%stx187259%_
                        _%args187260%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method"
                                _%clause187280%_
                                'optimize-call)))))
               _%$e187277%_)
              (let ((__tmp190214
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187263%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx187259%_
                 __tmp190214))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186997%_ _%ctx186998%_ _%stx186999%_ _%args187000%_)
        (let* ((_%self187003%_ _%self186997%_)
               (_%self187012187021%_ _%self187003%_)
               (_%E187014187025%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187012187021%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K187015187116%_
                (lambda (_%dispatch187028%_ _%table187029%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch187028%_))
                      (let* ((_%g187030187040%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch187028%_)))
                             (_%else187032187048%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch187028%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx186998%_
                                   _%stx186999%_))))
                             (_%K187034187097%_
                              (lambda (_%main187051%_ _%keys187052%_)
                                (let ((_g190215_
                                       (gxc#!kw-lambda-split-args
                                        _%stx186999%_
                                        _%args187000%_)))
                                  (begin
                                    (let ((_g190216_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190215_)
                                                 (##vector-length _g190215_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190216_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190216_)))
                                    (let ((_%pargs187054%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190215_ 0)))
                                          (_%kwargs187055%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190215_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main187051%_))
                                        (if _%table187029%_
                                            (let ((_%xargs187063%_
                                                   (map (lambda (_%key187057%_)
                                                          (let ((_%$e187059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key187057%_ _%kwargs187055%_))))
                    (if _%$e187059%_ _%$e187059%_ '(%#ref absent-value))))
                _%keys187052%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw187065%_)
                                                 (if (memq (car _%kw187065%_)
                                                           _%keys187052%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx186999%_
                                                        _%keys187052%_
                                                        _%kw187065%_))))
                                               _%kwargs187055%_)
                                              (let ((__tmp190217
                                                     (let ((__tmp190218
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main187051%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs187054%_
                                         _%xargs187063%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190218 _%stx186999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx186998%_
                                                 __tmp190217)))
                                            (let* ((_%kwt187067%_
                                                    (let ((__tmp190219
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp190219)))
                                                   (_%kwvars187071%_
                                                    (map (lambda (_%_187069%_)
                                                           (let ((__tmp190220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp190220)))
                 _%kwargs187055%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind187076%_
                                                    (map (lambda (_%kw187073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187074%_)
                   (cons (cons _%kwvar187074%_ '())
                         (cons (cdr _%kw187073%_) '())))
                 _%kwargs187055%_
                 _%kwvars187071%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset187081%_
                                                    (map (lambda (_%kw187078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187079%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt187067%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw187078%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar187079%_
                                                             '()))
                                                 '()))))))
                 _%kwargs187055%_
                 _%kwvars187071%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs187086%_
                                                    (map (lambda (_%kw187083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187084%_)
                   (cons (car _%kw187083%_)
                         (cons '%#ref (cons _%kwvar187084%_ '()))))
                 _%kwargs187055%_
                 _%kwvars187071%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs187094%_
                                                    (map (lambda (_%key187088%_)
                                                           (let ((_%$e187090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key187088%_ _%xkwargs187086%_))))
                     (if _%$e187090%_ _%$e187090%_ '(%#ref absent-value))))
                 _%keys187052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190221
                                                    (let ((__tmp190222
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind187076%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt187067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp190223
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs187055%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190223 _%stx186999%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp190224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp190225
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main187051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt187067%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs187054%_ _%xargs187094%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190225
                                     _%stx186999%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp190224 _%kwset187081%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190222 _%stx186999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx186998%_
                                               __tmp190221))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g187030187040%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e187035187100%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187030187040%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e187036187103%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187030187040%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e187037187106%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187030187040%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys187109%_ _%e187037187106%_)
                                   (_%e187038187111%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187030187040%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main187114%_ _%e187038187111%_))
                              (_%K187034187097%_
                               _%main187114%_
                               _%keys187109%_))
                            (_%else187032187048%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx186998%_ _%stx186999%_))))))
          (if '#t
              (let* ((_%e187016187119%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187012187021%_
                         '1
                         '#f
                         '#f)))
                     (_%e187017187122%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187012187021%_
                         '2
                         '#f
                         '#f)))
                     (_%e187018187125%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187012187021%_
                         '3
                         '#f
                         '#f)))
                     (_%table187128%_ _%e187018187125%_)
                     (_%e187019187130%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187012187021%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187133%_ _%e187019187130%_))
                (_%K187015187116%_ _%dispatch187133%_ _%table187128%_))
              (_%E187014187025%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186610%_ _%args186611%_)
        (let _%lp186613%_ ((_%rest186615%_ _%args186611%_)
                           (_%pargs186616%_ '())
                           (_%kwargs186617%_ '()))
          (let* ((_%__stx189957189958%_ _%rest186615%_)
                 (_%g186623186675%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189957189958%_)))))
            (let ((_%__kont189959189960%_
                   (lambda (_%L186854%_ _%L186855%_)
                     (_%lp186613%_
                      _%L186854%_
                      (cons _%L186855%_ _%pargs186616%_)
                      _%kwargs186617%_)))
                  (_%__kont189961189962%_
                   (lambda (_%L186800%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186800%_ _%pargs186616%_))
                             (reverse _%kwargs186617%_))))
                  (_%__kont189963189964%_
                   (lambda (_%L186747%_ _%L186748%_ _%L186749%_)
                     (let ((_%kw186766%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186749%_))))
                       (if (assq _%kw186766%_ _%kwargs186617%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186610%_
                              _%kw186766%_))
                           (_%lp186613%_
                            _%L186747%_
                            _%pargs186616%_
                            (cons (cons _%kw186766%_ _%L186748%_)
                                  _%kwargs186617%_))))))
                  (_%__kont189965189966%_
                   (lambda (_%L186695%_ _%L186696%_)
                     (_%lp186613%_
                      _%L186695%_
                      (cons _%L186696%_ _%pargs186616%_)
                      _%kwargs186617%_)))
                  (_%__kont189967189968%_
                   (lambda ()
                     (values (reverse _%pargs186616%_)
                             (reverse _%kwargs186617%_)))))
              (let ((_%__match190064190065%_
                     (lambda (_%e186654186715%_
                              _%hd186655186718%_
                              _%tl186656186720%_
                              _%e186657186723%_
                              _%hd186658186726%_
                              _%tl186659186728%_
                              _%e186660186731%_
                              _%hd186661186734%_
                              _%tl186662186736%_
                              _%e186663186739%_
                              _%hd186664186742%_
                              _%tl186665186744%_)
                       (let ((_%L186747%_ _%tl186665186744%_)
                             (_%L186748%_ _%hd186664186742%_)
                             (_%L186749%_ _%hd186661186734%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186749%_))
                             (_%__kont189963189964%_
                              _%L186747%_
                              _%L186748%_
                              _%L186749%_)
                             (_%__kont189965189966%_
                              _%tl186656186720%_
                              _%hd186655186718%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189957189958%_))
                    (let ((_%e186627186819%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189957189958%_))))
                      (let ((_%tl186629186824%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186627186819%_)))
                            (_%hd186628186822%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186627186819%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186628186822%_))
                            (let ((_%e186630186827%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186628186822%_))))
                              (let ((_%tl186632186832%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186630186827%_)))
                                    (_%hd186631186830%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186630186827%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186631186830%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186631186830%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186632186832%_))
                                            (let ((_%e186633186835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186632186832%_))))
                                              (let ((_%tl186635186840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186633186835%_)))
                                                    (_%hd186634186838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186633186835%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186634186838%_))
                                                    (let ((_%e186636186843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186634186838%_))))
                                                      (if (equal? _%e186636186843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186635186840%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186629186824%_))
                          (let ((_%e186637186846%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186629186824%_))))
                            (let ((_%tl186639186851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186637186846%_)))
                                  (_%hd186638186849%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186637186846%_))))
                              (_%__kont189959189960%_
                               _%tl186639186851%_
                               _%hd186638186849%_)))
                          (_%__kont189965189966%_
                           _%tl186629186824%_
                           _%hd186628186822%_))
                      (_%__kont189965189966%_
                       _%tl186629186824%_
                       _%hd186628186822%_))
                  (if (equal? _%e186636186843%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186635186840%_))
                          (_%__kont189961189962%_ _%tl186629186824%_)
                          (_%__kont189965189966%_
                           _%tl186629186824%_
                           _%hd186628186822%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186635186840%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186629186824%_))
                              (let ((_%e186663186739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186629186824%_))))
                                (let ((_%tl186665186744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186663186739%_)))
                                      (_%hd186664186742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186663186739%_))))
                                  (_%__match190064190065%_
                                   _%e186627186819%_
                                   _%hd186628186822%_
                                   _%tl186629186824%_
                                   _%e186630186827%_
                                   _%hd186631186830%_
                                   _%tl186632186832%_
                                   _%e186633186835%_
                                   _%hd186634186838%_
                                   _%tl186635186840%_
                                   _%e186663186739%_
                                   _%hd186664186742%_
                                   _%tl186665186744%_)))
                              (_%__kont189965189966%_
                               _%tl186629186824%_
                               _%hd186628186822%_))
                          (_%__kont189965189966%_
                           _%tl186629186824%_
                           _%hd186628186822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186635186840%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186629186824%_))
                                                            (let ((_%e186663186739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186629186824%_))))
                      (let ((_%tl186665186744%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186663186739%_)))
                            (_%hd186664186742%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186663186739%_))))
                        (_%__match190064190065%_
                         _%e186627186819%_
                         _%hd186628186822%_
                         _%tl186629186824%_
                         _%e186630186827%_
                         _%hd186631186830%_
                         _%tl186632186832%_
                         _%e186633186835%_
                         _%hd186634186838%_
                         _%tl186635186840%_
                         _%e186663186739%_
                         _%hd186664186742%_
                         _%tl186665186744%_)))
                    (_%__kont189965189966%_
                     _%tl186629186824%_
                     _%hd186628186822%_))
                (_%__kont189965189966%_
                 _%tl186629186824%_
                 _%hd186628186822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189965189966%_
                                             _%tl186629186824%_
                                             _%hd186628186822%_))
                                        (_%__kont189965189966%_
                                         _%tl186629186824%_
                                         _%hd186628186822%_))
                                    (_%__kont189965189966%_
                                     _%tl186629186824%_
                                     _%hd186628186822%_))))
                            (_%__kont189965189966%_
                             _%tl186629186824%_
                             _%hd186628186822%_))))
                    (_%__kont189967189968%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186594%_ _%ctx186595%_ _%stx186596%_ _%args186597%_)
        (let ((_%self186600%_ _%self186594%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186595%_ _%stx186596%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186282%_ _%stx186283%_)
        (let* ((_%__stx190073190074%_ _%stx186283%_)
               (_%g186286186326%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190073190074%_)))))
          (let ((_%__kont190075190076%_
                 (lambda (_%L186432%_ _%L186433%_)
                   (let ((_%$e186460%_
                          (member 'return:
                                  (let ((__tmp190226
                                         (lambda (_%g186452186455%_
                                                  _%g186453186457%_)
                                           (cons _%g186452186455%_
                                                 _%g186453186457%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190226 '() _%L186433%_))
                                  gx#stx-eq?)))
                     (if _%$e186460%_
                         ((lambda (_%tail186463%_)
                            (let ((_%type186465%_
                                   (let ((__tmp190227
                                          (let ((__tmp190228
                                                 (cadr _%tail186463%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190228))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186283%_
                                      __tmp190227))))
                              (gxc#check-return-type!
                               _%stx186283%_
                               _%L186432%_
                               _%type186465%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186282%_
                                 _%L186432%_))))
                          _%$e186460%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186282%_ _%L186432%_))))))
                (_%__kont190079190080%_
                 (lambda (_%L186355%_ _%L186356%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186282%_ _%L186355%_)))))
            (let ((_%__match190110190111%_
                   (lambda (_%e186290186376%_
                            _%hd186291186379%_
                            _%tl186292186381%_
                            _%e186293186384%_
                            _%hd186294186387%_
                            _%tl186295186389%_
                            _%e186296186392%_
                            _%hd186297186395%_
                            _%tl186298186397%_
                            _%__splice190077190078%_
                            _%target186299186400%_
                            _%tl186301186402%_)
                     (letrec ((_%loop186302186405%_
                               (lambda (_%hd186300186408%_
                                        _%signature186306186410%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186300186408%_))
                                     (let ((_%e186303186413%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186300186408%_))))
                                       (let ((_%lp-tl186305186418%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186303186413%_)))
                                             (_%lp-hd186304186416%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186303186413%_))))
                                         (_%loop186302186405%_
                                          _%lp-tl186305186418%_
                                          (cons _%lp-hd186304186416%_
                                                _%signature186306186410%_))))
                                     (let ((_%signature186307186421%_
                                            (reverse _%signature186306186410%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186295186389%_))
                                           (let ((_%e186308186424%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186295186389%_))))
                                             (let ((_%tl186310186429%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186308186424%_)))
                                                   (_%hd186309186427%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186308186424%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186310186429%_))
                                                   (_%__kont190075190076%_
                                                    _%hd186309186427%_
                                                    _%signature186307186421%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186286186326%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186286186326%_))))))))
                       (_%loop186302186405%_ _%target186299186400%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190073190074%_))
                  (let ((_%e186290186376%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190073190074%_))))
                    (let ((_%tl186292186381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186290186376%_)))
                          (_%hd186291186379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186290186376%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186292186381%_))
                          (let ((_%e186293186384%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186292186381%_))))
                            (let ((_%tl186295186389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186293186384%_)))
                                  (_%hd186294186387%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186293186384%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186294186387%_))
                                  (let ((_%e186296186392%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186294186387%_))))
                                    (let ((_%tl186298186397%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186296186392%_)))
                                          (_%hd186297186395%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186296186392%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186297186395%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186297186395%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186298186397%_))
                                                  (let ((_%__splice190077190078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186298186397%_
                                                            '0))))
                                                    (let ((_%tl186301186402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190077190078%_
                                                              '1)))
                                                          (_%target186299186400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190077190078%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186301186402%_))
                                                          (_%__match190110190111%_
                                                           _%e186290186376%_
                                                           _%hd186291186379%_
                                                           _%tl186292186381%_
                                                           _%e186293186384%_
                                                           _%hd186294186387%_
                                                           _%tl186295186389%_
                                                           _%e186296186392%_
                                                           _%hd186297186395%_
                                                           _%tl186298186397%_
                                                           _%__splice190077190078%_
                                                           _%target186299186400%_
                                                           _%tl186301186402%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186295186389%_))
                      (let ((_%e186319186347%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186295186389%_))))
                        (let ((_%tl186321186352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186319186347%_)))
                              (_%hd186320186350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186319186347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186321186352%_))
                              (_%__kont190079190080%_
                               _%hd186320186350%_
                               _%hd186294186387%_)
                              (let ()
                                (declare (not safe))
                                (_%g186286186326%_)))))
                      (let () (declare (not safe)) (_%g186286186326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186295186389%_))
                                                      (let ((_%e186319186347%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186295186389%_))))
                (let ((_%tl186321186352%_
                       (let () (declare (not safe)) (##cdr _%e186319186347%_)))
                      (_%hd186320186350%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186319186347%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186321186352%_))
                      (_%__kont190079190080%_
                       _%hd186320186350%_
                       _%hd186294186387%_)
                      (let () (declare (not safe)) (_%g186286186326%_)))))
              (let () (declare (not safe)) (_%g186286186326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186295186389%_))
                                                  (let ((_%e186319186347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186295186389%_))))
                                                    (let ((_%tl186321186352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186319186347%_)))
                                                          (_%hd186320186350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186319186347%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186321186352%_))
                                                          (_%__kont190079190080%_
                                                           _%hd186320186350%_
                                                           _%hd186294186387%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186286186326%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186286186326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186295186389%_))
                                              (let ((_%e186319186347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186295186389%_))))
                                                (let ((_%tl186321186352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186319186347%_)))
                                                      (_%hd186320186350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186319186347%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186321186352%_))
                                                      (_%__kont190079190080%_
                                                       _%hd186320186350%_
                                                       _%hd186294186387%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186286186326%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186286186326%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186295186389%_))
                                      (let ((_%e186319186347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186295186389%_))))
                                        (let ((_%tl186321186352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186319186347%_)))
                                              (_%hd186320186350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186319186347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186321186352%_))
                                              (_%__kont190079190080%_
                                               _%hd186320186350%_
                                               _%hd186294186387%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186286186326%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186286186326%_))))))
                          (let () (declare (not safe)) (_%g186286186326%_)))))
                  (let () (declare (not safe)) (_%g186286186326%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186260%_ _%expr186261%_ _%type186262%_)
        (let ((_%$e186264%_ (not _%type186262%_)))
          (if _%$e186264%_
              _%$e186264%_
              (let ((_%$e186267%_
                     (eq? (##structure-ref _%type186262%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186267%_
                    _%$e186267%_
                    (let ((_%expr-type186271%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186261%_))))
                      (if (not _%expr-type186271%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186260%_
                             _%type186262%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186271%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186260%_
                                 _%type186262%_
                                 _%expr-type186271%_))
                              (let ((_%$e186275%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186271%_
                                        'gxc#!abort::t))))
                                (if _%$e186275%_
                                    _%$e186275%_
                                    (let ((_%$e186278%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186271%_
                                              _%type186262%_))))
                                      (if _%$e186278%_
                                          _%$e186278%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186260%_
                                             _%type186262%_
                                             _%expr-type186271%_)))))))))))))))))
