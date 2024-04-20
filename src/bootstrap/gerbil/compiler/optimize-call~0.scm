(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1713631273)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp197148 (list gxc#::basic-xform::t))
            (__tmp197147 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp197148
         '()
         __tmp197147
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args196425%_
        (apply make-instance gxc#::optimize-call::t _%$args196425%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp197149
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
        (__make-promise __tmp197149)))
    (define gxc#apply-optimize-call
      (lambda (_%stx196417%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self196420%_
                (let ((__obj197139
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj197139))
               (__tmp197150
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196420%_ _%stx196417%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197150
           gxc#current-compile-method
           _%self196420%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp197152 (list gxc#::void::t))
            (__tmp197151 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp197152
         '()
         __tmp197151
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args196414%_
        (apply make-instance gxc#::check-return-type::t _%$args196414%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp197153
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
        (__make-promise __tmp197153)))
    (define gxc#apply-check-return-type
      (lambda (_%stx196406%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self196409%_
                (let ((__obj197141
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj197141))
               (__tmp197154
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196409%_ _%stx196406%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197154
           gxc#current-compile-method
           _%self196409%_))))
    (define gxc#optimize-call%
      (lambda (_%self196007%_ _%stx196008%_)
        (let* ((_%__stx196494196495%_ _%stx196008%_)
               (_%g196011196057%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196494196495%_)))))
          (let ((_%__kont196496196497%_
                 (lambda (_%L196200%_ _%L196201%_)
                   (let* ((_%rator-id196221%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L196201%_)))
                          (_%rator-type196223%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id196221%_))))
                     (if (or (not _%rator-type196223%_)
                             (eq? (##structure-ref
                                   _%rator-type196223%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self196007%_ _%stx196008%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type196223%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp197155
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type196223%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id196221%_
                                  '" => "
                                  _%rator-type196223%_
                                  '" "
                                  __tmp197155))
                               (let* ((_%optimized196238%_
                                       (let ((__method197142
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type196223%_
                                                 'optimize-call))))
                                         (if __method197142
                                             (let ((__tmp197156
                                                    (let ((__tmp197157
                                                           (lambda (_%g196230196233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196231196235%_)
                     (cons _%g196230196233%_ _%g196231196235%_))))
              (declare (not safe))
              (__foldr1 __tmp197157 '() _%L196200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method197142
                                                _%rator-type196223%_
                                                _%self196007%_
                                                _%stx196008%_
                                                __tmp197156))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type196223%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx196442196443%_
                                       _%optimized196238%_)
                                      (_%g196241196270%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx196442196443%_)))))
                                 (let ((_%__kont196444196445%_
                                        (lambda (_%L196338%_ _%L196339%_)
                                          (let* ((_%optimized-rator-id196366%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L196339%_)))
                                                 (_%rator-type196371%_
                                                  (let ((_%$e196368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id196366%_))))
                                                    (if _%$e196368%_
                                                        _%$e196368%_
                                                        _%rator-type196223%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type196371%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id196366%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type196371%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type196371%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized196238%_
                                                (let ((__tmp197158
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L196339%_ '()))
                           (let ((__tmp197159
                                  (lambda (_%g196379196382%_ _%g196380196384%_)
                                    (cons _%g196379196382%_
                                          _%g196380196384%_))))
                             (declare (not safe))
                             (__foldr1 __tmp197159 '() _%L196338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp197158
                                                   _%stx196008%_))))))
                                       (_%__kont196448196449%_
                                        (lambda () _%optimized196238%_)))
                                   (let ((_%__match196491196492%_
                                          (lambda (_%e196245196282%_
                                                   _%hd196246196285%_
                                                   _%tl196247196287%_
                                                   _%e196248196290%_
                                                   _%hd196249196293%_
                                                   _%tl196250196295%_
                                                   _%e196251196298%_
                                                   _%hd196252196301%_
                                                   _%tl196253196303%_
                                                   _%e196254196306%_
                                                   _%hd196255196309%_
                                                   _%tl196256196311%_
                                                   _%__splice196446196447%_
                                                   _%target196257196314%_
                                                   _%tl196259196316%_)
                                            (letrec ((_%loop196260196319%_
                                                      (lambda (_%hd196258196322%_
                                                               _%arg196264196324%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd196258196322%_))
                                                            (let ((_%e196261196327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd196258196322%_))))
                      (let ((_%lp-tl196263196332%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196261196327%_)))
                            (_%lp-hd196262196330%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196261196327%_))))
                        (_%loop196260196319%_
                         _%lp-tl196263196332%_
                         (cons _%lp-hd196262196330%_ _%arg196264196324%_))))
                    (let ((_%arg196265196335%_ (reverse _%arg196264196324%_)))
                      (_%__kont196444196445%_
                       _%arg196265196335%_
                       _%hd196255196309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop196260196319%_
                                               _%target196257196314%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx196442196443%_))
                                         (let ((_%e196245196282%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx196442196443%_))))
                                           (let ((_%tl196247196287%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196245196282%_)))
                                                 (_%hd196246196285%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196245196282%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd196246196285%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd196246196285%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl196247196287%_))
                                                         (let ((_%e196248196290%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl196247196287%_))))
                   (let ((_%tl196250196295%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e196248196290%_)))
                         (_%hd196249196293%_
                          (let ()
                            (declare (not safe))
                            (##car _%e196248196290%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd196249196293%_))
                         (let ((_%e196251196298%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd196249196293%_))))
                           (let ((_%tl196253196303%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196251196298%_)))
                                 (_%hd196252196301%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196251196298%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd196252196301%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd196252196301%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl196253196303%_))
                                         (let ((_%e196254196306%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl196253196303%_))))
                                           (let ((_%tl196256196311%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196254196306%_)))
                                                 (_%hd196255196309%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196254196306%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl196256196311%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl196250196295%_))
                                                     (let ((_%__splice196446196447%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl196250196295%_
                                                               '0))))
                                                       (let ((_%tl196259196316%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice196446196447%_ '1)))
                     (_%target196257196314%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice196446196447%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196259196316%_))
                     (_%__match196491196492%_
                      _%e196245196282%_
                      _%hd196246196285%_
                      _%tl196247196287%_
                      _%e196248196290%_
                      _%hd196249196293%_
                      _%tl196250196295%_
                      _%e196251196298%_
                      _%hd196252196301%_
                      _%tl196253196303%_
                      _%e196254196306%_
                      _%hd196255196309%_
                      _%tl196256196311%_
                      _%__splice196446196447%_
                      _%target196257196314%_
                      _%tl196259196316%_)
                     (_%__kont196448196449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196448196449%_))
                                                 (_%__kont196448196449%_))))
                                         (_%__kont196448196449%_))
                                     (_%__kont196448196449%_))
                                 (_%__kont196448196449%_))))
                         (_%__kont196448196449%_))))
                 (_%__kont196448196449%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196448196449%_))
                                                 (_%__kont196448196449%_))))
                                         (_%__kont196448196449%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type196223%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type196223%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp197160
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L196201%_
                                                                '()))
                                                    (map (lambda (_%g196390196392%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self196007%_
                                                              _%g196390196392%_)))
                                                         (let ((__tmp197161
                                                                (lambda (_%g196394196397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g196395196399%_)
                          (cons _%g196394196397%_ _%g196395196399%_))))
                   (declare (not safe))
                   (__foldr1 __tmp197161 '() _%L196200%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp197160
                                    _%stx196008%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx196008%_
                                    _%rator-type196223%_))))))))
                (_%__kont196500196501%_
                 (lambda (_%L196102%_ _%L196103%_)
                   (let ((_%rator-type196120%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L196103%_))))
                     (if (and _%rator-type196120%_
                              (eq? (##structure-ref
                                    _%rator-type196120%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type196120%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type196120%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type196120%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp197162
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196007%_
                                               _%L196103%_))
                                            (map (lambda (_%g196122196124%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196007%_
                                                      _%g196122196124%_)))
                                                 (let ((__tmp197163
                                                        (lambda (_%g196126196129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g196127196131%_)
                  (cons _%g196126196129%_ _%g196127196131%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp197163
                                                    '()
                                                    _%L196102%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197162 _%stx196008%_))
                         (if (or (not _%rator-type196120%_)
                                 (let ((__tmp197164
                                        (##structure-ref
                                         _%rator-type196120%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp197164 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self196007%_ _%stx196008%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx196008%_
                                _%rator-type196120%_))))))))
            (let* ((_%__match196561196562%_
                    (lambda (_%e196038196062%_
                             _%hd196039196065%_
                             _%tl196040196067%_
                             _%e196041196070%_
                             _%hd196042196073%_
                             _%tl196043196075%_
                             _%__splice196502196503%_
                             _%target196044196078%_
                             _%tl196046196080%_)
                      (letrec ((_%loop196047196083%_
                                (lambda (_%hd196045196086%_
                                         _%rand196051196088%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196045196086%_))
                                      (let ((_%e196048196091%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196045196086%_))))
                                        (let ((_%lp-tl196050196096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196048196091%_)))
                                              (_%lp-hd196049196094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196048196091%_))))
                                          (_%loop196047196083%_
                                           _%lp-tl196050196096%_
                                           (cons _%lp-hd196049196094%_
                                                 _%rand196051196088%_))))
                                      (let ((_%rand196052196099%_
                                             (reverse _%rand196051196088%_)))
                                        (_%__kont196500196501%_
                                         _%rand196052196099%_
                                         _%hd196042196073%_))))))
                        (_%loop196047196083%_ _%target196044196078%_ '()))))
                   (_%__match196541196542%_
                    (lambda (_%e196015196144%_
                             _%hd196016196147%_
                             _%tl196017196149%_
                             _%e196018196152%_
                             _%hd196019196155%_
                             _%tl196020196157%_
                             _%e196021196160%_
                             _%hd196022196163%_
                             _%tl196023196165%_
                             _%e196024196168%_
                             _%hd196025196171%_
                             _%tl196026196173%_
                             _%__splice196498196499%_
                             _%target196027196176%_
                             _%tl196029196178%_)
                      (letrec ((_%loop196030196181%_
                                (lambda (_%hd196028196184%_
                                         _%rand196034196186%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196028196184%_))
                                      (let ((_%e196031196189%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196028196184%_))))
                                        (let ((_%lp-tl196033196194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196031196189%_)))
                                              (_%lp-hd196032196192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196031196189%_))))
                                          (_%loop196030196181%_
                                           _%lp-tl196033196194%_
                                           (cons _%lp-hd196032196192%_
                                                 _%rand196034196186%_))))
                                      (let ((_%rand196035196197%_
                                             (reverse _%rand196034196186%_)))
                                        (_%__kont196496196497%_
                                         _%rand196035196197%_
                                         _%hd196025196171%_))))))
                        (_%loop196030196181%_ _%target196027196176%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196494196495%_))
                  (let ((_%e196015196144%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196494196495%_))))
                    (let ((_%tl196017196149%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196015196144%_)))
                          (_%hd196016196147%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196015196144%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196017196149%_))
                          (let ((_%e196018196152%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196017196149%_))))
                            (let ((_%tl196020196157%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196018196152%_)))
                                  (_%hd196019196155%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196018196152%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196019196155%_))
                                  (let ((_%e196021196160%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196019196155%_))))
                                    (let ((_%tl196023196165%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196021196160%_)))
                                          (_%hd196022196163%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196021196160%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196022196163%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196022196163%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196023196165%_))
                                                  (let ((_%e196024196168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196023196165%_))))
                                                    (let ((_%tl196026196173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196024196168%_)))
                                                          (_%hd196025196171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196024196168%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196026196173%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196020196157%_))
                      (let ((_%__splice196498196499%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196020196157%_
                                '0))))
                        (let ((_%tl196029196178%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196498196499%_ '1)))
                              (_%target196027196176%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196498196499%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196029196178%_))
                              (_%__match196541196542%_
                               _%e196015196144%_
                               _%hd196016196147%_
                               _%tl196017196149%_
                               _%e196018196152%_
                               _%hd196019196155%_
                               _%tl196020196157%_
                               _%e196021196160%_
                               _%hd196022196163%_
                               _%tl196023196165%_
                               _%e196024196168%_
                               _%hd196025196171%_
                               _%tl196026196173%_
                               _%__splice196498196499%_
                               _%target196027196176%_
                               _%tl196029196178%_)
                              (let ()
                                (declare (not safe))
                                (_%g196011196057%_)))))
                      (let () (declare (not safe)) (_%g196011196057%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl196020196157%_))
                      (let ((_%__splice196502196503%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196020196157%_
                                '0))))
                        (let ((_%tl196046196080%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196502196503%_ '1)))
                              (_%target196044196078%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196502196503%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196046196080%_))
                              (_%__match196561196562%_
                               _%e196015196144%_
                               _%hd196016196147%_
                               _%tl196017196149%_
                               _%e196018196152%_
                               _%hd196019196155%_
                               _%tl196020196157%_
                               _%__splice196502196503%_
                               _%target196044196078%_
                               _%tl196046196080%_)
                              (let ()
                                (declare (not safe))
                                (_%g196011196057%_)))))
                      (let () (declare (not safe)) (_%g196011196057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196020196157%_))
                                                      (let ((_%__splice196502196503%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl196020196157%_ '0))))
                (let ((_%tl196046196080%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196502196503%_ '1)))
                      (_%target196044196078%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196502196503%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196046196080%_))
                      (_%__match196561196562%_
                       _%e196015196144%_
                       _%hd196016196147%_
                       _%tl196017196149%_
                       _%e196018196152%_
                       _%hd196019196155%_
                       _%tl196020196157%_
                       _%__splice196502196503%_
                       _%target196044196078%_
                       _%tl196046196080%_)
                      (let () (declare (not safe)) (_%g196011196057%_)))))
              (let () (declare (not safe)) (_%g196011196057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl196020196157%_))
                                                  (let ((_%__splice196502196503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl196020196157%_
                                                            '0))))
                                                    (let ((_%tl196046196080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196502196503%_
                                                              '1)))
                                                          (_%target196044196078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196502196503%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196046196080%_))
                                                          (_%__match196561196562%_
                                                           _%e196015196144%_
                                                           _%hd196016196147%_
                                                           _%tl196017196149%_
                                                           _%e196018196152%_
                                                           _%hd196019196155%_
                                                           _%tl196020196157%_
                                                           _%__splice196502196503%_
                                                           _%target196044196078%_
                                                           _%tl196046196080%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196011196057%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g196011196057%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl196020196157%_))
                                              (let ((_%__splice196502196503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl196020196157%_
                                                        '0))))
                                                (let ((_%tl196046196080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196502196503%_
                                                          '1)))
                                                      (_%target196044196078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196502196503%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196046196080%_))
                                                      (_%__match196561196562%_
                                                       _%e196015196144%_
                                                       _%hd196016196147%_
                                                       _%tl196017196149%_
                                                       _%e196018196152%_
                                                       _%hd196019196155%_
                                                       _%tl196020196157%_
                                                       _%__splice196502196503%_
                                                       _%target196044196078%_
                                                       _%tl196046196080%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196011196057%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g196011196057%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196020196157%_))
                                      (let ((_%__splice196502196503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196020196157%_
                                                '0))))
                                        (let ((_%tl196046196080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196502196503%_
                                                  '1)))
                                              (_%target196044196078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196502196503%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196046196080%_))
                                              (_%__match196561196562%_
                                               _%e196015196144%_
                                               _%hd196016196147%_
                                               _%tl196017196149%_
                                               _%e196018196152%_
                                               _%hd196019196155%_
                                               _%tl196020196157%_
                                               _%__splice196502196503%_
                                               _%target196044196078%_
                                               _%tl196046196080%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g196011196057%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196011196057%_))))))
                          (let () (declare (not safe)) (_%g196011196057%_)))))
                  (let () (declare (not safe)) (_%g196011196057%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self192386195967%_ _%ctx195969%_ _%stx195970%_ _%args195971%_)
        (let* ((_%self195973%_ _%self192386195967%_)
               (_%self195975%_ _%self195973%_))
          (if (let ((__method197143
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self195975%_ 'check-arguments))))
                (if __method197143
                    (let ()
                      (declare (not safe))
                      (__method197143
                       _%self195975%_
                       _%ctx195969%_
                       _%stx195970%_
                       _%args195971%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self195975%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature195985%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195975%_ '2 '#f '#f)))
                     (_%signature195987%_ _%signature195985%_)
                     (_%$e195997%_
                      (if _%signature195987%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature195987%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e195997%_
                    ((lambda (_%unchecked196000%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked196000%_))
                           (let ((__tmp197165
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked196000%_
                                                          '()))
                                              (map (lambda (_%g196001196003%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195969%_
                                                        _%g196001196003%_)))
                                                   _%args195971%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp197165
                              _%stx195970%_
                              _%ctx195969%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx195969%_ _%stx195970%_))))
                     _%$e195997%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx195969%_ _%stx195970%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx195969%_ _%stx195970%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass196427 __method-table196428)
        (let ((__check-arguments196429
               (let ((__tmp197166
                      (lambda ()
                        (let ((__method196430
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196428
                                  'check-arguments
                                  '#f))))
                          (if __method196430
                              __method196430
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197166))))
          (lambda (_%self192386195967%_
                   _%ctx195969%_
                   _%stx195970%_
                   _%args195971%_)
            (let* ((_%self195973%_ _%self192386195967%_)
                   (_%self195975%_ _%self195973%_))
              (if ((force __check-arguments196429)
                   _%self195975%_
                   _%ctx195969%_
                   _%stx195970%_
                   _%args195971%_)
                  (let* ((_%signature195985%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195975%_
                             '2
                             '#f
                             '#f)))
                         (_%signature195987%_ _%signature195985%_)
                         (_%$e195997%_
                          (if _%signature195987%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature195987%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e195997%_
                        ((lambda (_%unchecked196000%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked196000%_))
                               (let ((__tmp197167
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked196000%_
                                                              '()))
                                                  (map (lambda (_%g196001196003%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx195969%_
                                                            _%g196001196003%_)))
                                                       _%args195971%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp197167
                                  _%stx195970%_
                                  _%ctx195969%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx195969%_
                                  _%stx195970%_))))
                         _%$e195997%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx195969%_ _%stx195970%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx195969%_ _%stx195970%_))))))))
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
      (lambda (_%self192387195716%_ _%ctx195718%_ _%stx195719%_ _%args195720%_)
        (let* ((_%self195722%_ _%self192387195716%_)
               (_%self195724%_ _%self195722%_)
               (_%signature195733195735%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195724%_ '2 '#f '#f))))
          (if _%signature195733195735%_
              (let* ((_%signature195738%_ _%signature195733195735%_)
                     (_%argument-types195739195741%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature195738%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types195739195741%_
                    (let* ((_%argument-types195744%_
                            _%argument-types195739195741%_)
                           (_%argument-types195749%_
                            (let ((__tmp197168
                                   (lambda (_%t195747%_)
                                     (if _%t195747%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195719%_
                                            _%t195747%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp197168
                               _%argument-types195744%_))))
                      (let _%loop195751%_ ((_%rest-args195753%_ _%args195720%_)
                                           (_%rest-types195754%_
                                            _%argument-types195749%_)
                                           (_%result195755%_ '#t))
                        (let* ((_%rest-args195756195764%_ _%rest-args195753%_)
                               (_%else195758195772%_
                                (lambda () _%result195755%_))
                               (_%K195760195833%_
                                (lambda (_%rest-args195775%_ _%arg195776%_)
                                  (let* ((_%rest-types195777195788%_
                                          _%rest-types195754%_)
                                         (_%E195781195792%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types195777195788%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K195784195821%_
                                           (lambda (_%rest-types195818%_
                                                    _%type195819%_)
                                             (_%loop195751%_
                                              _%rest-args195775%_
                                              _%rest-types195818%_
                                              (if (gxc#check-expression-type!
                                                   _%stx195719%_
                                                   _%arg195776%_
                                                   _%type195819%_)
                                                  _%result195755%_
                                                  '#f))))
                                          (_%K195783195812%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx195719%_
                                                _%argument-types195749%_))))
                                          (_%K195782195802%_
                                           (lambda (_%tail-type195796%_)
                                             (if (let ((__tmp197169
                                                        (lambda (_%g195797195799%_)
                                                          (gxc#check-expression-type!
                                                           _%stx195719%_
                                                           _%g195797195799%_
                                                           _%tail-type195796%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp197169
                                                    _%rest-args195775%_))
                                                 _%result195755%_
                                                 '#f))))
                                      (let ((_%try-match195779195815%_
                                             (lambda ()
                                               (if (null? _%rest-types195777195788%_)
                                                   (_%K195783195812%_)
                                                   (let ((_%tail-type195805%_
                                                          _%rest-types195777195788%_))
                                                     (_%K195782195802%_
                                                      _%tail-type195805%_))))))
                                        (if (pair? _%rest-types195777195788%_)
                                            (let ((_%tl195786195826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types195777195788%_)))
                                                  (_%hd195785195824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types195777195788%_))))
                                              (let ((_%type195829%_
                                                     _%hd195785195824%_)
                                                    (_%rest-types195831%_
                                                     _%tl195786195826%_))
                                                (_%K195784195821%_
                                                 _%rest-types195831%_
                                                 _%type195829%_)))
                                            (_%try-match195779195815%_))))))))
                          (if (pair? _%rest-args195756195764%_)
                              (let ((_%hd195761195836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args195756195764%_)))
                                    (_%tl195762195838%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args195756195764%_))))
                                (let* ((_%arg195841%_ _%hd195761195836%_)
                                       (_%rest-args195843%_
                                        _%tl195762195838%_))
                                  (_%K195760195833%_
                                   _%rest-args195843%_
                                   _%arg195841%_)))
                              (_%else195758195772%_)))))
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
      (lambda (_%self192388195525%_ _%ctx195527%_ _%stx195528%_ _%args195529%_)
        (let* ((_%self195531%_ _%self192388195525%_)
               (_%self195533%_ _%self195531%_)
               (_%g195543195553%_
                (lambda (_%g195544195550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195544195550%_))))
               (_%g195542195591%_
                (lambda (_%g195544195556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195544195556%_))
                      (let ((_%e195546195558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195544195556%_))))
                        (let ((_%hd195547195561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195546195558%_)))
                              (_%tl195548195563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195546195558%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195548195563%_))
                              ((lambda (_%L195566%_)
                                 (let* ((_%klass195578%_
                                         (let ((__tmp197170
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195533%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195528%_
                                            __tmp197170)))
                                        (_%object195580%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195527%_
                                            _%L195566%_)))
                                        (_%instance?195585%_
                                         (let ((_%$e195582%_
                                                (gxc#expression-type?
                                                 _%object195580%_
                                                 _%klass195578%_)))
                                           (if _%$e195582%_
                                               _%$e195582%_
                                               (gxc#expression-type?
                                                _%L195566%_
                                                _%klass195578%_)))))
                                   (if _%instance?195585%_
                                       (let ((__tmp197171
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195580%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195566%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195580%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197171
                                          _%stx195528%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx195527%_
                                          _%stx195528%_)))))
                               _%hd195547195561%_)
                              (_%g195543195553%_ _%g195544195556%_))))
                      (_%g195543195553%_ _%g195544195556%_)))))
          (_%g195542195591%_ _%args195529%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self192389195319%_ _%ctx195321%_ _%stx195322%_ _%args195323%_)
        (let* ((_%self195325%_ _%self192389195319%_)
               (_%self195327%_ _%self195325%_)
               (_%g195337195347%_
                (lambda (_%g195338195344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195338195344%_))))
               (_%g195336195400%_
                (lambda (_%g195338195350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195338195350%_))
                      (let ((_%e195340195352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195338195350%_))))
                        (let ((_%hd195341195355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195340195352%_)))
                              (_%tl195342195357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195340195352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195342195357%_))
                              ((lambda (_%L195360%_)
                                 (let* ((_%klass195372%_
                                         (let ((__tmp197172
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195327%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195322%_
                                            __tmp197172)))
                                        (_%object195374%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195321%_
                                            _%L195360%_)))
                                        (_%instance?195379%_
                                         (let ((_%$e195376%_
                                                (gxc#expression-type?
                                                 _%object195374%_
                                                 _%klass195372%_)))
                                           (if _%$e195376%_
                                               _%$e195376%_
                                               (gxc#expression-type?
                                                _%L195360%_
                                                _%klass195372%_))))
                                        (_%klass195382%_ _%klass195372%_))
                                   (if _%instance?195379%_
                                       (let ((__tmp197173
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195374%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195360%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195374%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197173
                                          _%stx195322%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195382%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197174
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass195382%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object195374%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197174
                                              _%stx195322%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195382%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197175
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass195382%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object195374%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197175
                                                  _%stx195322%_))
                                               (let ((__tmp197176
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self195327%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object195374%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197176
                                                  _%stx195322%_)))))))
                               _%hd195341195355%_)
                              (_%g195337195347%_ _%g195338195350%_))))
                      (_%g195337195347%_ _%g195338195350%_)))))
          (_%g195336195400%_ _%args195323%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx194982%_)
        (let* ((_%__stx196571196572%_ _%stx194982%_)
               (_%g194987195028%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196571196572%_)))))
          (let ((_%__kont196573196574%_ (lambda () '#t))
                (_%__kont196575196576%_ (lambda () '#t))
                (_%__kont196577196578%_
                 (lambda (_%L195096%_ _%L195097%_)
                   (let ((_%rator-type195118195120%_
                          (let ((__tmp197177
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L195097%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp197177))))
                     (if _%rator-type195118195120%_
                         (let* ((_%rator-type195123%_
                                 _%rator-type195118195120%_)
                                (_%rator-signature195124195126%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type195123%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type195123%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature195124195126%_
                               (let* ((_%rator-signature195129%_
                                       _%rator-signature195124195126%_)
                                      (_%rator-effect195130195132%_
                                       (if _%rator-signature195129%_
                                           (##direct-structure-ref
                                            _%rator-signature195129%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect195130195132%_
                                     (let ((_%rator-effect195135%_
                                            _%rator-effect195130195132%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect195135%_)
                                               (equal? '(alloc)
                                                       _%rator-effect195135%_))
                                           (let ((__tmp197178
                                                  (let ((__tmp197179
                                                         (lambda (_%g195140195143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195141195145%_)
                   (cons _%g195140195143%_ _%g195141195145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp197179
                                                     '()
                                                     _%L195096%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp197178))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont196581196582%_ (lambda () '#f)))
            (let ((_%__match196660196661%_
                   (lambda (_%e195003195040%_
                            _%hd195004195043%_
                            _%tl195005195045%_
                            _%e195006195048%_
                            _%hd195007195051%_
                            _%tl195008195053%_
                            _%e195009195056%_
                            _%hd195010195059%_
                            _%tl195011195061%_
                            _%e195012195064%_
                            _%hd195013195067%_
                            _%tl195014195069%_
                            _%__splice196579196580%_
                            _%target195015195072%_
                            _%tl195017195074%_)
                     (letrec ((_%loop195018195077%_
                               (lambda (_%hd195016195080%_
                                        _%rand195022195082%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195016195080%_))
                                     (let ((_%e195019195085%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195016195080%_))))
                                       (let ((_%lp-tl195021195090%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195019195085%_)))
                                             (_%lp-hd195020195088%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195019195085%_))))
                                         (_%loop195018195077%_
                                          _%lp-tl195021195090%_
                                          (cons _%lp-hd195020195088%_
                                                _%rand195022195082%_))))
                                     (let ((_%rand195023195093%_
                                            (reverse _%rand195022195082%_)))
                                       (_%__kont196577196578%_
                                        _%rand195023195093%_
                                        _%hd195013195067%_))))))
                       (_%loop195018195077%_ _%target195015195072%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196571196572%_))
                  (let ((_%e194989195176%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196571196572%_))))
                    (let ((_%tl194991195181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194989195176%_)))
                          (_%hd194990195179%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194989195176%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd194990195179%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd194990195179%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194991195181%_))
                                  (let ((_%e194992195184%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194991195181%_))))
                                    (let ((_%tl194994195189%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194992195184%_)))
                                          (_%hd194993195187%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194992195184%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194994195189%_))
                                          (_%__kont196573196574%_)
                                          (_%__kont196581196582%_))))
                                  (_%__kont196581196582%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd194990195179%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194991195181%_))
                                      (let ((_%e194998195161%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194991195181%_))))
                                        (let ((_%tl195000195166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194998195161%_)))
                                              (_%hd194999195164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194998195161%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195000195166%_))
                                              (_%__kont196575196576%_)
                                              (_%__kont196581196582%_))))
                                      (_%__kont196581196582%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd194990195179%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl194991195181%_))
                                          (let ((_%e195006195048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl194991195181%_))))
                                            (let ((_%tl195008195053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195006195048%_)))
                                                  (_%hd195007195051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195006195048%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd195007195051%_))
                                                  (let ((_%e195009195056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd195007195051%_))))
                                                    (let ((_%tl195011195061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195009195056%_)))
                                                          (_%hd195010195059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195009195056%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd195010195059%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd195010195059%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195011195061%_))
                          (let ((_%e195012195064%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195011195061%_))))
                            (let ((_%tl195014195069%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195012195064%_)))
                                  (_%hd195013195067%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195012195064%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195014195069%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195008195053%_))
                                      (let ((_%__splice196579196580%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195008195053%_
                                                '0))))
                                        (let ((_%tl195017195074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196579196580%_
                                                  '1)))
                                              (_%target195015195072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196579196580%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195017195074%_))
                                              (_%__match196660196661%_
                                               _%e194989195176%_
                                               _%hd194990195179%_
                                               _%tl194991195181%_
                                               _%e195006195048%_
                                               _%hd195007195051%_
                                               _%tl195008195053%_
                                               _%e195009195056%_
                                               _%hd195010195059%_
                                               _%tl195011195061%_
                                               _%e195012195064%_
                                               _%hd195013195067%_
                                               _%tl195014195069%_
                                               _%__splice196579196580%_
                                               _%target195015195072%_
                                               _%tl195017195074%_)
                                              (_%__kont196581196582%_))))
                                      (_%__kont196581196582%_))
                                  (_%__kont196581196582%_))))
                          (_%__kont196581196582%_))
                      (_%__kont196581196582%_))
                  (_%__kont196581196582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont196581196582%_))))
                                          (_%__kont196581196582%_))
                                      (_%__kont196581196582%_))))
                          (_%__kont196581196582%_))))
                  (_%__kont196581196582%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx194977%_ _%klass194978%_)
        (let ((_%expr-type194980%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx194977%_))))
          (if _%expr-type194980%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type194980%_ _%klass194978%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx194955%_ _%expr194956%_ _%type194957%_)
        (if (not _%type194957%_)
            '#f
            (let ((_%$e194960%_
                   (eq? (##structure-ref _%type194957%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e194960%_
                  _%$e194960%_
                  (let ((_%expr-type194964%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr194956%_))))
                    (if (not _%expr-type194964%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type194964%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e194968%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type194964%_
                                      'gxc#!abort::t))))
                              (if _%$e194968%_
                                  _%$e194968%_
                                  (let ((_%$e194971%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type194964%_
                                            _%type194957%_))))
                                    (if _%$e194971%_
                                        _%$e194971%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type194957%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type194957%_
                                                   _%expr-type194964%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx194955%_
                                                   _%expr194956%_
                                                   _%expr-type194964%_
                                                   _%type194957%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self192390194767%_ _%ctx194769%_ _%stx194770%_ _%args194771%_)
        (let* ((_%self194773%_ _%self192390194767%_)
               (_%self194775%_ _%self194773%_)
               (_%klass194785%_
                (let ((__tmp197180
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194775%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx194770%_ __tmp197180)))
               (_%fields194787%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194785%_
                           '5
                           '#f
                           '#f))))
               (_%args194793%_
                (map (lambda (_%g194788194790%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx194769%_ _%g194788194790%_)))
                     _%args194771%_))
               (_%inline-make-object194795%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self194775%_
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
                           _%self194775%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields194787%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass194798%_ _%klass194785%_)
               (_%$e194812%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass194798%_ '6 '#f '#f))))
          (if _%$e194812%_
              ((lambda (_%ctor194815%_)
                 (let ((_%$obj194817%_
                        (let ((__tmp197181
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp197181)))
                       (_%ctor-impl194818%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass194798%_
                           _%ctor194815%_))))
                   (let ((__tmp197182
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194817%_ '())
                                                  (cons _%inline-make-object194795%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl194818%_
                                                            (let ((__tmp197183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl194818%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj194817%_ '()))
                                             _%args194793%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp197183
                       _%stx194770%_
                       _%ctx194769%_))
                    (let ((_%$ctor194820%_
                           (let ((__tmp197184
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197184))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor194820%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194775%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj194817%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor194815%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor194820%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor194820%_ '()))
                              (cons (cons '%#ref (cons _%$obj194817%_ '()))
                                    _%args194793%_)))
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
                             _%self194775%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor194815%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj194817%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp197182 _%stx194770%_))))
               _%$e194812%_)
              (let ((_%$e194822%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass194798%_
                        '10
                        '#f
                        '#f))))
                (if _%$e194822%_
                    ((lambda (_%metaclass194825%_)
                       (let* ((_%$obj194827%_
                               (let ((__tmp197185
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197185)))
                              (_%metakons194829%_
                               (let ((__tmp197186
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx194770%_
                                         _%metaclass194825%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp197186
                                  'instance-init!)))
                              (__tmp197187
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj194827%_
                                                             '())
                                                       (cons _%inline-make-object194795%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons194829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp197188
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons194829%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self194775%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args194793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp197188
                            _%stx194770%_
                            _%ctx194769%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194775%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj194827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args194793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj194827%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp197187 _%stx194770%_)))
                     _%$e194822%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194798%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp197189
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args194793%_))))
                              (declare (not safe))
                              (##fx= __tmp197189 _%fields194787%_))
                            (let ((__tmp197190
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self194775%_
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
                                              _%self194775%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args194793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp197190
                               _%stx194770%_))
                            (let ((__tmp197192
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self194775%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp197191
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass194798%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx194770%_
                               __tmp197192
                               __tmp197191)))
                        (let ((_%$obj194834%_
                               (let ((__tmp197193
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197193))))
                          (let _%lp194836%_ ((_%rest194838%_ _%args194793%_)
                                             (_%initializers194839%_ '()))
                            (let* ((_%__stx196663196664%_ _%rest194838%_)
                                   (_%g194843194864%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx196663196664%_)))))
                              (let ((_%__kont196665196666%_
                                     (lambda (_%L194918%_
                                              _%L194919%_
                                              _%L194920%_)
                                       (let* ((_%slot194947%_
                                               (let ((__tmp197194
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L194920%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp197194)))
                                              (_%off194949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass194798%_
                                                  _%slot194947%_))))
                                         (if _%off194949%_
                                             (_%lp194836%_
                                              _%L194918%_
                                              (cons (cons _%off194949%_
                                                          _%L194919%_)
                                                    _%initializers194839%_))
                                             (let ((__tmp197195
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194775%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx194770%_
                                                __tmp197195
                                                _%slot194947%_))))))
                                    (_%__kont196667196668%_
                                     (lambda ()
                                       (let ((__tmp197196
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj194834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194795%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp197199
                                     (cons (cons '%#ref
                                                 (cons _%$obj194834%_ '()))
                                           '()))
                                    (__tmp197197
                                     (let ((__tmp197198
                                            (lambda (_%i194878%_ _%r194879%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194775%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i194878%_) '()))
                              (cons (cons '%#ref (cons _%$obj194834%_ '()))
                                    (cons (cdr _%i194878%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r194879%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp197198
                                        '()
                                        _%initializers194839%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp197199 __tmp197197)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197196
                                          _%stx194770%_))))
                                    (_%__kont196669196670%_
                                     (lambda ()
                                       (let ((__tmp197200
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj194834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194795%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args194793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj194834%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197200
                                          _%stx194770%_)))))
                                (let* ((_%g194841194881%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx196663196664%_))
                                              (_%__kont196667196668%_)
                                              (_%__kont196669196670%_))))
                                       (_%__match196700196701%_
                                        (lambda (_%e194848194886%_
                                                 _%hd194849194889%_
                                                 _%tl194850194891%_
                                                 _%e194851194894%_
                                                 _%hd194852194897%_
                                                 _%tl194853194899%_
                                                 _%e194854194902%_
                                                 _%hd194855194905%_
                                                 _%tl194856194907%_
                                                 _%e194857194910%_
                                                 _%hd194858194913%_
                                                 _%tl194859194915%_)
                                          (let ((_%L194918%_
                                                 _%tl194859194915%_)
                                                (_%L194919%_
                                                 _%hd194858194913%_)
                                                (_%L194920%_
                                                 _%hd194855194905%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L194920%_))
                                                (_%__kont196665196666%_
                                                 _%L194918%_
                                                 _%L194919%_
                                                 _%L194920%_)
                                                (_%__kont196669196670%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx196663196664%_))
                                      (let ((_%e194848194886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx196663196664%_))))
                                        (let ((_%tl194850194891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194848194886%_)))
                                              (_%hd194849194889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194848194886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd194849194889%_))
                                              (let ((_%e194851194894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd194849194889%_))))
                                                (let ((_%tl194853194899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194851194894%_)))
                                                      (_%hd194852194897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194851194894%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd194852194897%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd194852194897%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194853194899%_))
                      (let ((_%e194854194902%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194853194899%_))))
                        (let ((_%tl194856194907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194854194902%_)))
                              (_%hd194855194905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194854194902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194856194907%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194850194891%_))
                                  (let ((_%e194857194910%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194850194891%_))))
                                    (let ((_%tl194859194915%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194857194910%_)))
                                          (_%hd194858194913%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194857194910%_))))
                                      (_%__match196700196701%_
                                       _%e194848194886%_
                                       _%hd194849194889%_
                                       _%tl194850194891%_
                                       _%e194851194894%_
                                       _%hd194852194897%_
                                       _%tl194853194899%_
                                       _%e194854194902%_
                                       _%hd194855194905%_
                                       _%tl194856194907%_
                                       _%e194857194910%_
                                       _%hd194858194913%_
                                       _%tl194859194915%_)))
                                  (_%__kont196669196670%_))
                              (_%__kont196669196670%_))))
                      (_%__kont196669196670%_))
                  (_%__kont196669196670%_))
              (_%__kont196669196670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont196669196670%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194841194881%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self192391194548%_ _%ctx194550%_ _%stx194551%_ _%args194552%_)
        (let* ((_%self194554%_ _%self192391194548%_)
               (_%self194556%_ _%self194554%_)
               (_%arguments-ok?194566%_
                (let ((__method197144
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194556%_ 'check-arguments))))
                  (if __method197144
                      (let ()
                        (declare (not safe))
                        (__method197144
                         _%self194556%_
                         _%ctx194550%_
                         _%stx194551%_
                         _%args194552%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194556%_
                                 'check-arguments))
                        '#!void))))
               (_%g194568194578%_
                (lambda (_%g194569194575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194569194575%_))))
               (_%g194567194642%_
                (lambda (_%g194569194581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194569194581%_))
                      (let ((_%e194571194583%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194569194581%_))))
                        (let ((_%hd194572194586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194571194583%_)))
                              (_%tl194573194588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194571194583%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194573194588%_))
                              ((lambda (_%L194591%_)
                                 (let* ((_%klass194604%_
                                         (let ((__tmp197201
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194556%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194551%_
                                            __tmp197201)))
                                        (_%field194606%_
                                         (let ((__tmp197202
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194556%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass194604%_
                                            __tmp197202)))
                                        (_%object194608%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194550%_
                                            _%L194591%_)))
                                        (_%klass194611%_ _%klass194604%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass194611%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp197203
                                              (cons (if (or _%arguments-ok?194566%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194556%_
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
                                 _%self194556%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field194606%_ '()))
                        (cons _%object194608%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197203
                                          _%stx194551%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194611%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp197204
                                                  (cons (if (or _%arguments-ok?194566%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194556%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194556%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194606%_ '()))
                            (cons _%object194608%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197204
                                              _%stx194551%_))
                                           (let ((_%$e194630%_
                                                  (let ((__tmp197205
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194556%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass194611%_
                                                     __tmp197205))))
                                             (if _%$e194630%_
                                                 ((lambda (_%klass194633%_)
                                                    (let ((__tmp197206
                                                           (cons (if (or _%arguments-ok?194566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194556%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self194556%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field194606%_ '()))
                                     (cons _%object194608%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp197206 _%stx194551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e194630%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self194556%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp197207
                                                            (let ((_%$obj194639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp197208
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197208))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj194639%_ '())
                                              (cons _%object194608%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass194611%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj194639%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194556%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194606%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194639%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?194566%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194639%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194556%_
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
                                                             _%self194556%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj194639%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self194556%_
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
               (gxc#xform-wrap-source __tmp197207 _%stx194551%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp197209
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object194608%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194556%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp197209 _%stx194551%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd194572194586%_)
                              (_%g194568194578%_ _%g194569194581%_))))
                      (_%g194568194578%_ _%g194569194581%_)))))
          (_%g194567194642%_ _%args194552%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass196431 __method-table196432)
        (let ((__check-arguments196433
               (let ((__tmp197210
                      (lambda ()
                        (let ((__method196434
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196432
                                  'check-arguments
                                  '#f))))
                          (if __method196434
                              __method196434
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197210)))
              (__slot196435
               (let ((__slot196436
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass196431 'slot))))
                 (if __slot196436
                     __slot196436
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self192391194548%_
                   _%ctx194550%_
                   _%stx194551%_
                   _%args194552%_)
            (let* ((_%self194554%_ _%self192391194548%_)
                   (_%self194556%_ _%self194554%_)
                   (_%arguments-ok?194566%_
                    ((force __check-arguments196433)
                     _%self194556%_
                     _%ctx194550%_
                     _%stx194551%_
                     _%args194552%_))
                   (_%g194568194578%_
                    (lambda (_%g194569194575%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194569194575%_))))
                   (_%g194567194642%_
                    (lambda (_%g194569194581%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194569194581%_))
                          (let ((_%e194571194583%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194569194581%_))))
                            (let ((_%hd194572194586%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194571194583%_)))
                                  (_%tl194573194588%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194571194583%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194573194588%_))
                                  ((lambda (_%L194591%_)
                                     (let* ((_%klass194604%_
                                             (let ((__tmp197211
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194556%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx194551%_
                                                __tmp197211)))
                                            (_%field194606%_
                                             (let ((__tmp197212
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194556%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass194604%_
                                                __tmp197212)))
                                            (_%object194608%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx194550%_
                                                _%L194591%_)))
                                            (_%klass194611%_ _%klass194604%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194611%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197213
                                                  (cons (if (or _%arguments-ok?194566%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194556%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194556%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194606%_ '()))
                            (cons _%object194608%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197213
                                              _%stx194551%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194611%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197214
                                                      (cons (if (or _%arguments-ok?194566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194556%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194556%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194606%_ '()))
                                (cons _%object194608%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197214
                                                  _%stx194551%_))
                                               (let ((_%$e194630%_
                                                      (let ((__tmp197215
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self194556%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass194611%_ __tmp197215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194630%_
                                                     ((lambda (_%klass194633%_)
                                                        (let ((__tmp197216
                                                               (cons (if (or _%arguments-ok?194566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194556%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self194556%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field194606%_ '()))
                                         (cons _%object194608%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp197216 _%stx194551%_)))
              _%$e194630%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194556%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp197217
                                                                (let ((_%$obj194639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp197218
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197218))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194639%_ '())
                                                  (cons _%object194608%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass194611%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj194639%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194556%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194606%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194639%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?194566%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194639%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194556%_
                               __slot196435
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
                        (##unchecked-structure-ref _%self194556%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194556%_
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
                   (gxc#xform-wrap-source __tmp197217 _%stx194551%_))
                 (let ((__tmp197219
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object194608%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194556%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp197219 _%stx194551%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194572194586%_)
                                  (_%g194568194578%_ _%g194569194581%_))))
                          (_%g194568194578%_ _%g194569194581%_)))))
              (_%g194567194642%_ _%args194552%_))))))
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
      (lambda (_%self192392194310%_ _%ctx194312%_ _%stx194313%_ _%args194314%_)
        (let* ((_%self194316%_ _%self192392194310%_)
               (_%self194318%_ _%self194316%_)
               (_%arguments-ok?194328%_
                (let ((__method197145
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194318%_ 'check-arguments))))
                  (if __method197145
                      (let ()
                        (declare (not safe))
                        (__method197145
                         _%self194318%_
                         _%ctx194312%_
                         _%stx194313%_
                         _%args194314%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194318%_
                                 'check-arguments))
                        '#!void))))
               (_%g194330194344%_
                (lambda (_%g194331194341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194331194341%_))))
               (_%g194329194423%_
                (lambda (_%g194331194347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194331194347%_))
                      (let ((_%e194334194349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194331194347%_))))
                        (let ((_%hd194335194352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194334194349%_)))
                              (_%tl194336194354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194334194349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194336194354%_))
                              (let ((_%e194337194357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194336194354%_))))
                                (let ((_%hd194338194360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194337194357%_)))
                                      (_%tl194339194362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194337194357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194339194362%_))
                                      ((lambda (_%L194365%_ _%L194366%_)
                                         (let* ((_%klass194382%_
                                                 (let ((__tmp197220
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194318%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx194313%_
                                                    __tmp197220)))
                                                (_%field194384%_
                                                 (let ((__tmp197221
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194318%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass194382%_
                                                    __tmp197221)))
                                                (_%object194386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194312%_
                                                    _%L194366%_)))
                                                (_%value194388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194312%_
                                                    _%L194365%_)))
                                                (_%klass194391%_
                                                 _%klass194382%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194391%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197222
                                                      (cons (if (or _%arguments-ok?194328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194318%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194318%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194384%_ '()))
                                (cons _%object194386%_
                                      (cons _%value194388%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197222
                                                  _%stx194313%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194391%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197223
                                                          (cons (if (or _%arguments-ok?194328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194318%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194318%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194384%_ '()))
                                    (cons _%object194386%_
                                          (cons _%value194388%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197223
                                                      _%stx194313%_))
                                                   (let ((_%$e194411%_
                                                          (let ((__tmp197224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194318%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass194391%_
                     __tmp197224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e194411%_
                                                         ((lambda (_%klass194414%_)
                                                            (let ((__tmp197225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?194328%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194318%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self194318%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field194384%_ '()))
                                             (cons _%object194386%_
                                                   (cons _%value194388%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197225 _%stx194313%_)))
                  _%$e194411%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self194318%_ '4 '#f '#f))
                     (let ((__tmp197226
                            (let ((_%$obj194420%_
                                   (let ((__tmp197227
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp197227))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj194420%_ '())
                                                      (cons _%object194386%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass194391%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj194420%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194318%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field194384%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194420%_
                                                              '()))
                                                  (cons _%value194388%_
                                                        '())))))
                          (cons (if _%arguments-ok?194328%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self194318%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value194388%_ '())))))
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
                             _%self194318%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj194420%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194318%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value194388%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp197226 _%stx194313%_))
                     (let ((__tmp197228
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object194386%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194318%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value194388%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp197228
                        _%stx194313%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd194338194360%_
                                       _%hd194335194352%_)
                                      (_%g194330194344%_ _%g194331194347%_))))
                              (_%g194330194344%_ _%g194331194347%_))))
                      (_%g194330194344%_ _%g194331194347%_)))))
          (_%g194329194423%_ _%args194314%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass196437 __method-table196438)
        (let ((__check-arguments196439
               (let ((__tmp197229
                      (lambda ()
                        (let ((__method196440
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196438
                                  'check-arguments
                                  '#f))))
                          (if __method196440
                              __method196440
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197229))))
          (lambda (_%self192392194310%_
                   _%ctx194312%_
                   _%stx194313%_
                   _%args194314%_)
            (let* ((_%self194316%_ _%self192392194310%_)
                   (_%self194318%_ _%self194316%_)
                   (_%arguments-ok?194328%_
                    ((force __check-arguments196439)
                     _%self194318%_
                     _%ctx194312%_
                     _%stx194313%_
                     _%args194314%_))
                   (_%g194330194344%_
                    (lambda (_%g194331194341%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194331194341%_))))
                   (_%g194329194423%_
                    (lambda (_%g194331194347%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194331194347%_))
                          (let ((_%e194334194349%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194331194347%_))))
                            (let ((_%hd194335194352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194334194349%_)))
                                  (_%tl194336194354%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194334194349%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194336194354%_))
                                  (let ((_%e194337194357%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194336194354%_))))
                                    (let ((_%hd194338194360%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194337194357%_)))
                                          (_%tl194339194362%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194337194357%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194339194362%_))
                                          ((lambda (_%L194365%_ _%L194366%_)
                                             (let* ((_%klass194382%_
                                                     (let ((__tmp197230
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194318%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194313%_
                                                        __tmp197230)))
                                                    (_%field194384%_
                                                     (let ((__tmp197231
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194318%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass194382%_
                                                        __tmp197231)))
                                                    (_%object194386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194312%_
                                                        _%L194366%_)))
                                                    (_%value194388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194312%_
                                                        _%L194365%_)))
                                                    (_%klass194391%_
                                                     _%klass194382%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194391%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197232
                                                          (cons (if (or _%arguments-ok?194328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194318%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194318%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194384%_ '()))
                                    (cons _%object194386%_
                                          (cons _%value194388%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197232
                                                      _%stx194313%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass194391%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp197233
                                                              (cons (if (or _%arguments-ok?194328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self194318%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194318%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194384%_ '()))
                                        (cons _%object194386%_
                                              (cons _%value194388%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp197233 _%stx194313%_))
               (let ((_%$e194411%_
                      (let ((__tmp197234
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194318%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass194391%_
                         __tmp197234))))
                 (if _%$e194411%_
                     ((lambda (_%klass194414%_)
                        (let ((__tmp197235
                               (cons (if (or _%arguments-ok?194328%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194318%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194318%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field194384%_
                                                             '()))
                                                 (cons _%object194386%_
                                                       (cons _%value194388%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp197235 _%stx194313%_)))
                      _%$e194411%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194318%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp197236
                                (let ((_%$obj194420%_
                                       (let ((__tmp197237
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp197237))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj194420%_
                                                                '())
                                                          (cons _%object194386%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass194391%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194420%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self194318%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field194384%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value194388%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?194328%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj194420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194318%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value194388%_ '())))))
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
                                 _%self194318%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj194420%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194318%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value194388%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197236 _%stx194313%_))
                         (let ((__tmp197238
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object194386%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194318%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value194388%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp197238
                            _%stx194313%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd194338194360%_
                                           _%hd194335194352%_)
                                          (_%g194330194344%_
                                           _%g194331194347%_))))
                                  (_%g194330194344%_ _%g194331194347%_))))
                          (_%g194330194344%_ _%g194331194347%_)))))
              (_%g194329194423%_ _%args194314%_))))))
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
      (lambda (_%self192393194123%_ _%ctx194125%_ _%stx194126%_ _%args194127%_)
        (let* ((_%self194129%_ _%self192393194123%_)
               (_%self194131%_ _%self194129%_)
               (_%self194140194150%_ _%self194131%_)
               (_%E194142194154%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194140194150%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K194143194164%_
                (lambda (_%inline194157%_ _%dispatch194158%_ _%arity194159%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self194131%_
                         _%args194127%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx194126%_
                         _%arity194159%_)))
                  (if _%inline194157%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp197239 (_%inline194157%_ _%stx194126%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp197239
                           _%stx194126%_
                           _%ctx194125%_)))
                      (if (and _%dispatch194158%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch194158%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch194158%_))
                            (let ((__tmp197240
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch194158%_
                                                           '()))
                                               _%args194127%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp197240
                               _%stx194126%_
                               _%ctx194125%_)))
                          (gxc#!procedure::optimize-call
                           _%self194131%_
                           _%ctx194125%_
                           _%stx194126%_
                           _%args194127%_)))))
               (_%e194144194167%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194140194150%_ '1 '#f '#f)))
               (_%e194145194170%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194140194150%_ '2 '#f '#f)))
               (_%e194146194173%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194140194150%_ '3 '#f '#f)))
               (_%arity194176%_ _%e194146194173%_)
               (_%e194147194178%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194140194150%_ '4 '#f '#f)))
               (_%dispatch194181%_ _%e194147194178%_)
               (_%e194148194183%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194140194150%_ '5 '#f '#f)))
               (_%inline194186%_ _%e194148194183%_))
          (_%K194143194164%_
           _%inline194186%_
           _%dispatch194181%_
           _%arity194176%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self192394193973%_ _%ctx193975%_ _%stx193976%_ _%args193977%_)
        (let* ((_%self193979%_ _%self192394193973%_)
               (_%self193981%_ _%self193979%_)
               (_%$e193995%_
                (let ((__tmp197242
                       (lambda (_%g193990193992%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g193990193992%_
                            _%args193977%_))))
                      (__tmp197241
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self193981%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp197242 __tmp197241))))
          (if _%$e193995%_
              ((lambda (_%clause193998%_)
                 (let ((__method197146
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause193998%_ 'optimize-call))))
                   (if __method197146
                       (let ()
                         (declare (not safe))
                         (__method197146
                          _%clause193998%_
                          _%ctx193975%_
                          _%stx193976%_
                          _%args193977%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause193998%_
                                  'optimize-call))
                         '#!void))))
               _%$e193995%_)
              (let ((__tmp197243
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self193981%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx193976%_
                 __tmp197243))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self192395193711%_ _%ctx193713%_ _%stx193714%_ _%args193715%_)
        (let* ((_%self193717%_ _%self192395193711%_)
               (_%self193719%_ _%self193717%_)
               (_%self193728193737%_ _%self193719%_)
               (_%E193730193741%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193728193737%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K193731193832%_
                (lambda (_%dispatch193744%_ _%table193745%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch193744%_))
                      (let* ((_%g193746193756%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch193744%_)))
                             (_%else193748193764%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch193744%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx193713%_
                                   _%stx193714%_))))
                             (_%K193750193813%_
                              (lambda (_%main193767%_ _%keys193768%_)
                                (let ((_g197244_
                                       (gxc#!kw-lambda-split-args
                                        _%stx193714%_
                                        _%args193715%_)))
                                  (begin
                                    (let ((_g197245_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g197244_)
                                                 (##vector-length _g197244_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g197245_ 2)))
                                          (error "Context expects 2 values"
                                                 _g197245_)))
                                    (let ((_%pargs193770%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g197244_ 0)))
                                          (_%kwargs193771%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g197244_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main193767%_))
                                        (if _%table193745%_
                                            (let ((_%xargs193779%_
                                                   (map (lambda (_%key193773%_)
                                                          (let ((_%$e193775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key193773%_ _%kwargs193771%_))))
                    (if _%$e193775%_ _%$e193775%_ '(%#ref absent-value))))
                _%keys193768%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw193781%_)
                                                 (if (memq (car _%kw193781%_)
                                                           _%keys193768%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx193714%_
                                                        _%keys193768%_
                                                        _%kw193781%_))))
                                               _%kwargs193771%_)
                                              (let ((__tmp197246
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main193767%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs193770%_
                                  _%xargs193779%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp197246
                                                 _%stx193714%_
                                                 _%ctx193713%_)))
                                            (let* ((_%kwt193783%_
                                                    (let ((__tmp197247
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp197247)))
                                                   (_%kwvars193787%_
                                                    (map (lambda (_%_193785%_)
                                                           (let ((__tmp197248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp197248)))
                 _%kwargs193771%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind193792%_
                                                    (map (lambda (_%kw193789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193790%_)
                   (cons (cons _%kwvar193790%_ '())
                         (cons (cdr _%kw193789%_) '())))
                 _%kwargs193771%_
                 _%kwvars193787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset193797%_
                                                    (map (lambda (_%kw193794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193795%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt193783%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw193794%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar193795%_
                                                             '()))
                                                 '()))))))
                 _%kwargs193771%_
                 _%kwvars193787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs193802%_
                                                    (map (lambda (_%kw193799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193800%_)
                   (cons (car _%kw193799%_)
                         (cons '%#ref (cons _%kwvar193800%_ '()))))
                 _%kwargs193771%_
                 _%kwvars193787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs193810%_
                                                    (map (lambda (_%key193804%_)
                                                           (let ((_%$e193806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key193804%_ _%xkwargs193802%_))))
                     (if _%$e193806%_ _%$e193806%_ '(%#ref absent-value))))
                 _%keys193768%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp197249
                                                    (cons '%#let-values
                                                          (cons _%kwbind193792%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt193783%_ '())
                                                      (cons (let ((__tmp197250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs193771%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197250 _%stx193714%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp197251
                                                             (cons (let ((__tmp197252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main193767%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt193783%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs193770%_
                                                       _%xargs193810%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp197252 _%stx193714%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp197251 _%kwset193797%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp197249
                                               _%stx193714%_
                                               _%ctx193713%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g193746193756%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e193751193816%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193746193756%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e193752193819%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193746193756%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e193753193822%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193746193756%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys193825%_ _%e193753193822%_)
                                   (_%e193754193827%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193746193756%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main193830%_ _%e193754193827%_))
                              (_%K193750193813%_
                               _%main193830%_
                               _%keys193825%_))
                            (_%else193748193764%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx193713%_ _%stx193714%_)))))
               (_%e193732193835%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193728193737%_ '1 '#f '#f)))
               (_%e193733193838%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193728193737%_ '2 '#f '#f)))
               (_%e193734193841%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193728193737%_ '3 '#f '#f)))
               (_%table193844%_ _%e193734193841%_)
               (_%e193735193846%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193728193737%_ '4 '#f '#f)))
               (_%dispatch193849%_ _%e193735193846%_))
          (_%K193731193832%_ _%dispatch193849%_ _%table193844%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx193324%_ _%args193325%_)
        (let _%lp193327%_ ((_%rest193329%_ _%args193325%_)
                           (_%pargs193330%_ '())
                           (_%kwargs193331%_ '()))
          (let* ((_%__stx196705196706%_ _%rest193329%_)
                 (_%g193337193389%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx196705196706%_)))))
            (let ((_%__kont196707196708%_
                   (lambda (_%L193568%_ _%L193569%_)
                     (_%lp193327%_
                      _%L193568%_
                      (cons _%L193569%_ _%pargs193330%_)
                      _%kwargs193331%_)))
                  (_%__kont196709196710%_
                   (lambda (_%L193514%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L193514%_ _%pargs193330%_))
                             (reverse _%kwargs193331%_))))
                  (_%__kont196711196712%_
                   (lambda (_%L193461%_ _%L193462%_ _%L193463%_)
                     (let ((_%kw193480%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L193463%_))))
                       (if (assq _%kw193480%_ _%kwargs193331%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx193324%_
                              _%kw193480%_))
                           (_%lp193327%_
                            _%L193461%_
                            _%pargs193330%_
                            (cons (cons _%kw193480%_ _%L193462%_)
                                  _%kwargs193331%_))))))
                  (_%__kont196713196714%_
                   (lambda (_%L193409%_ _%L193410%_)
                     (_%lp193327%_
                      _%L193409%_
                      (cons _%L193410%_ _%pargs193330%_)
                      _%kwargs193331%_)))
                  (_%__kont196715196716%_
                   (lambda ()
                     (values (reverse _%pargs193330%_)
                             (reverse _%kwargs193331%_)))))
              (let ((_%__match196812196813%_
                     (lambda (_%e193368193429%_
                              _%hd193369193432%_
                              _%tl193370193434%_
                              _%e193371193437%_
                              _%hd193372193440%_
                              _%tl193373193442%_
                              _%e193374193445%_
                              _%hd193375193448%_
                              _%tl193376193450%_
                              _%e193377193453%_
                              _%hd193378193456%_
                              _%tl193379193458%_)
                       (let ((_%L193461%_ _%tl193379193458%_)
                             (_%L193462%_ _%hd193378193456%_)
                             (_%L193463%_ _%hd193375193448%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L193463%_))
                             (_%__kont196711196712%_
                              _%L193461%_
                              _%L193462%_
                              _%L193463%_)
                             (_%__kont196713196714%_
                              _%tl193370193434%_
                              _%hd193369193432%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx196705196706%_))
                    (let ((_%e193341193533%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx196705196706%_))))
                      (let ((_%tl193343193538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193341193533%_)))
                            (_%hd193342193536%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193341193533%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193342193536%_))
                            (let ((_%e193344193541%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193342193536%_))))
                              (let ((_%tl193346193546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193344193541%_)))
                                    (_%hd193345193544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193344193541%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193345193544%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193345193544%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193346193546%_))
                                            (let ((_%e193347193549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193346193546%_))))
                                              (let ((_%tl193349193554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193347193549%_)))
                                                    (_%hd193348193552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193347193549%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd193348193552%_))
                                                    (let ((_%e193350193557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd193348193552%_))))
                                                      (if (equal? _%e193350193557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193349193554%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193343193538%_))
                          (let ((_%e193351193560%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193343193538%_))))
                            (let ((_%tl193353193565%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193351193560%_)))
                                  (_%hd193352193563%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193351193560%_))))
                              (_%__kont196707196708%_
                               _%tl193353193565%_
                               _%hd193352193563%_)))
                          (_%__kont196713196714%_
                           _%tl193343193538%_
                           _%hd193342193536%_))
                      (_%__kont196713196714%_
                       _%tl193343193538%_
                       _%hd193342193536%_))
                  (if (equal? _%e193350193557%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193349193554%_))
                          (_%__kont196709196710%_ _%tl193343193538%_)
                          (_%__kont196713196714%_
                           _%tl193343193538%_
                           _%hd193342193536%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193349193554%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193343193538%_))
                              (let ((_%e193377193453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193343193538%_))))
                                (let ((_%tl193379193458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193377193453%_)))
                                      (_%hd193378193456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193377193453%_))))
                                  (_%__match196812196813%_
                                   _%e193341193533%_
                                   _%hd193342193536%_
                                   _%tl193343193538%_
                                   _%e193344193541%_
                                   _%hd193345193544%_
                                   _%tl193346193546%_
                                   _%e193347193549%_
                                   _%hd193348193552%_
                                   _%tl193349193554%_
                                   _%e193377193453%_
                                   _%hd193378193456%_
                                   _%tl193379193458%_)))
                              (_%__kont196713196714%_
                               _%tl193343193538%_
                               _%hd193342193536%_))
                          (_%__kont196713196714%_
                           _%tl193343193538%_
                           _%hd193342193536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193349193554%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193343193538%_))
                                                            (let ((_%e193377193453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193343193538%_))))
                      (let ((_%tl193379193458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193377193453%_)))
                            (_%hd193378193456%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193377193453%_))))
                        (_%__match196812196813%_
                         _%e193341193533%_
                         _%hd193342193536%_
                         _%tl193343193538%_
                         _%e193344193541%_
                         _%hd193345193544%_
                         _%tl193346193546%_
                         _%e193347193549%_
                         _%hd193348193552%_
                         _%tl193349193554%_
                         _%e193377193453%_
                         _%hd193378193456%_
                         _%tl193379193458%_)))
                    (_%__kont196713196714%_
                     _%tl193343193538%_
                     _%hd193342193536%_))
                (_%__kont196713196714%_
                 _%tl193343193538%_
                 _%hd193342193536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont196713196714%_
                                             _%tl193343193538%_
                                             _%hd193342193536%_))
                                        (_%__kont196713196714%_
                                         _%tl193343193538%_
                                         _%hd193342193536%_))
                                    (_%__kont196713196714%_
                                     _%tl193343193538%_
                                     _%hd193342193536%_))))
                            (_%__kont196713196714%_
                             _%tl193343193538%_
                             _%hd193342193536%_))))
                    (_%__kont196715196716%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self192396193306%_ _%ctx193308%_ _%stx193309%_ _%args193310%_)
        (let* ((_%self193312%_ _%self192396193306%_)
               (_%self193314%_ _%self193312%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx193308%_ _%stx193309%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self192994%_ _%stx192995%_)
        (let* ((_%__stx196821196822%_ _%stx192995%_)
               (_%g192998193038%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196821196822%_)))))
          (let ((_%__kont196823196824%_
                 (lambda (_%L193144%_ _%L193145%_)
                   (let ((_%$e193172%_
                          (member 'return:
                                  (let ((__tmp197253
                                         (lambda (_%g193164193167%_
                                                  _%g193165193169%_)
                                           (cons _%g193164193167%_
                                                 _%g193165193169%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp197253 '() _%L193145%_))
                                  gx#stx-eq?)))
                     (if _%$e193172%_
                         ((lambda (_%tail193175%_)
                            (let ((_%type193177%_
                                   (let ((__tmp197254
                                          (let ((__tmp197255
                                                 (cadr _%tail193175%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp197255))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx192995%_
                                      __tmp197254))))
                              (gxc#check-return-type!
                               _%stx192995%_
                               _%L193144%_
                               _%type193177%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self192994%_
                                 _%L193144%_))))
                          _%$e193172%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self192994%_ _%L193144%_))))))
                (_%__kont196827196828%_
                 (lambda (_%L193067%_ _%L193068%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self192994%_ _%L193067%_)))))
            (let ((_%__match196858196859%_
                   (lambda (_%e193002193088%_
                            _%hd193003193091%_
                            _%tl193004193093%_
                            _%e193005193096%_
                            _%hd193006193099%_
                            _%tl193007193101%_
                            _%e193008193104%_
                            _%hd193009193107%_
                            _%tl193010193109%_
                            _%__splice196825196826%_
                            _%target193011193112%_
                            _%tl193013193114%_)
                     (letrec ((_%loop193014193117%_
                               (lambda (_%hd193012193120%_
                                        _%signature193018193122%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193012193120%_))
                                     (let ((_%e193015193125%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193012193120%_))))
                                       (let ((_%lp-tl193017193130%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193015193125%_)))
                                             (_%lp-hd193016193128%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193015193125%_))))
                                         (_%loop193014193117%_
                                          _%lp-tl193017193130%_
                                          (cons _%lp-hd193016193128%_
                                                _%signature193018193122%_))))
                                     (let ((_%signature193019193133%_
                                            (reverse _%signature193018193122%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl193007193101%_))
                                           (let ((_%e193020193136%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl193007193101%_))))
                                             (let ((_%tl193022193141%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193020193136%_)))
                                                   (_%hd193021193139%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193020193136%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl193022193141%_))
                                                   (_%__kont196823196824%_
                                                    _%hd193021193139%_
                                                    _%signature193019193133%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g192998193038%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g192998193038%_))))))))
                       (_%loop193014193117%_ _%target193011193112%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196821196822%_))
                  (let ((_%e193002193088%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196821196822%_))))
                    (let ((_%tl193004193093%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193002193088%_)))
                          (_%hd193003193091%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193002193088%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193004193093%_))
                          (let ((_%e193005193096%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193004193093%_))))
                            (let ((_%tl193007193101%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193005193096%_)))
                                  (_%hd193006193099%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193005193096%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193006193099%_))
                                  (let ((_%e193008193104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193006193099%_))))
                                    (let ((_%tl193010193109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193008193104%_)))
                                          (_%hd193009193107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193008193104%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193009193107%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd193009193107%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193010193109%_))
                                                  (let ((_%__splice196825196826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193010193109%_
                                                            '0))))
                                                    (let ((_%tl193013193114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196825196826%_
                                                              '1)))
                                                          (_%target193011193112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196825196826%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193013193114%_))
                                                          (_%__match196858196859%_
                                                           _%e193002193088%_
                                                           _%hd193003193091%_
                                                           _%tl193004193093%_
                                                           _%e193005193096%_
                                                           _%hd193006193099%_
                                                           _%tl193007193101%_
                                                           _%e193008193104%_
                                                           _%hd193009193107%_
                                                           _%tl193010193109%_
                                                           _%__splice196825196826%_
                                                           _%target193011193112%_
                                                           _%tl193013193114%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193007193101%_))
                      (let ((_%e193031193059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193007193101%_))))
                        (let ((_%tl193033193064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193031193059%_)))
                              (_%hd193032193062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193031193059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193033193064%_))
                              (_%__kont196827196828%_
                               _%hd193032193062%_
                               _%hd193006193099%_)
                              (let ()
                                (declare (not safe))
                                (_%g192998193038%_)))))
                      (let () (declare (not safe)) (_%g192998193038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193007193101%_))
                                                      (let ((_%e193031193059%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193007193101%_))))
                (let ((_%tl193033193064%_
                       (let () (declare (not safe)) (##cdr _%e193031193059%_)))
                      (_%hd193032193062%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193031193059%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193033193064%_))
                      (_%__kont196827196828%_
                       _%hd193032193062%_
                       _%hd193006193099%_)
                      (let () (declare (not safe)) (_%g192998193038%_)))))
              (let () (declare (not safe)) (_%g192998193038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193007193101%_))
                                                  (let ((_%e193031193059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193007193101%_))))
                                                    (let ((_%tl193033193064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193031193059%_)))
                                                          (_%hd193032193062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193031193059%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193033193064%_))
                                                          (_%__kont196827196828%_
                                                           _%hd193032193062%_
                                                           _%hd193006193099%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192998193038%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192998193038%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193007193101%_))
                                              (let ((_%e193031193059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193007193101%_))))
                                                (let ((_%tl193033193064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193031193059%_)))
                                                      (_%hd193032193062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193031193059%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193033193064%_))
                                                      (_%__kont196827196828%_
                                                       _%hd193032193062%_
                                                       _%hd193006193099%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192998193038%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192998193038%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193007193101%_))
                                      (let ((_%e193031193059%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193007193101%_))))
                                        (let ((_%tl193033193064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193031193059%_)))
                                              (_%hd193032193062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193031193059%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193033193064%_))
                                              (_%__kont196827196828%_
                                               _%hd193032193062%_
                                               _%hd193006193099%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g192998193038%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192998193038%_))))))
                          (let () (declare (not safe)) (_%g192998193038%_)))))
                  (let () (declare (not safe)) (_%g192998193038%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx192972%_ _%expr192973%_ _%type192974%_)
        (let ((_%$e192976%_ (not _%type192974%_)))
          (if _%$e192976%_
              _%$e192976%_
              (let ((_%$e192979%_
                     (eq? (##structure-ref _%type192974%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e192979%_
                    _%$e192979%_
                    (let ((_%expr-type192983%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr192973%_))))
                      (if (not _%expr-type192983%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx192972%_
                             _%type192974%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type192983%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx192972%_
                                 _%type192974%_
                                 _%expr-type192983%_))
                              (let ((_%$e192987%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type192983%_
                                        'gxc#!abort::t))))
                                (if _%$e192987%_
                                    _%$e192987%_
                                    (let ((_%$e192990%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type192983%_
                                              _%type192974%_))))
                                      (if _%$e192990%_
                                          _%$e192990%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx192972%_
                                             _%type192974%_
                                             _%expr-type192983%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self192398%_ _%stx192399%_)
        (let* ((_%__stx196903196904%_ _%stx192399%_)
               (_%g192404192514%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196903196904%_)))))
          (let ((_%__kont196905196906%_
                 (lambda (_%L192946%_ _%L192947%_ _%L192948%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L192948%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192398%_ _%L192947%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192398%_ _%L192946%_)))))
                (_%__kont196907196908%_
                 (lambda (_%L192772%_ _%L192773%_ _%L192774%_ _%L192775%_)
                   (let ((_%$e192807%_
                          (let ((__tmp197256
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L192775%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp197256))))
                     (if _%$e192807%_
                         ((lambda (_%pred-type192810%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type192810%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type192810%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test192815%_
                                        (let ((__tmp197257
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L192775%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L192774%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp197257
                                           _%stx192399%_
                                           _%self192398%_)))
                                       (_%K192819%_
                                        (let ((__tmp197258
                                               (lambda ()
                                                 (let ((__tmp197261
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self192398%_
                                                             _%L192773%_))))
                                                       (__tmp197259
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L192774%_))
                            (let ((__tmp197260
                                   (##structure-ref
                                    _%pred-type192810%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx192399%_
                               __tmp197260)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp197261
                                                    gxc#current-compile-path-type
                                                    __tmp197259)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197258)))
                                       (_%E192822%_
                                        (let ((__tmp197262
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self192398%_
                                                    _%L192772%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197262)))
                                       (_%__stx196881196882%_ _%test192815%_)
                                       (_%g192826192840%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx196881196882%_)))))
                                  (let ((_%__kont196883196884%_
                                         (lambda (_%L192868%_ _%L192869%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L192868%_))
                                               (force _%K192819%_)
                                               (force _%E192822%_))))
                                        (_%__kont196885196886%_
                                         (lambda ()
                                           (let ((__tmp197263
                                                  (cons '%#if
                                                        (cons _%test192815%_
                                                              (cons (force _%K192819%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E192822%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197263
                                              _%stx192399%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx196881196882%_))
                                        (let ((_%e192830192852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx196881196882%_))))
                                          (let ((_%tl192832192857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192830192852%_)))
                                                (_%hd192831192855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192830192852%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192832192857%_))
                                                (let ((_%e192833192860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192832192857%_))))
                                                  (let ((_%tl192835192865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192833192860%_)))
                                                        (_%hd192834192863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192833192860%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192835192865%_))
                                                        (_%__kont196883196884%_
                                                         _%hd192834192863%_
                                                         _%hd192831192855%_)
                                                        (_%__kont196885196886%_))))
                                                (_%__kont196885196886%_))))
                                        (_%__kont196885196886%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self192398%_
                                   _%stx192399%_))))
                          _%$e192807%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self192398%_
                            _%stx192399%_))))))
                (_%__kont196909196910%_
                 (lambda (_%L192648%_ _%L192649%_ _%L192650%_ _%L192651%_)
                   (gxc#optimize-if%
                    _%self192398%_
                    (let ((__tmp197264
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L192650%_
                                       (cons _%L192648%_
                                             (cons _%L192649%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197264 _%stx192399%_)))))
                (_%__kont196911196912%_
                 (lambda (_%L192551%_ _%L192552%_ _%L192553%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self192398%_ _%stx192399%_)))))
            (let ((_%__match197110197111%_
                   (lambda (_%e192468192576%_
                            _%hd192469192579%_
                            _%tl192470192581%_
                            _%e192471192584%_
                            _%hd192472192587%_
                            _%tl192473192589%_
                            _%e192474192592%_
                            _%hd192475192595%_
                            _%tl192476192597%_
                            _%e192477192600%_
                            _%hd192478192603%_
                            _%tl192479192605%_
                            _%e192480192608%_
                            _%hd192481192611%_
                            _%tl192482192613%_
                            _%e192483192616%_
                            _%hd192484192619%_
                            _%tl192485192621%_
                            _%e192486192624%_
                            _%hd192487192627%_
                            _%tl192488192629%_
                            _%e192489192632%_
                            _%hd192490192635%_
                            _%tl192491192637%_
                            _%e192492192640%_
                            _%hd192493192643%_
                            _%tl192494192645%_)
                     (let ((_%L192648%_ _%hd192493192643%_)
                           (_%L192649%_ _%hd192490192635%_)
                           (_%L192650%_ _%hd192487192627%_)
                           (_%L192651%_ _%hd192484192619%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L192651%_ 'not))
                           (_%__kont196909196910%_
                            _%L192648%_
                            _%L192649%_
                            _%L192650%_
                            _%L192651%_)
                           (_%__kont196911196912%_
                            _%hd192493192643%_
                            _%hd192490192635%_
                            _%hd192472192587%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196903196904%_))
                  (let ((_%e192409192898%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196903196904%_))))
                    (let ((_%tl192411192903%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192409192898%_)))
                          (_%hd192410192901%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192409192898%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192411192903%_))
                          (let ((_%e192412192906%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192411192903%_))))
                            (let ((_%tl192414192911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192412192906%_)))
                                  (_%hd192413192909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192412192906%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192413192909%_))
                                  (let ((_%e192415192914%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192413192909%_))))
                                    (let ((_%tl192417192919%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192415192914%_)))
                                          (_%hd192416192917%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192415192914%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192416192917%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd192416192917%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192417192919%_))
                                                  (let ((_%e192418192922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192417192919%_))))
                                                    (let ((_%tl192420192927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192418192922%_)))
                                                          (_%hd192419192925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192418192922%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192420192927%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192414192911%_))
                      (let ((_%e192421192930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192414192911%_))))
                        (let ((_%tl192423192935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192421192930%_)))
                              (_%hd192422192933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192421192930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192423192935%_))
                              (let ((_%e192424192938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192423192935%_))))
                                (let ((_%tl192426192943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192424192938%_)))
                                      (_%hd192425192941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192424192938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192426192943%_))
                                      (_%__kont196905196906%_
                                       _%hd192425192941%_
                                       _%hd192422192933%_
                                       _%hd192419192925%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192404192514%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192404192514%_)))))
                      (let () (declare (not safe)) (_%g192404192514%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192414192911%_))
                      (let ((_%e192504192535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192414192911%_))))
                        (let ((_%tl192506192540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192504192535%_)))
                              (_%hd192505192538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192504192535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192506192540%_))
                              (let ((_%e192507192543%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192506192540%_))))
                                (let ((_%tl192509192548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192507192543%_)))
                                      (_%hd192508192546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192507192543%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192509192548%_))
                                      (_%__kont196911196912%_
                                       _%hd192508192546%_
                                       _%hd192505192538%_
                                       _%hd192413192909%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192404192514%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192404192514%_)))))
                      (let () (declare (not safe)) (_%g192404192514%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192414192911%_))
                                                      (let ((_%e192504192535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192414192911%_))))
                (let ((_%tl192506192540%_
                       (let () (declare (not safe)) (##cdr _%e192504192535%_)))
                      (_%hd192505192538%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192504192535%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192506192540%_))
                      (let ((_%e192507192543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192506192540%_))))
                        (let ((_%tl192509192548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192507192543%_)))
                              (_%hd192508192546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192507192543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192509192548%_))
                              (_%__kont196911196912%_
                               _%hd192508192546%_
                               _%hd192505192538%_
                               _%hd192413192909%_)
                              (let ()
                                (declare (not safe))
                                (_%g192404192514%_)))))
                      (let () (declare (not safe)) (_%g192404192514%_)))))
              (let () (declare (not safe)) (_%g192404192514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd192416192917%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192417192919%_))
                                                      (let ((_%e192440192708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192417192919%_))))
                (let ((_%tl192442192713%_
                       (let () (declare (not safe)) (##cdr _%e192440192708%_)))
                      (_%hd192441192711%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192440192708%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192441192711%_))
                      (let ((_%e192443192716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192441192711%_))))
                        (let ((_%tl192445192721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192443192716%_)))
                              (_%hd192444192719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192443192716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192444192719%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192444192719%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192445192721%_))
                                      (let ((_%e192446192724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192445192721%_))))
                                        (let ((_%tl192448192729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192446192724%_)))
                                              (_%hd192447192727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192446192724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192448192729%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192442192713%_))
                                                  (let ((_%e192449192732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192442192713%_))))
                                                    (let ((_%tl192451192737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192449192732%_)))
                                                          (_%hd192450192735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192449192732%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192450192735%_))
                                                          (let ((_%e192452192740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192450192735%_))))
                    (let ((_%tl192454192745%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192452192740%_)))
                          (_%hd192453192743%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192452192740%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192453192743%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd192453192743%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192454192745%_))
                                  (let ((_%e192455192748%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192454192745%_))))
                                    (let ((_%tl192457192753%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192455192748%_)))
                                          (_%hd192456192751%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192455192748%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192457192753%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192451192737%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192414192911%_))
                                                  (let ((_%e192458192756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192414192911%_))))
                                                    (let ((_%tl192460192761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192458192756%_)))
                                                          (_%hd192459192759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192458192756%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192460192761%_))
                                                          (let ((_%e192461192764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192460192761%_))))
                    (let ((_%tl192463192769%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192461192764%_)))
                          (_%hd192462192767%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192461192764%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192463192769%_))
                          (_%__kont196907196908%_
                           _%hd192462192767%_
                           _%hd192459192759%_
                           _%hd192456192751%_
                           _%hd192447192727%_)
                          (let () (declare (not safe)) (_%g192404192514%_)))))
                  (let () (declare (not safe)) (_%g192404192514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192414192911%_))
                                                  (let ((_%e192504192535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192414192911%_))))
                                                    (let ((_%tl192506192540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192504192535%_)))
                                                          (_%hd192505192538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192504192535%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192506192540%_))
                                                          (let ((_%e192507192543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192506192540%_))))
                    (let ((_%tl192509192548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192507192543%_)))
                          (_%hd192508192546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192507192543%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192509192548%_))
                          (_%__kont196911196912%_
                           _%hd192508192546%_
                           _%hd192505192538%_
                           _%hd192413192909%_)
                          (let () (declare (not safe)) (_%g192404192514%_)))))
                  (let () (declare (not safe)) (_%g192404192514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192451192737%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192414192911%_))
                                                  (let ((_%e192489192632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192414192911%_))))
                                                    (let ((_%tl192491192637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192489192632%_)))
                                                          (_%hd192490192635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192489192632%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192491192637%_))
                                                          (let ((_%e192492192640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192491192637%_))))
                    (let ((_%tl192494192645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192492192640%_)))
                          (_%hd192493192643%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192492192640%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192494192645%_))
                          (_%__match197110197111%_
                           _%e192409192898%_
                           _%hd192410192901%_
                           _%tl192411192903%_
                           _%e192412192906%_
                           _%hd192413192909%_
                           _%tl192414192911%_
                           _%e192415192914%_
                           _%hd192416192917%_
                           _%tl192417192919%_
                           _%e192440192708%_
                           _%hd192441192711%_
                           _%tl192442192713%_
                           _%e192443192716%_
                           _%hd192444192719%_
                           _%tl192445192721%_
                           _%e192446192724%_
                           _%hd192447192727%_
                           _%tl192448192729%_
                           _%e192449192732%_
                           _%hd192450192735%_
                           _%tl192451192737%_
                           _%e192489192632%_
                           _%hd192490192635%_
                           _%tl192491192637%_
                           _%e192492192640%_
                           _%hd192493192643%_
                           _%tl192494192645%_)
                          (let () (declare (not safe)) (_%g192404192514%_)))))
                  (let () (declare (not safe)) (_%g192404192514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192414192911%_))
                                                  (let ((_%e192504192535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192414192911%_))))
                                                    (let ((_%tl192506192540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192504192535%_)))
                                                          (_%hd192505192538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192504192535%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192506192540%_))
                                                          (let ((_%e192507192543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192506192540%_))))
                    (let ((_%tl192509192548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192507192543%_)))
                          (_%hd192508192546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192507192543%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192509192548%_))
                          (_%__kont196911196912%_
                           _%hd192508192546%_
                           _%hd192505192538%_
                           _%hd192413192909%_)
                          (let () (declare (not safe)) (_%g192404192514%_)))))
                  (let () (declare (not safe)) (_%g192404192514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192451192737%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192414192911%_))
                                          (let ((_%e192489192632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192414192911%_))))
                                            (let ((_%tl192491192637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192489192632%_)))
                                                  (_%hd192490192635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192489192632%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192491192637%_))
                                                  (let ((_%e192492192640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192491192637%_))))
                                                    (let ((_%tl192494192645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192492192640%_)))
                                                          (_%hd192493192643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192492192640%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192494192645%_))
                                                          (_%__match197110197111%_
                                                           _%e192409192898%_
                                                           _%hd192410192901%_
                                                           _%tl192411192903%_
                                                           _%e192412192906%_
                                                           _%hd192413192909%_
                                                           _%tl192414192911%_
                                                           _%e192415192914%_
                                                           _%hd192416192917%_
                                                           _%tl192417192919%_
                                                           _%e192440192708%_
                                                           _%hd192441192711%_
                                                           _%tl192442192713%_
                                                           _%e192443192716%_
                                                           _%hd192444192719%_
                                                           _%tl192445192721%_
                                                           _%e192446192724%_
                                                           _%hd192447192727%_
                                                           _%tl192448192729%_
                                                           _%e192449192732%_
                                                           _%hd192450192735%_
                                                           _%tl192451192737%_
                                                           _%e192489192632%_
                                                           _%hd192490192635%_
                                                           _%tl192491192637%_
                                                           _%e192492192640%_
                                                           _%hd192493192643%_
                                                           _%tl192494192645%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192404192514%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192414192911%_))
                                          (let ((_%e192504192535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192414192911%_))))
                                            (let ((_%tl192506192540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192504192535%_)))
                                                  (_%hd192505192538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192504192535%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192506192540%_))
                                                  (let ((_%e192507192543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192506192540%_))))
                                                    (let ((_%tl192509192548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192507192543%_)))
                                                          (_%hd192508192546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192507192543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192509192548%_))
                                                          (_%__kont196911196912%_
                                                           _%hd192508192546%_
                                                           _%hd192505192538%_
                                                           _%hd192413192909%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192404192514%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192451192737%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192414192911%_))
                                      (let ((_%e192489192632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192414192911%_))))
                                        (let ((_%tl192491192637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192489192632%_)))
                                              (_%hd192490192635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192489192632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192491192637%_))
                                              (let ((_%e192492192640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192491192637%_))))
                                                (let ((_%tl192494192645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192492192640%_)))
                                                      (_%hd192493192643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192492192640%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192494192645%_))
                                                      (_%__match197110197111%_
                                                       _%e192409192898%_
                                                       _%hd192410192901%_
                                                       _%tl192411192903%_
                                                       _%e192412192906%_
                                                       _%hd192413192909%_
                                                       _%tl192414192911%_
                                                       _%e192415192914%_
                                                       _%hd192416192917%_
                                                       _%tl192417192919%_
                                                       _%e192440192708%_
                                                       _%hd192441192711%_
                                                       _%tl192442192713%_
                                                       _%e192443192716%_
                                                       _%hd192444192719%_
                                                       _%tl192445192721%_
                                                       _%e192446192724%_
                                                       _%hd192447192727%_
                                                       _%tl192448192729%_
                                                       _%e192449192732%_
                                                       _%hd192450192735%_
                                                       _%tl192451192737%_
                                                       _%e192489192632%_
                                                       _%hd192490192635%_
                                                       _%tl192491192637%_
                                                       _%e192492192640%_
                                                       _%hd192493192643%_
                                                       _%tl192494192645%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192404192514%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192404192514%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192404192514%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192414192911%_))
                                      (let ((_%e192504192535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192414192911%_))))
                                        (let ((_%tl192506192540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192504192535%_)))
                                              (_%hd192505192538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192504192535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192506192540%_))
                                              (let ((_%e192507192543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192506192540%_))))
                                                (let ((_%tl192509192548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192507192543%_)))
                                                      (_%hd192508192546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192507192543%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192509192548%_))
                                                      (_%__kont196911196912%_
                                                       _%hd192508192546%_
                                                       _%hd192505192538%_
                                                       _%hd192413192909%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192404192514%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192404192514%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192404192514%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192451192737%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192414192911%_))
                                  (let ((_%e192489192632%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192414192911%_))))
                                    (let ((_%tl192491192637%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192489192632%_)))
                                          (_%hd192490192635%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192489192632%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192491192637%_))
                                          (let ((_%e192492192640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192491192637%_))))
                                            (let ((_%tl192494192645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192492192640%_)))
                                                  (_%hd192493192643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192492192640%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192494192645%_))
                                                  (_%__match197110197111%_
                                                   _%e192409192898%_
                                                   _%hd192410192901%_
                                                   _%tl192411192903%_
                                                   _%e192412192906%_
                                                   _%hd192413192909%_
                                                   _%tl192414192911%_
                                                   _%e192415192914%_
                                                   _%hd192416192917%_
                                                   _%tl192417192919%_
                                                   _%e192440192708%_
                                                   _%hd192441192711%_
                                                   _%tl192442192713%_
                                                   _%e192443192716%_
                                                   _%hd192444192719%_
                                                   _%tl192445192721%_
                                                   _%e192446192724%_
                                                   _%hd192447192727%_
                                                   _%tl192448192729%_
                                                   _%e192449192732%_
                                                   _%hd192450192735%_
                                                   _%tl192451192737%_
                                                   _%e192489192632%_
                                                   _%hd192490192635%_
                                                   _%tl192491192637%_
                                                   _%e192492192640%_
                                                   _%hd192493192643%_
                                                   _%tl192494192645%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192404192514%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192414192911%_))
                                  (let ((_%e192504192535%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192414192911%_))))
                                    (let ((_%tl192506192540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192504192535%_)))
                                          (_%hd192505192538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192504192535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192506192540%_))
                                          (let ((_%e192507192543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192506192540%_))))
                                            (let ((_%tl192509192548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192507192543%_)))
                                                  (_%hd192508192546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192507192543%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192509192548%_))
                                                  (_%__kont196911196912%_
                                                   _%hd192508192546%_
                                                   _%hd192505192538%_
                                                   _%hd192413192909%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192404192514%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192451192737%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192414192911%_))
                          (let ((_%e192489192632%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192414192911%_))))
                            (let ((_%tl192491192637%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192489192632%_)))
                                  (_%hd192490192635%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192489192632%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192491192637%_))
                                  (let ((_%e192492192640%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192491192637%_))))
                                    (let ((_%tl192494192645%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192492192640%_)))
                                          (_%hd192493192643%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192492192640%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192494192645%_))
                                          (_%__match197110197111%_
                                           _%e192409192898%_
                                           _%hd192410192901%_
                                           _%tl192411192903%_
                                           _%e192412192906%_
                                           _%hd192413192909%_
                                           _%tl192414192911%_
                                           _%e192415192914%_
                                           _%hd192416192917%_
                                           _%tl192417192919%_
                                           _%e192440192708%_
                                           _%hd192441192711%_
                                           _%tl192442192713%_
                                           _%e192443192716%_
                                           _%hd192444192719%_
                                           _%tl192445192721%_
                                           _%e192446192724%_
                                           _%hd192447192727%_
                                           _%tl192448192729%_
                                           _%e192449192732%_
                                           _%hd192450192735%_
                                           _%tl192451192737%_
                                           _%e192489192632%_
                                           _%hd192490192635%_
                                           _%tl192491192637%_
                                           _%e192492192640%_
                                           _%hd192493192643%_
                                           _%tl192494192645%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192404192514%_)))))
                          (let () (declare (not safe)) (_%g192404192514%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192414192911%_))
                          (let ((_%e192504192535%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192414192911%_))))
                            (let ((_%tl192506192540%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192504192535%_)))
                                  (_%hd192505192538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192504192535%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192506192540%_))
                                  (let ((_%e192507192543%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192506192540%_))))
                                    (let ((_%tl192509192548%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192507192543%_)))
                                          (_%hd192508192546%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192507192543%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192509192548%_))
                                          (_%__kont196911196912%_
                                           _%hd192508192546%_
                                           _%hd192505192538%_
                                           _%hd192413192909%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192404192514%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g192404192514%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192414192911%_))
                                                      (let ((_%e192504192535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192414192911%_))))
                (let ((_%tl192506192540%_
                       (let () (declare (not safe)) (##cdr _%e192504192535%_)))
                      (_%hd192505192538%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192504192535%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192506192540%_))
                      (let ((_%e192507192543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192506192540%_))))
                        (let ((_%tl192509192548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192507192543%_)))
                              (_%hd192508192546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192507192543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192509192548%_))
                              (_%__kont196911196912%_
                               _%hd192508192546%_
                               _%hd192505192538%_
                               _%hd192413192909%_)
                              (let ()
                                (declare (not safe))
                                (_%g192404192514%_)))))
                      (let () (declare (not safe)) (_%g192404192514%_)))))
              (let () (declare (not safe)) (_%g192404192514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192414192911%_))
                                                  (let ((_%e192504192535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192414192911%_))))
                                                    (let ((_%tl192506192540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192504192535%_)))
                                                          (_%hd192505192538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192504192535%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192506192540%_))
                                                          (let ((_%e192507192543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192506192540%_))))
                    (let ((_%tl192509192548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192507192543%_)))
                          (_%hd192508192546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192507192543%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192509192548%_))
                          (_%__kont196911196912%_
                           _%hd192508192546%_
                           _%hd192505192538%_
                           _%hd192413192909%_)
                          (let () (declare (not safe)) (_%g192404192514%_)))))
                  (let () (declare (not safe)) (_%g192404192514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192414192911%_))
                                          (let ((_%e192504192535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192414192911%_))))
                                            (let ((_%tl192506192540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192504192535%_)))
                                                  (_%hd192505192538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192504192535%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192506192540%_))
                                                  (let ((_%e192507192543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192506192540%_))))
                                                    (let ((_%tl192509192548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192507192543%_)))
                                                          (_%hd192508192546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192507192543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192509192548%_))
                                                          (_%__kont196911196912%_
                                                           _%hd192508192546%_
                                                           _%hd192505192538%_
                                                           _%hd192413192909%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192404192514%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192414192911%_))
                                      (let ((_%e192504192535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192414192911%_))))
                                        (let ((_%tl192506192540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192504192535%_)))
                                              (_%hd192505192538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192504192535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192506192540%_))
                                              (let ((_%e192507192543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192506192540%_))))
                                                (let ((_%tl192509192548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192507192543%_)))
                                                      (_%hd192508192546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192507192543%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192509192548%_))
                                                      (_%__kont196911196912%_
                                                       _%hd192508192546%_
                                                       _%hd192505192538%_
                                                       _%hd192413192909%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192404192514%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192404192514%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192404192514%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192414192911%_))
                                  (let ((_%e192504192535%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192414192911%_))))
                                    (let ((_%tl192506192540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192504192535%_)))
                                          (_%hd192505192538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192504192535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192506192540%_))
                                          (let ((_%e192507192543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192506192540%_))))
                                            (let ((_%tl192509192548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192507192543%_)))
                                                  (_%hd192508192546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192507192543%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192509192548%_))
                                                  (_%__kont196911196912%_
                                                   _%hd192508192546%_
                                                   _%hd192505192538%_
                                                   _%hd192413192909%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192404192514%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192404192514%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192414192911%_))
                          (let ((_%e192504192535%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192414192911%_))))
                            (let ((_%tl192506192540%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192504192535%_)))
                                  (_%hd192505192538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192504192535%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192506192540%_))
                                  (let ((_%e192507192543%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192506192540%_))))
                                    (let ((_%tl192509192548%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192507192543%_)))
                                          (_%hd192508192546%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192507192543%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192509192548%_))
                                          (_%__kont196911196912%_
                                           _%hd192508192546%_
                                           _%hd192505192538%_
                                           _%hd192413192909%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192404192514%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192404192514%_)))))
                          (let () (declare (not safe)) (_%g192404192514%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl192414192911%_))
                  (let ((_%e192504192535%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192414192911%_))))
                    (let ((_%tl192506192540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192504192535%_)))
                          (_%hd192505192538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192504192535%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192506192540%_))
                          (let ((_%e192507192543%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192506192540%_))))
                            (let ((_%tl192509192548%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192507192543%_)))
                                  (_%hd192508192546%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192507192543%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192509192548%_))
                                  (_%__kont196911196912%_
                                   _%hd192508192546%_
                                   _%hd192505192538%_
                                   _%hd192413192909%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g192404192514%_)))))
                          (let () (declare (not safe)) (_%g192404192514%_)))))
                  (let () (declare (not safe)) (_%g192404192514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192414192911%_))
                                                      (let ((_%e192504192535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192414192911%_))))
                (let ((_%tl192506192540%_
                       (let () (declare (not safe)) (##cdr _%e192504192535%_)))
                      (_%hd192505192538%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192504192535%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192506192540%_))
                      (let ((_%e192507192543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192506192540%_))))
                        (let ((_%tl192509192548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192507192543%_)))
                              (_%hd192508192546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192507192543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192509192548%_))
                              (_%__kont196911196912%_
                               _%hd192508192546%_
                               _%hd192505192538%_
                               _%hd192413192909%_)
                              (let ()
                                (declare (not safe))
                                (_%g192404192514%_)))))
                      (let () (declare (not safe)) (_%g192404192514%_)))))
              (let () (declare (not safe)) (_%g192404192514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192414192911%_))
                                              (let ((_%e192504192535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192414192911%_))))
                                                (let ((_%tl192506192540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192504192535%_)))
                                                      (_%hd192505192538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192504192535%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192506192540%_))
                                                      (let ((_%e192507192543%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192506192540%_))))
                (let ((_%tl192509192548%_
                       (let () (declare (not safe)) (##cdr _%e192507192543%_)))
                      (_%hd192508192546%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192507192543%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192509192548%_))
                      (_%__kont196911196912%_
                       _%hd192508192546%_
                       _%hd192505192538%_
                       _%hd192413192909%_)
                      (let () (declare (not safe)) (_%g192404192514%_)))))
              (let () (declare (not safe)) (_%g192404192514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g192404192514%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192414192911%_))
                                      (let ((_%e192504192535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192414192911%_))))
                                        (let ((_%tl192506192540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192504192535%_)))
                                              (_%hd192505192538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192504192535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192506192540%_))
                                              (let ((_%e192507192543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192506192540%_))))
                                                (let ((_%tl192509192548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192507192543%_)))
                                                      (_%hd192508192546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192507192543%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192509192548%_))
                                                      (_%__kont196911196912%_
                                                       _%hd192508192546%_
                                                       _%hd192505192538%_
                                                       _%hd192413192909%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192404192514%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192404192514%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192404192514%_))))))
                          (let () (declare (not safe)) (_%g192404192514%_)))))
                  (let () (declare (not safe)) (_%g192404192514%_))))))))))
