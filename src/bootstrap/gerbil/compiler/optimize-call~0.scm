(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712757961)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190211 (list gxc#::basic-xform::t))
            (__tmp190210 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190211
         '()
         __tmp190210
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189760%_
        (apply make-instance gxc#::optimize-call::t _%$args189760%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190212
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
        (__make-promise __tmp190212)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189752%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189755%_
                (let ((__obj190202
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190202))
               (__tmp190213
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189755%_ _%stx189752%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190213
           gxc#current-compile-method
           _%self189755%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190215 (list gxc#::void::t))
            (__tmp190214 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190215
         '()
         __tmp190214
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189749%_
        (apply make-instance gxc#::check-return-type::t _%$args189749%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190216
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
        (__make-promise __tmp190216)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189741%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189744%_
                (let ((__obj190204
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190204))
               (__tmp190217
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189744%_ _%stx189741%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190217
           gxc#current-compile-method
           _%self189744%_))))
    (define gxc#optimize-call%
      (lambda (_%self189342%_ _%stx189343%_)
        (let* ((_%__stx189815189816%_ _%stx189343%_)
               (_%g189346189392%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189815189816%_)))))
          (let ((_%__kont189817189818%_
                 (lambda (_%L189535%_ _%L189536%_)
                   (let* ((_%rator-id189556%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189536%_)))
                          (_%rator-type189558%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189556%_))))
                     (if (or (not _%rator-type189558%_)
                             (eq? (##structure-ref
                                   _%rator-type189558%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189342%_ _%stx189343%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189558%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190218
                                      (##structure-ref
                                       _%rator-type189558%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189556%_
                                  '" => "
                                  _%rator-type189558%_
                                  '" "
                                  __tmp190218))
                               (let* ((_%optimized189573%_
                                       (let ((__method190205
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189558%_
                                                 'optimize-call))))
                                         (if __method190205
                                             (__method190205
                                              _%rator-type189558%_
                                              _%self189342%_
                                              _%stx189343%_
                                              (let ((__tmp190219
                                                     (lambda (_%g189565189568%_
                                                              _%g189566189570%_)
                                                       (cons _%g189565189568%_
                                                             _%g189566189570%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190219
                                                 '()
                                                 _%L189535%_)))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type189558%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx189763189764%_
                                       _%optimized189573%_)
                                      (_%g189576189605%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189763189764%_)))))
                                 (let ((_%__kont189765189766%_
                                        (lambda (_%L189673%_ _%L189674%_)
                                          (let* ((_%optimized-rator-id189701%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L189674%_)))
                                                 (_%rator-type189706%_
                                                  (let ((_%$e189703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id189701%_))))
                                                    (if _%$e189703%_
                                                        _%$e189703%_
                                                        _%rator-type189558%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type189706%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189701%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type189706%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type189706%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized189573%_
                                                (let ((__tmp190220
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L189674%_ '()))
                           (let ((__tmp190221
                                  (lambda (_%g189714189717%_ _%g189715189719%_)
                                    (cons _%g189714189717%_
                                          _%g189715189719%_))))
                             (declare (not safe))
                             (__foldr1 __tmp190221 '() _%L189673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190220
                                                   _%stx189343%_))))))
                                       (_%__kont189769189770%_
                                        (lambda () _%optimized189573%_)))
                                   (let ((_%__match189812189813%_
                                          (lambda (_%e189580189617%_
                                                   _%hd189581189620%_
                                                   _%tl189582189622%_
                                                   _%e189583189625%_
                                                   _%hd189584189628%_
                                                   _%tl189585189630%_
                                                   _%e189586189633%_
                                                   _%hd189587189636%_
                                                   _%tl189588189638%_
                                                   _%e189589189641%_
                                                   _%hd189590189644%_
                                                   _%tl189591189646%_
                                                   _%__splice189767189768%_
                                                   _%target189592189649%_
                                                   _%tl189594189651%_)
                                            (letrec ((_%loop189595189654%_
                                                      (lambda (_%hd189593189657%_
                                                               _%arg189599189659%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189593189657%_))
                                                            (let ((_%e189596189662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189593189657%_))))
                      (let ((_%lp-tl189598189667%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189596189662%_)))
                            (_%lp-hd189597189665%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189596189662%_))))
                        (_%loop189595189654%_
                         _%lp-tl189598189667%_
                         (cons _%lp-hd189597189665%_ _%arg189599189659%_))))
                    (let ((_%arg189600189670%_ (reverse _%arg189599189659%_)))
                      (_%__kont189765189766%_
                       _%arg189600189670%_
                       _%hd189590189644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop189595189654%_
                                               _%target189592189649%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189763189764%_))
                                         (let ((_%e189580189617%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189763189764%_))))
                                           (let ((_%tl189582189622%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189580189617%_)))
                                                 (_%hd189581189620%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189580189617%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189581189620%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189581189620%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189582189622%_))
                                                         (let ((_%e189583189625%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189582189622%_))))
                   (let ((_%tl189585189630%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189583189625%_)))
                         (_%hd189584189628%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189583189625%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189584189628%_))
                         (let ((_%e189586189633%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189584189628%_))))
                           (let ((_%tl189588189638%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189586189633%_)))
                                 (_%hd189587189636%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189586189633%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189587189636%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189587189636%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189588189638%_))
                                         (let ((_%e189589189641%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189588189638%_))))
                                           (let ((_%tl189591189646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189589189641%_)))
                                                 (_%hd189590189644%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189589189641%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189591189646%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189585189630%_))
                                                     (let ((_%__splice189767189768%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189585189630%_
                                                               '0))))
                                                       (let ((_%tl189594189651%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189767189768%_ '1)))
                     (_%target189592189649%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189767189768%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189594189651%_))
                     (_%__match189812189813%_
                      _%e189580189617%_
                      _%hd189581189620%_
                      _%tl189582189622%_
                      _%e189583189625%_
                      _%hd189584189628%_
                      _%tl189585189630%_
                      _%e189586189633%_
                      _%hd189587189636%_
                      _%tl189588189638%_
                      _%e189589189641%_
                      _%hd189590189644%_
                      _%tl189591189646%_
                      _%__splice189767189768%_
                      _%target189592189649%_
                      _%tl189594189651%_)
                     (_%__kont189769189770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189769189770%_))
                                                 (_%__kont189769189770%_))))
                                         (_%__kont189769189770%_))
                                     (_%__kont189769189770%_))
                                 (_%__kont189769189770%_))))
                         (_%__kont189769189770%_))))
                 (_%__kont189769189770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189769189770%_))
                                                 (_%__kont189769189770%_))))
                                         (_%__kont189769189770%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189558%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189558%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190222
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L189536%_
                                                                '()))
                                                    (map (lambda (_%g189725189727%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self189342%_
                                                              _%g189725189727%_)))
                                                         (let ((__tmp190223
                                                                (lambda (_%g189729189732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g189730189734%_)
                          (cons _%g189729189732%_ _%g189730189734%_))))
                   (declare (not safe))
                   (__foldr1 __tmp190223 '() _%L189535%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190222
                                    _%stx189343%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189343%_
                                    _%rator-type189558%_))))))))
                (_%__kont189821189822%_
                 (lambda (_%L189437%_ _%L189438%_)
                   (let ((_%rator-type189455%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189438%_))))
                     (if (and _%rator-type189455%_
                              (eq? (##structure-ref
                                    _%rator-type189455%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type189455%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type189455%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type189455%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp190224
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self189342%_
                                               _%L189438%_))
                                            (map (lambda (_%g189457189459%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189342%_
                                                      _%g189457189459%_)))
                                                 (let ((__tmp190225
                                                        (lambda (_%g189461189464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g189462189466%_)
                  (cons _%g189461189464%_ _%g189462189466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp190225
                                                    '()
                                                    _%L189437%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190224 _%stx189343%_))
                         (if (or (not _%rator-type189455%_)
                                 (let ((__tmp190226
                                        (##structure-ref
                                         _%rator-type189455%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190226 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189342%_ _%stx189343%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189343%_
                                _%rator-type189455%_))))))))
            (let* ((_%__match189882189883%_
                    (lambda (_%e189373189397%_
                             _%hd189374189400%_
                             _%tl189375189402%_
                             _%e189376189405%_
                             _%hd189377189408%_
                             _%tl189378189410%_
                             _%__splice189823189824%_
                             _%target189379189413%_
                             _%tl189381189415%_)
                      (letrec ((_%loop189382189418%_
                                (lambda (_%hd189380189421%_
                                         _%rand189386189423%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189380189421%_))
                                      (let ((_%e189383189426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189380189421%_))))
                                        (let ((_%lp-tl189385189431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189383189426%_)))
                                              (_%lp-hd189384189429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189383189426%_))))
                                          (_%loop189382189418%_
                                           _%lp-tl189385189431%_
                                           (cons _%lp-hd189384189429%_
                                                 _%rand189386189423%_))))
                                      (let ((_%rand189387189434%_
                                             (reverse _%rand189386189423%_)))
                                        (_%__kont189821189822%_
                                         _%rand189387189434%_
                                         _%hd189377189408%_))))))
                        (_%loop189382189418%_ _%target189379189413%_ '()))))
                   (_%__match189862189863%_
                    (lambda (_%e189350189479%_
                             _%hd189351189482%_
                             _%tl189352189484%_
                             _%e189353189487%_
                             _%hd189354189490%_
                             _%tl189355189492%_
                             _%e189356189495%_
                             _%hd189357189498%_
                             _%tl189358189500%_
                             _%e189359189503%_
                             _%hd189360189506%_
                             _%tl189361189508%_
                             _%__splice189819189820%_
                             _%target189362189511%_
                             _%tl189364189513%_)
                      (letrec ((_%loop189365189516%_
                                (lambda (_%hd189363189519%_
                                         _%rand189369189521%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189363189519%_))
                                      (let ((_%e189366189524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189363189519%_))))
                                        (let ((_%lp-tl189368189529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189366189524%_)))
                                              (_%lp-hd189367189527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189366189524%_))))
                                          (_%loop189365189516%_
                                           _%lp-tl189368189529%_
                                           (cons _%lp-hd189367189527%_
                                                 _%rand189369189521%_))))
                                      (let ((_%rand189370189532%_
                                             (reverse _%rand189369189521%_)))
                                        (_%__kont189817189818%_
                                         _%rand189370189532%_
                                         _%hd189360189506%_))))))
                        (_%loop189365189516%_ _%target189362189511%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189815189816%_))
                  (let ((_%e189350189479%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189815189816%_))))
                    (let ((_%tl189352189484%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189350189479%_)))
                          (_%hd189351189482%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189350189479%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189352189484%_))
                          (let ((_%e189353189487%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189352189484%_))))
                            (let ((_%tl189355189492%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189353189487%_)))
                                  (_%hd189354189490%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189353189487%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189354189490%_))
                                  (let ((_%e189356189495%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189354189490%_))))
                                    (let ((_%tl189358189500%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189356189495%_)))
                                          (_%hd189357189498%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189356189495%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189357189498%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189357189498%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189358189500%_))
                                                  (let ((_%e189359189503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189358189500%_))))
                                                    (let ((_%tl189361189508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189359189503%_)))
                                                          (_%hd189360189506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189359189503%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189361189508%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189355189492%_))
                      (let ((_%__splice189819189820%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189355189492%_
                                '0))))
                        (let ((_%tl189364189513%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189819189820%_ '1)))
                              (_%target189362189511%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189819189820%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189364189513%_))
                              (_%__match189862189863%_
                               _%e189350189479%_
                               _%hd189351189482%_
                               _%tl189352189484%_
                               _%e189353189487%_
                               _%hd189354189490%_
                               _%tl189355189492%_
                               _%e189356189495%_
                               _%hd189357189498%_
                               _%tl189358189500%_
                               _%e189359189503%_
                               _%hd189360189506%_
                               _%tl189361189508%_
                               _%__splice189819189820%_
                               _%target189362189511%_
                               _%tl189364189513%_)
                              (let ()
                                (declare (not safe))
                                (_%g189346189392%_)))))
                      (let () (declare (not safe)) (_%g189346189392%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189355189492%_))
                      (let ((_%__splice189823189824%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189355189492%_
                                '0))))
                        (let ((_%tl189381189415%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189823189824%_ '1)))
                              (_%target189379189413%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189823189824%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189381189415%_))
                              (_%__match189882189883%_
                               _%e189350189479%_
                               _%hd189351189482%_
                               _%tl189352189484%_
                               _%e189353189487%_
                               _%hd189354189490%_
                               _%tl189355189492%_
                               _%__splice189823189824%_
                               _%target189379189413%_
                               _%tl189381189415%_)
                              (let ()
                                (declare (not safe))
                                (_%g189346189392%_)))))
                      (let () (declare (not safe)) (_%g189346189392%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189355189492%_))
                                                      (let ((_%__splice189823189824%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189355189492%_ '0))))
                (let ((_%tl189381189415%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189823189824%_ '1)))
                      (_%target189379189413%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189823189824%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189381189415%_))
                      (_%__match189882189883%_
                       _%e189350189479%_
                       _%hd189351189482%_
                       _%tl189352189484%_
                       _%e189353189487%_
                       _%hd189354189490%_
                       _%tl189355189492%_
                       _%__splice189823189824%_
                       _%target189379189413%_
                       _%tl189381189415%_)
                      (let () (declare (not safe)) (_%g189346189392%_)))))
              (let () (declare (not safe)) (_%g189346189392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189355189492%_))
                                                  (let ((_%__splice189823189824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189355189492%_
                                                            '0))))
                                                    (let ((_%tl189381189415%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189823189824%_
                                                              '1)))
                                                          (_%target189379189413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189823189824%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189381189415%_))
                                                          (_%__match189882189883%_
                                                           _%e189350189479%_
                                                           _%hd189351189482%_
                                                           _%tl189352189484%_
                                                           _%e189353189487%_
                                                           _%hd189354189490%_
                                                           _%tl189355189492%_
                                                           _%__splice189823189824%_
                                                           _%target189379189413%_
                                                           _%tl189381189415%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189346189392%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189346189392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189355189492%_))
                                              (let ((_%__splice189823189824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189355189492%_
                                                        '0))))
                                                (let ((_%tl189381189415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189823189824%_
                                                          '1)))
                                                      (_%target189379189413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189823189824%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189381189415%_))
                                                      (_%__match189882189883%_
                                                       _%e189350189479%_
                                                       _%hd189351189482%_
                                                       _%tl189352189484%_
                                                       _%e189353189487%_
                                                       _%hd189354189490%_
                                                       _%tl189355189492%_
                                                       _%__splice189823189824%_
                                                       _%target189379189413%_
                                                       _%tl189381189415%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189346189392%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189346189392%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189355189492%_))
                                      (let ((_%__splice189823189824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189355189492%_
                                                '0))))
                                        (let ((_%tl189381189415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189823189824%_
                                                  '1)))
                                              (_%target189379189413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189823189824%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189381189415%_))
                                              (_%__match189882189883%_
                                               _%e189350189479%_
                                               _%hd189351189482%_
                                               _%tl189352189484%_
                                               _%e189353189487%_
                                               _%hd189354189490%_
                                               _%tl189355189492%_
                                               _%__splice189823189824%_
                                               _%target189379189413%_
                                               _%tl189381189415%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189346189392%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189346189392%_))))))
                          (let () (declare (not safe)) (_%g189346189392%_)))))
                  (let () (declare (not safe)) (_%g189346189392%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189304%_ _%ctx189305%_ _%stx189306%_ _%args189307%_)
        (let ((_%self189310%_ _%self189304%_))
          (if (let ((__method190206
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189310%_ 'check-arguments))))
                (if __method190206
                    (__method190206
                     _%self189310%_
                     _%ctx189305%_
                     _%stx189306%_
                     _%args189307%_)
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self189310%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature189320%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189310%_ '2 '#f '#f)))
                     (_%signature189322%_ _%signature189320%_)
                     (_%$e189332%_
                      (if _%signature189322%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189322%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189332%_
                    ((lambda (_%unchecked189335%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189335%_))
                           (let ((__tmp190227
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked189335%_
                                                          '()))
                                              (map (lambda (_%g189336189338%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189305%_
                                                        _%g189336189338%_)))
                                                   _%args189307%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190227 _%stx189306%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189305%_ _%stx189306%_))))
                     _%$e189332%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189305%_ _%stx189306%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189305%_ _%stx189306%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self189055%_ _%ctx189056%_ _%stx189057%_ _%args189058%_)
        (let* ((_%self189061%_ _%self189055%_)
               (_%signature189070189072%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self189061%_ '2 '#f '#f))))
          (if _%signature189070189072%_
              (let* ((_%signature189075%_ _%signature189070189072%_)
                     (_%argument-types189076189078%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature189075%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types189076189078%_
                    (let* ((_%argument-types189081%_
                            _%argument-types189076189078%_)
                           (_%argument-types189086%_
                            (let ((__tmp190228
                                   (lambda (_%t189084%_)
                                     (if _%t189084%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189057%_
                                            _%t189084%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp190228
                               _%argument-types189081%_))))
                      (let _%loop189088%_ ((_%rest-args189090%_ _%args189058%_)
                                           (_%rest-types189091%_
                                            _%argument-types189086%_)
                                           (_%result189092%_ '#t))
                        (let* ((_%rest-args189093189101%_ _%rest-args189090%_)
                               (_%else189095189109%_
                                (lambda () _%result189092%_))
                               (_%K189097189170%_
                                (lambda (_%rest-args189112%_ _%arg189113%_)
                                  (let* ((_%rest-types189114189125%_
                                          _%rest-types189091%_)
                                         (_%E189118189129%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types189114189125%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K189121189158%_
                                           (lambda (_%rest-types189155%_
                                                    _%type189156%_)
                                             (_%loop189088%_
                                              _%rest-args189112%_
                                              _%rest-types189155%_
                                              (if (gxc#check-expression-type!
                                                   _%stx189057%_
                                                   _%arg189113%_
                                                   _%type189156%_)
                                                  _%result189092%_
                                                  '#f))))
                                          (_%K189120189149%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx189057%_
                                                _%argument-types189086%_))))
                                          (_%K189119189139%_
                                           (lambda (_%tail-type189133%_)
                                             (if (let ((__tmp190229
                                                        (lambda (_%g189134189136%_)
                                                          (gxc#check-expression-type!
                                                           _%stx189057%_
                                                           _%g189134189136%_
                                                           _%tail-type189133%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp190229
                                                    _%rest-args189112%_))
                                                 _%result189092%_
                                                 '#f))))
                                      (let ((_%try-match189116189152%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types189114189125%_))
                                                   (_%K189120189149%_)
                                                   (let ((_%tail-type189142%_
                                                          _%rest-types189114189125%_))
                                                     (_%K189119189139%_
                                                      _%tail-type189142%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types189114189125%_))
                                            (let ((_%tl189123189163%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types189114189125%_)))
                                                  (_%hd189122189161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types189114189125%_))))
                                              (let ((_%type189166%_
                                                     _%hd189122189161%_)
                                                    (_%rest-types189168%_
                                                     _%tl189123189163%_))
                                                (_%K189121189158%_
                                                 _%rest-types189168%_
                                                 _%type189166%_)))
                                            (_%try-match189116189152%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args189093189101%_))
                              (let ((_%hd189098189173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args189093189101%_)))
                                    (_%tl189099189175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args189093189101%_))))
                                (let* ((_%arg189178%_ _%hd189098189173%_)
                                       (_%rest-args189180%_
                                        _%tl189099189175%_))
                                  (_%K189097189170%_
                                   _%rest-args189180%_
                                   _%arg189178%_)))
                              (_%else189095189109%_)))))
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
      (lambda (_%self188866%_ _%ctx188867%_ _%stx188868%_ _%args188869%_)
        (let* ((_%self188872%_ _%self188866%_)
               (_%g188882188892%_
                (lambda (_%g188883188889%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188883188889%_))))
               (_%g188881188930%_
                (lambda (_%g188883188895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188883188895%_))
                      (let ((_%e188885188897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188883188895%_))))
                        (let ((_%hd188886188900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188885188897%_)))
                              (_%tl188887188902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188885188897%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188887188902%_))
                              ((lambda (_%L188905%_)
                                 (let* ((_%klass188917%_
                                         (let ((__tmp190230
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188872%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188868%_
                                            __tmp190230)))
                                        (_%object188919%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188867%_
                                            _%L188905%_)))
                                        (_%instance?188924%_
                                         (let ((_%$e188921%_
                                                (gxc#expression-type?
                                                 _%object188919%_
                                                 _%klass188917%_)))
                                           (if _%$e188921%_
                                               _%$e188921%_
                                               (gxc#expression-type?
                                                _%L188905%_
                                                _%klass188917%_)))))
                                   (if _%instance?188924%_
                                       (let ((__tmp190231
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188919%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188905%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188919%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190231
                                          _%stx188868%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx188867%_
                                          _%stx188868%_)))))
                               _%hd188886188900%_)
                              (_%g188882188892%_ _%g188883188895%_))))
                      (_%g188882188892%_ _%g188883188895%_)))))
          (_%g188881188930%_ _%args188869%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188662%_ _%ctx188663%_ _%stx188664%_ _%args188665%_)
        (let* ((_%self188668%_ _%self188662%_)
               (_%g188678188688%_
                (lambda (_%g188679188685%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188679188685%_))))
               (_%g188677188741%_
                (lambda (_%g188679188691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188679188691%_))
                      (let ((_%e188681188693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188679188691%_))))
                        (let ((_%hd188682188696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188681188693%_)))
                              (_%tl188683188698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188681188693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188683188698%_))
                              ((lambda (_%L188701%_)
                                 (let* ((_%klass188713%_
                                         (let ((__tmp190232
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188668%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188664%_
                                            __tmp190232)))
                                        (_%object188715%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188663%_
                                            _%L188701%_)))
                                        (_%instance?188720%_
                                         (let ((_%$e188717%_
                                                (gxc#expression-type?
                                                 _%object188715%_
                                                 _%klass188713%_)))
                                           (if _%$e188717%_
                                               _%$e188717%_
                                               (gxc#expression-type?
                                                _%L188701%_
                                                _%klass188713%_))))
                                        (_%klass188723%_ _%klass188713%_))
                                   (if _%instance?188720%_
                                       (let ((__tmp190233
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188715%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188701%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188715%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190233
                                          _%stx188664%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188723%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp190234
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass188723%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object188715%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190234
                                              _%stx188664%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188723%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190235
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188723%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object188715%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190235
                                                  _%stx188664%_))
                                               (let ((__tmp190236
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188668%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188715%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190236
                                                  _%stx188664%_)))))))
                               _%hd188682188696%_)
                              (_%g188678188688%_ _%g188679188691%_))))
                      (_%g188678188688%_ _%g188679188691%_)))))
          (_%g188677188741%_ _%args188665%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188325%_)
        (let* ((_%__stx189892189893%_ _%stx188325%_)
               (_%g188330188371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189892189893%_)))))
          (let ((_%__kont189894189895%_ (lambda () '#t))
                (_%__kont189896189897%_ (lambda () '#t))
                (_%__kont189898189899%_
                 (lambda (_%L188439%_ _%L188440%_)
                   (let ((_%rator-type188461188463%_
                          (let ((__tmp190237
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188440%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190237))))
                     (if _%rator-type188461188463%_
                         (let* ((_%rator-type188466%_
                                 _%rator-type188461188463%_)
                                (_%rator-signature188467188469%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188466%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188466%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188467188469%_
                               (let* ((_%rator-signature188472%_
                                       _%rator-signature188467188469%_)
                                      (_%rator-effect188473188475%_
                                       (if _%rator-signature188472%_
                                           (##direct-structure-ref
                                            _%rator-signature188472%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188473188475%_
                                     (let ((_%rator-effect188478%_
                                            _%rator-effect188473188475%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188478%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188478%_))
                                           (let ((__tmp190238
                                                  (let ((__tmp190239
                                                         (lambda (_%g188483188486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188484188488%_)
                   (cons _%g188483188486%_ _%g188484188488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190239
                                                     '()
                                                     _%L188439%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190238))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189902189903%_ (lambda () '#f)))
            (let ((_%__match189981189982%_
                   (lambda (_%e188346188383%_
                            _%hd188347188386%_
                            _%tl188348188388%_
                            _%e188349188391%_
                            _%hd188350188394%_
                            _%tl188351188396%_
                            _%e188352188399%_
                            _%hd188353188402%_
                            _%tl188354188404%_
                            _%e188355188407%_
                            _%hd188356188410%_
                            _%tl188357188412%_
                            _%__splice189900189901%_
                            _%target188358188415%_
                            _%tl188360188417%_)
                     (letrec ((_%loop188361188420%_
                               (lambda (_%hd188359188423%_
                                        _%rand188365188425%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188359188423%_))
                                     (let ((_%e188362188428%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188359188423%_))))
                                       (let ((_%lp-tl188364188433%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188362188428%_)))
                                             (_%lp-hd188363188431%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188362188428%_))))
                                         (_%loop188361188420%_
                                          _%lp-tl188364188433%_
                                          (cons _%lp-hd188363188431%_
                                                _%rand188365188425%_))))
                                     (let ((_%rand188366188436%_
                                            (reverse _%rand188365188425%_)))
                                       (_%__kont189898189899%_
                                        _%rand188366188436%_
                                        _%hd188356188410%_))))))
                       (_%loop188361188420%_ _%target188358188415%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189892189893%_))
                  (let ((_%e188332188519%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189892189893%_))))
                    (let ((_%tl188334188524%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188332188519%_)))
                          (_%hd188333188522%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188332188519%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188333188522%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188333188522%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188334188524%_))
                                  (let ((_%e188335188527%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188334188524%_))))
                                    (let ((_%tl188337188532%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188335188527%_)))
                                          (_%hd188336188530%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188335188527%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188337188532%_))
                                          (_%__kont189894189895%_)
                                          (_%__kont189902189903%_))))
                                  (_%__kont189902189903%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188333188522%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188334188524%_))
                                      (let ((_%e188341188504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188334188524%_))))
                                        (let ((_%tl188343188509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188341188504%_)))
                                              (_%hd188342188507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188341188504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188343188509%_))
                                              (_%__kont189896189897%_)
                                              (_%__kont189902189903%_))))
                                      (_%__kont189902189903%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188333188522%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188334188524%_))
                                          (let ((_%e188349188391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188334188524%_))))
                                            (let ((_%tl188351188396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188349188391%_)))
                                                  (_%hd188350188394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188349188391%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188350188394%_))
                                                  (let ((_%e188352188399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188350188394%_))))
                                                    (let ((_%tl188354188404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188352188399%_)))
                                                          (_%hd188353188402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188352188399%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188353188402%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188353188402%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188354188404%_))
                          (let ((_%e188355188407%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188354188404%_))))
                            (let ((_%tl188357188412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188355188407%_)))
                                  (_%hd188356188410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188355188407%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188357188412%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188351188396%_))
                                      (let ((_%__splice189900189901%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188351188396%_
                                                '0))))
                                        (let ((_%tl188360188417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189900189901%_
                                                  '1)))
                                              (_%target188358188415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189900189901%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188360188417%_))
                                              (_%__match189981189982%_
                                               _%e188332188519%_
                                               _%hd188333188522%_
                                               _%tl188334188524%_
                                               _%e188349188391%_
                                               _%hd188350188394%_
                                               _%tl188351188396%_
                                               _%e188352188399%_
                                               _%hd188353188402%_
                                               _%tl188354188404%_
                                               _%e188355188407%_
                                               _%hd188356188410%_
                                               _%tl188357188412%_
                                               _%__splice189900189901%_
                                               _%target188358188415%_
                                               _%tl188360188417%_)
                                              (_%__kont189902189903%_))))
                                      (_%__kont189902189903%_))
                                  (_%__kont189902189903%_))))
                          (_%__kont189902189903%_))
                      (_%__kont189902189903%_))
                  (_%__kont189902189903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189902189903%_))))
                                          (_%__kont189902189903%_))
                                      (_%__kont189902189903%_))))
                          (_%__kont189902189903%_))))
                  (_%__kont189902189903%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188320%_ _%klass188321%_)
        (let ((_%expr-type188323%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188320%_))))
          (if _%expr-type188323%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188323%_ _%klass188321%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188298%_ _%expr188299%_ _%type188300%_)
        (if (not _%type188300%_)
            '#f
            (let ((_%$e188303%_
                   (eq? (##structure-ref _%type188300%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188303%_
                  _%$e188303%_
                  (let ((_%expr-type188307%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188299%_))))
                    (if (not _%expr-type188307%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188307%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e188311%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188307%_
                                      'gxc#!abort::t))))
                              (if _%$e188311%_
                                  _%$e188311%_
                                  (let ((_%$e188314%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188307%_
                                            _%type188300%_))))
                                    (if _%$e188314%_
                                        _%$e188314%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188300%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188300%_
                                                   _%expr-type188307%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188298%_
                                                   _%expr188299%_
                                                   _%expr-type188307%_
                                                   _%type188300%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188112%_ _%ctx188113%_ _%stx188114%_ _%args188115%_)
        (let* ((_%self188118%_ _%self188112%_)
               (_%klass188128%_
                (let ((__tmp190240
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188118%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx188114%_ __tmp190240)))
               (_%fields188130%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188128%_
                           '5
                           '#f
                           '#f))))
               (_%args188136%_
                (map (lambda (_%g188131188133%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx188113%_ _%g188131188133%_)))
                     _%args188115%_))
               (_%inline-make-object188138%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188118%_
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
                           _%self188118%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields188130%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass188141%_ _%klass188128%_)
               (_%$e188155%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass188141%_ '6 '#f '#f))))
          (if _%$e188155%_
              ((lambda (_%ctor188158%_)
                 (let ((_%$obj188160%_
                        (let ((__tmp190241
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp190241)))
                       (_%ctor-impl188161%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass188141%_
                           _%ctor188158%_))))
                   (let ((__tmp190242
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj188160%_ '())
                                                  (cons _%inline-make-object188138%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl188161%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl188161%_ '()))
                                (cons (cons '%#ref (cons _%$obj188160%_ '()))
                                      _%args188136%_)))
                    (let ((_%$ctor188163%_
                           (let ((__tmp190243
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190243))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor188163%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188118%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj188160%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor188158%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor188163%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor188163%_ '()))
                              (cons (cons '%#ref (cons _%$obj188160%_ '()))
                                    _%args188136%_)))
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
                             _%self188118%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor188158%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj188160%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp190242 _%stx188114%_))))
               _%$e188155%_)
              (let ((_%$e188165%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass188141%_
                        '10
                        '#f
                        '#f))))
                (if _%$e188165%_
                    ((lambda (_%metaclass188168%_)
                       (let* ((_%$obj188170%_
                               (let ((__tmp190244
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190244)))
                              (_%metakons188172%_
                               (let ((__tmp190245
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx188114%_
                                         _%metaclass188168%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp190245
                                  'instance-init!)))
                              (__tmp190246
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj188170%_
                                                             '())
                                                       (cons _%inline-make-object188138%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons188172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons188172%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188118%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj188170%_
                                                             '()))
                                                 _%args188136%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188118%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj188170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args188136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj188170%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190246 _%stx188114%_)))
                     _%$e188165%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188141%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp190247
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args188136%_))))
                              (declare (not safe))
                              (##fx= __tmp190247 _%fields188130%_))
                            (let ((__tmp190248
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188118%_
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
                                              _%self188118%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args188136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190248
                               _%stx188114%_))
                            (let ((__tmp190250
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self188118%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp190249
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass188141%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx188114%_
                               __tmp190250
                               __tmp190249)))
                        (let ((_%$obj188177%_
                               (let ((__tmp190251
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190251))))
                          (let _%lp188179%_ ((_%rest188181%_ _%args188136%_)
                                             (_%initializers188182%_ '()))
                            (let* ((_%__stx189984189985%_ _%rest188181%_)
                                   (_%g188186188207%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx189984189985%_)))))
                              (let ((_%__kont189986189987%_
                                     (lambda (_%L188261%_
                                              _%L188262%_
                                              _%L188263%_)
                                       (let* ((_%slot188290%_
                                               (let ((__tmp190252
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L188263%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp190252)))
                                              (_%off188292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass188141%_
                                                  _%slot188290%_))))
                                         (if _%off188292%_
                                             (_%lp188179%_
                                              _%L188261%_
                                              (cons (cons _%off188292%_
                                                          _%L188262%_)
                                                    _%initializers188182%_))
                                             (let ((__tmp190253
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188118%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx188114%_
                                                __tmp190253
                                                _%slot188290%_))))))
                                    (_%__kont189988189989%_
                                     (lambda ()
                                       (let ((__tmp190254
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188138%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp190257
                                     (cons (cons '%#ref
                                                 (cons _%$obj188177%_ '()))
                                           '()))
                                    (__tmp190255
                                     (let ((__tmp190256
                                            (lambda (_%i188221%_ _%r188222%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188118%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i188221%_) '()))
                              (cons (cons '%#ref (cons _%$obj188177%_ '()))
                                    (cons (cdr _%i188221%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r188222%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp190256
                                        '()
                                        _%initializers188182%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp190257 __tmp190255)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190254
                                          _%stx188114%_))))
                                    (_%__kont189990189991%_
                                     (lambda ()
                                       (let ((__tmp190258
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188138%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args188136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj188177%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190258
                                          _%stx188114%_)))))
                                (let* ((_%g188184188224%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx189984189985%_))
                                              (_%__kont189988189989%_)
                                              (_%__kont189990189991%_))))
                                       (_%__match190021190022%_
                                        (lambda (_%e188191188229%_
                                                 _%hd188192188232%_
                                                 _%tl188193188234%_
                                                 _%e188194188237%_
                                                 _%hd188195188240%_
                                                 _%tl188196188242%_
                                                 _%e188197188245%_
                                                 _%hd188198188248%_
                                                 _%tl188199188250%_
                                                 _%e188200188253%_
                                                 _%hd188201188256%_
                                                 _%tl188202188258%_)
                                          (let ((_%L188261%_
                                                 _%tl188202188258%_)
                                                (_%L188262%_
                                                 _%hd188201188256%_)
                                                (_%L188263%_
                                                 _%hd188198188248%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L188263%_))
                                                (_%__kont189986189987%_
                                                 _%L188261%_
                                                 _%L188262%_
                                                 _%L188263%_)
                                                (_%__kont189990189991%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx189984189985%_))
                                      (let ((_%e188191188229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx189984189985%_))))
                                        (let ((_%tl188193188234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188191188229%_)))
                                              (_%hd188192188232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188191188229%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd188192188232%_))
                                              (let ((_%e188194188237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd188192188232%_))))
                                                (let ((_%tl188196188242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188194188237%_)))
                                                      (_%hd188195188240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188194188237%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd188195188240%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd188195188240%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188196188242%_))
                      (let ((_%e188197188245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188196188242%_))))
                        (let ((_%tl188199188250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188197188245%_)))
                              (_%hd188198188248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188197188245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188199188250%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188193188234%_))
                                  (let ((_%e188200188253%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188193188234%_))))
                                    (let ((_%tl188202188258%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188200188253%_)))
                                          (_%hd188201188256%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188200188253%_))))
                                      (_%__match190021190022%_
                                       _%e188191188229%_
                                       _%hd188192188232%_
                                       _%tl188193188234%_
                                       _%e188194188237%_
                                       _%hd188195188240%_
                                       _%tl188196188242%_
                                       _%e188197188245%_
                                       _%hd188198188248%_
                                       _%tl188199188250%_
                                       _%e188200188253%_
                                       _%hd188201188256%_
                                       _%tl188202188258%_)))
                                  (_%__kont189990189991%_))
                              (_%__kont189990189991%_))))
                      (_%__kont189990189991%_))
                  (_%__kont189990189991%_))
              (_%__kont189990189991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189990189991%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188184188224%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187895%_ _%ctx187896%_ _%stx187897%_ _%args187898%_)
        (let* ((_%self187901%_ _%self187895%_)
               (_%arguments-ok?187911%_
                (let ((__method190207
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187901%_ 'check-arguments))))
                  (if __method190207
                      (__method190207
                       _%self187901%_
                       _%ctx187896%_
                       _%stx187897%_
                       _%args187898%_)
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self187901%_
                                 'check-arguments))
                        '#!void))))
               (_%g187913187923%_
                (lambda (_%g187914187920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187914187920%_))))
               (_%g187912187987%_
                (lambda (_%g187914187926%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187914187926%_))
                      (let ((_%e187916187928%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187914187926%_))))
                        (let ((_%hd187917187931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187916187928%_)))
                              (_%tl187918187933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187916187928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187918187933%_))
                              ((lambda (_%L187936%_)
                                 (let* ((_%klass187949%_
                                         (let ((__tmp190259
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187901%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx187897%_
                                            __tmp190259)))
                                        (_%field187951%_
                                         (let ((__tmp190260
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187901%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass187949%_
                                            __tmp190260)))
                                        (_%object187953%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx187896%_
                                            _%L187936%_)))
                                        (_%klass187956%_ _%klass187949%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass187956%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp190261
                                              (cons (if (or _%arguments-ok?187911%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187901%_
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
                                 _%self187901%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field187951%_ '()))
                        (cons _%object187953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190261
                                          _%stx187897%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass187956%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp190262
                                                  (cons (if (or _%arguments-ok?187911%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187901%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187901%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field187951%_ '()))
                            (cons _%object187953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190262
                                              _%stx187897%_))
                                           (let ((_%$e187975%_
                                                  (let ((__tmp190263
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self187901%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass187956%_
                                                     __tmp190263))))
                                             (if _%$e187975%_
                                                 ((lambda (_%klass187978%_)
                                                    (let ((__tmp190264
                                                           (cons (if (or _%arguments-ok?187911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187901%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self187901%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field187951%_ '()))
                                     (cons _%object187953%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190264 _%stx187897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e187975%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187901%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190265
                                                            (let ((_%$obj187984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp190266
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190266))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj187984%_ '())
                                              (cons _%object187953%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass187956%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187984%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187901%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187951%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj187984%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?187911%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187984%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187901%_
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
                                                             _%self187901%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187984%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187901%_
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
               (gxc#xform-wrap-source __tmp190265 _%stx187897%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp190267
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object187953%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187901%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190267 _%stx187897%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd187917187931%_)
                              (_%g187913187923%_ _%g187914187926%_))))
                      (_%g187913187923%_ _%g187914187926%_)))))
          (_%g187912187987%_ _%args187898%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187659%_ _%ctx187660%_ _%stx187661%_ _%args187662%_)
        (let* ((_%self187665%_ _%self187659%_)
               (_%arguments-ok?187675%_
                (let ((__method190208
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187665%_ 'check-arguments))))
                  (if __method190208
                      (__method190208
                       _%self187665%_
                       _%ctx187660%_
                       _%stx187661%_
                       _%args187662%_)
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self187665%_
                                 'check-arguments))
                        '#!void))))
               (_%g187677187691%_
                (lambda (_%g187678187688%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187678187688%_))))
               (_%g187676187770%_
                (lambda (_%g187678187694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187678187694%_))
                      (let ((_%e187681187696%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187678187694%_))))
                        (let ((_%hd187682187699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187681187696%_)))
                              (_%tl187683187701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187681187696%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187683187701%_))
                              (let ((_%e187684187704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187683187701%_))))
                                (let ((_%hd187685187707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187684187704%_)))
                                      (_%tl187686187709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187684187704%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187686187709%_))
                                      ((lambda (_%L187712%_ _%L187713%_)
                                         (let* ((_%klass187729%_
                                                 (let ((__tmp190268
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187665%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx187661%_
                                                    __tmp190268)))
                                                (_%field187731%_
                                                 (let ((__tmp190269
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187665%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass187729%_
                                                    __tmp190269)))
                                                (_%object187733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187660%_
                                                    _%L187713%_)))
                                                (_%value187735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187660%_
                                                    _%L187712%_)))
                                                (_%klass187738%_
                                                 _%klass187729%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187738%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190270
                                                      (cons (if (or _%arguments-ok?187675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187665%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187665%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field187731%_ '()))
                                (cons _%object187733%_
                                      (cons _%value187735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190270
                                                  _%stx187661%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187738%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp190271
                                                          (cons (if (or _%arguments-ok?187675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187665%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187665%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187731%_ '()))
                                    (cons _%object187733%_
                                          (cons _%value187735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190271
                                                      _%stx187661%_))
                                                   (let ((_%$e187758%_
                                                          (let ((__tmp190272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187665%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187738%_
                     __tmp190272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187758%_
                                                         ((lambda (_%klass187761%_)
                                                            (let ((__tmp190273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187675%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187665%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187665%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187731%_ '()))
                                             (cons _%object187733%_
                                                   (cons _%value187735%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190273 _%stx187661%_)))
                  _%$e187758%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187665%_ '4 '#f '#f))
                     (let ((__tmp190274
                            (let ((_%$obj187767%_
                                   (let ((__tmp190275
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190275))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj187767%_ '())
                                                      (cons _%object187733%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass187738%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj187767%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187665%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field187731%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj187767%_
                                                              '()))
                                                  (cons _%value187735%_
                                                        '())))))
                          (cons (if _%arguments-ok?187675%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187665%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value187735%_ '())))))
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
                             _%self187665%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187767%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187665%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value187735%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190274 _%stx187661%_))
                     (let ((__tmp190276
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object187733%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187665%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value187735%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp190276
                        _%stx187661%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187685187707%_
                                       _%hd187682187699%_)
                                      (_%g187677187691%_ _%g187678187694%_))))
                              (_%g187677187691%_ _%g187678187694%_))))
                      (_%g187677187691%_ _%g187678187694%_)))))
          (_%g187676187770%_ _%args187662%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187474%_ _%ctx187475%_ _%stx187476%_ _%args187477%_)
        (let* ((_%self187480%_ _%self187474%_)
               (_%self187489187499%_ _%self187480%_)
               (_%E187491187503%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187489187499%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K187492187513%_
                (lambda (_%inline187506%_ _%dispatch187507%_ _%arity187508%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self187480%_
                         _%args187477%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx187476%_
                         _%arity187508%_)))
                  (if _%inline187506%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp190277
                               (let ((__tmp190278
                                      (_%inline187506%_ _%stx187476%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190278
                                  _%stx187476%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx187475%_ __tmp190277)))
                      (if (and _%dispatch187507%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch187507%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch187507%_))
                            (let ((__tmp190279
                                   (let ((__tmp190280
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch187507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args187477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp190280
                                      _%stx187476%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx187475%_ __tmp190279)))
                          (gxc#!procedure::optimize-call
                           _%self187480%_
                           _%ctx187475%_
                           _%stx187476%_
                           _%args187477%_))))))
          (if '#t
              (let* ((_%e187493187516%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187489187499%_
                         '1
                         '#f
                         '#f)))
                     (_%e187494187519%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187489187499%_
                         '2
                         '#f
                         '#f)))
                     (_%e187495187522%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187489187499%_
                         '3
                         '#f
                         '#f)))
                     (_%arity187525%_ _%e187495187522%_)
                     (_%e187496187527%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187489187499%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187530%_ _%e187496187527%_)
                     (_%e187497187532%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187489187499%_
                         '5
                         '#f
                         '#f)))
                     (_%inline187535%_ _%e187497187532%_))
                (_%K187492187513%_
                 _%inline187535%_
                 _%dispatch187530%_
                 _%arity187525%_))
              (_%E187491187503%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187326%_ _%ctx187327%_ _%stx187328%_ _%args187329%_)
        (let* ((_%self187332%_ _%self187326%_)
               (_%$e187346%_
                (let ((__tmp190282
                       (lambda (_%g187341187343%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g187341187343%_
                            _%args187329%_))))
                      (__tmp190281
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self187332%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp190282 __tmp190281))))
          (if _%$e187346%_
              ((lambda (_%clause187349%_)
                 (let ((__method190209
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause187349%_ 'optimize-call))))
                   (if __method190209
                       (__method190209
                        _%clause187349%_
                        _%ctx187327%_
                        _%stx187328%_
                        _%args187329%_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause187349%_
                                  'optimize-call))
                         '#!void))))
               _%$e187346%_)
              (let ((__tmp190283
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187332%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx187328%_
                 __tmp190283))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187066%_ _%ctx187067%_ _%stx187068%_ _%args187069%_)
        (let* ((_%self187072%_ _%self187066%_)
               (_%self187081187090%_ _%self187072%_)
               (_%E187083187094%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187081187090%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K187084187185%_
                (lambda (_%dispatch187097%_ _%table187098%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch187097%_))
                      (let* ((_%g187099187109%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch187097%_)))
                             (_%else187101187117%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch187097%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx187067%_
                                   _%stx187068%_))))
                             (_%K187103187166%_
                              (lambda (_%main187120%_ _%keys187121%_)
                                (let ((_g190284_
                                       (gxc#!kw-lambda-split-args
                                        _%stx187068%_
                                        _%args187069%_)))
                                  (begin
                                    (let ((_g190285_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190284_)
                                                 (##vector-length _g190284_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190285_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190285_)))
                                    (let ((_%pargs187123%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190284_ 0)))
                                          (_%kwargs187124%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190284_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main187120%_))
                                        (if _%table187098%_
                                            (let ((_%xargs187132%_
                                                   (map (lambda (_%key187126%_)
                                                          (let ((_%$e187128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key187126%_ _%kwargs187124%_))))
                    (if _%$e187128%_ _%$e187128%_ '(%#ref absent-value))))
                _%keys187121%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw187134%_)
                                                 (if (memq (car _%kw187134%_)
                                                           _%keys187121%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx187068%_
                                                        _%keys187121%_
                                                        _%kw187134%_))))
                                               _%kwargs187124%_)
                                              (let ((__tmp190286
                                                     (let ((__tmp190287
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main187120%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs187123%_
                                         _%xargs187132%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190287 _%stx187068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx187067%_
                                                 __tmp190286)))
                                            (let* ((_%kwt187136%_
                                                    (let ((__tmp190288
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp190288)))
                                                   (_%kwvars187140%_
                                                    (map (lambda (_%_187138%_)
                                                           (let ((__tmp190289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp190289)))
                 _%kwargs187124%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind187145%_
                                                    (map (lambda (_%kw187142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187143%_)
                   (cons (cons _%kwvar187143%_ '())
                         (cons (cdr _%kw187142%_) '())))
                 _%kwargs187124%_
                 _%kwvars187140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset187150%_
                                                    (map (lambda (_%kw187147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187148%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt187136%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw187147%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar187148%_
                                                             '()))
                                                 '()))))))
                 _%kwargs187124%_
                 _%kwvars187140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs187155%_
                                                    (map (lambda (_%kw187152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187153%_)
                   (cons (car _%kw187152%_)
                         (cons '%#ref (cons _%kwvar187153%_ '()))))
                 _%kwargs187124%_
                 _%kwvars187140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs187163%_
                                                    (map (lambda (_%key187157%_)
                                                           (let ((_%$e187159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key187157%_ _%xkwargs187155%_))))
                     (if _%$e187159%_ _%$e187159%_ '(%#ref absent-value))))
                 _%keys187121%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190290
                                                    (let ((__tmp190291
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind187145%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt187136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp190292
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs187124%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190292 _%stx187068%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp190293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp190294
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main187120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt187136%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs187123%_ _%xargs187163%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190294
                                     _%stx187068%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp190293 _%kwset187150%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190291 _%stx187068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx187067%_
                                               __tmp190290))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g187099187109%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e187104187169%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187099187109%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e187105187172%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187099187109%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e187106187175%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187099187109%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys187178%_ _%e187106187175%_)
                                   (_%e187107187180%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187099187109%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main187183%_ _%e187107187180%_))
                              (_%K187103187166%_
                               _%main187183%_
                               _%keys187178%_))
                            (_%else187101187117%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx187067%_ _%stx187068%_))))))
          (if '#t
              (let* ((_%e187085187188%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187081187090%_
                         '1
                         '#f
                         '#f)))
                     (_%e187086187191%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187081187090%_
                         '2
                         '#f
                         '#f)))
                     (_%e187087187194%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187081187090%_
                         '3
                         '#f
                         '#f)))
                     (_%table187197%_ _%e187087187194%_)
                     (_%e187088187199%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187081187090%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187202%_ _%e187088187199%_))
                (_%K187084187185%_ _%dispatch187202%_ _%table187197%_))
              (_%E187083187094%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186679%_ _%args186680%_)
        (let _%lp186682%_ ((_%rest186684%_ _%args186680%_)
                           (_%pargs186685%_ '())
                           (_%kwargs186686%_ '()))
          (let* ((_%__stx190026190027%_ _%rest186684%_)
                 (_%g186692186744%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190026190027%_)))))
            (let ((_%__kont190028190029%_
                   (lambda (_%L186923%_ _%L186924%_)
                     (_%lp186682%_
                      _%L186923%_
                      (cons _%L186924%_ _%pargs186685%_)
                      _%kwargs186686%_)))
                  (_%__kont190030190031%_
                   (lambda (_%L186869%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186869%_ _%pargs186685%_))
                             (reverse _%kwargs186686%_))))
                  (_%__kont190032190033%_
                   (lambda (_%L186816%_ _%L186817%_ _%L186818%_)
                     (let ((_%kw186835%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186818%_))))
                       (if (assq _%kw186835%_ _%kwargs186686%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186679%_
                              _%kw186835%_))
                           (_%lp186682%_
                            _%L186816%_
                            _%pargs186685%_
                            (cons (cons _%kw186835%_ _%L186817%_)
                                  _%kwargs186686%_))))))
                  (_%__kont190034190035%_
                   (lambda (_%L186764%_ _%L186765%_)
                     (_%lp186682%_
                      _%L186764%_
                      (cons _%L186765%_ _%pargs186685%_)
                      _%kwargs186686%_)))
                  (_%__kont190036190037%_
                   (lambda ()
                     (values (reverse _%pargs186685%_)
                             (reverse _%kwargs186686%_)))))
              (let ((_%__match190133190134%_
                     (lambda (_%e186723186784%_
                              _%hd186724186787%_
                              _%tl186725186789%_
                              _%e186726186792%_
                              _%hd186727186795%_
                              _%tl186728186797%_
                              _%e186729186800%_
                              _%hd186730186803%_
                              _%tl186731186805%_
                              _%e186732186808%_
                              _%hd186733186811%_
                              _%tl186734186813%_)
                       (let ((_%L186816%_ _%tl186734186813%_)
                             (_%L186817%_ _%hd186733186811%_)
                             (_%L186818%_ _%hd186730186803%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186818%_))
                             (_%__kont190032190033%_
                              _%L186816%_
                              _%L186817%_
                              _%L186818%_)
                             (_%__kont190034190035%_
                              _%tl186725186789%_
                              _%hd186724186787%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190026190027%_))
                    (let ((_%e186696186888%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190026190027%_))))
                      (let ((_%tl186698186893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186696186888%_)))
                            (_%hd186697186891%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186696186888%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186697186891%_))
                            (let ((_%e186699186896%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186697186891%_))))
                              (let ((_%tl186701186901%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186699186896%_)))
                                    (_%hd186700186899%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186699186896%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186700186899%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186700186899%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186701186901%_))
                                            (let ((_%e186702186904%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186701186901%_))))
                                              (let ((_%tl186704186909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186702186904%_)))
                                                    (_%hd186703186907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186702186904%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186703186907%_))
                                                    (let ((_%e186705186912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186703186907%_))))
                                                      (if (equal? _%e186705186912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186704186909%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186698186893%_))
                          (let ((_%e186706186915%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186698186893%_))))
                            (let ((_%tl186708186920%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186706186915%_)))
                                  (_%hd186707186918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186706186915%_))))
                              (_%__kont190028190029%_
                               _%tl186708186920%_
                               _%hd186707186918%_)))
                          (_%__kont190034190035%_
                           _%tl186698186893%_
                           _%hd186697186891%_))
                      (_%__kont190034190035%_
                       _%tl186698186893%_
                       _%hd186697186891%_))
                  (if (equal? _%e186705186912%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186704186909%_))
                          (_%__kont190030190031%_ _%tl186698186893%_)
                          (_%__kont190034190035%_
                           _%tl186698186893%_
                           _%hd186697186891%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186704186909%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186698186893%_))
                              (let ((_%e186732186808%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186698186893%_))))
                                (let ((_%tl186734186813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186732186808%_)))
                                      (_%hd186733186811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186732186808%_))))
                                  (_%__match190133190134%_
                                   _%e186696186888%_
                                   _%hd186697186891%_
                                   _%tl186698186893%_
                                   _%e186699186896%_
                                   _%hd186700186899%_
                                   _%tl186701186901%_
                                   _%e186702186904%_
                                   _%hd186703186907%_
                                   _%tl186704186909%_
                                   _%e186732186808%_
                                   _%hd186733186811%_
                                   _%tl186734186813%_)))
                              (_%__kont190034190035%_
                               _%tl186698186893%_
                               _%hd186697186891%_))
                          (_%__kont190034190035%_
                           _%tl186698186893%_
                           _%hd186697186891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186704186909%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186698186893%_))
                                                            (let ((_%e186732186808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186698186893%_))))
                      (let ((_%tl186734186813%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186732186808%_)))
                            (_%hd186733186811%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186732186808%_))))
                        (_%__match190133190134%_
                         _%e186696186888%_
                         _%hd186697186891%_
                         _%tl186698186893%_
                         _%e186699186896%_
                         _%hd186700186899%_
                         _%tl186701186901%_
                         _%e186702186904%_
                         _%hd186703186907%_
                         _%tl186704186909%_
                         _%e186732186808%_
                         _%hd186733186811%_
                         _%tl186734186813%_)))
                    (_%__kont190034190035%_
                     _%tl186698186893%_
                     _%hd186697186891%_))
                (_%__kont190034190035%_
                 _%tl186698186893%_
                 _%hd186697186891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190034190035%_
                                             _%tl186698186893%_
                                             _%hd186697186891%_))
                                        (_%__kont190034190035%_
                                         _%tl186698186893%_
                                         _%hd186697186891%_))
                                    (_%__kont190034190035%_
                                     _%tl186698186893%_
                                     _%hd186697186891%_))))
                            (_%__kont190034190035%_
                             _%tl186698186893%_
                             _%hd186697186891%_))))
                    (_%__kont190036190037%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186663%_ _%ctx186664%_ _%stx186665%_ _%args186666%_)
        (let ((_%self186669%_ _%self186663%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186664%_ _%stx186665%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186351%_ _%stx186352%_)
        (let* ((_%__stx190142190143%_ _%stx186352%_)
               (_%g186355186395%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190142190143%_)))))
          (let ((_%__kont190144190145%_
                 (lambda (_%L186501%_ _%L186502%_)
                   (let ((_%$e186529%_
                          (member 'return:
                                  (let ((__tmp190295
                                         (lambda (_%g186521186524%_
                                                  _%g186522186526%_)
                                           (cons _%g186521186524%_
                                                 _%g186522186526%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190295 '() _%L186502%_))
                                  gx#stx-eq?)))
                     (if _%$e186529%_
                         ((lambda (_%tail186532%_)
                            (let ((_%type186534%_
                                   (let ((__tmp190296
                                          (let ((__tmp190297
                                                 (cadr _%tail186532%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190297))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186352%_
                                      __tmp190296))))
                              (gxc#check-return-type!
                               _%stx186352%_
                               _%L186501%_
                               _%type186534%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186351%_
                                 _%L186501%_))))
                          _%$e186529%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186351%_ _%L186501%_))))))
                (_%__kont190148190149%_
                 (lambda (_%L186424%_ _%L186425%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186351%_ _%L186424%_)))))
            (let ((_%__match190179190180%_
                   (lambda (_%e186359186445%_
                            _%hd186360186448%_
                            _%tl186361186450%_
                            _%e186362186453%_
                            _%hd186363186456%_
                            _%tl186364186458%_
                            _%e186365186461%_
                            _%hd186366186464%_
                            _%tl186367186466%_
                            _%__splice190146190147%_
                            _%target186368186469%_
                            _%tl186370186471%_)
                     (letrec ((_%loop186371186474%_
                               (lambda (_%hd186369186477%_
                                        _%signature186375186479%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186369186477%_))
                                     (let ((_%e186372186482%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186369186477%_))))
                                       (let ((_%lp-tl186374186487%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186372186482%_)))
                                             (_%lp-hd186373186485%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186372186482%_))))
                                         (_%loop186371186474%_
                                          _%lp-tl186374186487%_
                                          (cons _%lp-hd186373186485%_
                                                _%signature186375186479%_))))
                                     (let ((_%signature186376186490%_
                                            (reverse _%signature186375186479%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186364186458%_))
                                           (let ((_%e186377186493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186364186458%_))))
                                             (let ((_%tl186379186498%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186377186493%_)))
                                                   (_%hd186378186496%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186377186493%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186379186498%_))
                                                   (_%__kont190144190145%_
                                                    _%hd186378186496%_
                                                    _%signature186376186490%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186355186395%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186355186395%_))))))))
                       (_%loop186371186474%_ _%target186368186469%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190142190143%_))
                  (let ((_%e186359186445%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190142190143%_))))
                    (let ((_%tl186361186450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186359186445%_)))
                          (_%hd186360186448%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186359186445%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186361186450%_))
                          (let ((_%e186362186453%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186361186450%_))))
                            (let ((_%tl186364186458%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186362186453%_)))
                                  (_%hd186363186456%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186362186453%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186363186456%_))
                                  (let ((_%e186365186461%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186363186456%_))))
                                    (let ((_%tl186367186466%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186365186461%_)))
                                          (_%hd186366186464%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186365186461%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186366186464%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186366186464%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186367186466%_))
                                                  (let ((_%__splice190146190147%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186367186466%_
                                                            '0))))
                                                    (let ((_%tl186370186471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190146190147%_
                                                              '1)))
                                                          (_%target186368186469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190146190147%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186370186471%_))
                                                          (_%__match190179190180%_
                                                           _%e186359186445%_
                                                           _%hd186360186448%_
                                                           _%tl186361186450%_
                                                           _%e186362186453%_
                                                           _%hd186363186456%_
                                                           _%tl186364186458%_
                                                           _%e186365186461%_
                                                           _%hd186366186464%_
                                                           _%tl186367186466%_
                                                           _%__splice190146190147%_
                                                           _%target186368186469%_
                                                           _%tl186370186471%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186364186458%_))
                      (let ((_%e186388186416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186364186458%_))))
                        (let ((_%tl186390186421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186388186416%_)))
                              (_%hd186389186419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186388186416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186390186421%_))
                              (_%__kont190148190149%_
                               _%hd186389186419%_
                               _%hd186363186456%_)
                              (let ()
                                (declare (not safe))
                                (_%g186355186395%_)))))
                      (let () (declare (not safe)) (_%g186355186395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186364186458%_))
                                                      (let ((_%e186388186416%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186364186458%_))))
                (let ((_%tl186390186421%_
                       (let () (declare (not safe)) (##cdr _%e186388186416%_)))
                      (_%hd186389186419%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186388186416%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186390186421%_))
                      (_%__kont190148190149%_
                       _%hd186389186419%_
                       _%hd186363186456%_)
                      (let () (declare (not safe)) (_%g186355186395%_)))))
              (let () (declare (not safe)) (_%g186355186395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186364186458%_))
                                                  (let ((_%e186388186416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186364186458%_))))
                                                    (let ((_%tl186390186421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186388186416%_)))
                                                          (_%hd186389186419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186388186416%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186390186421%_))
                                                          (_%__kont190148190149%_
                                                           _%hd186389186419%_
                                                           _%hd186363186456%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186355186395%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186355186395%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186364186458%_))
                                              (let ((_%e186388186416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186364186458%_))))
                                                (let ((_%tl186390186421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186388186416%_)))
                                                      (_%hd186389186419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186388186416%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186390186421%_))
                                                      (_%__kont190148190149%_
                                                       _%hd186389186419%_
                                                       _%hd186363186456%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186355186395%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186355186395%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186364186458%_))
                                      (let ((_%e186388186416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186364186458%_))))
                                        (let ((_%tl186390186421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186388186416%_)))
                                              (_%hd186389186419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186388186416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186390186421%_))
                                              (_%__kont190148190149%_
                                               _%hd186389186419%_
                                               _%hd186363186456%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186355186395%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186355186395%_))))))
                          (let () (declare (not safe)) (_%g186355186395%_)))))
                  (let () (declare (not safe)) (_%g186355186395%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186329%_ _%expr186330%_ _%type186331%_)
        (let ((_%$e186333%_ (not _%type186331%_)))
          (if _%$e186333%_
              _%$e186333%_
              (let ((_%$e186336%_
                     (eq? (##structure-ref _%type186331%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186336%_
                    _%$e186336%_
                    (let ((_%expr-type186340%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186330%_))))
                      (if (not _%expr-type186340%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186329%_
                             _%type186331%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186340%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186329%_
                                 _%type186331%_
                                 _%expr-type186340%_))
                              (let ((_%$e186344%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186340%_
                                        'gxc#!abort::t))))
                                (if _%$e186344%_
                                    _%$e186344%_
                                    (let ((_%$e186347%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186340%_
                                              _%type186331%_))))
                                      (if _%$e186347%_
                                          _%$e186347%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186329%_
                                             _%type186331%_
                                             _%expr-type186340%_)))))))))))))))))
