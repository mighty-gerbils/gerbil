(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712602661)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190143 (list gxc#::basic-xform::t))
            (__tmp190142 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190143
         '()
         __tmp190142
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189692%_
        (apply make-instance gxc#::optimize-call::t _%$args189692%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190144
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
        (__make-promise __tmp190144)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189684%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189687%_
                (let ((__obj190134
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190134))
               (__tmp190145
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189687%_ _%stx189684%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190145
           gxc#current-compile-method
           _%self189687%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190147 (list gxc#::void::t))
            (__tmp190146 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190147
         '()
         __tmp190146
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189681%_
        (apply make-instance gxc#::check-return-type::t _%$args189681%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190148
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
        (__make-promise __tmp190148)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189673%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189676%_
                (let ((__obj190136
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190136))
               (__tmp190149
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189676%_ _%stx189673%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190149
           gxc#current-compile-method
           _%self189676%_))))
    (define gxc#optimize-call%
      (lambda (_%self189274%_ _%stx189275%_)
        (let* ((_%__stx189747189748%_ _%stx189275%_)
               (_%g189278189324%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189747189748%_)))))
          (let ((_%__kont189749189750%_
                 (lambda (_%L189467%_ _%L189468%_)
                   (let* ((_%rator-id189488%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189468%_)))
                          (_%rator-type189490%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189488%_))))
                     (if (or (not _%rator-type189490%_)
                             (eq? (##structure-ref
                                   _%rator-type189490%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189274%_ _%stx189275%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189490%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190150
                                      (##structure-ref
                                       _%rator-type189490%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189488%_
                                  '" => "
                                  _%rator-type189490%_
                                  '" "
                                  __tmp190150))
                               (let* ((_%optimized189505%_
                                       (let ((__method190137
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189490%_
                                                 'optimize-call))))
                                         (if __method190137
                                             (__method190137
                                              _%rator-type189490%_
                                              _%self189274%_
                                              _%stx189275%_
                                              (let ((__tmp190151
                                                     (lambda (_%g189497189500%_
                                                              _%g189498189502%_)
                                                       (cons _%g189497189500%_
                                                             _%g189498189502%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190151
                                                 '()
                                                 _%L189467%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189490%_
                                                      'optimize-call)))))
                                      (_%__stx189695189696%_
                                       _%optimized189505%_)
                                      (_%g189508189537%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189695189696%_)))))
                                 (let ((_%__kont189697189698%_
                                        (lambda (_%L189605%_ _%L189606%_)
                                          (let* ((_%optimized-rator-id189633%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L189606%_)))
                                                 (_%rator-type189638%_
                                                  (let ((_%$e189635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id189633%_))))
                                                    (if _%$e189635%_
                                                        _%$e189635%_
                                                        _%rator-type189490%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type189638%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189633%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type189638%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type189638%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized189505%_
                                                (let ((__tmp190152
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L189606%_ '()))
                           (let ((__tmp190153
                                  (lambda (_%g189646189649%_ _%g189647189651%_)
                                    (cons _%g189646189649%_
                                          _%g189647189651%_))))
                             (declare (not safe))
                             (__foldr1 __tmp190153 '() _%L189605%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190152
                                                   _%stx189275%_))))))
                                       (_%__kont189701189702%_
                                        (lambda () _%optimized189505%_)))
                                   (let ((_%__match189744189745%_
                                          (lambda (_%e189512189549%_
                                                   _%hd189513189552%_
                                                   _%tl189514189554%_
                                                   _%e189515189557%_
                                                   _%hd189516189560%_
                                                   _%tl189517189562%_
                                                   _%e189518189565%_
                                                   _%hd189519189568%_
                                                   _%tl189520189570%_
                                                   _%e189521189573%_
                                                   _%hd189522189576%_
                                                   _%tl189523189578%_
                                                   _%__splice189699189700%_
                                                   _%target189524189581%_
                                                   _%tl189526189583%_)
                                            (letrec ((_%loop189527189586%_
                                                      (lambda (_%hd189525189589%_
                                                               _%arg189531189591%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189525189589%_))
                                                            (let ((_%e189528189594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189525189589%_))))
                      (let ((_%lp-tl189530189599%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189528189594%_)))
                            (_%lp-hd189529189597%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189528189594%_))))
                        (_%loop189527189586%_
                         _%lp-tl189530189599%_
                         (cons _%lp-hd189529189597%_ _%arg189531189591%_))))
                    (let ((_%arg189532189602%_ (reverse _%arg189531189591%_)))
                      (_%__kont189697189698%_
                       _%arg189532189602%_
                       _%hd189522189576%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop189527189586%_
                                               _%target189524189581%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189695189696%_))
                                         (let ((_%e189512189549%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189695189696%_))))
                                           (let ((_%tl189514189554%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189512189549%_)))
                                                 (_%hd189513189552%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189512189549%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189513189552%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189513189552%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189514189554%_))
                                                         (let ((_%e189515189557%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189514189554%_))))
                   (let ((_%tl189517189562%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189515189557%_)))
                         (_%hd189516189560%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189515189557%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189516189560%_))
                         (let ((_%e189518189565%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189516189560%_))))
                           (let ((_%tl189520189570%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189518189565%_)))
                                 (_%hd189519189568%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189518189565%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189519189568%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189519189568%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189520189570%_))
                                         (let ((_%e189521189573%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189520189570%_))))
                                           (let ((_%tl189523189578%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189521189573%_)))
                                                 (_%hd189522189576%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189521189573%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189523189578%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189517189562%_))
                                                     (let ((_%__splice189699189700%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189517189562%_
                                                               '0))))
                                                       (let ((_%tl189526189583%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189699189700%_ '1)))
                     (_%target189524189581%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189699189700%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189526189583%_))
                     (_%__match189744189745%_
                      _%e189512189549%_
                      _%hd189513189552%_
                      _%tl189514189554%_
                      _%e189515189557%_
                      _%hd189516189560%_
                      _%tl189517189562%_
                      _%e189518189565%_
                      _%hd189519189568%_
                      _%tl189520189570%_
                      _%e189521189573%_
                      _%hd189522189576%_
                      _%tl189523189578%_
                      _%__splice189699189700%_
                      _%target189524189581%_
                      _%tl189526189583%_)
                     (_%__kont189701189702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189701189702%_))
                                                 (_%__kont189701189702%_))))
                                         (_%__kont189701189702%_))
                                     (_%__kont189701189702%_))
                                 (_%__kont189701189702%_))))
                         (_%__kont189701189702%_))))
                 (_%__kont189701189702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189701189702%_))
                                                 (_%__kont189701189702%_))))
                                         (_%__kont189701189702%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189490%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189490%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190154
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L189468%_
                                                                '()))
                                                    (map (lambda (_%g189657189659%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self189274%_
                                                              _%g189657189659%_)))
                                                         (let ((__tmp190155
                                                                (lambda (_%g189661189664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g189662189666%_)
                          (cons _%g189661189664%_ _%g189662189666%_))))
                   (declare (not safe))
                   (__foldr1 __tmp190155 '() _%L189467%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190154
                                    _%stx189275%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189275%_
                                    _%rator-type189490%_))))))))
                (_%__kont189753189754%_
                 (lambda (_%L189369%_ _%L189370%_)
                   (let ((_%rator-type189387%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189370%_))))
                     (if (and _%rator-type189387%_
                              (eq? (##structure-ref
                                    _%rator-type189387%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type189387%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type189387%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type189387%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp190156
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self189274%_
                                               _%L189370%_))
                                            (map (lambda (_%g189389189391%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189274%_
                                                      _%g189389189391%_)))
                                                 (let ((__tmp190157
                                                        (lambda (_%g189393189396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g189394189398%_)
                  (cons _%g189393189396%_ _%g189394189398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp190157
                                                    '()
                                                    _%L189369%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190156 _%stx189275%_))
                         (if (or (not _%rator-type189387%_)
                                 (let ((__tmp190158
                                        (##structure-ref
                                         _%rator-type189387%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190158 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189274%_ _%stx189275%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189275%_
                                _%rator-type189387%_))))))))
            (let* ((_%__match189814189815%_
                    (lambda (_%e189305189329%_
                             _%hd189306189332%_
                             _%tl189307189334%_
                             _%e189308189337%_
                             _%hd189309189340%_
                             _%tl189310189342%_
                             _%__splice189755189756%_
                             _%target189311189345%_
                             _%tl189313189347%_)
                      (letrec ((_%loop189314189350%_
                                (lambda (_%hd189312189353%_
                                         _%rand189318189355%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189312189353%_))
                                      (let ((_%e189315189358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189312189353%_))))
                                        (let ((_%lp-tl189317189363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189315189358%_)))
                                              (_%lp-hd189316189361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189315189358%_))))
                                          (_%loop189314189350%_
                                           _%lp-tl189317189363%_
                                           (cons _%lp-hd189316189361%_
                                                 _%rand189318189355%_))))
                                      (let ((_%rand189319189366%_
                                             (reverse _%rand189318189355%_)))
                                        (_%__kont189753189754%_
                                         _%rand189319189366%_
                                         _%hd189309189340%_))))))
                        (_%loop189314189350%_ _%target189311189345%_ '()))))
                   (_%__match189794189795%_
                    (lambda (_%e189282189411%_
                             _%hd189283189414%_
                             _%tl189284189416%_
                             _%e189285189419%_
                             _%hd189286189422%_
                             _%tl189287189424%_
                             _%e189288189427%_
                             _%hd189289189430%_
                             _%tl189290189432%_
                             _%e189291189435%_
                             _%hd189292189438%_
                             _%tl189293189440%_
                             _%__splice189751189752%_
                             _%target189294189443%_
                             _%tl189296189445%_)
                      (letrec ((_%loop189297189448%_
                                (lambda (_%hd189295189451%_
                                         _%rand189301189453%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189295189451%_))
                                      (let ((_%e189298189456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189295189451%_))))
                                        (let ((_%lp-tl189300189461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189298189456%_)))
                                              (_%lp-hd189299189459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189298189456%_))))
                                          (_%loop189297189448%_
                                           _%lp-tl189300189461%_
                                           (cons _%lp-hd189299189459%_
                                                 _%rand189301189453%_))))
                                      (let ((_%rand189302189464%_
                                             (reverse _%rand189301189453%_)))
                                        (_%__kont189749189750%_
                                         _%rand189302189464%_
                                         _%hd189292189438%_))))))
                        (_%loop189297189448%_ _%target189294189443%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189747189748%_))
                  (let ((_%e189282189411%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189747189748%_))))
                    (let ((_%tl189284189416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189282189411%_)))
                          (_%hd189283189414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189282189411%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189284189416%_))
                          (let ((_%e189285189419%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189284189416%_))))
                            (let ((_%tl189287189424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189285189419%_)))
                                  (_%hd189286189422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189285189419%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189286189422%_))
                                  (let ((_%e189288189427%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189286189422%_))))
                                    (let ((_%tl189290189432%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189288189427%_)))
                                          (_%hd189289189430%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189288189427%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189289189430%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189289189430%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189290189432%_))
                                                  (let ((_%e189291189435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189290189432%_))))
                                                    (let ((_%tl189293189440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189291189435%_)))
                                                          (_%hd189292189438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189291189435%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189293189440%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189287189424%_))
                      (let ((_%__splice189751189752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189287189424%_
                                '0))))
                        (let ((_%tl189296189445%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189751189752%_ '1)))
                              (_%target189294189443%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189751189752%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189296189445%_))
                              (_%__match189794189795%_
                               _%e189282189411%_
                               _%hd189283189414%_
                               _%tl189284189416%_
                               _%e189285189419%_
                               _%hd189286189422%_
                               _%tl189287189424%_
                               _%e189288189427%_
                               _%hd189289189430%_
                               _%tl189290189432%_
                               _%e189291189435%_
                               _%hd189292189438%_
                               _%tl189293189440%_
                               _%__splice189751189752%_
                               _%target189294189443%_
                               _%tl189296189445%_)
                              (let ()
                                (declare (not safe))
                                (_%g189278189324%_)))))
                      (let () (declare (not safe)) (_%g189278189324%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189287189424%_))
                      (let ((_%__splice189755189756%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189287189424%_
                                '0))))
                        (let ((_%tl189313189347%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189755189756%_ '1)))
                              (_%target189311189345%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189755189756%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189313189347%_))
                              (_%__match189814189815%_
                               _%e189282189411%_
                               _%hd189283189414%_
                               _%tl189284189416%_
                               _%e189285189419%_
                               _%hd189286189422%_
                               _%tl189287189424%_
                               _%__splice189755189756%_
                               _%target189311189345%_
                               _%tl189313189347%_)
                              (let ()
                                (declare (not safe))
                                (_%g189278189324%_)))))
                      (let () (declare (not safe)) (_%g189278189324%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189287189424%_))
                                                      (let ((_%__splice189755189756%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189287189424%_ '0))))
                (let ((_%tl189313189347%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189755189756%_ '1)))
                      (_%target189311189345%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189755189756%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189313189347%_))
                      (_%__match189814189815%_
                       _%e189282189411%_
                       _%hd189283189414%_
                       _%tl189284189416%_
                       _%e189285189419%_
                       _%hd189286189422%_
                       _%tl189287189424%_
                       _%__splice189755189756%_
                       _%target189311189345%_
                       _%tl189313189347%_)
                      (let () (declare (not safe)) (_%g189278189324%_)))))
              (let () (declare (not safe)) (_%g189278189324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189287189424%_))
                                                  (let ((_%__splice189755189756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189287189424%_
                                                            '0))))
                                                    (let ((_%tl189313189347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189755189756%_
                                                              '1)))
                                                          (_%target189311189345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189755189756%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189313189347%_))
                                                          (_%__match189814189815%_
                                                           _%e189282189411%_
                                                           _%hd189283189414%_
                                                           _%tl189284189416%_
                                                           _%e189285189419%_
                                                           _%hd189286189422%_
                                                           _%tl189287189424%_
                                                           _%__splice189755189756%_
                                                           _%target189311189345%_
                                                           _%tl189313189347%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189278189324%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189278189324%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189287189424%_))
                                              (let ((_%__splice189755189756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189287189424%_
                                                        '0))))
                                                (let ((_%tl189313189347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189755189756%_
                                                          '1)))
                                                      (_%target189311189345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189755189756%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189313189347%_))
                                                      (_%__match189814189815%_
                                                       _%e189282189411%_
                                                       _%hd189283189414%_
                                                       _%tl189284189416%_
                                                       _%e189285189419%_
                                                       _%hd189286189422%_
                                                       _%tl189287189424%_
                                                       _%__splice189755189756%_
                                                       _%target189311189345%_
                                                       _%tl189313189347%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189278189324%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189278189324%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189287189424%_))
                                      (let ((_%__splice189755189756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189287189424%_
                                                '0))))
                                        (let ((_%tl189313189347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189755189756%_
                                                  '1)))
                                              (_%target189311189345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189755189756%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189313189347%_))
                                              (_%__match189814189815%_
                                               _%e189282189411%_
                                               _%hd189283189414%_
                                               _%tl189284189416%_
                                               _%e189285189419%_
                                               _%hd189286189422%_
                                               _%tl189287189424%_
                                               _%__splice189755189756%_
                                               _%target189311189345%_
                                               _%tl189313189347%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189278189324%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189278189324%_))))))
                          (let () (declare (not safe)) (_%g189278189324%_)))))
                  (let () (declare (not safe)) (_%g189278189324%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189236%_ _%ctx189237%_ _%stx189238%_ _%args189239%_)
        (let ((_%self189242%_ _%self189236%_))
          (if (let ((__method190138
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189242%_ 'check-arguments))))
                (if __method190138
                    (__method190138
                     _%self189242%_
                     _%ctx189237%_
                     _%stx189238%_
                     _%args189239%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self189242%_
                             'check-arguments))))
              (let* ((_%signature189252%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189242%_ '2 '#f '#f)))
                     (_%signature189254%_ _%signature189252%_)
                     (_%$e189264%_
                      (if _%signature189254%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189254%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189264%_
                    ((lambda (_%unchecked189267%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189267%_))
                           (let ((__tmp190159
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked189267%_
                                                          '()))
                                              (map (lambda (_%g189268189270%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189237%_
                                                        _%g189268189270%_)))
                                                   _%args189239%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190159 _%stx189238%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189237%_ _%stx189238%_))))
                     _%$e189264%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189237%_ _%stx189238%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189237%_ _%stx189238%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188987%_ _%ctx188988%_ _%stx188989%_ _%args188990%_)
        (let* ((_%self188993%_ _%self188987%_)
               (_%signature189002189004%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self188993%_ '2 '#f '#f))))
          (if _%signature189002189004%_
              (let* ((_%signature189007%_ _%signature189002189004%_)
                     (_%argument-types189008189010%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature189007%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types189008189010%_
                    (let* ((_%argument-types189013%_
                            _%argument-types189008189010%_)
                           (_%argument-types189018%_
                            (let ((__tmp190160
                                   (lambda (_%t189016%_)
                                     (if _%t189016%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188989%_
                                            _%t189016%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp190160
                               _%argument-types189013%_))))
                      (let _%loop189020%_ ((_%rest-args189022%_ _%args188990%_)
                                           (_%rest-types189023%_
                                            _%argument-types189018%_)
                                           (_%result189024%_ '#t))
                        (let* ((_%rest-args189025189033%_ _%rest-args189022%_)
                               (_%else189027189041%_
                                (lambda () _%result189024%_))
                               (_%K189029189102%_
                                (lambda (_%rest-args189044%_ _%arg189045%_)
                                  (let* ((_%rest-types189046189057%_
                                          _%rest-types189023%_)
                                         (_%E189050189061%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types189046189057%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K189053189090%_
                                           (lambda (_%rest-types189087%_
                                                    _%type189088%_)
                                             (_%loop189020%_
                                              _%rest-args189044%_
                                              _%rest-types189087%_
                                              (if (gxc#check-expression-type!
                                                   _%stx188989%_
                                                   _%arg189045%_
                                                   _%type189088%_)
                                                  _%result189024%_
                                                  '#f))))
                                          (_%K189052189081%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx188989%_
                                                _%argument-types189018%_))))
                                          (_%K189051189071%_
                                           (lambda (_%tail-type189065%_)
                                             (if (let ((__tmp190161
                                                        (lambda (_%g189066189068%_)
                                                          (gxc#check-expression-type!
                                                           _%stx188989%_
                                                           _%g189066189068%_
                                                           _%tail-type189065%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp190161
                                                    _%rest-args189044%_))
                                                 _%result189024%_
                                                 '#f))))
                                      (let ((_%try-match189048189084%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types189046189057%_))
                                                   (_%K189052189081%_)
                                                   (let ((_%tail-type189074%_
                                                          _%rest-types189046189057%_))
                                                     (_%K189051189071%_
                                                      _%tail-type189074%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types189046189057%_))
                                            (let ((_%tl189055189095%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types189046189057%_)))
                                                  (_%hd189054189093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types189046189057%_))))
                                              (let ((_%type189098%_
                                                     _%hd189054189093%_)
                                                    (_%rest-types189100%_
                                                     _%tl189055189095%_))
                                                (_%K189053189090%_
                                                 _%rest-types189100%_
                                                 _%type189098%_)))
                                            (_%try-match189048189084%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args189025189033%_))
                              (let ((_%hd189030189105%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args189025189033%_)))
                                    (_%tl189031189107%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args189025189033%_))))
                                (let* ((_%arg189110%_ _%hd189030189105%_)
                                       (_%rest-args189112%_
                                        _%tl189031189107%_))
                                  (_%K189029189102%_
                                   _%rest-args189112%_
                                   _%arg189110%_)))
                              (_%else189027189041%_)))))
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
      (lambda (_%self188798%_ _%ctx188799%_ _%stx188800%_ _%args188801%_)
        (let* ((_%self188804%_ _%self188798%_)
               (_%g188814188824%_
                (lambda (_%g188815188821%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188815188821%_))))
               (_%g188813188862%_
                (lambda (_%g188815188827%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188815188827%_))
                      (let ((_%e188817188829%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188815188827%_))))
                        (let ((_%hd188818188832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188817188829%_)))
                              (_%tl188819188834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188817188829%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188819188834%_))
                              ((lambda (_%L188837%_)
                                 (let* ((_%klass188849%_
                                         (let ((__tmp190162
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188804%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188800%_
                                            __tmp190162)))
                                        (_%object188851%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188799%_
                                            _%L188837%_)))
                                        (_%instance?188856%_
                                         (let ((_%$e188853%_
                                                (gxc#expression-type?
                                                 _%object188851%_
                                                 _%klass188849%_)))
                                           (if _%$e188853%_
                                               _%$e188853%_
                                               (gxc#expression-type?
                                                _%L188837%_
                                                _%klass188849%_)))))
                                   (if _%instance?188856%_
                                       (let ((__tmp190163
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188851%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188837%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188851%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190163
                                          _%stx188800%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx188799%_
                                          _%stx188800%_)))))
                               _%hd188818188832%_)
                              (_%g188814188824%_ _%g188815188827%_))))
                      (_%g188814188824%_ _%g188815188827%_)))))
          (_%g188813188862%_ _%args188801%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188594%_ _%ctx188595%_ _%stx188596%_ _%args188597%_)
        (let* ((_%self188600%_ _%self188594%_)
               (_%g188610188620%_
                (lambda (_%g188611188617%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188611188617%_))))
               (_%g188609188673%_
                (lambda (_%g188611188623%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188611188623%_))
                      (let ((_%e188613188625%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188611188623%_))))
                        (let ((_%hd188614188628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188613188625%_)))
                              (_%tl188615188630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188613188625%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188615188630%_))
                              ((lambda (_%L188633%_)
                                 (let* ((_%klass188645%_
                                         (let ((__tmp190164
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188600%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188596%_
                                            __tmp190164)))
                                        (_%object188647%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188595%_
                                            _%L188633%_)))
                                        (_%instance?188652%_
                                         (let ((_%$e188649%_
                                                (gxc#expression-type?
                                                 _%object188647%_
                                                 _%klass188645%_)))
                                           (if _%$e188649%_
                                               _%$e188649%_
                                               (gxc#expression-type?
                                                _%L188633%_
                                                _%klass188645%_))))
                                        (_%klass188655%_ _%klass188645%_))
                                   (if _%instance?188652%_
                                       (let ((__tmp190165
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188647%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188633%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188647%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190165
                                          _%stx188596%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188655%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp190166
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass188655%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object188647%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190166
                                              _%stx188596%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188655%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190167
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188655%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object188647%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190167
                                                  _%stx188596%_))
                                               (let ((__tmp190168
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188600%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188647%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190168
                                                  _%stx188596%_)))))))
                               _%hd188614188628%_)
                              (_%g188610188620%_ _%g188611188623%_))))
                      (_%g188610188620%_ _%g188611188623%_)))))
          (_%g188609188673%_ _%args188597%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188257%_)
        (let* ((_%__stx189824189825%_ _%stx188257%_)
               (_%g188262188303%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189824189825%_)))))
          (let ((_%__kont189826189827%_ (lambda () '#t))
                (_%__kont189828189829%_ (lambda () '#t))
                (_%__kont189830189831%_
                 (lambda (_%L188371%_ _%L188372%_)
                   (let ((_%rator-type188393188395%_
                          (let ((__tmp190169
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188372%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190169))))
                     (if _%rator-type188393188395%_
                         (let* ((_%rator-type188398%_
                                 _%rator-type188393188395%_)
                                (_%rator-signature188399188401%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188398%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188398%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188399188401%_
                               (let* ((_%rator-signature188404%_
                                       _%rator-signature188399188401%_)
                                      (_%rator-effect188405188407%_
                                       (if _%rator-signature188404%_
                                           (##direct-structure-ref
                                            _%rator-signature188404%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188405188407%_
                                     (let ((_%rator-effect188410%_
                                            _%rator-effect188405188407%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188410%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188410%_))
                                           (let ((__tmp190170
                                                  (let ((__tmp190171
                                                         (lambda (_%g188415188418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188416188420%_)
                   (cons _%g188415188418%_ _%g188416188420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190171
                                                     '()
                                                     _%L188371%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190170))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189834189835%_ (lambda () '#f)))
            (let ((_%__match189913189914%_
                   (lambda (_%e188278188315%_
                            _%hd188279188318%_
                            _%tl188280188320%_
                            _%e188281188323%_
                            _%hd188282188326%_
                            _%tl188283188328%_
                            _%e188284188331%_
                            _%hd188285188334%_
                            _%tl188286188336%_
                            _%e188287188339%_
                            _%hd188288188342%_
                            _%tl188289188344%_
                            _%__splice189832189833%_
                            _%target188290188347%_
                            _%tl188292188349%_)
                     (letrec ((_%loop188293188352%_
                               (lambda (_%hd188291188355%_
                                        _%rand188297188357%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188291188355%_))
                                     (let ((_%e188294188360%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188291188355%_))))
                                       (let ((_%lp-tl188296188365%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188294188360%_)))
                                             (_%lp-hd188295188363%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188294188360%_))))
                                         (_%loop188293188352%_
                                          _%lp-tl188296188365%_
                                          (cons _%lp-hd188295188363%_
                                                _%rand188297188357%_))))
                                     (let ((_%rand188298188368%_
                                            (reverse _%rand188297188357%_)))
                                       (_%__kont189830189831%_
                                        _%rand188298188368%_
                                        _%hd188288188342%_))))))
                       (_%loop188293188352%_ _%target188290188347%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189824189825%_))
                  (let ((_%e188264188451%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189824189825%_))))
                    (let ((_%tl188266188456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188264188451%_)))
                          (_%hd188265188454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188264188451%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188265188454%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188265188454%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188266188456%_))
                                  (let ((_%e188267188459%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188266188456%_))))
                                    (let ((_%tl188269188464%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188267188459%_)))
                                          (_%hd188268188462%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188267188459%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188269188464%_))
                                          (_%__kont189826189827%_)
                                          (_%__kont189834189835%_))))
                                  (_%__kont189834189835%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188265188454%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188266188456%_))
                                      (let ((_%e188273188436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188266188456%_))))
                                        (let ((_%tl188275188441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188273188436%_)))
                                              (_%hd188274188439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188273188436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188275188441%_))
                                              (_%__kont189828189829%_)
                                              (_%__kont189834189835%_))))
                                      (_%__kont189834189835%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188265188454%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188266188456%_))
                                          (let ((_%e188281188323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188266188456%_))))
                                            (let ((_%tl188283188328%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188281188323%_)))
                                                  (_%hd188282188326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188281188323%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188282188326%_))
                                                  (let ((_%e188284188331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188282188326%_))))
                                                    (let ((_%tl188286188336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188284188331%_)))
                                                          (_%hd188285188334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188284188331%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188285188334%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188285188334%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188286188336%_))
                          (let ((_%e188287188339%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188286188336%_))))
                            (let ((_%tl188289188344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188287188339%_)))
                                  (_%hd188288188342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188287188339%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188289188344%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188283188328%_))
                                      (let ((_%__splice189832189833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188283188328%_
                                                '0))))
                                        (let ((_%tl188292188349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189832189833%_
                                                  '1)))
                                              (_%target188290188347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189832189833%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188292188349%_))
                                              (_%__match189913189914%_
                                               _%e188264188451%_
                                               _%hd188265188454%_
                                               _%tl188266188456%_
                                               _%e188281188323%_
                                               _%hd188282188326%_
                                               _%tl188283188328%_
                                               _%e188284188331%_
                                               _%hd188285188334%_
                                               _%tl188286188336%_
                                               _%e188287188339%_
                                               _%hd188288188342%_
                                               _%tl188289188344%_
                                               _%__splice189832189833%_
                                               _%target188290188347%_
                                               _%tl188292188349%_)
                                              (_%__kont189834189835%_))))
                                      (_%__kont189834189835%_))
                                  (_%__kont189834189835%_))))
                          (_%__kont189834189835%_))
                      (_%__kont189834189835%_))
                  (_%__kont189834189835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189834189835%_))))
                                          (_%__kont189834189835%_))
                                      (_%__kont189834189835%_))))
                          (_%__kont189834189835%_))))
                  (_%__kont189834189835%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188252%_ _%klass188253%_)
        (let ((_%expr-type188255%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188252%_))))
          (if _%expr-type188255%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188255%_ _%klass188253%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188230%_ _%expr188231%_ _%type188232%_)
        (if (not _%type188232%_)
            '#f
            (let ((_%$e188235%_
                   (eq? (##structure-ref _%type188232%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188235%_
                  _%$e188235%_
                  (let ((_%expr-type188239%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188231%_))))
                    (if (not _%expr-type188239%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188239%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e188243%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188239%_
                                      'gxc#!abort::t))))
                              (if _%$e188243%_
                                  _%$e188243%_
                                  (let ((_%$e188246%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188239%_
                                            _%type188232%_))))
                                    (if _%$e188246%_
                                        _%$e188246%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188232%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188232%_
                                                   _%expr-type188239%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188230%_
                                                   _%expr188231%_
                                                   _%expr-type188239%_
                                                   _%type188232%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188044%_ _%ctx188045%_ _%stx188046%_ _%args188047%_)
        (let* ((_%self188050%_ _%self188044%_)
               (_%klass188060%_
                (let ((__tmp190172
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188050%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx188046%_ __tmp190172)))
               (_%fields188062%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188060%_
                           '5
                           '#f
                           '#f))))
               (_%args188068%_
                (map (lambda (_%g188063188065%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx188045%_ _%g188063188065%_)))
                     _%args188047%_))
               (_%inline-make-object188070%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188050%_
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
                           _%self188050%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields188062%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass188073%_ _%klass188060%_)
               (_%$e188087%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass188073%_ '6 '#f '#f))))
          (if _%$e188087%_
              ((lambda (_%ctor188090%_)
                 (let ((_%$obj188092%_
                        (let ((__tmp190173
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp190173)))
                       (_%ctor-impl188093%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass188073%_
                           _%ctor188090%_))))
                   (let ((__tmp190174
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj188092%_ '())
                                                  (cons _%inline-make-object188070%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl188093%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl188093%_ '()))
                                (cons (cons '%#ref (cons _%$obj188092%_ '()))
                                      _%args188068%_)))
                    (let ((_%$ctor188095%_
                           (let ((__tmp190175
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190175))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor188095%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188050%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj188092%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor188090%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor188095%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor188095%_ '()))
                              (cons (cons '%#ref (cons _%$obj188092%_ '()))
                                    _%args188068%_)))
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
                             _%self188050%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor188090%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj188092%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp190174 _%stx188046%_))))
               _%$e188087%_)
              (let ((_%$e188097%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass188073%_
                        '10
                        '#f
                        '#f))))
                (if _%$e188097%_
                    ((lambda (_%metaclass188100%_)
                       (let* ((_%$obj188102%_
                               (let ((__tmp190176
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190176)))
                              (_%metakons188104%_
                               (let ((__tmp190177
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx188046%_
                                         _%metaclass188100%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp190177
                                  'instance-init!)))
                              (__tmp190178
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj188102%_
                                                             '())
                                                       (cons _%inline-make-object188070%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons188104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons188104%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188050%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj188102%_
                                                             '()))
                                                 _%args188068%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188050%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj188102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args188068%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj188102%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190178 _%stx188046%_)))
                     _%$e188097%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188073%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp190179
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args188068%_))))
                              (declare (not safe))
                              (##fx= __tmp190179 _%fields188062%_))
                            (let ((__tmp190180
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188050%_
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
                                              _%self188050%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args188068%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190180
                               _%stx188046%_))
                            (let ((__tmp190182
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self188050%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp190181
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass188073%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx188046%_
                               __tmp190182
                               __tmp190181)))
                        (let ((_%$obj188109%_
                               (let ((__tmp190183
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190183))))
                          (let _%lp188111%_ ((_%rest188113%_ _%args188068%_)
                                             (_%initializers188114%_ '()))
                            (let* ((_%__stx189916189917%_ _%rest188113%_)
                                   (_%g188118188139%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx189916189917%_)))))
                              (let ((_%__kont189918189919%_
                                     (lambda (_%L188193%_
                                              _%L188194%_
                                              _%L188195%_)
                                       (let* ((_%slot188222%_
                                               (let ((__tmp190184
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L188195%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp190184)))
                                              (_%off188224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass188073%_
                                                  _%slot188222%_))))
                                         (if _%off188224%_
                                             (_%lp188111%_
                                              _%L188193%_
                                              (cons (cons _%off188224%_
                                                          _%L188194%_)
                                                    _%initializers188114%_))
                                             (let ((__tmp190185
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188050%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx188046%_
                                                __tmp190185
                                                _%slot188222%_))))))
                                    (_%__kont189920189921%_
                                     (lambda ()
                                       (let ((__tmp190186
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188070%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp190189
                                     (cons (cons '%#ref
                                                 (cons _%$obj188109%_ '()))
                                           '()))
                                    (__tmp190187
                                     (let ((__tmp190188
                                            (lambda (_%i188153%_ _%r188154%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188050%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i188153%_) '()))
                              (cons (cons '%#ref (cons _%$obj188109%_ '()))
                                    (cons (cdr _%i188153%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r188154%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp190188
                                        '()
                                        _%initializers188114%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp190189 __tmp190187)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190186
                                          _%stx188046%_))))
                                    (_%__kont189922189923%_
                                     (lambda ()
                                       (let ((__tmp190190
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188070%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args188068%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj188109%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190190
                                          _%stx188046%_)))))
                                (let* ((_%g188116188156%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx189916189917%_))
                                              (_%__kont189920189921%_)
                                              (_%__kont189922189923%_))))
                                       (_%__match189953189954%_
                                        (lambda (_%e188123188161%_
                                                 _%hd188124188164%_
                                                 _%tl188125188166%_
                                                 _%e188126188169%_
                                                 _%hd188127188172%_
                                                 _%tl188128188174%_
                                                 _%e188129188177%_
                                                 _%hd188130188180%_
                                                 _%tl188131188182%_
                                                 _%e188132188185%_
                                                 _%hd188133188188%_
                                                 _%tl188134188190%_)
                                          (let ((_%L188193%_
                                                 _%tl188134188190%_)
                                                (_%L188194%_
                                                 _%hd188133188188%_)
                                                (_%L188195%_
                                                 _%hd188130188180%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L188195%_))
                                                (_%__kont189918189919%_
                                                 _%L188193%_
                                                 _%L188194%_
                                                 _%L188195%_)
                                                (_%__kont189922189923%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx189916189917%_))
                                      (let ((_%e188123188161%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx189916189917%_))))
                                        (let ((_%tl188125188166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188123188161%_)))
                                              (_%hd188124188164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188123188161%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd188124188164%_))
                                              (let ((_%e188126188169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd188124188164%_))))
                                                (let ((_%tl188128188174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188126188169%_)))
                                                      (_%hd188127188172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188126188169%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd188127188172%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd188127188172%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188128188174%_))
                      (let ((_%e188129188177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188128188174%_))))
                        (let ((_%tl188131188182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188129188177%_)))
                              (_%hd188130188180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188129188177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188131188182%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188125188166%_))
                                  (let ((_%e188132188185%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188125188166%_))))
                                    (let ((_%tl188134188190%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188132188185%_)))
                                          (_%hd188133188188%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188132188185%_))))
                                      (_%__match189953189954%_
                                       _%e188123188161%_
                                       _%hd188124188164%_
                                       _%tl188125188166%_
                                       _%e188126188169%_
                                       _%hd188127188172%_
                                       _%tl188128188174%_
                                       _%e188129188177%_
                                       _%hd188130188180%_
                                       _%tl188131188182%_
                                       _%e188132188185%_
                                       _%hd188133188188%_
                                       _%tl188134188190%_)))
                                  (_%__kont189922189923%_))
                              (_%__kont189922189923%_))))
                      (_%__kont189922189923%_))
                  (_%__kont189922189923%_))
              (_%__kont189922189923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189922189923%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188116188156%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187827%_ _%ctx187828%_ _%stx187829%_ _%args187830%_)
        (let* ((_%self187833%_ _%self187827%_)
               (_%arguments-ok?187843%_
                (let ((__method190139
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187833%_ 'check-arguments))))
                  (if __method190139
                      (__method190139
                       _%self187833%_
                       _%ctx187828%_
                       _%stx187829%_
                       _%args187830%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187833%_
                               'check-arguments)))))
               (_%g187845187855%_
                (lambda (_%g187846187852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187846187852%_))))
               (_%g187844187919%_
                (lambda (_%g187846187858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187846187858%_))
                      (let ((_%e187848187860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187846187858%_))))
                        (let ((_%hd187849187863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187848187860%_)))
                              (_%tl187850187865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187848187860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187850187865%_))
                              ((lambda (_%L187868%_)
                                 (let* ((_%klass187881%_
                                         (let ((__tmp190191
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187833%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx187829%_
                                            __tmp190191)))
                                        (_%field187883%_
                                         (let ((__tmp190192
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187833%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass187881%_
                                            __tmp190192)))
                                        (_%object187885%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx187828%_
                                            _%L187868%_)))
                                        (_%klass187888%_ _%klass187881%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass187888%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp190193
                                              (cons (if (or _%arguments-ok?187843%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187833%_
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
                                 _%self187833%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field187883%_ '()))
                        (cons _%object187885%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190193
                                          _%stx187829%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass187888%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp190194
                                                  (cons (if (or _%arguments-ok?187843%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187833%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187833%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field187883%_ '()))
                            (cons _%object187885%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190194
                                              _%stx187829%_))
                                           (let ((_%$e187907%_
                                                  (let ((__tmp190195
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self187833%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass187888%_
                                                     __tmp190195))))
                                             (if _%$e187907%_
                                                 ((lambda (_%klass187910%_)
                                                    (let ((__tmp190196
                                                           (cons (if (or _%arguments-ok?187843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187833%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self187833%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field187883%_ '()))
                                     (cons _%object187885%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190196 _%stx187829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e187907%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187833%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190197
                                                            (let ((_%$obj187916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp190198
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190198))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj187916%_ '())
                                              (cons _%object187885%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass187888%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187916%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187833%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187883%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj187916%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?187843%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187916%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187833%_
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
                                                             _%self187833%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187916%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187833%_
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
               (gxc#xform-wrap-source __tmp190197 _%stx187829%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp190199
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object187885%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187833%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190199 _%stx187829%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd187849187863%_)
                              (_%g187845187855%_ _%g187846187858%_))))
                      (_%g187845187855%_ _%g187846187858%_)))))
          (_%g187844187919%_ _%args187830%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187591%_ _%ctx187592%_ _%stx187593%_ _%args187594%_)
        (let* ((_%self187597%_ _%self187591%_)
               (_%arguments-ok?187607%_
                (let ((__method190140
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187597%_ 'check-arguments))))
                  (if __method190140
                      (__method190140
                       _%self187597%_
                       _%ctx187592%_
                       _%stx187593%_
                       _%args187594%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187597%_
                               'check-arguments)))))
               (_%g187609187623%_
                (lambda (_%g187610187620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187610187620%_))))
               (_%g187608187702%_
                (lambda (_%g187610187626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187610187626%_))
                      (let ((_%e187613187628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187610187626%_))))
                        (let ((_%hd187614187631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187613187628%_)))
                              (_%tl187615187633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187613187628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187615187633%_))
                              (let ((_%e187616187636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187615187633%_))))
                                (let ((_%hd187617187639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187616187636%_)))
                                      (_%tl187618187641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187616187636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187618187641%_))
                                      ((lambda (_%L187644%_ _%L187645%_)
                                         (let* ((_%klass187661%_
                                                 (let ((__tmp190200
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187597%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx187593%_
                                                    __tmp190200)))
                                                (_%field187663%_
                                                 (let ((__tmp190201
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187597%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass187661%_
                                                    __tmp190201)))
                                                (_%object187665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187592%_
                                                    _%L187645%_)))
                                                (_%value187667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187592%_
                                                    _%L187644%_)))
                                                (_%klass187670%_
                                                 _%klass187661%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187670%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190202
                                                      (cons (if (or _%arguments-ok?187607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187597%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187597%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field187663%_ '()))
                                (cons _%object187665%_
                                      (cons _%value187667%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190202
                                                  _%stx187593%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187670%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp190203
                                                          (cons (if (or _%arguments-ok?187607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187597%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187597%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187663%_ '()))
                                    (cons _%object187665%_
                                          (cons _%value187667%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190203
                                                      _%stx187593%_))
                                                   (let ((_%$e187690%_
                                                          (let ((__tmp190204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187597%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187670%_
                     __tmp190204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187690%_
                                                         ((lambda (_%klass187693%_)
                                                            (let ((__tmp190205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187607%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187597%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187597%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187663%_ '()))
                                             (cons _%object187665%_
                                                   (cons _%value187667%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190205 _%stx187593%_)))
                  _%$e187690%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187597%_ '4 '#f '#f))
                     (let ((__tmp190206
                            (let ((_%$obj187699%_
                                   (let ((__tmp190207
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190207))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj187699%_ '())
                                                      (cons _%object187665%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass187670%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj187699%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187597%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field187663%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj187699%_
                                                              '()))
                                                  (cons _%value187667%_
                                                        '())))))
                          (cons (if _%arguments-ok?187607%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187597%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value187667%_ '())))))
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
                             _%self187597%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187699%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187597%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value187667%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190206 _%stx187593%_))
                     (let ((__tmp190208
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object187665%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187597%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value187667%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp190208
                        _%stx187593%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187617187639%_
                                       _%hd187614187631%_)
                                      (_%g187609187623%_ _%g187610187626%_))))
                              (_%g187609187623%_ _%g187610187626%_))))
                      (_%g187609187623%_ _%g187610187626%_)))))
          (_%g187608187702%_ _%args187594%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187406%_ _%ctx187407%_ _%stx187408%_ _%args187409%_)
        (let* ((_%self187412%_ _%self187406%_)
               (_%self187421187431%_ _%self187412%_)
               (_%E187423187435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187421187431%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K187424187445%_
                (lambda (_%inline187438%_ _%dispatch187439%_ _%arity187440%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self187412%_
                         _%args187409%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx187408%_
                         _%arity187440%_)))
                  (if _%inline187438%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp190209
                               (let ((__tmp190210
                                      (_%inline187438%_ _%stx187408%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190210
                                  _%stx187408%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx187407%_ __tmp190209)))
                      (if (and _%dispatch187439%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch187439%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch187439%_))
                            (let ((__tmp190211
                                   (let ((__tmp190212
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch187439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args187409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp190212
                                      _%stx187408%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx187407%_ __tmp190211)))
                          (gxc#!procedure::optimize-call
                           _%self187412%_
                           _%ctx187407%_
                           _%stx187408%_
                           _%args187409%_))))))
          (if '#t
              (let* ((_%e187425187448%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187421187431%_
                         '1
                         '#f
                         '#f)))
                     (_%e187426187451%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187421187431%_
                         '2
                         '#f
                         '#f)))
                     (_%e187427187454%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187421187431%_
                         '3
                         '#f
                         '#f)))
                     (_%arity187457%_ _%e187427187454%_)
                     (_%e187428187459%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187421187431%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187462%_ _%e187428187459%_)
                     (_%e187429187464%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187421187431%_
                         '5
                         '#f
                         '#f)))
                     (_%inline187467%_ _%e187429187464%_))
                (_%K187424187445%_
                 _%inline187467%_
                 _%dispatch187462%_
                 _%arity187457%_))
              (_%E187423187435%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187258%_ _%ctx187259%_ _%stx187260%_ _%args187261%_)
        (let* ((_%self187264%_ _%self187258%_)
               (_%$e187278%_
                (let ((__tmp190214
                       (lambda (_%g187273187275%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g187273187275%_
                            _%args187261%_))))
                      (__tmp190213
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self187264%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp190214 __tmp190213))))
          (if _%$e187278%_
              ((lambda (_%clause187281%_)
                 (let ((__method190141
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause187281%_ 'optimize-call))))
                   (if __method190141
                       (__method190141
                        _%clause187281%_
                        _%ctx187259%_
                        _%stx187260%_
                        _%args187261%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method"
                                _%clause187281%_
                                'optimize-call)))))
               _%$e187278%_)
              (let ((__tmp190215
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187264%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx187260%_
                 __tmp190215))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186998%_ _%ctx186999%_ _%stx187000%_ _%args187001%_)
        (let* ((_%self187004%_ _%self186998%_)
               (_%self187013187022%_ _%self187004%_)
               (_%E187015187026%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187013187022%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K187016187117%_
                (lambda (_%dispatch187029%_ _%table187030%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch187029%_))
                      (let* ((_%g187031187041%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch187029%_)))
                             (_%else187033187049%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch187029%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx186999%_
                                   _%stx187000%_))))
                             (_%K187035187098%_
                              (lambda (_%main187052%_ _%keys187053%_)
                                (let ((_g190216_
                                       (gxc#!kw-lambda-split-args
                                        _%stx187000%_
                                        _%args187001%_)))
                                  (begin
                                    (let ((_g190217_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190216_)
                                                 (##vector-length _g190216_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190217_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190217_)))
                                    (let ((_%pargs187055%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190216_ 0)))
                                          (_%kwargs187056%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190216_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main187052%_))
                                        (if _%table187030%_
                                            (let ((_%xargs187064%_
                                                   (map (lambda (_%key187058%_)
                                                          (let ((_%$e187060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key187058%_ _%kwargs187056%_))))
                    (if _%$e187060%_ _%$e187060%_ '(%#ref absent-value))))
                _%keys187053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw187066%_)
                                                 (if (memq (car _%kw187066%_)
                                                           _%keys187053%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx187000%_
                                                        _%keys187053%_
                                                        _%kw187066%_))))
                                               _%kwargs187056%_)
                                              (let ((__tmp190218
                                                     (let ((__tmp190219
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main187052%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs187055%_
                                         _%xargs187064%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190219 _%stx187000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx186999%_
                                                 __tmp190218)))
                                            (let* ((_%kwt187068%_
                                                    (let ((__tmp190220
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp190220)))
                                                   (_%kwvars187072%_
                                                    (map (lambda (_%_187070%_)
                                                           (let ((__tmp190221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp190221)))
                 _%kwargs187056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind187077%_
                                                    (map (lambda (_%kw187074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187075%_)
                   (cons (cons _%kwvar187075%_ '())
                         (cons (cdr _%kw187074%_) '())))
                 _%kwargs187056%_
                 _%kwvars187072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset187082%_
                                                    (map (lambda (_%kw187079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187080%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt187068%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw187079%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar187080%_
                                                             '()))
                                                 '()))))))
                 _%kwargs187056%_
                 _%kwvars187072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs187087%_
                                                    (map (lambda (_%kw187084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187085%_)
                   (cons (car _%kw187084%_)
                         (cons '%#ref (cons _%kwvar187085%_ '()))))
                 _%kwargs187056%_
                 _%kwvars187072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs187095%_
                                                    (map (lambda (_%key187089%_)
                                                           (let ((_%$e187091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key187089%_ _%xkwargs187087%_))))
                     (if _%$e187091%_ _%$e187091%_ '(%#ref absent-value))))
                 _%keys187053%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190222
                                                    (let ((__tmp190223
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind187077%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt187068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp190224
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs187056%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190224 _%stx187000%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp190225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp190226
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main187052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt187068%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs187055%_ _%xargs187095%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190226
                                     _%stx187000%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp190225 _%kwset187082%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190223 _%stx187000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx186999%_
                                               __tmp190222))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g187031187041%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e187036187101%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187031187041%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e187037187104%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187031187041%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e187038187107%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187031187041%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys187110%_ _%e187038187107%_)
                                   (_%e187039187112%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187031187041%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main187115%_ _%e187039187112%_))
                              (_%K187035187098%_
                               _%main187115%_
                               _%keys187110%_))
                            (_%else187033187049%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx186999%_ _%stx187000%_))))))
          (if '#t
              (let* ((_%e187017187120%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187013187022%_
                         '1
                         '#f
                         '#f)))
                     (_%e187018187123%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187013187022%_
                         '2
                         '#f
                         '#f)))
                     (_%e187019187126%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187013187022%_
                         '3
                         '#f
                         '#f)))
                     (_%table187129%_ _%e187019187126%_)
                     (_%e187020187131%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187013187022%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187134%_ _%e187020187131%_))
                (_%K187016187117%_ _%dispatch187134%_ _%table187129%_))
              (_%E187015187026%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186611%_ _%args186612%_)
        (let _%lp186614%_ ((_%rest186616%_ _%args186612%_)
                           (_%pargs186617%_ '())
                           (_%kwargs186618%_ '()))
          (let* ((_%__stx189958189959%_ _%rest186616%_)
                 (_%g186624186676%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189958189959%_)))))
            (let ((_%__kont189960189961%_
                   (lambda (_%L186855%_ _%L186856%_)
                     (_%lp186614%_
                      _%L186855%_
                      (cons _%L186856%_ _%pargs186617%_)
                      _%kwargs186618%_)))
                  (_%__kont189962189963%_
                   (lambda (_%L186801%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186801%_ _%pargs186617%_))
                             (reverse _%kwargs186618%_))))
                  (_%__kont189964189965%_
                   (lambda (_%L186748%_ _%L186749%_ _%L186750%_)
                     (let ((_%kw186767%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186750%_))))
                       (if (assq _%kw186767%_ _%kwargs186618%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186611%_
                              _%kw186767%_))
                           (_%lp186614%_
                            _%L186748%_
                            _%pargs186617%_
                            (cons (cons _%kw186767%_ _%L186749%_)
                                  _%kwargs186618%_))))))
                  (_%__kont189966189967%_
                   (lambda (_%L186696%_ _%L186697%_)
                     (_%lp186614%_
                      _%L186696%_
                      (cons _%L186697%_ _%pargs186617%_)
                      _%kwargs186618%_)))
                  (_%__kont189968189969%_
                   (lambda ()
                     (values (reverse _%pargs186617%_)
                             (reverse _%kwargs186618%_)))))
              (let ((_%__match190065190066%_
                     (lambda (_%e186655186716%_
                              _%hd186656186719%_
                              _%tl186657186721%_
                              _%e186658186724%_
                              _%hd186659186727%_
                              _%tl186660186729%_
                              _%e186661186732%_
                              _%hd186662186735%_
                              _%tl186663186737%_
                              _%e186664186740%_
                              _%hd186665186743%_
                              _%tl186666186745%_)
                       (let ((_%L186748%_ _%tl186666186745%_)
                             (_%L186749%_ _%hd186665186743%_)
                             (_%L186750%_ _%hd186662186735%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186750%_))
                             (_%__kont189964189965%_
                              _%L186748%_
                              _%L186749%_
                              _%L186750%_)
                             (_%__kont189966189967%_
                              _%tl186657186721%_
                              _%hd186656186719%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189958189959%_))
                    (let ((_%e186628186820%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189958189959%_))))
                      (let ((_%tl186630186825%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186628186820%_)))
                            (_%hd186629186823%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186628186820%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186629186823%_))
                            (let ((_%e186631186828%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186629186823%_))))
                              (let ((_%tl186633186833%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186631186828%_)))
                                    (_%hd186632186831%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186631186828%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186632186831%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186632186831%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186633186833%_))
                                            (let ((_%e186634186836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186633186833%_))))
                                              (let ((_%tl186636186841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186634186836%_)))
                                                    (_%hd186635186839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186634186836%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186635186839%_))
                                                    (let ((_%e186637186844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186635186839%_))))
                                                      (if (equal? _%e186637186844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186636186841%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186630186825%_))
                          (let ((_%e186638186847%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186630186825%_))))
                            (let ((_%tl186640186852%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186638186847%_)))
                                  (_%hd186639186850%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186638186847%_))))
                              (_%__kont189960189961%_
                               _%tl186640186852%_
                               _%hd186639186850%_)))
                          (_%__kont189966189967%_
                           _%tl186630186825%_
                           _%hd186629186823%_))
                      (_%__kont189966189967%_
                       _%tl186630186825%_
                       _%hd186629186823%_))
                  (if (equal? _%e186637186844%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186636186841%_))
                          (_%__kont189962189963%_ _%tl186630186825%_)
                          (_%__kont189966189967%_
                           _%tl186630186825%_
                           _%hd186629186823%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186636186841%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186630186825%_))
                              (let ((_%e186664186740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186630186825%_))))
                                (let ((_%tl186666186745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186664186740%_)))
                                      (_%hd186665186743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186664186740%_))))
                                  (_%__match190065190066%_
                                   _%e186628186820%_
                                   _%hd186629186823%_
                                   _%tl186630186825%_
                                   _%e186631186828%_
                                   _%hd186632186831%_
                                   _%tl186633186833%_
                                   _%e186634186836%_
                                   _%hd186635186839%_
                                   _%tl186636186841%_
                                   _%e186664186740%_
                                   _%hd186665186743%_
                                   _%tl186666186745%_)))
                              (_%__kont189966189967%_
                               _%tl186630186825%_
                               _%hd186629186823%_))
                          (_%__kont189966189967%_
                           _%tl186630186825%_
                           _%hd186629186823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186636186841%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186630186825%_))
                                                            (let ((_%e186664186740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186630186825%_))))
                      (let ((_%tl186666186745%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186664186740%_)))
                            (_%hd186665186743%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186664186740%_))))
                        (_%__match190065190066%_
                         _%e186628186820%_
                         _%hd186629186823%_
                         _%tl186630186825%_
                         _%e186631186828%_
                         _%hd186632186831%_
                         _%tl186633186833%_
                         _%e186634186836%_
                         _%hd186635186839%_
                         _%tl186636186841%_
                         _%e186664186740%_
                         _%hd186665186743%_
                         _%tl186666186745%_)))
                    (_%__kont189966189967%_
                     _%tl186630186825%_
                     _%hd186629186823%_))
                (_%__kont189966189967%_
                 _%tl186630186825%_
                 _%hd186629186823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189966189967%_
                                             _%tl186630186825%_
                                             _%hd186629186823%_))
                                        (_%__kont189966189967%_
                                         _%tl186630186825%_
                                         _%hd186629186823%_))
                                    (_%__kont189966189967%_
                                     _%tl186630186825%_
                                     _%hd186629186823%_))))
                            (_%__kont189966189967%_
                             _%tl186630186825%_
                             _%hd186629186823%_))))
                    (_%__kont189968189969%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186595%_ _%ctx186596%_ _%stx186597%_ _%args186598%_)
        (let ((_%self186601%_ _%self186595%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186596%_ _%stx186597%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186283%_ _%stx186284%_)
        (let* ((_%__stx190074190075%_ _%stx186284%_)
               (_%g186287186327%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190074190075%_)))))
          (let ((_%__kont190076190077%_
                 (lambda (_%L186433%_ _%L186434%_)
                   (let ((_%$e186461%_
                          (member 'return:
                                  (let ((__tmp190227
                                         (lambda (_%g186453186456%_
                                                  _%g186454186458%_)
                                           (cons _%g186453186456%_
                                                 _%g186454186458%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190227 '() _%L186434%_))
                                  gx#stx-eq?)))
                     (if _%$e186461%_
                         ((lambda (_%tail186464%_)
                            (let ((_%type186466%_
                                   (let ((__tmp190228
                                          (let ((__tmp190229
                                                 (cadr _%tail186464%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190229))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186284%_
                                      __tmp190228))))
                              (gxc#check-return-type!
                               _%stx186284%_
                               _%L186433%_
                               _%type186466%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186283%_
                                 _%L186433%_))))
                          _%$e186461%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186283%_ _%L186433%_))))))
                (_%__kont190080190081%_
                 (lambda (_%L186356%_ _%L186357%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186283%_ _%L186356%_)))))
            (let ((_%__match190111190112%_
                   (lambda (_%e186291186377%_
                            _%hd186292186380%_
                            _%tl186293186382%_
                            _%e186294186385%_
                            _%hd186295186388%_
                            _%tl186296186390%_
                            _%e186297186393%_
                            _%hd186298186396%_
                            _%tl186299186398%_
                            _%__splice190078190079%_
                            _%target186300186401%_
                            _%tl186302186403%_)
                     (letrec ((_%loop186303186406%_
                               (lambda (_%hd186301186409%_
                                        _%signature186307186411%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186301186409%_))
                                     (let ((_%e186304186414%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186301186409%_))))
                                       (let ((_%lp-tl186306186419%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186304186414%_)))
                                             (_%lp-hd186305186417%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186304186414%_))))
                                         (_%loop186303186406%_
                                          _%lp-tl186306186419%_
                                          (cons _%lp-hd186305186417%_
                                                _%signature186307186411%_))))
                                     (let ((_%signature186308186422%_
                                            (reverse _%signature186307186411%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186296186390%_))
                                           (let ((_%e186309186425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186296186390%_))))
                                             (let ((_%tl186311186430%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186309186425%_)))
                                                   (_%hd186310186428%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186309186425%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186311186430%_))
                                                   (_%__kont190076190077%_
                                                    _%hd186310186428%_
                                                    _%signature186308186422%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186287186327%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186287186327%_))))))))
                       (_%loop186303186406%_ _%target186300186401%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190074190075%_))
                  (let ((_%e186291186377%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190074190075%_))))
                    (let ((_%tl186293186382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186291186377%_)))
                          (_%hd186292186380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186291186377%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186293186382%_))
                          (let ((_%e186294186385%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186293186382%_))))
                            (let ((_%tl186296186390%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186294186385%_)))
                                  (_%hd186295186388%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186294186385%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186295186388%_))
                                  (let ((_%e186297186393%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186295186388%_))))
                                    (let ((_%tl186299186398%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186297186393%_)))
                                          (_%hd186298186396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186297186393%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186298186396%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186298186396%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186299186398%_))
                                                  (let ((_%__splice190078190079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186299186398%_
                                                            '0))))
                                                    (let ((_%tl186302186403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190078190079%_
                                                              '1)))
                                                          (_%target186300186401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190078190079%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186302186403%_))
                                                          (_%__match190111190112%_
                                                           _%e186291186377%_
                                                           _%hd186292186380%_
                                                           _%tl186293186382%_
                                                           _%e186294186385%_
                                                           _%hd186295186388%_
                                                           _%tl186296186390%_
                                                           _%e186297186393%_
                                                           _%hd186298186396%_
                                                           _%tl186299186398%_
                                                           _%__splice190078190079%_
                                                           _%target186300186401%_
                                                           _%tl186302186403%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186296186390%_))
                      (let ((_%e186320186348%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186296186390%_))))
                        (let ((_%tl186322186353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186320186348%_)))
                              (_%hd186321186351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186320186348%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186322186353%_))
                              (_%__kont190080190081%_
                               _%hd186321186351%_
                               _%hd186295186388%_)
                              (let ()
                                (declare (not safe))
                                (_%g186287186327%_)))))
                      (let () (declare (not safe)) (_%g186287186327%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186296186390%_))
                                                      (let ((_%e186320186348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186296186390%_))))
                (let ((_%tl186322186353%_
                       (let () (declare (not safe)) (##cdr _%e186320186348%_)))
                      (_%hd186321186351%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186320186348%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186322186353%_))
                      (_%__kont190080190081%_
                       _%hd186321186351%_
                       _%hd186295186388%_)
                      (let () (declare (not safe)) (_%g186287186327%_)))))
              (let () (declare (not safe)) (_%g186287186327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186296186390%_))
                                                  (let ((_%e186320186348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186296186390%_))))
                                                    (let ((_%tl186322186353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186320186348%_)))
                                                          (_%hd186321186351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186320186348%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186322186353%_))
                                                          (_%__kont190080190081%_
                                                           _%hd186321186351%_
                                                           _%hd186295186388%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186287186327%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186287186327%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186296186390%_))
                                              (let ((_%e186320186348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186296186390%_))))
                                                (let ((_%tl186322186353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186320186348%_)))
                                                      (_%hd186321186351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186320186348%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186322186353%_))
                                                      (_%__kont190080190081%_
                                                       _%hd186321186351%_
                                                       _%hd186295186388%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186287186327%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186287186327%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186296186390%_))
                                      (let ((_%e186320186348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186296186390%_))))
                                        (let ((_%tl186322186353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186320186348%_)))
                                              (_%hd186321186351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186320186348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186322186353%_))
                                              (_%__kont190080190081%_
                                               _%hd186321186351%_
                                               _%hd186295186388%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186287186327%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186287186327%_))))))
                          (let () (declare (not safe)) (_%g186287186327%_)))))
                  (let () (declare (not safe)) (_%g186287186327%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186261%_ _%expr186262%_ _%type186263%_)
        (let ((_%$e186265%_ (not _%type186263%_)))
          (if _%$e186265%_
              _%$e186265%_
              (let ((_%$e186268%_
                     (eq? (##structure-ref _%type186263%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186268%_
                    _%$e186268%_
                    (let ((_%expr-type186272%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186262%_))))
                      (if (not _%expr-type186272%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186261%_
                             _%type186263%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186272%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186261%_
                                 _%type186263%_
                                 _%expr-type186272%_))
                              (let ((_%$e186276%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186272%_
                                        'gxc#!abort::t))))
                                (if _%$e186276%_
                                    _%$e186276%_
                                    (let ((_%$e186279%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186272%_
                                              _%type186263%_))))
                                      (if _%$e186279%_
                                          _%$e186279%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186261%_
                                             _%type186263%_
                                             _%expr-type186272%_)))))))))))))))))
