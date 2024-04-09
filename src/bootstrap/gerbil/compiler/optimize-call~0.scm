(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712697262)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190167 (list gxc#::basic-xform::t))
            (__tmp190166 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190167
         '()
         __tmp190166
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189716%_
        (apply make-instance gxc#::optimize-call::t _%$args189716%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190168
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
        (__make-promise __tmp190168)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189708%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189711%_
                (let ((__obj190158
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190158))
               (__tmp190169
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189711%_ _%stx189708%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190169
           gxc#current-compile-method
           _%self189711%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190171 (list gxc#::void::t))
            (__tmp190170 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190171
         '()
         __tmp190170
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189705%_
        (apply make-instance gxc#::check-return-type::t _%$args189705%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190172
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
        (__make-promise __tmp190172)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189697%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189700%_
                (let ((__obj190160
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190160))
               (__tmp190173
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189700%_ _%stx189697%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190173
           gxc#current-compile-method
           _%self189700%_))))
    (define gxc#optimize-call%
      (lambda (_%self189298%_ _%stx189299%_)
        (let* ((_%__stx189771189772%_ _%stx189299%_)
               (_%g189302189348%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189771189772%_)))))
          (let ((_%__kont189773189774%_
                 (lambda (_%L189491%_ _%L189492%_)
                   (let* ((_%rator-id189512%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189492%_)))
                          (_%rator-type189514%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189512%_))))
                     (if (or (not _%rator-type189514%_)
                             (eq? (##structure-ref
                                   _%rator-type189514%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189298%_ _%stx189299%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189514%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190174
                                      (##structure-ref
                                       _%rator-type189514%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189512%_
                                  '" => "
                                  _%rator-type189514%_
                                  '" "
                                  __tmp190174))
                               (let* ((_%optimized189529%_
                                       (let ((__method190161
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189514%_
                                                 'optimize-call))))
                                         (if __method190161
                                             (__method190161
                                              _%rator-type189514%_
                                              _%self189298%_
                                              _%stx189299%_
                                              (let ((__tmp190175
                                                     (lambda (_%g189521189524%_
                                                              _%g189522189526%_)
                                                       (cons _%g189521189524%_
                                                             _%g189522189526%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190175
                                                 '()
                                                 _%L189491%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189514%_
                                                      'optimize-call)))))
                                      (_%__stx189719189720%_
                                       _%optimized189529%_)
                                      (_%g189532189561%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189719189720%_)))))
                                 (let ((_%__kont189721189722%_
                                        (lambda (_%L189629%_ _%L189630%_)
                                          (let* ((_%optimized-rator-id189657%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L189630%_)))
                                                 (_%rator-type189662%_
                                                  (let ((_%$e189659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id189657%_))))
                                                    (if _%$e189659%_
                                                        _%$e189659%_
                                                        _%rator-type189514%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type189662%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189657%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type189662%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type189662%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized189529%_
                                                (let ((__tmp190176
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L189630%_ '()))
                           (let ((__tmp190177
                                  (lambda (_%g189670189673%_ _%g189671189675%_)
                                    (cons _%g189670189673%_
                                          _%g189671189675%_))))
                             (declare (not safe))
                             (__foldr1 __tmp190177 '() _%L189629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190176
                                                   _%stx189299%_))))))
                                       (_%__kont189725189726%_
                                        (lambda () _%optimized189529%_)))
                                   (let ((_%__match189768189769%_
                                          (lambda (_%e189536189573%_
                                                   _%hd189537189576%_
                                                   _%tl189538189578%_
                                                   _%e189539189581%_
                                                   _%hd189540189584%_
                                                   _%tl189541189586%_
                                                   _%e189542189589%_
                                                   _%hd189543189592%_
                                                   _%tl189544189594%_
                                                   _%e189545189597%_
                                                   _%hd189546189600%_
                                                   _%tl189547189602%_
                                                   _%__splice189723189724%_
                                                   _%target189548189605%_
                                                   _%tl189550189607%_)
                                            (letrec ((_%loop189551189610%_
                                                      (lambda (_%hd189549189613%_
                                                               _%arg189555189615%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189549189613%_))
                                                            (let ((_%e189552189618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189549189613%_))))
                      (let ((_%lp-tl189554189623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189552189618%_)))
                            (_%lp-hd189553189621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189552189618%_))))
                        (_%loop189551189610%_
                         _%lp-tl189554189623%_
                         (cons _%lp-hd189553189621%_ _%arg189555189615%_))))
                    (let ((_%arg189556189626%_ (reverse _%arg189555189615%_)))
                      (_%__kont189721189722%_
                       _%arg189556189626%_
                       _%hd189546189600%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop189551189610%_
                                               _%target189548189605%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189719189720%_))
                                         (let ((_%e189536189573%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189719189720%_))))
                                           (let ((_%tl189538189578%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189536189573%_)))
                                                 (_%hd189537189576%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189536189573%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189537189576%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189537189576%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189538189578%_))
                                                         (let ((_%e189539189581%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189538189578%_))))
                   (let ((_%tl189541189586%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189539189581%_)))
                         (_%hd189540189584%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189539189581%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189540189584%_))
                         (let ((_%e189542189589%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189540189584%_))))
                           (let ((_%tl189544189594%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189542189589%_)))
                                 (_%hd189543189592%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189542189589%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189543189592%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189543189592%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189544189594%_))
                                         (let ((_%e189545189597%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189544189594%_))))
                                           (let ((_%tl189547189602%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189545189597%_)))
                                                 (_%hd189546189600%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189545189597%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189547189602%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189541189586%_))
                                                     (let ((_%__splice189723189724%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189541189586%_
                                                               '0))))
                                                       (let ((_%tl189550189607%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189723189724%_ '1)))
                     (_%target189548189605%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189723189724%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189550189607%_))
                     (_%__match189768189769%_
                      _%e189536189573%_
                      _%hd189537189576%_
                      _%tl189538189578%_
                      _%e189539189581%_
                      _%hd189540189584%_
                      _%tl189541189586%_
                      _%e189542189589%_
                      _%hd189543189592%_
                      _%tl189544189594%_
                      _%e189545189597%_
                      _%hd189546189600%_
                      _%tl189547189602%_
                      _%__splice189723189724%_
                      _%target189548189605%_
                      _%tl189550189607%_)
                     (_%__kont189725189726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189725189726%_))
                                                 (_%__kont189725189726%_))))
                                         (_%__kont189725189726%_))
                                     (_%__kont189725189726%_))
                                 (_%__kont189725189726%_))))
                         (_%__kont189725189726%_))))
                 (_%__kont189725189726%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189725189726%_))
                                                 (_%__kont189725189726%_))))
                                         (_%__kont189725189726%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189514%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189514%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190178
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L189492%_
                                                                '()))
                                                    (map (lambda (_%g189681189683%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self189298%_
                                                              _%g189681189683%_)))
                                                         (let ((__tmp190179
                                                                (lambda (_%g189685189688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g189686189690%_)
                          (cons _%g189685189688%_ _%g189686189690%_))))
                   (declare (not safe))
                   (__foldr1 __tmp190179 '() _%L189491%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190178
                                    _%stx189299%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189299%_
                                    _%rator-type189514%_))))))))
                (_%__kont189777189778%_
                 (lambda (_%L189393%_ _%L189394%_)
                   (let ((_%rator-type189411%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189394%_))))
                     (if (and _%rator-type189411%_
                              (eq? (##structure-ref
                                    _%rator-type189411%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type189411%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type189411%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type189411%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp190180
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self189298%_
                                               _%L189394%_))
                                            (map (lambda (_%g189413189415%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189298%_
                                                      _%g189413189415%_)))
                                                 (let ((__tmp190181
                                                        (lambda (_%g189417189420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g189418189422%_)
                  (cons _%g189417189420%_ _%g189418189422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp190181
                                                    '()
                                                    _%L189393%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190180 _%stx189299%_))
                         (if (or (not _%rator-type189411%_)
                                 (let ((__tmp190182
                                        (##structure-ref
                                         _%rator-type189411%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190182 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189298%_ _%stx189299%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189299%_
                                _%rator-type189411%_))))))))
            (let* ((_%__match189838189839%_
                    (lambda (_%e189329189353%_
                             _%hd189330189356%_
                             _%tl189331189358%_
                             _%e189332189361%_
                             _%hd189333189364%_
                             _%tl189334189366%_
                             _%__splice189779189780%_
                             _%target189335189369%_
                             _%tl189337189371%_)
                      (letrec ((_%loop189338189374%_
                                (lambda (_%hd189336189377%_
                                         _%rand189342189379%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189336189377%_))
                                      (let ((_%e189339189382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189336189377%_))))
                                        (let ((_%lp-tl189341189387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189339189382%_)))
                                              (_%lp-hd189340189385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189339189382%_))))
                                          (_%loop189338189374%_
                                           _%lp-tl189341189387%_
                                           (cons _%lp-hd189340189385%_
                                                 _%rand189342189379%_))))
                                      (let ((_%rand189343189390%_
                                             (reverse _%rand189342189379%_)))
                                        (_%__kont189777189778%_
                                         _%rand189343189390%_
                                         _%hd189333189364%_))))))
                        (_%loop189338189374%_ _%target189335189369%_ '()))))
                   (_%__match189818189819%_
                    (lambda (_%e189306189435%_
                             _%hd189307189438%_
                             _%tl189308189440%_
                             _%e189309189443%_
                             _%hd189310189446%_
                             _%tl189311189448%_
                             _%e189312189451%_
                             _%hd189313189454%_
                             _%tl189314189456%_
                             _%e189315189459%_
                             _%hd189316189462%_
                             _%tl189317189464%_
                             _%__splice189775189776%_
                             _%target189318189467%_
                             _%tl189320189469%_)
                      (letrec ((_%loop189321189472%_
                                (lambda (_%hd189319189475%_
                                         _%rand189325189477%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189319189475%_))
                                      (let ((_%e189322189480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189319189475%_))))
                                        (let ((_%lp-tl189324189485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189322189480%_)))
                                              (_%lp-hd189323189483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189322189480%_))))
                                          (_%loop189321189472%_
                                           _%lp-tl189324189485%_
                                           (cons _%lp-hd189323189483%_
                                                 _%rand189325189477%_))))
                                      (let ((_%rand189326189488%_
                                             (reverse _%rand189325189477%_)))
                                        (_%__kont189773189774%_
                                         _%rand189326189488%_
                                         _%hd189316189462%_))))))
                        (_%loop189321189472%_ _%target189318189467%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189771189772%_))
                  (let ((_%e189306189435%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189771189772%_))))
                    (let ((_%tl189308189440%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189306189435%_)))
                          (_%hd189307189438%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189306189435%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189308189440%_))
                          (let ((_%e189309189443%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189308189440%_))))
                            (let ((_%tl189311189448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189309189443%_)))
                                  (_%hd189310189446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189309189443%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189310189446%_))
                                  (let ((_%e189312189451%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189310189446%_))))
                                    (let ((_%tl189314189456%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189312189451%_)))
                                          (_%hd189313189454%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189312189451%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189313189454%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189313189454%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189314189456%_))
                                                  (let ((_%e189315189459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189314189456%_))))
                                                    (let ((_%tl189317189464%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189315189459%_)))
                                                          (_%hd189316189462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189315189459%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189317189464%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189311189448%_))
                      (let ((_%__splice189775189776%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189311189448%_
                                '0))))
                        (let ((_%tl189320189469%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189775189776%_ '1)))
                              (_%target189318189467%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189775189776%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189320189469%_))
                              (_%__match189818189819%_
                               _%e189306189435%_
                               _%hd189307189438%_
                               _%tl189308189440%_
                               _%e189309189443%_
                               _%hd189310189446%_
                               _%tl189311189448%_
                               _%e189312189451%_
                               _%hd189313189454%_
                               _%tl189314189456%_
                               _%e189315189459%_
                               _%hd189316189462%_
                               _%tl189317189464%_
                               _%__splice189775189776%_
                               _%target189318189467%_
                               _%tl189320189469%_)
                              (let ()
                                (declare (not safe))
                                (_%g189302189348%_)))))
                      (let () (declare (not safe)) (_%g189302189348%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189311189448%_))
                      (let ((_%__splice189779189780%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189311189448%_
                                '0))))
                        (let ((_%tl189337189371%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189779189780%_ '1)))
                              (_%target189335189369%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189779189780%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189337189371%_))
                              (_%__match189838189839%_
                               _%e189306189435%_
                               _%hd189307189438%_
                               _%tl189308189440%_
                               _%e189309189443%_
                               _%hd189310189446%_
                               _%tl189311189448%_
                               _%__splice189779189780%_
                               _%target189335189369%_
                               _%tl189337189371%_)
                              (let ()
                                (declare (not safe))
                                (_%g189302189348%_)))))
                      (let () (declare (not safe)) (_%g189302189348%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189311189448%_))
                                                      (let ((_%__splice189779189780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189311189448%_ '0))))
                (let ((_%tl189337189371%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189779189780%_ '1)))
                      (_%target189335189369%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189779189780%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189337189371%_))
                      (_%__match189838189839%_
                       _%e189306189435%_
                       _%hd189307189438%_
                       _%tl189308189440%_
                       _%e189309189443%_
                       _%hd189310189446%_
                       _%tl189311189448%_
                       _%__splice189779189780%_
                       _%target189335189369%_
                       _%tl189337189371%_)
                      (let () (declare (not safe)) (_%g189302189348%_)))))
              (let () (declare (not safe)) (_%g189302189348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189311189448%_))
                                                  (let ((_%__splice189779189780%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189311189448%_
                                                            '0))))
                                                    (let ((_%tl189337189371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189779189780%_
                                                              '1)))
                                                          (_%target189335189369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189779189780%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189337189371%_))
                                                          (_%__match189838189839%_
                                                           _%e189306189435%_
                                                           _%hd189307189438%_
                                                           _%tl189308189440%_
                                                           _%e189309189443%_
                                                           _%hd189310189446%_
                                                           _%tl189311189448%_
                                                           _%__splice189779189780%_
                                                           _%target189335189369%_
                                                           _%tl189337189371%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189302189348%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189302189348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189311189448%_))
                                              (let ((_%__splice189779189780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189311189448%_
                                                        '0))))
                                                (let ((_%tl189337189371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189779189780%_
                                                          '1)))
                                                      (_%target189335189369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189779189780%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189337189371%_))
                                                      (_%__match189838189839%_
                                                       _%e189306189435%_
                                                       _%hd189307189438%_
                                                       _%tl189308189440%_
                                                       _%e189309189443%_
                                                       _%hd189310189446%_
                                                       _%tl189311189448%_
                                                       _%__splice189779189780%_
                                                       _%target189335189369%_
                                                       _%tl189337189371%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189302189348%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189302189348%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189311189448%_))
                                      (let ((_%__splice189779189780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189311189448%_
                                                '0))))
                                        (let ((_%tl189337189371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189779189780%_
                                                  '1)))
                                              (_%target189335189369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189779189780%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189337189371%_))
                                              (_%__match189838189839%_
                                               _%e189306189435%_
                                               _%hd189307189438%_
                                               _%tl189308189440%_
                                               _%e189309189443%_
                                               _%hd189310189446%_
                                               _%tl189311189448%_
                                               _%__splice189779189780%_
                                               _%target189335189369%_
                                               _%tl189337189371%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189302189348%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189302189348%_))))))
                          (let () (declare (not safe)) (_%g189302189348%_)))))
                  (let () (declare (not safe)) (_%g189302189348%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189260%_ _%ctx189261%_ _%stx189262%_ _%args189263%_)
        (let ((_%self189266%_ _%self189260%_))
          (if (let ((__method190162
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189266%_ 'check-arguments))))
                (if __method190162
                    (__method190162
                     _%self189266%_
                     _%ctx189261%_
                     _%stx189262%_
                     _%args189263%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self189266%_
                             'check-arguments))))
              (let* ((_%signature189276%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189266%_ '2 '#f '#f)))
                     (_%signature189278%_ _%signature189276%_)
                     (_%$e189288%_
                      (if _%signature189278%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189278%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189288%_
                    ((lambda (_%unchecked189291%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189291%_))
                           (let ((__tmp190183
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked189291%_
                                                          '()))
                                              (map (lambda (_%g189292189294%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189261%_
                                                        _%g189292189294%_)))
                                                   _%args189263%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190183 _%stx189262%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189261%_ _%stx189262%_))))
                     _%$e189288%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189261%_ _%stx189262%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189261%_ _%stx189262%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self189011%_ _%ctx189012%_ _%stx189013%_ _%args189014%_)
        (let* ((_%self189017%_ _%self189011%_)
               (_%signature189026189028%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self189017%_ '2 '#f '#f))))
          (if _%signature189026189028%_
              (let* ((_%signature189031%_ _%signature189026189028%_)
                     (_%argument-types189032189034%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature189031%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types189032189034%_
                    (let* ((_%argument-types189037%_
                            _%argument-types189032189034%_)
                           (_%argument-types189042%_
                            (let ((__tmp190184
                                   (lambda (_%t189040%_)
                                     (if _%t189040%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189013%_
                                            _%t189040%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp190184
                               _%argument-types189037%_))))
                      (let _%loop189044%_ ((_%rest-args189046%_ _%args189014%_)
                                           (_%rest-types189047%_
                                            _%argument-types189042%_)
                                           (_%result189048%_ '#t))
                        (let* ((_%rest-args189049189057%_ _%rest-args189046%_)
                               (_%else189051189065%_
                                (lambda () _%result189048%_))
                               (_%K189053189126%_
                                (lambda (_%rest-args189068%_ _%arg189069%_)
                                  (let* ((_%rest-types189070189081%_
                                          _%rest-types189047%_)
                                         (_%E189074189085%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types189070189081%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K189077189114%_
                                           (lambda (_%rest-types189111%_
                                                    _%type189112%_)
                                             (_%loop189044%_
                                              _%rest-args189068%_
                                              _%rest-types189111%_
                                              (if (gxc#check-expression-type!
                                                   _%stx189013%_
                                                   _%arg189069%_
                                                   _%type189112%_)
                                                  _%result189048%_
                                                  '#f))))
                                          (_%K189076189105%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx189013%_
                                                _%argument-types189042%_))))
                                          (_%K189075189095%_
                                           (lambda (_%tail-type189089%_)
                                             (if (let ((__tmp190185
                                                        (lambda (_%g189090189092%_)
                                                          (gxc#check-expression-type!
                                                           _%stx189013%_
                                                           _%g189090189092%_
                                                           _%tail-type189089%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp190185
                                                    _%rest-args189068%_))
                                                 _%result189048%_
                                                 '#f))))
                                      (let ((_%try-match189072189108%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types189070189081%_))
                                                   (_%K189076189105%_)
                                                   (let ((_%tail-type189098%_
                                                          _%rest-types189070189081%_))
                                                     (_%K189075189095%_
                                                      _%tail-type189098%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types189070189081%_))
                                            (let ((_%tl189079189119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types189070189081%_)))
                                                  (_%hd189078189117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types189070189081%_))))
                                              (let ((_%type189122%_
                                                     _%hd189078189117%_)
                                                    (_%rest-types189124%_
                                                     _%tl189079189119%_))
                                                (_%K189077189114%_
                                                 _%rest-types189124%_
                                                 _%type189122%_)))
                                            (_%try-match189072189108%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args189049189057%_))
                              (let ((_%hd189054189129%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args189049189057%_)))
                                    (_%tl189055189131%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args189049189057%_))))
                                (let* ((_%arg189134%_ _%hd189054189129%_)
                                       (_%rest-args189136%_
                                        _%tl189055189131%_))
                                  (_%K189053189126%_
                                   _%rest-args189136%_
                                   _%arg189134%_)))
                              (_%else189051189065%_)))))
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
      (lambda (_%self188822%_ _%ctx188823%_ _%stx188824%_ _%args188825%_)
        (let* ((_%self188828%_ _%self188822%_)
               (_%g188838188848%_
                (lambda (_%g188839188845%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188839188845%_))))
               (_%g188837188886%_
                (lambda (_%g188839188851%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188839188851%_))
                      (let ((_%e188841188853%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188839188851%_))))
                        (let ((_%hd188842188856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188841188853%_)))
                              (_%tl188843188858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188841188853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188843188858%_))
                              ((lambda (_%L188861%_)
                                 (let* ((_%klass188873%_
                                         (let ((__tmp190186
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188828%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188824%_
                                            __tmp190186)))
                                        (_%object188875%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188823%_
                                            _%L188861%_)))
                                        (_%instance?188880%_
                                         (let ((_%$e188877%_
                                                (gxc#expression-type?
                                                 _%object188875%_
                                                 _%klass188873%_)))
                                           (if _%$e188877%_
                                               _%$e188877%_
                                               (gxc#expression-type?
                                                _%L188861%_
                                                _%klass188873%_)))))
                                   (if _%instance?188880%_
                                       (let ((__tmp190187
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188875%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188861%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188875%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190187
                                          _%stx188824%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx188823%_
                                          _%stx188824%_)))))
                               _%hd188842188856%_)
                              (_%g188838188848%_ _%g188839188851%_))))
                      (_%g188838188848%_ _%g188839188851%_)))))
          (_%g188837188886%_ _%args188825%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188618%_ _%ctx188619%_ _%stx188620%_ _%args188621%_)
        (let* ((_%self188624%_ _%self188618%_)
               (_%g188634188644%_
                (lambda (_%g188635188641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188635188641%_))))
               (_%g188633188697%_
                (lambda (_%g188635188647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188635188647%_))
                      (let ((_%e188637188649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188635188647%_))))
                        (let ((_%hd188638188652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188637188649%_)))
                              (_%tl188639188654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188637188649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188639188654%_))
                              ((lambda (_%L188657%_)
                                 (let* ((_%klass188669%_
                                         (let ((__tmp190188
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188624%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188620%_
                                            __tmp190188)))
                                        (_%object188671%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188619%_
                                            _%L188657%_)))
                                        (_%instance?188676%_
                                         (let ((_%$e188673%_
                                                (gxc#expression-type?
                                                 _%object188671%_
                                                 _%klass188669%_)))
                                           (if _%$e188673%_
                                               _%$e188673%_
                                               (gxc#expression-type?
                                                _%L188657%_
                                                _%klass188669%_))))
                                        (_%klass188679%_ _%klass188669%_))
                                   (if _%instance?188676%_
                                       (let ((__tmp190189
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188671%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188657%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188671%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190189
                                          _%stx188620%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188679%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp190190
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass188679%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object188671%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190190
                                              _%stx188620%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188679%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190191
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188679%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object188671%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190191
                                                  _%stx188620%_))
                                               (let ((__tmp190192
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188624%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188671%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190192
                                                  _%stx188620%_)))))))
                               _%hd188638188652%_)
                              (_%g188634188644%_ _%g188635188647%_))))
                      (_%g188634188644%_ _%g188635188647%_)))))
          (_%g188633188697%_ _%args188621%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188281%_)
        (let* ((_%__stx189848189849%_ _%stx188281%_)
               (_%g188286188327%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189848189849%_)))))
          (let ((_%__kont189850189851%_ (lambda () '#t))
                (_%__kont189852189853%_ (lambda () '#t))
                (_%__kont189854189855%_
                 (lambda (_%L188395%_ _%L188396%_)
                   (let ((_%rator-type188417188419%_
                          (let ((__tmp190193
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188396%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190193))))
                     (if _%rator-type188417188419%_
                         (let* ((_%rator-type188422%_
                                 _%rator-type188417188419%_)
                                (_%rator-signature188423188425%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188422%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188422%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188423188425%_
                               (let* ((_%rator-signature188428%_
                                       _%rator-signature188423188425%_)
                                      (_%rator-effect188429188431%_
                                       (if _%rator-signature188428%_
                                           (##direct-structure-ref
                                            _%rator-signature188428%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188429188431%_
                                     (let ((_%rator-effect188434%_
                                            _%rator-effect188429188431%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188434%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188434%_))
                                           (let ((__tmp190194
                                                  (let ((__tmp190195
                                                         (lambda (_%g188439188442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188440188444%_)
                   (cons _%g188439188442%_ _%g188440188444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190195
                                                     '()
                                                     _%L188395%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190194))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189858189859%_ (lambda () '#f)))
            (let ((_%__match189937189938%_
                   (lambda (_%e188302188339%_
                            _%hd188303188342%_
                            _%tl188304188344%_
                            _%e188305188347%_
                            _%hd188306188350%_
                            _%tl188307188352%_
                            _%e188308188355%_
                            _%hd188309188358%_
                            _%tl188310188360%_
                            _%e188311188363%_
                            _%hd188312188366%_
                            _%tl188313188368%_
                            _%__splice189856189857%_
                            _%target188314188371%_
                            _%tl188316188373%_)
                     (letrec ((_%loop188317188376%_
                               (lambda (_%hd188315188379%_
                                        _%rand188321188381%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188315188379%_))
                                     (let ((_%e188318188384%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188315188379%_))))
                                       (let ((_%lp-tl188320188389%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188318188384%_)))
                                             (_%lp-hd188319188387%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188318188384%_))))
                                         (_%loop188317188376%_
                                          _%lp-tl188320188389%_
                                          (cons _%lp-hd188319188387%_
                                                _%rand188321188381%_))))
                                     (let ((_%rand188322188392%_
                                            (reverse _%rand188321188381%_)))
                                       (_%__kont189854189855%_
                                        _%rand188322188392%_
                                        _%hd188312188366%_))))))
                       (_%loop188317188376%_ _%target188314188371%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189848189849%_))
                  (let ((_%e188288188475%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189848189849%_))))
                    (let ((_%tl188290188480%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188288188475%_)))
                          (_%hd188289188478%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188288188475%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188289188478%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188289188478%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188290188480%_))
                                  (let ((_%e188291188483%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188290188480%_))))
                                    (let ((_%tl188293188488%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188291188483%_)))
                                          (_%hd188292188486%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188291188483%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188293188488%_))
                                          (_%__kont189850189851%_)
                                          (_%__kont189858189859%_))))
                                  (_%__kont189858189859%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188289188478%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188290188480%_))
                                      (let ((_%e188297188460%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188290188480%_))))
                                        (let ((_%tl188299188465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188297188460%_)))
                                              (_%hd188298188463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188297188460%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188299188465%_))
                                              (_%__kont189852189853%_)
                                              (_%__kont189858189859%_))))
                                      (_%__kont189858189859%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188289188478%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188290188480%_))
                                          (let ((_%e188305188347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188290188480%_))))
                                            (let ((_%tl188307188352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188305188347%_)))
                                                  (_%hd188306188350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188305188347%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188306188350%_))
                                                  (let ((_%e188308188355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188306188350%_))))
                                                    (let ((_%tl188310188360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188308188355%_)))
                                                          (_%hd188309188358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188308188355%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188309188358%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188309188358%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188310188360%_))
                          (let ((_%e188311188363%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188310188360%_))))
                            (let ((_%tl188313188368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188311188363%_)))
                                  (_%hd188312188366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188311188363%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188313188368%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188307188352%_))
                                      (let ((_%__splice189856189857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188307188352%_
                                                '0))))
                                        (let ((_%tl188316188373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189856189857%_
                                                  '1)))
                                              (_%target188314188371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189856189857%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188316188373%_))
                                              (_%__match189937189938%_
                                               _%e188288188475%_
                                               _%hd188289188478%_
                                               _%tl188290188480%_
                                               _%e188305188347%_
                                               _%hd188306188350%_
                                               _%tl188307188352%_
                                               _%e188308188355%_
                                               _%hd188309188358%_
                                               _%tl188310188360%_
                                               _%e188311188363%_
                                               _%hd188312188366%_
                                               _%tl188313188368%_
                                               _%__splice189856189857%_
                                               _%target188314188371%_
                                               _%tl188316188373%_)
                                              (_%__kont189858189859%_))))
                                      (_%__kont189858189859%_))
                                  (_%__kont189858189859%_))))
                          (_%__kont189858189859%_))
                      (_%__kont189858189859%_))
                  (_%__kont189858189859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189858189859%_))))
                                          (_%__kont189858189859%_))
                                      (_%__kont189858189859%_))))
                          (_%__kont189858189859%_))))
                  (_%__kont189858189859%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188276%_ _%klass188277%_)
        (let ((_%expr-type188279%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188276%_))))
          (if _%expr-type188279%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188279%_ _%klass188277%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188254%_ _%expr188255%_ _%type188256%_)
        (if (not _%type188256%_)
            '#f
            (let ((_%$e188259%_
                   (eq? (##structure-ref _%type188256%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188259%_
                  _%$e188259%_
                  (let ((_%expr-type188263%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188255%_))))
                    (if (not _%expr-type188263%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188263%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e188267%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188263%_
                                      'gxc#!abort::t))))
                              (if _%$e188267%_
                                  _%$e188267%_
                                  (let ((_%$e188270%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188263%_
                                            _%type188256%_))))
                                    (if _%$e188270%_
                                        _%$e188270%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188256%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188256%_
                                                   _%expr-type188263%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188254%_
                                                   _%expr188255%_
                                                   _%expr-type188263%_
                                                   _%type188256%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188068%_ _%ctx188069%_ _%stx188070%_ _%args188071%_)
        (let* ((_%self188074%_ _%self188068%_)
               (_%klass188084%_
                (let ((__tmp190196
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188074%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx188070%_ __tmp190196)))
               (_%fields188086%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188084%_
                           '5
                           '#f
                           '#f))))
               (_%args188092%_
                (map (lambda (_%g188087188089%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx188069%_ _%g188087188089%_)))
                     _%args188071%_))
               (_%inline-make-object188094%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188074%_
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
                           _%self188074%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields188086%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass188097%_ _%klass188084%_)
               (_%$e188111%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass188097%_ '6 '#f '#f))))
          (if _%$e188111%_
              ((lambda (_%ctor188114%_)
                 (let ((_%$obj188116%_
                        (let ((__tmp190197
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp190197)))
                       (_%ctor-impl188117%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass188097%_
                           _%ctor188114%_))))
                   (let ((__tmp190198
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj188116%_ '())
                                                  (cons _%inline-make-object188094%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl188117%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl188117%_ '()))
                                (cons (cons '%#ref (cons _%$obj188116%_ '()))
                                      _%args188092%_)))
                    (let ((_%$ctor188119%_
                           (let ((__tmp190199
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190199))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor188119%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188074%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj188116%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor188114%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor188119%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor188119%_ '()))
                              (cons (cons '%#ref (cons _%$obj188116%_ '()))
                                    _%args188092%_)))
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
                             _%self188074%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor188114%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj188116%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp190198 _%stx188070%_))))
               _%$e188111%_)
              (let ((_%$e188121%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass188097%_
                        '10
                        '#f
                        '#f))))
                (if _%$e188121%_
                    ((lambda (_%metaclass188124%_)
                       (let* ((_%$obj188126%_
                               (let ((__tmp190200
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190200)))
                              (_%metakons188128%_
                               (let ((__tmp190201
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx188070%_
                                         _%metaclass188124%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp190201
                                  'instance-init!)))
                              (__tmp190202
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj188126%_
                                                             '())
                                                       (cons _%inline-make-object188094%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons188128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons188128%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188074%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj188126%_
                                                             '()))
                                                 _%args188092%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188074%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj188126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args188092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj188126%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190202 _%stx188070%_)))
                     _%$e188121%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188097%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp190203
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args188092%_))))
                              (declare (not safe))
                              (##fx= __tmp190203 _%fields188086%_))
                            (let ((__tmp190204
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188074%_
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
                                              _%self188074%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args188092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190204
                               _%stx188070%_))
                            (let ((__tmp190206
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self188074%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp190205
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass188097%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx188070%_
                               __tmp190206
                               __tmp190205)))
                        (let ((_%$obj188133%_
                               (let ((__tmp190207
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190207))))
                          (let _%lp188135%_ ((_%rest188137%_ _%args188092%_)
                                             (_%initializers188138%_ '()))
                            (let* ((_%__stx189940189941%_ _%rest188137%_)
                                   (_%g188142188163%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx189940189941%_)))))
                              (let ((_%__kont189942189943%_
                                     (lambda (_%L188217%_
                                              _%L188218%_
                                              _%L188219%_)
                                       (let* ((_%slot188246%_
                                               (let ((__tmp190208
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L188219%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp190208)))
                                              (_%off188248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass188097%_
                                                  _%slot188246%_))))
                                         (if _%off188248%_
                                             (_%lp188135%_
                                              _%L188217%_
                                              (cons (cons _%off188248%_
                                                          _%L188218%_)
                                                    _%initializers188138%_))
                                             (let ((__tmp190209
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188074%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx188070%_
                                                __tmp190209
                                                _%slot188246%_))))))
                                    (_%__kont189944189945%_
                                     (lambda ()
                                       (let ((__tmp190210
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188094%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp190213
                                     (cons (cons '%#ref
                                                 (cons _%$obj188133%_ '()))
                                           '()))
                                    (__tmp190211
                                     (let ((__tmp190212
                                            (lambda (_%i188177%_ _%r188178%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188074%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i188177%_) '()))
                              (cons (cons '%#ref (cons _%$obj188133%_ '()))
                                    (cons (cdr _%i188177%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r188178%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp190212
                                        '()
                                        _%initializers188138%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp190213 __tmp190211)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190210
                                          _%stx188070%_))))
                                    (_%__kont189946189947%_
                                     (lambda ()
                                       (let ((__tmp190214
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188094%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args188092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj188133%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190214
                                          _%stx188070%_)))))
                                (let* ((_%g188140188180%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx189940189941%_))
                                              (_%__kont189944189945%_)
                                              (_%__kont189946189947%_))))
                                       (_%__match189977189978%_
                                        (lambda (_%e188147188185%_
                                                 _%hd188148188188%_
                                                 _%tl188149188190%_
                                                 _%e188150188193%_
                                                 _%hd188151188196%_
                                                 _%tl188152188198%_
                                                 _%e188153188201%_
                                                 _%hd188154188204%_
                                                 _%tl188155188206%_
                                                 _%e188156188209%_
                                                 _%hd188157188212%_
                                                 _%tl188158188214%_)
                                          (let ((_%L188217%_
                                                 _%tl188158188214%_)
                                                (_%L188218%_
                                                 _%hd188157188212%_)
                                                (_%L188219%_
                                                 _%hd188154188204%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L188219%_))
                                                (_%__kont189942189943%_
                                                 _%L188217%_
                                                 _%L188218%_
                                                 _%L188219%_)
                                                (_%__kont189946189947%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx189940189941%_))
                                      (let ((_%e188147188185%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx189940189941%_))))
                                        (let ((_%tl188149188190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188147188185%_)))
                                              (_%hd188148188188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188147188185%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd188148188188%_))
                                              (let ((_%e188150188193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd188148188188%_))))
                                                (let ((_%tl188152188198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188150188193%_)))
                                                      (_%hd188151188196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188150188193%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd188151188196%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd188151188196%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188152188198%_))
                      (let ((_%e188153188201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188152188198%_))))
                        (let ((_%tl188155188206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188153188201%_)))
                              (_%hd188154188204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188153188201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188155188206%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188149188190%_))
                                  (let ((_%e188156188209%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188149188190%_))))
                                    (let ((_%tl188158188214%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188156188209%_)))
                                          (_%hd188157188212%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188156188209%_))))
                                      (_%__match189977189978%_
                                       _%e188147188185%_
                                       _%hd188148188188%_
                                       _%tl188149188190%_
                                       _%e188150188193%_
                                       _%hd188151188196%_
                                       _%tl188152188198%_
                                       _%e188153188201%_
                                       _%hd188154188204%_
                                       _%tl188155188206%_
                                       _%e188156188209%_
                                       _%hd188157188212%_
                                       _%tl188158188214%_)))
                                  (_%__kont189946189947%_))
                              (_%__kont189946189947%_))))
                      (_%__kont189946189947%_))
                  (_%__kont189946189947%_))
              (_%__kont189946189947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189946189947%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188140188180%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187851%_ _%ctx187852%_ _%stx187853%_ _%args187854%_)
        (let* ((_%self187857%_ _%self187851%_)
               (_%arguments-ok?187867%_
                (let ((__method190163
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187857%_ 'check-arguments))))
                  (if __method190163
                      (__method190163
                       _%self187857%_
                       _%ctx187852%_
                       _%stx187853%_
                       _%args187854%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187857%_
                               'check-arguments)))))
               (_%g187869187879%_
                (lambda (_%g187870187876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187870187876%_))))
               (_%g187868187943%_
                (lambda (_%g187870187882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187870187882%_))
                      (let ((_%e187872187884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187870187882%_))))
                        (let ((_%hd187873187887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187872187884%_)))
                              (_%tl187874187889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187872187884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187874187889%_))
                              ((lambda (_%L187892%_)
                                 (let* ((_%klass187905%_
                                         (let ((__tmp190215
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187857%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx187853%_
                                            __tmp190215)))
                                        (_%field187907%_
                                         (let ((__tmp190216
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187857%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass187905%_
                                            __tmp190216)))
                                        (_%object187909%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx187852%_
                                            _%L187892%_)))
                                        (_%klass187912%_ _%klass187905%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass187912%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp190217
                                              (cons (if (or _%arguments-ok?187867%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187857%_
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
                                 _%self187857%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field187907%_ '()))
                        (cons _%object187909%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190217
                                          _%stx187853%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass187912%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp190218
                                                  (cons (if (or _%arguments-ok?187867%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187857%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187857%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field187907%_ '()))
                            (cons _%object187909%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190218
                                              _%stx187853%_))
                                           (let ((_%$e187931%_
                                                  (let ((__tmp190219
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self187857%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass187912%_
                                                     __tmp190219))))
                                             (if _%$e187931%_
                                                 ((lambda (_%klass187934%_)
                                                    (let ((__tmp190220
                                                           (cons (if (or _%arguments-ok?187867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187857%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self187857%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field187907%_ '()))
                                     (cons _%object187909%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190220 _%stx187853%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e187931%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187857%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190221
                                                            (let ((_%$obj187940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp190222
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190222))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj187940%_ '())
                                              (cons _%object187909%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass187912%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187940%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187857%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187907%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj187940%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?187867%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187940%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187857%_
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
                                                             _%self187857%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187940%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187857%_
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
               (gxc#xform-wrap-source __tmp190221 _%stx187853%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp190223
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object187909%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187857%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190223 _%stx187853%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd187873187887%_)
                              (_%g187869187879%_ _%g187870187882%_))))
                      (_%g187869187879%_ _%g187870187882%_)))))
          (_%g187868187943%_ _%args187854%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187615%_ _%ctx187616%_ _%stx187617%_ _%args187618%_)
        (let* ((_%self187621%_ _%self187615%_)
               (_%arguments-ok?187631%_
                (let ((__method190164
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187621%_ 'check-arguments))))
                  (if __method190164
                      (__method190164
                       _%self187621%_
                       _%ctx187616%_
                       _%stx187617%_
                       _%args187618%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187621%_
                               'check-arguments)))))
               (_%g187633187647%_
                (lambda (_%g187634187644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187634187644%_))))
               (_%g187632187726%_
                (lambda (_%g187634187650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187634187650%_))
                      (let ((_%e187637187652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187634187650%_))))
                        (let ((_%hd187638187655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187637187652%_)))
                              (_%tl187639187657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187637187652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187639187657%_))
                              (let ((_%e187640187660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187639187657%_))))
                                (let ((_%hd187641187663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187640187660%_)))
                                      (_%tl187642187665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187640187660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187642187665%_))
                                      ((lambda (_%L187668%_ _%L187669%_)
                                         (let* ((_%klass187685%_
                                                 (let ((__tmp190224
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187621%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx187617%_
                                                    __tmp190224)))
                                                (_%field187687%_
                                                 (let ((__tmp190225
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187621%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass187685%_
                                                    __tmp190225)))
                                                (_%object187689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187616%_
                                                    _%L187669%_)))
                                                (_%value187691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187616%_
                                                    _%L187668%_)))
                                                (_%klass187694%_
                                                 _%klass187685%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187694%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190226
                                                      (cons (if (or _%arguments-ok?187631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187621%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187621%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field187687%_ '()))
                                (cons _%object187689%_
                                      (cons _%value187691%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190226
                                                  _%stx187617%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187694%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp190227
                                                          (cons (if (or _%arguments-ok?187631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187621%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187621%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187687%_ '()))
                                    (cons _%object187689%_
                                          (cons _%value187691%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190227
                                                      _%stx187617%_))
                                                   (let ((_%$e187714%_
                                                          (let ((__tmp190228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187621%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187694%_
                     __tmp190228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187714%_
                                                         ((lambda (_%klass187717%_)
                                                            (let ((__tmp190229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187631%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187621%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187621%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187687%_ '()))
                                             (cons _%object187689%_
                                                   (cons _%value187691%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190229 _%stx187617%_)))
                  _%$e187714%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187621%_ '4 '#f '#f))
                     (let ((__tmp190230
                            (let ((_%$obj187723%_
                                   (let ((__tmp190231
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190231))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj187723%_ '())
                                                      (cons _%object187689%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass187694%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj187723%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187621%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field187687%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj187723%_
                                                              '()))
                                                  (cons _%value187691%_
                                                        '())))))
                          (cons (if _%arguments-ok?187631%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187621%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value187691%_ '())))))
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
                             _%self187621%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187723%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187621%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value187691%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190230 _%stx187617%_))
                     (let ((__tmp190232
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object187689%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187621%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value187691%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp190232
                        _%stx187617%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187641187663%_
                                       _%hd187638187655%_)
                                      (_%g187633187647%_ _%g187634187650%_))))
                              (_%g187633187647%_ _%g187634187650%_))))
                      (_%g187633187647%_ _%g187634187650%_)))))
          (_%g187632187726%_ _%args187618%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187430%_ _%ctx187431%_ _%stx187432%_ _%args187433%_)
        (let* ((_%self187436%_ _%self187430%_)
               (_%self187445187455%_ _%self187436%_)
               (_%E187447187459%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187445187455%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K187448187469%_
                (lambda (_%inline187462%_ _%dispatch187463%_ _%arity187464%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self187436%_
                         _%args187433%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx187432%_
                         _%arity187464%_)))
                  (if _%inline187462%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp190233
                               (let ((__tmp190234
                                      (_%inline187462%_ _%stx187432%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190234
                                  _%stx187432%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx187431%_ __tmp190233)))
                      (if (and _%dispatch187463%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch187463%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch187463%_))
                            (let ((__tmp190235
                                   (let ((__tmp190236
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch187463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args187433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp190236
                                      _%stx187432%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx187431%_ __tmp190235)))
                          (gxc#!procedure::optimize-call
                           _%self187436%_
                           _%ctx187431%_
                           _%stx187432%_
                           _%args187433%_))))))
          (if '#t
              (let* ((_%e187449187472%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187445187455%_
                         '1
                         '#f
                         '#f)))
                     (_%e187450187475%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187445187455%_
                         '2
                         '#f
                         '#f)))
                     (_%e187451187478%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187445187455%_
                         '3
                         '#f
                         '#f)))
                     (_%arity187481%_ _%e187451187478%_)
                     (_%e187452187483%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187445187455%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187486%_ _%e187452187483%_)
                     (_%e187453187488%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187445187455%_
                         '5
                         '#f
                         '#f)))
                     (_%inline187491%_ _%e187453187488%_))
                (_%K187448187469%_
                 _%inline187491%_
                 _%dispatch187486%_
                 _%arity187481%_))
              (_%E187447187459%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187282%_ _%ctx187283%_ _%stx187284%_ _%args187285%_)
        (let* ((_%self187288%_ _%self187282%_)
               (_%$e187302%_
                (let ((__tmp190238
                       (lambda (_%g187297187299%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g187297187299%_
                            _%args187285%_))))
                      (__tmp190237
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self187288%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp190238 __tmp190237))))
          (if _%$e187302%_
              ((lambda (_%clause187305%_)
                 (let ((__method190165
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause187305%_ 'optimize-call))))
                   (if __method190165
                       (__method190165
                        _%clause187305%_
                        _%ctx187283%_
                        _%stx187284%_
                        _%args187285%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method"
                                _%clause187305%_
                                'optimize-call)))))
               _%$e187302%_)
              (let ((__tmp190239
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187288%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx187284%_
                 __tmp190239))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187022%_ _%ctx187023%_ _%stx187024%_ _%args187025%_)
        (let* ((_%self187028%_ _%self187022%_)
               (_%self187037187046%_ _%self187028%_)
               (_%E187039187050%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187037187046%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K187040187141%_
                (lambda (_%dispatch187053%_ _%table187054%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch187053%_))
                      (let* ((_%g187055187065%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch187053%_)))
                             (_%else187057187073%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch187053%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx187023%_
                                   _%stx187024%_))))
                             (_%K187059187122%_
                              (lambda (_%main187076%_ _%keys187077%_)
                                (let ((_g190240_
                                       (gxc#!kw-lambda-split-args
                                        _%stx187024%_
                                        _%args187025%_)))
                                  (begin
                                    (let ((_g190241_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190240_)
                                                 (##vector-length _g190240_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190241_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190241_)))
                                    (let ((_%pargs187079%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190240_ 0)))
                                          (_%kwargs187080%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190240_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main187076%_))
                                        (if _%table187054%_
                                            (let ((_%xargs187088%_
                                                   (map (lambda (_%key187082%_)
                                                          (let ((_%$e187084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key187082%_ _%kwargs187080%_))))
                    (if _%$e187084%_ _%$e187084%_ '(%#ref absent-value))))
                _%keys187077%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw187090%_)
                                                 (if (memq (car _%kw187090%_)
                                                           _%keys187077%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx187024%_
                                                        _%keys187077%_
                                                        _%kw187090%_))))
                                               _%kwargs187080%_)
                                              (let ((__tmp190242
                                                     (let ((__tmp190243
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main187076%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs187079%_
                                         _%xargs187088%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190243 _%stx187024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx187023%_
                                                 __tmp190242)))
                                            (let* ((_%kwt187092%_
                                                    (let ((__tmp190244
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp190244)))
                                                   (_%kwvars187096%_
                                                    (map (lambda (_%_187094%_)
                                                           (let ((__tmp190245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp190245)))
                 _%kwargs187080%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind187101%_
                                                    (map (lambda (_%kw187098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187099%_)
                   (cons (cons _%kwvar187099%_ '())
                         (cons (cdr _%kw187098%_) '())))
                 _%kwargs187080%_
                 _%kwvars187096%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset187106%_
                                                    (map (lambda (_%kw187103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187104%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt187092%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw187103%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar187104%_
                                                             '()))
                                                 '()))))))
                 _%kwargs187080%_
                 _%kwvars187096%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs187111%_
                                                    (map (lambda (_%kw187108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187109%_)
                   (cons (car _%kw187108%_)
                         (cons '%#ref (cons _%kwvar187109%_ '()))))
                 _%kwargs187080%_
                 _%kwvars187096%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs187119%_
                                                    (map (lambda (_%key187113%_)
                                                           (let ((_%$e187115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key187113%_ _%xkwargs187111%_))))
                     (if _%$e187115%_ _%$e187115%_ '(%#ref absent-value))))
                 _%keys187077%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190246
                                                    (let ((__tmp190247
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind187101%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt187092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp190248
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs187080%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190248 _%stx187024%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp190249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp190250
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main187076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt187092%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs187079%_ _%xargs187119%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190250
                                     _%stx187024%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp190249 _%kwset187106%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190247 _%stx187024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx187023%_
                                               __tmp190246))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g187055187065%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e187060187125%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187055187065%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e187061187128%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187055187065%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e187062187131%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187055187065%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys187134%_ _%e187062187131%_)
                                   (_%e187063187136%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187055187065%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main187139%_ _%e187063187136%_))
                              (_%K187059187122%_
                               _%main187139%_
                               _%keys187134%_))
                            (_%else187057187073%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx187023%_ _%stx187024%_))))))
          (if '#t
              (let* ((_%e187041187144%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187037187046%_
                         '1
                         '#f
                         '#f)))
                     (_%e187042187147%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187037187046%_
                         '2
                         '#f
                         '#f)))
                     (_%e187043187150%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187037187046%_
                         '3
                         '#f
                         '#f)))
                     (_%table187153%_ _%e187043187150%_)
                     (_%e187044187155%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187037187046%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187158%_ _%e187044187155%_))
                (_%K187040187141%_ _%dispatch187158%_ _%table187153%_))
              (_%E187039187050%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186635%_ _%args186636%_)
        (let _%lp186638%_ ((_%rest186640%_ _%args186636%_)
                           (_%pargs186641%_ '())
                           (_%kwargs186642%_ '()))
          (let* ((_%__stx189982189983%_ _%rest186640%_)
                 (_%g186648186700%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189982189983%_)))))
            (let ((_%__kont189984189985%_
                   (lambda (_%L186879%_ _%L186880%_)
                     (_%lp186638%_
                      _%L186879%_
                      (cons _%L186880%_ _%pargs186641%_)
                      _%kwargs186642%_)))
                  (_%__kont189986189987%_
                   (lambda (_%L186825%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186825%_ _%pargs186641%_))
                             (reverse _%kwargs186642%_))))
                  (_%__kont189988189989%_
                   (lambda (_%L186772%_ _%L186773%_ _%L186774%_)
                     (let ((_%kw186791%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186774%_))))
                       (if (assq _%kw186791%_ _%kwargs186642%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186635%_
                              _%kw186791%_))
                           (_%lp186638%_
                            _%L186772%_
                            _%pargs186641%_
                            (cons (cons _%kw186791%_ _%L186773%_)
                                  _%kwargs186642%_))))))
                  (_%__kont189990189991%_
                   (lambda (_%L186720%_ _%L186721%_)
                     (_%lp186638%_
                      _%L186720%_
                      (cons _%L186721%_ _%pargs186641%_)
                      _%kwargs186642%_)))
                  (_%__kont189992189993%_
                   (lambda ()
                     (values (reverse _%pargs186641%_)
                             (reverse _%kwargs186642%_)))))
              (let ((_%__match190089190090%_
                     (lambda (_%e186679186740%_
                              _%hd186680186743%_
                              _%tl186681186745%_
                              _%e186682186748%_
                              _%hd186683186751%_
                              _%tl186684186753%_
                              _%e186685186756%_
                              _%hd186686186759%_
                              _%tl186687186761%_
                              _%e186688186764%_
                              _%hd186689186767%_
                              _%tl186690186769%_)
                       (let ((_%L186772%_ _%tl186690186769%_)
                             (_%L186773%_ _%hd186689186767%_)
                             (_%L186774%_ _%hd186686186759%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186774%_))
                             (_%__kont189988189989%_
                              _%L186772%_
                              _%L186773%_
                              _%L186774%_)
                             (_%__kont189990189991%_
                              _%tl186681186745%_
                              _%hd186680186743%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189982189983%_))
                    (let ((_%e186652186844%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189982189983%_))))
                      (let ((_%tl186654186849%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186652186844%_)))
                            (_%hd186653186847%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186652186844%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186653186847%_))
                            (let ((_%e186655186852%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186653186847%_))))
                              (let ((_%tl186657186857%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186655186852%_)))
                                    (_%hd186656186855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186655186852%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186656186855%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186656186855%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186657186857%_))
                                            (let ((_%e186658186860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186657186857%_))))
                                              (let ((_%tl186660186865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186658186860%_)))
                                                    (_%hd186659186863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186658186860%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186659186863%_))
                                                    (let ((_%e186661186868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186659186863%_))))
                                                      (if (equal? _%e186661186868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186660186865%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186654186849%_))
                          (let ((_%e186662186871%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186654186849%_))))
                            (let ((_%tl186664186876%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186662186871%_)))
                                  (_%hd186663186874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186662186871%_))))
                              (_%__kont189984189985%_
                               _%tl186664186876%_
                               _%hd186663186874%_)))
                          (_%__kont189990189991%_
                           _%tl186654186849%_
                           _%hd186653186847%_))
                      (_%__kont189990189991%_
                       _%tl186654186849%_
                       _%hd186653186847%_))
                  (if (equal? _%e186661186868%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186660186865%_))
                          (_%__kont189986189987%_ _%tl186654186849%_)
                          (_%__kont189990189991%_
                           _%tl186654186849%_
                           _%hd186653186847%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186660186865%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186654186849%_))
                              (let ((_%e186688186764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186654186849%_))))
                                (let ((_%tl186690186769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186688186764%_)))
                                      (_%hd186689186767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186688186764%_))))
                                  (_%__match190089190090%_
                                   _%e186652186844%_
                                   _%hd186653186847%_
                                   _%tl186654186849%_
                                   _%e186655186852%_
                                   _%hd186656186855%_
                                   _%tl186657186857%_
                                   _%e186658186860%_
                                   _%hd186659186863%_
                                   _%tl186660186865%_
                                   _%e186688186764%_
                                   _%hd186689186767%_
                                   _%tl186690186769%_)))
                              (_%__kont189990189991%_
                               _%tl186654186849%_
                               _%hd186653186847%_))
                          (_%__kont189990189991%_
                           _%tl186654186849%_
                           _%hd186653186847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186660186865%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186654186849%_))
                                                            (let ((_%e186688186764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186654186849%_))))
                      (let ((_%tl186690186769%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186688186764%_)))
                            (_%hd186689186767%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186688186764%_))))
                        (_%__match190089190090%_
                         _%e186652186844%_
                         _%hd186653186847%_
                         _%tl186654186849%_
                         _%e186655186852%_
                         _%hd186656186855%_
                         _%tl186657186857%_
                         _%e186658186860%_
                         _%hd186659186863%_
                         _%tl186660186865%_
                         _%e186688186764%_
                         _%hd186689186767%_
                         _%tl186690186769%_)))
                    (_%__kont189990189991%_
                     _%tl186654186849%_
                     _%hd186653186847%_))
                (_%__kont189990189991%_
                 _%tl186654186849%_
                 _%hd186653186847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189990189991%_
                                             _%tl186654186849%_
                                             _%hd186653186847%_))
                                        (_%__kont189990189991%_
                                         _%tl186654186849%_
                                         _%hd186653186847%_))
                                    (_%__kont189990189991%_
                                     _%tl186654186849%_
                                     _%hd186653186847%_))))
                            (_%__kont189990189991%_
                             _%tl186654186849%_
                             _%hd186653186847%_))))
                    (_%__kont189992189993%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186619%_ _%ctx186620%_ _%stx186621%_ _%args186622%_)
        (let ((_%self186625%_ _%self186619%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186620%_ _%stx186621%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186307%_ _%stx186308%_)
        (let* ((_%__stx190098190099%_ _%stx186308%_)
               (_%g186311186351%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190098190099%_)))))
          (let ((_%__kont190100190101%_
                 (lambda (_%L186457%_ _%L186458%_)
                   (let ((_%$e186485%_
                          (member 'return:
                                  (let ((__tmp190251
                                         (lambda (_%g186477186480%_
                                                  _%g186478186482%_)
                                           (cons _%g186477186480%_
                                                 _%g186478186482%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190251 '() _%L186458%_))
                                  gx#stx-eq?)))
                     (if _%$e186485%_
                         ((lambda (_%tail186488%_)
                            (let ((_%type186490%_
                                   (let ((__tmp190252
                                          (let ((__tmp190253
                                                 (cadr _%tail186488%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190253))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186308%_
                                      __tmp190252))))
                              (gxc#check-return-type!
                               _%stx186308%_
                               _%L186457%_
                               _%type186490%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186307%_
                                 _%L186457%_))))
                          _%$e186485%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186307%_ _%L186457%_))))))
                (_%__kont190104190105%_
                 (lambda (_%L186380%_ _%L186381%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186307%_ _%L186380%_)))))
            (let ((_%__match190135190136%_
                   (lambda (_%e186315186401%_
                            _%hd186316186404%_
                            _%tl186317186406%_
                            _%e186318186409%_
                            _%hd186319186412%_
                            _%tl186320186414%_
                            _%e186321186417%_
                            _%hd186322186420%_
                            _%tl186323186422%_
                            _%__splice190102190103%_
                            _%target186324186425%_
                            _%tl186326186427%_)
                     (letrec ((_%loop186327186430%_
                               (lambda (_%hd186325186433%_
                                        _%signature186331186435%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186325186433%_))
                                     (let ((_%e186328186438%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186325186433%_))))
                                       (let ((_%lp-tl186330186443%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186328186438%_)))
                                             (_%lp-hd186329186441%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186328186438%_))))
                                         (_%loop186327186430%_
                                          _%lp-tl186330186443%_
                                          (cons _%lp-hd186329186441%_
                                                _%signature186331186435%_))))
                                     (let ((_%signature186332186446%_
                                            (reverse _%signature186331186435%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186320186414%_))
                                           (let ((_%e186333186449%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186320186414%_))))
                                             (let ((_%tl186335186454%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186333186449%_)))
                                                   (_%hd186334186452%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186333186449%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186335186454%_))
                                                   (_%__kont190100190101%_
                                                    _%hd186334186452%_
                                                    _%signature186332186446%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186311186351%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186311186351%_))))))))
                       (_%loop186327186430%_ _%target186324186425%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190098190099%_))
                  (let ((_%e186315186401%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190098190099%_))))
                    (let ((_%tl186317186406%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186315186401%_)))
                          (_%hd186316186404%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186315186401%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186317186406%_))
                          (let ((_%e186318186409%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186317186406%_))))
                            (let ((_%tl186320186414%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186318186409%_)))
                                  (_%hd186319186412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186318186409%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186319186412%_))
                                  (let ((_%e186321186417%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186319186412%_))))
                                    (let ((_%tl186323186422%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186321186417%_)))
                                          (_%hd186322186420%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186321186417%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186322186420%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186322186420%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186323186422%_))
                                                  (let ((_%__splice190102190103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186323186422%_
                                                            '0))))
                                                    (let ((_%tl186326186427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190102190103%_
                                                              '1)))
                                                          (_%target186324186425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190102190103%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186326186427%_))
                                                          (_%__match190135190136%_
                                                           _%e186315186401%_
                                                           _%hd186316186404%_
                                                           _%tl186317186406%_
                                                           _%e186318186409%_
                                                           _%hd186319186412%_
                                                           _%tl186320186414%_
                                                           _%e186321186417%_
                                                           _%hd186322186420%_
                                                           _%tl186323186422%_
                                                           _%__splice190102190103%_
                                                           _%target186324186425%_
                                                           _%tl186326186427%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186320186414%_))
                      (let ((_%e186344186372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186320186414%_))))
                        (let ((_%tl186346186377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186344186372%_)))
                              (_%hd186345186375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186344186372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186346186377%_))
                              (_%__kont190104190105%_
                               _%hd186345186375%_
                               _%hd186319186412%_)
                              (let ()
                                (declare (not safe))
                                (_%g186311186351%_)))))
                      (let () (declare (not safe)) (_%g186311186351%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186320186414%_))
                                                      (let ((_%e186344186372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186320186414%_))))
                (let ((_%tl186346186377%_
                       (let () (declare (not safe)) (##cdr _%e186344186372%_)))
                      (_%hd186345186375%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186344186372%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186346186377%_))
                      (_%__kont190104190105%_
                       _%hd186345186375%_
                       _%hd186319186412%_)
                      (let () (declare (not safe)) (_%g186311186351%_)))))
              (let () (declare (not safe)) (_%g186311186351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186320186414%_))
                                                  (let ((_%e186344186372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186320186414%_))))
                                                    (let ((_%tl186346186377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186344186372%_)))
                                                          (_%hd186345186375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186344186372%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186346186377%_))
                                                          (_%__kont190104190105%_
                                                           _%hd186345186375%_
                                                           _%hd186319186412%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186311186351%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186311186351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186320186414%_))
                                              (let ((_%e186344186372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186320186414%_))))
                                                (let ((_%tl186346186377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186344186372%_)))
                                                      (_%hd186345186375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186344186372%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186346186377%_))
                                                      (_%__kont190104190105%_
                                                       _%hd186345186375%_
                                                       _%hd186319186412%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186311186351%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186311186351%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186320186414%_))
                                      (let ((_%e186344186372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186320186414%_))))
                                        (let ((_%tl186346186377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186344186372%_)))
                                              (_%hd186345186375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186344186372%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186346186377%_))
                                              (_%__kont190104190105%_
                                               _%hd186345186375%_
                                               _%hd186319186412%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186311186351%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186311186351%_))))))
                          (let () (declare (not safe)) (_%g186311186351%_)))))
                  (let () (declare (not safe)) (_%g186311186351%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186285%_ _%expr186286%_ _%type186287%_)
        (let ((_%$e186289%_ (not _%type186287%_)))
          (if _%$e186289%_
              _%$e186289%_
              (let ((_%$e186292%_
                     (eq? (##structure-ref _%type186287%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186292%_
                    _%$e186292%_
                    (let ((_%expr-type186296%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186286%_))))
                      (if (not _%expr-type186296%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186285%_
                             _%type186287%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186296%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186285%_
                                 _%type186287%_
                                 _%expr-type186296%_))
                              (let ((_%$e186300%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186296%_
                                        'gxc#!abort::t))))
                                (if _%$e186300%_
                                    _%$e186300%_
                                    (let ((_%$e186303%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186296%_
                                              _%type186287%_))))
                                      (if _%$e186303%_
                                          _%$e186303%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186285%_
                                             _%type186287%_
                                             _%expr-type186296%_)))))))))))))))))
