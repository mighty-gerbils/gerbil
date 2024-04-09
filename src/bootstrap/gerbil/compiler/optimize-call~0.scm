(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712702637)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190204 (list gxc#::basic-xform::t))
            (__tmp190203 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190204
         '()
         __tmp190203
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189753%_
        (apply make-instance gxc#::optimize-call::t _%$args189753%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190205
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
        (__make-promise __tmp190205)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189745%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189748%_
                (let ((__obj190195
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190195))
               (__tmp190206
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189748%_ _%stx189745%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190206
           gxc#current-compile-method
           _%self189748%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190208 (list gxc#::void::t))
            (__tmp190207 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190208
         '()
         __tmp190207
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189742%_
        (apply make-instance gxc#::check-return-type::t _%$args189742%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190209
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
        (__make-promise __tmp190209)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189734%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189737%_
                (let ((__obj190197
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190197))
               (__tmp190210
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189737%_ _%stx189734%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190210
           gxc#current-compile-method
           _%self189737%_))))
    (define gxc#optimize-call%
      (lambda (_%self189335%_ _%stx189336%_)
        (let* ((_%__stx189808189809%_ _%stx189336%_)
               (_%g189339189385%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189808189809%_)))))
          (let ((_%__kont189810189811%_
                 (lambda (_%L189528%_ _%L189529%_)
                   (let* ((_%rator-id189549%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189529%_)))
                          (_%rator-type189551%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189549%_))))
                     (if (or (not _%rator-type189551%_)
                             (eq? (##structure-ref
                                   _%rator-type189551%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189335%_ _%stx189336%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189551%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190211
                                      (##structure-ref
                                       _%rator-type189551%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189549%_
                                  '" => "
                                  _%rator-type189551%_
                                  '" "
                                  __tmp190211))
                               (let* ((_%optimized189566%_
                                       (let ((__method190198
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189551%_
                                                 'optimize-call))))
                                         (if __method190198
                                             (__method190198
                                              _%rator-type189551%_
                                              _%self189335%_
                                              _%stx189336%_
                                              (let ((__tmp190212
                                                     (lambda (_%g189558189561%_
                                                              _%g189559189563%_)
                                                       (cons _%g189558189561%_
                                                             _%g189559189563%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190212
                                                 '()
                                                 _%L189528%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189551%_
                                                      'optimize-call)))))
                                      (_%__stx189756189757%_
                                       _%optimized189566%_)
                                      (_%g189569189598%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189756189757%_)))))
                                 (let ((_%__kont189758189759%_
                                        (lambda (_%L189666%_ _%L189667%_)
                                          (let* ((_%optimized-rator-id189694%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L189667%_)))
                                                 (_%rator-type189699%_
                                                  (let ((_%$e189696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id189694%_))))
                                                    (if _%$e189696%_
                                                        _%$e189696%_
                                                        _%rator-type189551%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type189699%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189694%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type189699%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type189699%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized189566%_
                                                (let ((__tmp190213
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L189667%_ '()))
                           (let ((__tmp190214
                                  (lambda (_%g189707189710%_ _%g189708189712%_)
                                    (cons _%g189707189710%_
                                          _%g189708189712%_))))
                             (declare (not safe))
                             (__foldr1 __tmp190214 '() _%L189666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190213
                                                   _%stx189336%_))))))
                                       (_%__kont189762189763%_
                                        (lambda () _%optimized189566%_)))
                                   (let ((_%__match189805189806%_
                                          (lambda (_%e189573189610%_
                                                   _%hd189574189613%_
                                                   _%tl189575189615%_
                                                   _%e189576189618%_
                                                   _%hd189577189621%_
                                                   _%tl189578189623%_
                                                   _%e189579189626%_
                                                   _%hd189580189629%_
                                                   _%tl189581189631%_
                                                   _%e189582189634%_
                                                   _%hd189583189637%_
                                                   _%tl189584189639%_
                                                   _%__splice189760189761%_
                                                   _%target189585189642%_
                                                   _%tl189587189644%_)
                                            (letrec ((_%loop189588189647%_
                                                      (lambda (_%hd189586189650%_
                                                               _%arg189592189652%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189586189650%_))
                                                            (let ((_%e189589189655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189586189650%_))))
                      (let ((_%lp-tl189591189660%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189589189655%_)))
                            (_%lp-hd189590189658%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189589189655%_))))
                        (_%loop189588189647%_
                         _%lp-tl189591189660%_
                         (cons _%lp-hd189590189658%_ _%arg189592189652%_))))
                    (let ((_%arg189593189663%_ (reverse _%arg189592189652%_)))
                      (_%__kont189758189759%_
                       _%arg189593189663%_
                       _%hd189583189637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop189588189647%_
                                               _%target189585189642%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189756189757%_))
                                         (let ((_%e189573189610%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189756189757%_))))
                                           (let ((_%tl189575189615%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189573189610%_)))
                                                 (_%hd189574189613%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189573189610%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189574189613%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189574189613%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189575189615%_))
                                                         (let ((_%e189576189618%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189575189615%_))))
                   (let ((_%tl189578189623%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189576189618%_)))
                         (_%hd189577189621%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189576189618%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189577189621%_))
                         (let ((_%e189579189626%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189577189621%_))))
                           (let ((_%tl189581189631%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189579189626%_)))
                                 (_%hd189580189629%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189579189626%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189580189629%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189580189629%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189581189631%_))
                                         (let ((_%e189582189634%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189581189631%_))))
                                           (let ((_%tl189584189639%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189582189634%_)))
                                                 (_%hd189583189637%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189582189634%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189584189639%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189578189623%_))
                                                     (let ((_%__splice189760189761%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189578189623%_
                                                               '0))))
                                                       (let ((_%tl189587189644%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189760189761%_ '1)))
                     (_%target189585189642%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189760189761%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189587189644%_))
                     (_%__match189805189806%_
                      _%e189573189610%_
                      _%hd189574189613%_
                      _%tl189575189615%_
                      _%e189576189618%_
                      _%hd189577189621%_
                      _%tl189578189623%_
                      _%e189579189626%_
                      _%hd189580189629%_
                      _%tl189581189631%_
                      _%e189582189634%_
                      _%hd189583189637%_
                      _%tl189584189639%_
                      _%__splice189760189761%_
                      _%target189585189642%_
                      _%tl189587189644%_)
                     (_%__kont189762189763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189762189763%_))
                                                 (_%__kont189762189763%_))))
                                         (_%__kont189762189763%_))
                                     (_%__kont189762189763%_))
                                 (_%__kont189762189763%_))))
                         (_%__kont189762189763%_))))
                 (_%__kont189762189763%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189762189763%_))
                                                 (_%__kont189762189763%_))))
                                         (_%__kont189762189763%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189551%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189551%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190215
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L189529%_
                                                                '()))
                                                    (map (lambda (_%g189718189720%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self189335%_
                                                              _%g189718189720%_)))
                                                         (let ((__tmp190216
                                                                (lambda (_%g189722189725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g189723189727%_)
                          (cons _%g189722189725%_ _%g189723189727%_))))
                   (declare (not safe))
                   (__foldr1 __tmp190216 '() _%L189528%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190215
                                    _%stx189336%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189336%_
                                    _%rator-type189551%_))))))))
                (_%__kont189814189815%_
                 (lambda (_%L189430%_ _%L189431%_)
                   (let ((_%rator-type189448%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189431%_))))
                     (if (and _%rator-type189448%_
                              (eq? (##structure-ref
                                    _%rator-type189448%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type189448%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type189448%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type189448%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp190217
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self189335%_
                                               _%L189431%_))
                                            (map (lambda (_%g189450189452%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189335%_
                                                      _%g189450189452%_)))
                                                 (let ((__tmp190218
                                                        (lambda (_%g189454189457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g189455189459%_)
                  (cons _%g189454189457%_ _%g189455189459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp190218
                                                    '()
                                                    _%L189430%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190217 _%stx189336%_))
                         (if (or (not _%rator-type189448%_)
                                 (let ((__tmp190219
                                        (##structure-ref
                                         _%rator-type189448%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190219 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189335%_ _%stx189336%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189336%_
                                _%rator-type189448%_))))))))
            (let* ((_%__match189875189876%_
                    (lambda (_%e189366189390%_
                             _%hd189367189393%_
                             _%tl189368189395%_
                             _%e189369189398%_
                             _%hd189370189401%_
                             _%tl189371189403%_
                             _%__splice189816189817%_
                             _%target189372189406%_
                             _%tl189374189408%_)
                      (letrec ((_%loop189375189411%_
                                (lambda (_%hd189373189414%_
                                         _%rand189379189416%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189373189414%_))
                                      (let ((_%e189376189419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189373189414%_))))
                                        (let ((_%lp-tl189378189424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189376189419%_)))
                                              (_%lp-hd189377189422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189376189419%_))))
                                          (_%loop189375189411%_
                                           _%lp-tl189378189424%_
                                           (cons _%lp-hd189377189422%_
                                                 _%rand189379189416%_))))
                                      (let ((_%rand189380189427%_
                                             (reverse _%rand189379189416%_)))
                                        (_%__kont189814189815%_
                                         _%rand189380189427%_
                                         _%hd189370189401%_))))))
                        (_%loop189375189411%_ _%target189372189406%_ '()))))
                   (_%__match189855189856%_
                    (lambda (_%e189343189472%_
                             _%hd189344189475%_
                             _%tl189345189477%_
                             _%e189346189480%_
                             _%hd189347189483%_
                             _%tl189348189485%_
                             _%e189349189488%_
                             _%hd189350189491%_
                             _%tl189351189493%_
                             _%e189352189496%_
                             _%hd189353189499%_
                             _%tl189354189501%_
                             _%__splice189812189813%_
                             _%target189355189504%_
                             _%tl189357189506%_)
                      (letrec ((_%loop189358189509%_
                                (lambda (_%hd189356189512%_
                                         _%rand189362189514%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189356189512%_))
                                      (let ((_%e189359189517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189356189512%_))))
                                        (let ((_%lp-tl189361189522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189359189517%_)))
                                              (_%lp-hd189360189520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189359189517%_))))
                                          (_%loop189358189509%_
                                           _%lp-tl189361189522%_
                                           (cons _%lp-hd189360189520%_
                                                 _%rand189362189514%_))))
                                      (let ((_%rand189363189525%_
                                             (reverse _%rand189362189514%_)))
                                        (_%__kont189810189811%_
                                         _%rand189363189525%_
                                         _%hd189353189499%_))))))
                        (_%loop189358189509%_ _%target189355189504%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189808189809%_))
                  (let ((_%e189343189472%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189808189809%_))))
                    (let ((_%tl189345189477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189343189472%_)))
                          (_%hd189344189475%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189343189472%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189345189477%_))
                          (let ((_%e189346189480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189345189477%_))))
                            (let ((_%tl189348189485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189346189480%_)))
                                  (_%hd189347189483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189346189480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189347189483%_))
                                  (let ((_%e189349189488%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189347189483%_))))
                                    (let ((_%tl189351189493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189349189488%_)))
                                          (_%hd189350189491%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189349189488%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189350189491%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189350189491%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189351189493%_))
                                                  (let ((_%e189352189496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189351189493%_))))
                                                    (let ((_%tl189354189501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189352189496%_)))
                                                          (_%hd189353189499%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189352189496%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189354189501%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189348189485%_))
                      (let ((_%__splice189812189813%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189348189485%_
                                '0))))
                        (let ((_%tl189357189506%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189812189813%_ '1)))
                              (_%target189355189504%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189812189813%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189357189506%_))
                              (_%__match189855189856%_
                               _%e189343189472%_
                               _%hd189344189475%_
                               _%tl189345189477%_
                               _%e189346189480%_
                               _%hd189347189483%_
                               _%tl189348189485%_
                               _%e189349189488%_
                               _%hd189350189491%_
                               _%tl189351189493%_
                               _%e189352189496%_
                               _%hd189353189499%_
                               _%tl189354189501%_
                               _%__splice189812189813%_
                               _%target189355189504%_
                               _%tl189357189506%_)
                              (let ()
                                (declare (not safe))
                                (_%g189339189385%_)))))
                      (let () (declare (not safe)) (_%g189339189385%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189348189485%_))
                      (let ((_%__splice189816189817%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189348189485%_
                                '0))))
                        (let ((_%tl189374189408%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189816189817%_ '1)))
                              (_%target189372189406%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189816189817%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189374189408%_))
                              (_%__match189875189876%_
                               _%e189343189472%_
                               _%hd189344189475%_
                               _%tl189345189477%_
                               _%e189346189480%_
                               _%hd189347189483%_
                               _%tl189348189485%_
                               _%__splice189816189817%_
                               _%target189372189406%_
                               _%tl189374189408%_)
                              (let ()
                                (declare (not safe))
                                (_%g189339189385%_)))))
                      (let () (declare (not safe)) (_%g189339189385%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189348189485%_))
                                                      (let ((_%__splice189816189817%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189348189485%_ '0))))
                (let ((_%tl189374189408%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189816189817%_ '1)))
                      (_%target189372189406%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189816189817%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189374189408%_))
                      (_%__match189875189876%_
                       _%e189343189472%_
                       _%hd189344189475%_
                       _%tl189345189477%_
                       _%e189346189480%_
                       _%hd189347189483%_
                       _%tl189348189485%_
                       _%__splice189816189817%_
                       _%target189372189406%_
                       _%tl189374189408%_)
                      (let () (declare (not safe)) (_%g189339189385%_)))))
              (let () (declare (not safe)) (_%g189339189385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189348189485%_))
                                                  (let ((_%__splice189816189817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189348189485%_
                                                            '0))))
                                                    (let ((_%tl189374189408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189816189817%_
                                                              '1)))
                                                          (_%target189372189406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189816189817%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189374189408%_))
                                                          (_%__match189875189876%_
                                                           _%e189343189472%_
                                                           _%hd189344189475%_
                                                           _%tl189345189477%_
                                                           _%e189346189480%_
                                                           _%hd189347189483%_
                                                           _%tl189348189485%_
                                                           _%__splice189816189817%_
                                                           _%target189372189406%_
                                                           _%tl189374189408%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189339189385%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189339189385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189348189485%_))
                                              (let ((_%__splice189816189817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189348189485%_
                                                        '0))))
                                                (let ((_%tl189374189408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189816189817%_
                                                          '1)))
                                                      (_%target189372189406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189816189817%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189374189408%_))
                                                      (_%__match189875189876%_
                                                       _%e189343189472%_
                                                       _%hd189344189475%_
                                                       _%tl189345189477%_
                                                       _%e189346189480%_
                                                       _%hd189347189483%_
                                                       _%tl189348189485%_
                                                       _%__splice189816189817%_
                                                       _%target189372189406%_
                                                       _%tl189374189408%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189339189385%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189339189385%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189348189485%_))
                                      (let ((_%__splice189816189817%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189348189485%_
                                                '0))))
                                        (let ((_%tl189374189408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189816189817%_
                                                  '1)))
                                              (_%target189372189406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189816189817%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189374189408%_))
                                              (_%__match189875189876%_
                                               _%e189343189472%_
                                               _%hd189344189475%_
                                               _%tl189345189477%_
                                               _%e189346189480%_
                                               _%hd189347189483%_
                                               _%tl189348189485%_
                                               _%__splice189816189817%_
                                               _%target189372189406%_
                                               _%tl189374189408%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189339189385%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189339189385%_))))))
                          (let () (declare (not safe)) (_%g189339189385%_)))))
                  (let () (declare (not safe)) (_%g189339189385%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189297%_ _%ctx189298%_ _%stx189299%_ _%args189300%_)
        (let ((_%self189303%_ _%self189297%_))
          (if (let ((__method190199
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189303%_ 'check-arguments))))
                (if __method190199
                    (__method190199
                     _%self189303%_
                     _%ctx189298%_
                     _%stx189299%_
                     _%args189300%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self189303%_
                             'check-arguments))))
              (let* ((_%signature189313%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189303%_ '2 '#f '#f)))
                     (_%signature189315%_ _%signature189313%_)
                     (_%$e189325%_
                      (if _%signature189315%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189315%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189325%_
                    ((lambda (_%unchecked189328%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189328%_))
                           (let ((__tmp190220
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked189328%_
                                                          '()))
                                              (map (lambda (_%g189329189331%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189298%_
                                                        _%g189329189331%_)))
                                                   _%args189300%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190220 _%stx189299%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189298%_ _%stx189299%_))))
                     _%$e189325%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189298%_ _%stx189299%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189298%_ _%stx189299%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self189048%_ _%ctx189049%_ _%stx189050%_ _%args189051%_)
        (let* ((_%self189054%_ _%self189048%_)
               (_%signature189063189065%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self189054%_ '2 '#f '#f))))
          (if _%signature189063189065%_
              (let* ((_%signature189068%_ _%signature189063189065%_)
                     (_%argument-types189069189071%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature189068%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types189069189071%_
                    (let* ((_%argument-types189074%_
                            _%argument-types189069189071%_)
                           (_%argument-types189079%_
                            (let ((__tmp190221
                                   (lambda (_%t189077%_)
                                     (if _%t189077%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189050%_
                                            _%t189077%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp190221
                               _%argument-types189074%_))))
                      (let _%loop189081%_ ((_%rest-args189083%_ _%args189051%_)
                                           (_%rest-types189084%_
                                            _%argument-types189079%_)
                                           (_%result189085%_ '#t))
                        (let* ((_%rest-args189086189094%_ _%rest-args189083%_)
                               (_%else189088189102%_
                                (lambda () _%result189085%_))
                               (_%K189090189163%_
                                (lambda (_%rest-args189105%_ _%arg189106%_)
                                  (let* ((_%rest-types189107189118%_
                                          _%rest-types189084%_)
                                         (_%E189111189122%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types189107189118%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K189114189151%_
                                           (lambda (_%rest-types189148%_
                                                    _%type189149%_)
                                             (_%loop189081%_
                                              _%rest-args189105%_
                                              _%rest-types189148%_
                                              (if (gxc#check-expression-type!
                                                   _%stx189050%_
                                                   _%arg189106%_
                                                   _%type189149%_)
                                                  _%result189085%_
                                                  '#f))))
                                          (_%K189113189142%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx189050%_
                                                _%argument-types189079%_))))
                                          (_%K189112189132%_
                                           (lambda (_%tail-type189126%_)
                                             (if (let ((__tmp190222
                                                        (lambda (_%g189127189129%_)
                                                          (gxc#check-expression-type!
                                                           _%stx189050%_
                                                           _%g189127189129%_
                                                           _%tail-type189126%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp190222
                                                    _%rest-args189105%_))
                                                 _%result189085%_
                                                 '#f))))
                                      (let ((_%try-match189109189145%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types189107189118%_))
                                                   (_%K189113189142%_)
                                                   (let ((_%tail-type189135%_
                                                          _%rest-types189107189118%_))
                                                     (_%K189112189132%_
                                                      _%tail-type189135%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types189107189118%_))
                                            (let ((_%tl189116189156%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types189107189118%_)))
                                                  (_%hd189115189154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types189107189118%_))))
                                              (let ((_%type189159%_
                                                     _%hd189115189154%_)
                                                    (_%rest-types189161%_
                                                     _%tl189116189156%_))
                                                (_%K189114189151%_
                                                 _%rest-types189161%_
                                                 _%type189159%_)))
                                            (_%try-match189109189145%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args189086189094%_))
                              (let ((_%hd189091189166%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args189086189094%_)))
                                    (_%tl189092189168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args189086189094%_))))
                                (let* ((_%arg189171%_ _%hd189091189166%_)
                                       (_%rest-args189173%_
                                        _%tl189092189168%_))
                                  (_%K189090189163%_
                                   _%rest-args189173%_
                                   _%arg189171%_)))
                              (_%else189088189102%_)))))
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
      (lambda (_%self188859%_ _%ctx188860%_ _%stx188861%_ _%args188862%_)
        (let* ((_%self188865%_ _%self188859%_)
               (_%g188875188885%_
                (lambda (_%g188876188882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188876188882%_))))
               (_%g188874188923%_
                (lambda (_%g188876188888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188876188888%_))
                      (let ((_%e188878188890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188876188888%_))))
                        (let ((_%hd188879188893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188878188890%_)))
                              (_%tl188880188895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188878188890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188880188895%_))
                              ((lambda (_%L188898%_)
                                 (let* ((_%klass188910%_
                                         (let ((__tmp190223
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188865%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188861%_
                                            __tmp190223)))
                                        (_%object188912%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188860%_
                                            _%L188898%_)))
                                        (_%instance?188917%_
                                         (let ((_%$e188914%_
                                                (gxc#expression-type?
                                                 _%object188912%_
                                                 _%klass188910%_)))
                                           (if _%$e188914%_
                                               _%$e188914%_
                                               (gxc#expression-type?
                                                _%L188898%_
                                                _%klass188910%_)))))
                                   (if _%instance?188917%_
                                       (let ((__tmp190224
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188912%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188898%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188912%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190224
                                          _%stx188861%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx188860%_
                                          _%stx188861%_)))))
                               _%hd188879188893%_)
                              (_%g188875188885%_ _%g188876188888%_))))
                      (_%g188875188885%_ _%g188876188888%_)))))
          (_%g188874188923%_ _%args188862%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188655%_ _%ctx188656%_ _%stx188657%_ _%args188658%_)
        (let* ((_%self188661%_ _%self188655%_)
               (_%g188671188681%_
                (lambda (_%g188672188678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188672188678%_))))
               (_%g188670188734%_
                (lambda (_%g188672188684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188672188684%_))
                      (let ((_%e188674188686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188672188684%_))))
                        (let ((_%hd188675188689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188674188686%_)))
                              (_%tl188676188691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188674188686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188676188691%_))
                              ((lambda (_%L188694%_)
                                 (let* ((_%klass188706%_
                                         (let ((__tmp190225
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188661%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188657%_
                                            __tmp190225)))
                                        (_%object188708%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188656%_
                                            _%L188694%_)))
                                        (_%instance?188713%_
                                         (let ((_%$e188710%_
                                                (gxc#expression-type?
                                                 _%object188708%_
                                                 _%klass188706%_)))
                                           (if _%$e188710%_
                                               _%$e188710%_
                                               (gxc#expression-type?
                                                _%L188694%_
                                                _%klass188706%_))))
                                        (_%klass188716%_ _%klass188706%_))
                                   (if _%instance?188713%_
                                       (let ((__tmp190226
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object188708%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L188694%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object188708%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190226
                                          _%stx188657%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188716%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp190227
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass188716%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object188708%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190227
                                              _%stx188657%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188716%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190228
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188716%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object188708%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190228
                                                  _%stx188657%_))
                                               (let ((__tmp190229
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188661%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188708%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190229
                                                  _%stx188657%_)))))))
                               _%hd188675188689%_)
                              (_%g188671188681%_ _%g188672188684%_))))
                      (_%g188671188681%_ _%g188672188684%_)))))
          (_%g188670188734%_ _%args188658%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188318%_)
        (let* ((_%__stx189885189886%_ _%stx188318%_)
               (_%g188323188364%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189885189886%_)))))
          (let ((_%__kont189887189888%_ (lambda () '#t))
                (_%__kont189889189890%_ (lambda () '#t))
                (_%__kont189891189892%_
                 (lambda (_%L188432%_ _%L188433%_)
                   (let ((_%rator-type188454188456%_
                          (let ((__tmp190230
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188433%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190230))))
                     (if _%rator-type188454188456%_
                         (let* ((_%rator-type188459%_
                                 _%rator-type188454188456%_)
                                (_%rator-signature188460188462%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188459%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188459%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188460188462%_
                               (let* ((_%rator-signature188465%_
                                       _%rator-signature188460188462%_)
                                      (_%rator-effect188466188468%_
                                       (if _%rator-signature188465%_
                                           (##direct-structure-ref
                                            _%rator-signature188465%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188466188468%_
                                     (let ((_%rator-effect188471%_
                                            _%rator-effect188466188468%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188471%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188471%_))
                                           (let ((__tmp190231
                                                  (let ((__tmp190232
                                                         (lambda (_%g188476188479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188477188481%_)
                   (cons _%g188476188479%_ _%g188477188481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190232
                                                     '()
                                                     _%L188432%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190231))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189895189896%_ (lambda () '#f)))
            (let ((_%__match189974189975%_
                   (lambda (_%e188339188376%_
                            _%hd188340188379%_
                            _%tl188341188381%_
                            _%e188342188384%_
                            _%hd188343188387%_
                            _%tl188344188389%_
                            _%e188345188392%_
                            _%hd188346188395%_
                            _%tl188347188397%_
                            _%e188348188400%_
                            _%hd188349188403%_
                            _%tl188350188405%_
                            _%__splice189893189894%_
                            _%target188351188408%_
                            _%tl188353188410%_)
                     (letrec ((_%loop188354188413%_
                               (lambda (_%hd188352188416%_
                                        _%rand188358188418%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188352188416%_))
                                     (let ((_%e188355188421%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188352188416%_))))
                                       (let ((_%lp-tl188357188426%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188355188421%_)))
                                             (_%lp-hd188356188424%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188355188421%_))))
                                         (_%loop188354188413%_
                                          _%lp-tl188357188426%_
                                          (cons _%lp-hd188356188424%_
                                                _%rand188358188418%_))))
                                     (let ((_%rand188359188429%_
                                            (reverse _%rand188358188418%_)))
                                       (_%__kont189891189892%_
                                        _%rand188359188429%_
                                        _%hd188349188403%_))))))
                       (_%loop188354188413%_ _%target188351188408%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189885189886%_))
                  (let ((_%e188325188512%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189885189886%_))))
                    (let ((_%tl188327188517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188325188512%_)))
                          (_%hd188326188515%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188325188512%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188326188515%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188326188515%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188327188517%_))
                                  (let ((_%e188328188520%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188327188517%_))))
                                    (let ((_%tl188330188525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188328188520%_)))
                                          (_%hd188329188523%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188328188520%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188330188525%_))
                                          (_%__kont189887189888%_)
                                          (_%__kont189895189896%_))))
                                  (_%__kont189895189896%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188326188515%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188327188517%_))
                                      (let ((_%e188334188497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188327188517%_))))
                                        (let ((_%tl188336188502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188334188497%_)))
                                              (_%hd188335188500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188334188497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188336188502%_))
                                              (_%__kont189889189890%_)
                                              (_%__kont189895189896%_))))
                                      (_%__kont189895189896%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188326188515%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188327188517%_))
                                          (let ((_%e188342188384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188327188517%_))))
                                            (let ((_%tl188344188389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188342188384%_)))
                                                  (_%hd188343188387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188342188384%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188343188387%_))
                                                  (let ((_%e188345188392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188343188387%_))))
                                                    (let ((_%tl188347188397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188345188392%_)))
                                                          (_%hd188346188395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188345188392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188346188395%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188346188395%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188347188397%_))
                          (let ((_%e188348188400%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188347188397%_))))
                            (let ((_%tl188350188405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188348188400%_)))
                                  (_%hd188349188403%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188348188400%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188350188405%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188344188389%_))
                                      (let ((_%__splice189893189894%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188344188389%_
                                                '0))))
                                        (let ((_%tl188353188410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189893189894%_
                                                  '1)))
                                              (_%target188351188408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189893189894%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188353188410%_))
                                              (_%__match189974189975%_
                                               _%e188325188512%_
                                               _%hd188326188515%_
                                               _%tl188327188517%_
                                               _%e188342188384%_
                                               _%hd188343188387%_
                                               _%tl188344188389%_
                                               _%e188345188392%_
                                               _%hd188346188395%_
                                               _%tl188347188397%_
                                               _%e188348188400%_
                                               _%hd188349188403%_
                                               _%tl188350188405%_
                                               _%__splice189893189894%_
                                               _%target188351188408%_
                                               _%tl188353188410%_)
                                              (_%__kont189895189896%_))))
                                      (_%__kont189895189896%_))
                                  (_%__kont189895189896%_))))
                          (_%__kont189895189896%_))
                      (_%__kont189895189896%_))
                  (_%__kont189895189896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189895189896%_))))
                                          (_%__kont189895189896%_))
                                      (_%__kont189895189896%_))))
                          (_%__kont189895189896%_))))
                  (_%__kont189895189896%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188313%_ _%klass188314%_)
        (let ((_%expr-type188316%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188313%_))))
          (if _%expr-type188316%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188316%_ _%klass188314%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188291%_ _%expr188292%_ _%type188293%_)
        (if (not _%type188293%_)
            '#f
            (let ((_%$e188296%_
                   (eq? (##structure-ref _%type188293%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188296%_
                  _%$e188296%_
                  (let ((_%expr-type188300%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188292%_))))
                    (if (not _%expr-type188300%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188300%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e188304%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188300%_
                                      'gxc#!abort::t))))
                              (if _%$e188304%_
                                  _%$e188304%_
                                  (let ((_%$e188307%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188300%_
                                            _%type188293%_))))
                                    (if _%$e188307%_
                                        _%$e188307%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188293%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188293%_
                                                   _%expr-type188300%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188291%_
                                                   _%expr188292%_
                                                   _%expr-type188300%_
                                                   _%type188293%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188105%_ _%ctx188106%_ _%stx188107%_ _%args188108%_)
        (let* ((_%self188111%_ _%self188105%_)
               (_%klass188121%_
                (let ((__tmp190233
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188111%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx188107%_ __tmp190233)))
               (_%fields188123%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188121%_
                           '5
                           '#f
                           '#f))))
               (_%args188129%_
                (map (lambda (_%g188124188126%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx188106%_ _%g188124188126%_)))
                     _%args188108%_))
               (_%inline-make-object188131%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188111%_
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
                           _%self188111%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields188123%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass188134%_ _%klass188121%_)
               (_%$e188148%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass188134%_ '6 '#f '#f))))
          (if _%$e188148%_
              ((lambda (_%ctor188151%_)
                 (let ((_%$obj188153%_
                        (let ((__tmp190234
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp190234)))
                       (_%ctor-impl188154%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass188134%_
                           _%ctor188151%_))))
                   (let ((__tmp190235
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj188153%_ '())
                                                  (cons _%inline-make-object188131%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl188154%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl188154%_ '()))
                                (cons (cons '%#ref (cons _%$obj188153%_ '()))
                                      _%args188129%_)))
                    (let ((_%$ctor188156%_
                           (let ((__tmp190236
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190236))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor188156%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188111%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj188153%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor188151%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor188156%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor188156%_ '()))
                              (cons (cons '%#ref (cons _%$obj188153%_ '()))
                                    _%args188129%_)))
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
                             _%self188111%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor188151%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj188153%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp190235 _%stx188107%_))))
               _%$e188148%_)
              (let ((_%$e188158%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass188134%_
                        '10
                        '#f
                        '#f))))
                (if _%$e188158%_
                    ((lambda (_%metaclass188161%_)
                       (let* ((_%$obj188163%_
                               (let ((__tmp190237
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190237)))
                              (_%metakons188165%_
                               (let ((__tmp190238
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx188107%_
                                         _%metaclass188161%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp190238
                                  'instance-init!)))
                              (__tmp190239
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj188163%_
                                                             '())
                                                       (cons _%inline-make-object188131%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons188165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons188165%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188111%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj188163%_
                                                             '()))
                                                 _%args188129%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188111%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj188163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args188129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj188163%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190239 _%stx188107%_)))
                     _%$e188158%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass188134%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp190240
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args188129%_))))
                              (declare (not safe))
                              (##fx= __tmp190240 _%fields188123%_))
                            (let ((__tmp190241
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188111%_
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
                                              _%self188111%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args188129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190241
                               _%stx188107%_))
                            (let ((__tmp190243
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self188111%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp190242
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass188134%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx188107%_
                               __tmp190243
                               __tmp190242)))
                        (let ((_%$obj188170%_
                               (let ((__tmp190244
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190244))))
                          (let _%lp188172%_ ((_%rest188174%_ _%args188129%_)
                                             (_%initializers188175%_ '()))
                            (let* ((_%__stx189977189978%_ _%rest188174%_)
                                   (_%g188179188200%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx189977189978%_)))))
                              (let ((_%__kont189979189980%_
                                     (lambda (_%L188254%_
                                              _%L188255%_
                                              _%L188256%_)
                                       (let* ((_%slot188283%_
                                               (let ((__tmp190245
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L188256%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp190245)))
                                              (_%off188285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass188134%_
                                                  _%slot188283%_))))
                                         (if _%off188285%_
                                             (_%lp188172%_
                                              _%L188254%_
                                              (cons (cons _%off188285%_
                                                          _%L188255%_)
                                                    _%initializers188175%_))
                                             (let ((__tmp190246
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188111%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx188107%_
                                                __tmp190246
                                                _%slot188283%_))))))
                                    (_%__kont189981189982%_
                                     (lambda ()
                                       (let ((__tmp190247
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188131%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp190250
                                     (cons (cons '%#ref
                                                 (cons _%$obj188170%_ '()))
                                           '()))
                                    (__tmp190248
                                     (let ((__tmp190249
                                            (lambda (_%i188214%_ _%r188215%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188111%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i188214%_) '()))
                              (cons (cons '%#ref (cons _%$obj188170%_ '()))
                                    (cons (cdr _%i188214%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r188215%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp190249
                                        '()
                                        _%initializers188175%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp190250 __tmp190248)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190247
                                          _%stx188107%_))))
                                    (_%__kont189983189984%_
                                     (lambda ()
                                       (let ((__tmp190251
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj188170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object188131%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args188129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj188170%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190251
                                          _%stx188107%_)))))
                                (let* ((_%g188177188217%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx189977189978%_))
                                              (_%__kont189981189982%_)
                                              (_%__kont189983189984%_))))
                                       (_%__match190014190015%_
                                        (lambda (_%e188184188222%_
                                                 _%hd188185188225%_
                                                 _%tl188186188227%_
                                                 _%e188187188230%_
                                                 _%hd188188188233%_
                                                 _%tl188189188235%_
                                                 _%e188190188238%_
                                                 _%hd188191188241%_
                                                 _%tl188192188243%_
                                                 _%e188193188246%_
                                                 _%hd188194188249%_
                                                 _%tl188195188251%_)
                                          (let ((_%L188254%_
                                                 _%tl188195188251%_)
                                                (_%L188255%_
                                                 _%hd188194188249%_)
                                                (_%L188256%_
                                                 _%hd188191188241%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L188256%_))
                                                (_%__kont189979189980%_
                                                 _%L188254%_
                                                 _%L188255%_
                                                 _%L188256%_)
                                                (_%__kont189983189984%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx189977189978%_))
                                      (let ((_%e188184188222%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx189977189978%_))))
                                        (let ((_%tl188186188227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188184188222%_)))
                                              (_%hd188185188225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188184188222%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd188185188225%_))
                                              (let ((_%e188187188230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd188185188225%_))))
                                                (let ((_%tl188189188235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188187188230%_)))
                                                      (_%hd188188188233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188187188230%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd188188188233%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd188188188233%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188189188235%_))
                      (let ((_%e188190188238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188189188235%_))))
                        (let ((_%tl188192188243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188190188238%_)))
                              (_%hd188191188241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188190188238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188192188243%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188186188227%_))
                                  (let ((_%e188193188246%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188186188227%_))))
                                    (let ((_%tl188195188251%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188193188246%_)))
                                          (_%hd188194188249%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188193188246%_))))
                                      (_%__match190014190015%_
                                       _%e188184188222%_
                                       _%hd188185188225%_
                                       _%tl188186188227%_
                                       _%e188187188230%_
                                       _%hd188188188233%_
                                       _%tl188189188235%_
                                       _%e188190188238%_
                                       _%hd188191188241%_
                                       _%tl188192188243%_
                                       _%e188193188246%_
                                       _%hd188194188249%_
                                       _%tl188195188251%_)))
                                  (_%__kont189983189984%_))
                              (_%__kont189983189984%_))))
                      (_%__kont189983189984%_))
                  (_%__kont189983189984%_))
              (_%__kont189983189984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189983189984%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188177188217%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187888%_ _%ctx187889%_ _%stx187890%_ _%args187891%_)
        (let* ((_%self187894%_ _%self187888%_)
               (_%arguments-ok?187904%_
                (let ((__method190200
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187894%_ 'check-arguments))))
                  (if __method190200
                      (__method190200
                       _%self187894%_
                       _%ctx187889%_
                       _%stx187890%_
                       _%args187891%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187894%_
                               'check-arguments)))))
               (_%g187906187916%_
                (lambda (_%g187907187913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187907187913%_))))
               (_%g187905187980%_
                (lambda (_%g187907187919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187907187919%_))
                      (let ((_%e187909187921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187907187919%_))))
                        (let ((_%hd187910187924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187909187921%_)))
                              (_%tl187911187926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187909187921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187911187926%_))
                              ((lambda (_%L187929%_)
                                 (let* ((_%klass187942%_
                                         (let ((__tmp190252
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187894%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx187890%_
                                            __tmp190252)))
                                        (_%field187944%_
                                         (let ((__tmp190253
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187894%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass187942%_
                                            __tmp190253)))
                                        (_%object187946%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx187889%_
                                            _%L187929%_)))
                                        (_%klass187949%_ _%klass187942%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass187949%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp190254
                                              (cons (if (or _%arguments-ok?187904%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187894%_
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
                                 _%self187894%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field187944%_ '()))
                        (cons _%object187946%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp190254
                                          _%stx187890%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass187949%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp190255
                                                  (cons (if (or _%arguments-ok?187904%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187894%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187894%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field187944%_ '()))
                            (cons _%object187946%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190255
                                              _%stx187890%_))
                                           (let ((_%$e187968%_
                                                  (let ((__tmp190256
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self187894%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass187949%_
                                                     __tmp190256))))
                                             (if _%$e187968%_
                                                 ((lambda (_%klass187971%_)
                                                    (let ((__tmp190257
                                                           (cons (if (or _%arguments-ok?187904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187894%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self187894%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field187944%_ '()))
                                     (cons _%object187946%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190257 _%stx187890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e187968%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187894%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190258
                                                            (let ((_%$obj187977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp190259
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190259))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj187977%_ '())
                                              (cons _%object187946%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass187949%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187977%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187894%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187944%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj187977%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?187904%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187977%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187894%_
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
                                                             _%self187894%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187977%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187894%_
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
               (gxc#xform-wrap-source __tmp190258 _%stx187890%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp190260
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object187946%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187894%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190260 _%stx187890%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd187910187924%_)
                              (_%g187906187916%_ _%g187907187919%_))))
                      (_%g187906187916%_ _%g187907187919%_)))))
          (_%g187905187980%_ _%args187891%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187652%_ _%ctx187653%_ _%stx187654%_ _%args187655%_)
        (let* ((_%self187658%_ _%self187652%_)
               (_%arguments-ok?187668%_
                (let ((__method190201
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self187658%_ 'check-arguments))))
                  (if __method190201
                      (__method190201
                       _%self187658%_
                       _%ctx187653%_
                       _%stx187654%_
                       _%args187655%_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self187658%_
                               'check-arguments)))))
               (_%g187670187684%_
                (lambda (_%g187671187681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187671187681%_))))
               (_%g187669187763%_
                (lambda (_%g187671187687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187671187687%_))
                      (let ((_%e187674187689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187671187687%_))))
                        (let ((_%hd187675187692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187674187689%_)))
                              (_%tl187676187694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187674187689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187676187694%_))
                              (let ((_%e187677187697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187676187694%_))))
                                (let ((_%hd187678187700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187677187697%_)))
                                      (_%tl187679187702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187677187697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187679187702%_))
                                      ((lambda (_%L187705%_ _%L187706%_)
                                         (let* ((_%klass187722%_
                                                 (let ((__tmp190261
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187658%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx187654%_
                                                    __tmp190261)))
                                                (_%field187724%_
                                                 (let ((__tmp190262
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187658%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass187722%_
                                                    __tmp190262)))
                                                (_%object187726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187653%_
                                                    _%L187706%_)))
                                                (_%value187728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx187653%_
                                                    _%L187705%_)))
                                                (_%klass187731%_
                                                 _%klass187722%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187731%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp190263
                                                      (cons (if (or _%arguments-ok?187668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187658%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187658%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field187724%_ '()))
                                (cons _%object187726%_
                                      (cons _%value187728%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190263
                                                  _%stx187654%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187731%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp190264
                                                          (cons (if (or _%arguments-ok?187668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187658%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187658%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field187724%_ '()))
                                    (cons _%object187726%_
                                          (cons _%value187728%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190264
                                                      _%stx187654%_))
                                                   (let ((_%$e187751%_
                                                          (let ((__tmp190265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187658%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187731%_
                     __tmp190265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187751%_
                                                         ((lambda (_%klass187754%_)
                                                            (let ((__tmp190266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187668%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187658%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187658%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187724%_ '()))
                                             (cons _%object187726%_
                                                   (cons _%value187728%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190266 _%stx187654%_)))
                  _%$e187751%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187658%_ '4 '#f '#f))
                     (let ((__tmp190267
                            (let ((_%$obj187760%_
                                   (let ((__tmp190268
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190268))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj187760%_ '())
                                                      (cons _%object187726%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass187731%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj187760%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187658%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field187724%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj187760%_
                                                              '()))
                                                  (cons _%value187728%_
                                                        '())))))
                          (cons (if _%arguments-ok?187668%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187658%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value187728%_ '())))))
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
                             _%self187658%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187760%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self187658%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value187728%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190267 _%stx187654%_))
                     (let ((__tmp190269
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object187726%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187658%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value187728%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp190269
                        _%stx187654%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187678187700%_
                                       _%hd187675187692%_)
                                      (_%g187670187684%_ _%g187671187687%_))))
                              (_%g187670187684%_ _%g187671187687%_))))
                      (_%g187670187684%_ _%g187671187687%_)))))
          (_%g187669187763%_ _%args187655%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187467%_ _%ctx187468%_ _%stx187469%_ _%args187470%_)
        (let* ((_%self187473%_ _%self187467%_)
               (_%self187482187492%_ _%self187473%_)
               (_%E187484187496%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187482187492%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K187485187506%_
                (lambda (_%inline187499%_ _%dispatch187500%_ _%arity187501%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self187473%_
                         _%args187470%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx187469%_
                         _%arity187501%_)))
                  (if _%inline187499%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp190270
                               (let ((__tmp190271
                                      (_%inline187499%_ _%stx187469%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190271
                                  _%stx187469%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx187468%_ __tmp190270)))
                      (if (and _%dispatch187500%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch187500%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch187500%_))
                            (let ((__tmp190272
                                   (let ((__tmp190273
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch187500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args187470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp190273
                                      _%stx187469%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx187468%_ __tmp190272)))
                          (gxc#!procedure::optimize-call
                           _%self187473%_
                           _%ctx187468%_
                           _%stx187469%_
                           _%args187470%_))))))
          (if '#t
              (let* ((_%e187486187509%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187482187492%_
                         '1
                         '#f
                         '#f)))
                     (_%e187487187512%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187482187492%_
                         '2
                         '#f
                         '#f)))
                     (_%e187488187515%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187482187492%_
                         '3
                         '#f
                         '#f)))
                     (_%arity187518%_ _%e187488187515%_)
                     (_%e187489187520%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187482187492%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187523%_ _%e187489187520%_)
                     (_%e187490187525%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187482187492%_
                         '5
                         '#f
                         '#f)))
                     (_%inline187528%_ _%e187490187525%_))
                (_%K187485187506%_
                 _%inline187528%_
                 _%dispatch187523%_
                 _%arity187518%_))
              (_%E187484187496%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187319%_ _%ctx187320%_ _%stx187321%_ _%args187322%_)
        (let* ((_%self187325%_ _%self187319%_)
               (_%$e187339%_
                (let ((__tmp190275
                       (lambda (_%g187334187336%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g187334187336%_
                            _%args187322%_))))
                      (__tmp190274
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self187325%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp190275 __tmp190274))))
          (if _%$e187339%_
              ((lambda (_%clause187342%_)
                 (let ((__method190202
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause187342%_ 'optimize-call))))
                   (if __method190202
                       (__method190202
                        _%clause187342%_
                        _%ctx187320%_
                        _%stx187321%_
                        _%args187322%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method"
                                _%clause187342%_
                                'optimize-call)))))
               _%$e187339%_)
              (let ((__tmp190276
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187325%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx187321%_
                 __tmp190276))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187059%_ _%ctx187060%_ _%stx187061%_ _%args187062%_)
        (let* ((_%self187065%_ _%self187059%_)
               (_%self187074187083%_ _%self187065%_)
               (_%E187076187087%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187074187083%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K187077187178%_
                (lambda (_%dispatch187090%_ _%table187091%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch187090%_))
                      (let* ((_%g187092187102%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch187090%_)))
                             (_%else187094187110%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch187090%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx187060%_
                                   _%stx187061%_))))
                             (_%K187096187159%_
                              (lambda (_%main187113%_ _%keys187114%_)
                                (let ((_g190277_
                                       (gxc#!kw-lambda-split-args
                                        _%stx187061%_
                                        _%args187062%_)))
                                  (begin
                                    (let ((_g190278_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190277_)
                                                 (##vector-length _g190277_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190278_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190278_)))
                                    (let ((_%pargs187116%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190277_ 0)))
                                          (_%kwargs187117%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g190277_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main187113%_))
                                        (if _%table187091%_
                                            (let ((_%xargs187125%_
                                                   (map (lambda (_%key187119%_)
                                                          (let ((_%$e187121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key187119%_ _%kwargs187117%_))))
                    (if _%$e187121%_ _%$e187121%_ '(%#ref absent-value))))
                _%keys187114%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw187127%_)
                                                 (if (memq (car _%kw187127%_)
                                                           _%keys187114%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx187061%_
                                                        _%keys187114%_
                                                        _%kw187127%_))))
                                               _%kwargs187117%_)
                                              (let ((__tmp190279
                                                     (let ((__tmp190280
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main187113%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs187116%_
                                         _%xargs187125%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190280 _%stx187061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx187060%_
                                                 __tmp190279)))
                                            (let* ((_%kwt187129%_
                                                    (let ((__tmp190281
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp190281)))
                                                   (_%kwvars187133%_
                                                    (map (lambda (_%_187131%_)
                                                           (let ((__tmp190282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp190282)))
                 _%kwargs187117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind187138%_
                                                    (map (lambda (_%kw187135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187136%_)
                   (cons (cons _%kwvar187136%_ '())
                         (cons (cdr _%kw187135%_) '())))
                 _%kwargs187117%_
                 _%kwvars187133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset187143%_
                                                    (map (lambda (_%kw187140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187141%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt187129%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw187140%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar187141%_
                                                             '()))
                                                 '()))))))
                 _%kwargs187117%_
                 _%kwvars187133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs187148%_
                                                    (map (lambda (_%kw187145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar187146%_)
                   (cons (car _%kw187145%_)
                         (cons '%#ref (cons _%kwvar187146%_ '()))))
                 _%kwargs187117%_
                 _%kwvars187133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs187156%_
                                                    (map (lambda (_%key187150%_)
                                                           (let ((_%$e187152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key187150%_ _%xkwargs187148%_))))
                     (if _%$e187152%_ _%$e187152%_ '(%#ref absent-value))))
                 _%keys187114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190283
                                                    (let ((__tmp190284
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind187138%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt187129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp190285
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs187117%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190285 _%stx187061%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp190286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp190287
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main187113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt187129%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs187116%_ _%xargs187156%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190287
                                     _%stx187061%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp190286 _%kwset187143%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp190284 _%stx187061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx187060%_
                                               __tmp190283))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g187092187102%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e187097187162%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187092187102%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e187098187165%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187092187102%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e187099187168%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187092187102%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys187171%_ _%e187099187168%_)
                                   (_%e187100187173%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187092187102%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main187176%_ _%e187100187173%_))
                              (_%K187096187159%_
                               _%main187176%_
                               _%keys187171%_))
                            (_%else187094187110%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx187060%_ _%stx187061%_))))))
          (if '#t
              (let* ((_%e187078187181%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187074187083%_
                         '1
                         '#f
                         '#f)))
                     (_%e187079187184%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187074187083%_
                         '2
                         '#f
                         '#f)))
                     (_%e187080187187%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187074187083%_
                         '3
                         '#f
                         '#f)))
                     (_%table187190%_ _%e187080187187%_)
                     (_%e187081187192%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187074187083%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch187195%_ _%e187081187192%_))
                (_%K187077187178%_ _%dispatch187195%_ _%table187190%_))
              (_%E187076187087%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186672%_ _%args186673%_)
        (let _%lp186675%_ ((_%rest186677%_ _%args186673%_)
                           (_%pargs186678%_ '())
                           (_%kwargs186679%_ '()))
          (let* ((_%__stx190019190020%_ _%rest186677%_)
                 (_%g186685186737%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190019190020%_)))))
            (let ((_%__kont190021190022%_
                   (lambda (_%L186916%_ _%L186917%_)
                     (_%lp186675%_
                      _%L186916%_
                      (cons _%L186917%_ _%pargs186678%_)
                      _%kwargs186679%_)))
                  (_%__kont190023190024%_
                   (lambda (_%L186862%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186862%_ _%pargs186678%_))
                             (reverse _%kwargs186679%_))))
                  (_%__kont190025190026%_
                   (lambda (_%L186809%_ _%L186810%_ _%L186811%_)
                     (let ((_%kw186828%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186811%_))))
                       (if (assq _%kw186828%_ _%kwargs186679%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186672%_
                              _%kw186828%_))
                           (_%lp186675%_
                            _%L186809%_
                            _%pargs186678%_
                            (cons (cons _%kw186828%_ _%L186810%_)
                                  _%kwargs186679%_))))))
                  (_%__kont190027190028%_
                   (lambda (_%L186757%_ _%L186758%_)
                     (_%lp186675%_
                      _%L186757%_
                      (cons _%L186758%_ _%pargs186678%_)
                      _%kwargs186679%_)))
                  (_%__kont190029190030%_
                   (lambda ()
                     (values (reverse _%pargs186678%_)
                             (reverse _%kwargs186679%_)))))
              (let ((_%__match190126190127%_
                     (lambda (_%e186716186777%_
                              _%hd186717186780%_
                              _%tl186718186782%_
                              _%e186719186785%_
                              _%hd186720186788%_
                              _%tl186721186790%_
                              _%e186722186793%_
                              _%hd186723186796%_
                              _%tl186724186798%_
                              _%e186725186801%_
                              _%hd186726186804%_
                              _%tl186727186806%_)
                       (let ((_%L186809%_ _%tl186727186806%_)
                             (_%L186810%_ _%hd186726186804%_)
                             (_%L186811%_ _%hd186723186796%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186811%_))
                             (_%__kont190025190026%_
                              _%L186809%_
                              _%L186810%_
                              _%L186811%_)
                             (_%__kont190027190028%_
                              _%tl186718186782%_
                              _%hd186717186780%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190019190020%_))
                    (let ((_%e186689186881%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190019190020%_))))
                      (let ((_%tl186691186886%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186689186881%_)))
                            (_%hd186690186884%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186689186881%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186690186884%_))
                            (let ((_%e186692186889%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186690186884%_))))
                              (let ((_%tl186694186894%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186692186889%_)))
                                    (_%hd186693186892%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186692186889%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186693186892%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186693186892%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186694186894%_))
                                            (let ((_%e186695186897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186694186894%_))))
                                              (let ((_%tl186697186902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186695186897%_)))
                                                    (_%hd186696186900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186695186897%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186696186900%_))
                                                    (let ((_%e186698186905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186696186900%_))))
                                                      (if (equal? _%e186698186905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186697186902%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186691186886%_))
                          (let ((_%e186699186908%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186691186886%_))))
                            (let ((_%tl186701186913%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186699186908%_)))
                                  (_%hd186700186911%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186699186908%_))))
                              (_%__kont190021190022%_
                               _%tl186701186913%_
                               _%hd186700186911%_)))
                          (_%__kont190027190028%_
                           _%tl186691186886%_
                           _%hd186690186884%_))
                      (_%__kont190027190028%_
                       _%tl186691186886%_
                       _%hd186690186884%_))
                  (if (equal? _%e186698186905%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186697186902%_))
                          (_%__kont190023190024%_ _%tl186691186886%_)
                          (_%__kont190027190028%_
                           _%tl186691186886%_
                           _%hd186690186884%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186697186902%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186691186886%_))
                              (let ((_%e186725186801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186691186886%_))))
                                (let ((_%tl186727186806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186725186801%_)))
                                      (_%hd186726186804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186725186801%_))))
                                  (_%__match190126190127%_
                                   _%e186689186881%_
                                   _%hd186690186884%_
                                   _%tl186691186886%_
                                   _%e186692186889%_
                                   _%hd186693186892%_
                                   _%tl186694186894%_
                                   _%e186695186897%_
                                   _%hd186696186900%_
                                   _%tl186697186902%_
                                   _%e186725186801%_
                                   _%hd186726186804%_
                                   _%tl186727186806%_)))
                              (_%__kont190027190028%_
                               _%tl186691186886%_
                               _%hd186690186884%_))
                          (_%__kont190027190028%_
                           _%tl186691186886%_
                           _%hd186690186884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186697186902%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186691186886%_))
                                                            (let ((_%e186725186801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186691186886%_))))
                      (let ((_%tl186727186806%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186725186801%_)))
                            (_%hd186726186804%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186725186801%_))))
                        (_%__match190126190127%_
                         _%e186689186881%_
                         _%hd186690186884%_
                         _%tl186691186886%_
                         _%e186692186889%_
                         _%hd186693186892%_
                         _%tl186694186894%_
                         _%e186695186897%_
                         _%hd186696186900%_
                         _%tl186697186902%_
                         _%e186725186801%_
                         _%hd186726186804%_
                         _%tl186727186806%_)))
                    (_%__kont190027190028%_
                     _%tl186691186886%_
                     _%hd186690186884%_))
                (_%__kont190027190028%_
                 _%tl186691186886%_
                 _%hd186690186884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190027190028%_
                                             _%tl186691186886%_
                                             _%hd186690186884%_))
                                        (_%__kont190027190028%_
                                         _%tl186691186886%_
                                         _%hd186690186884%_))
                                    (_%__kont190027190028%_
                                     _%tl186691186886%_
                                     _%hd186690186884%_))))
                            (_%__kont190027190028%_
                             _%tl186691186886%_
                             _%hd186690186884%_))))
                    (_%__kont190029190030%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186656%_ _%ctx186657%_ _%stx186658%_ _%args186659%_)
        (let ((_%self186662%_ _%self186656%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186657%_ _%stx186658%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186344%_ _%stx186345%_)
        (let* ((_%__stx190135190136%_ _%stx186345%_)
               (_%g186348186388%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190135190136%_)))))
          (let ((_%__kont190137190138%_
                 (lambda (_%L186494%_ _%L186495%_)
                   (let ((_%$e186522%_
                          (member 'return:
                                  (let ((__tmp190288
                                         (lambda (_%g186514186517%_
                                                  _%g186515186519%_)
                                           (cons _%g186514186517%_
                                                 _%g186515186519%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190288 '() _%L186495%_))
                                  gx#stx-eq?)))
                     (if _%$e186522%_
                         ((lambda (_%tail186525%_)
                            (let ((_%type186527%_
                                   (let ((__tmp190289
                                          (let ((__tmp190290
                                                 (cadr _%tail186525%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190290))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186345%_
                                      __tmp190289))))
                              (gxc#check-return-type!
                               _%stx186345%_
                               _%L186494%_
                               _%type186527%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186344%_
                                 _%L186494%_))))
                          _%$e186522%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186344%_ _%L186494%_))))))
                (_%__kont190141190142%_
                 (lambda (_%L186417%_ _%L186418%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186344%_ _%L186417%_)))))
            (let ((_%__match190172190173%_
                   (lambda (_%e186352186438%_
                            _%hd186353186441%_
                            _%tl186354186443%_
                            _%e186355186446%_
                            _%hd186356186449%_
                            _%tl186357186451%_
                            _%e186358186454%_
                            _%hd186359186457%_
                            _%tl186360186459%_
                            _%__splice190139190140%_
                            _%target186361186462%_
                            _%tl186363186464%_)
                     (letrec ((_%loop186364186467%_
                               (lambda (_%hd186362186470%_
                                        _%signature186368186472%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186362186470%_))
                                     (let ((_%e186365186475%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186362186470%_))))
                                       (let ((_%lp-tl186367186480%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186365186475%_)))
                                             (_%lp-hd186366186478%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186365186475%_))))
                                         (_%loop186364186467%_
                                          _%lp-tl186367186480%_
                                          (cons _%lp-hd186366186478%_
                                                _%signature186368186472%_))))
                                     (let ((_%signature186369186483%_
                                            (reverse _%signature186368186472%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186357186451%_))
                                           (let ((_%e186370186486%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186357186451%_))))
                                             (let ((_%tl186372186491%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186370186486%_)))
                                                   (_%hd186371186489%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186370186486%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186372186491%_))
                                                   (_%__kont190137190138%_
                                                    _%hd186371186489%_
                                                    _%signature186369186483%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186348186388%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186348186388%_))))))))
                       (_%loop186364186467%_ _%target186361186462%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190135190136%_))
                  (let ((_%e186352186438%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190135190136%_))))
                    (let ((_%tl186354186443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186352186438%_)))
                          (_%hd186353186441%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186352186438%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186354186443%_))
                          (let ((_%e186355186446%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186354186443%_))))
                            (let ((_%tl186357186451%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186355186446%_)))
                                  (_%hd186356186449%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186355186446%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186356186449%_))
                                  (let ((_%e186358186454%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186356186449%_))))
                                    (let ((_%tl186360186459%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186358186454%_)))
                                          (_%hd186359186457%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186358186454%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186359186457%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186359186457%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186360186459%_))
                                                  (let ((_%__splice190139190140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186360186459%_
                                                            '0))))
                                                    (let ((_%tl186363186464%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190139190140%_
                                                              '1)))
                                                          (_%target186361186462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190139190140%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186363186464%_))
                                                          (_%__match190172190173%_
                                                           _%e186352186438%_
                                                           _%hd186353186441%_
                                                           _%tl186354186443%_
                                                           _%e186355186446%_
                                                           _%hd186356186449%_
                                                           _%tl186357186451%_
                                                           _%e186358186454%_
                                                           _%hd186359186457%_
                                                           _%tl186360186459%_
                                                           _%__splice190139190140%_
                                                           _%target186361186462%_
                                                           _%tl186363186464%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186357186451%_))
                      (let ((_%e186381186409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186357186451%_))))
                        (let ((_%tl186383186414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186381186409%_)))
                              (_%hd186382186412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186381186409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186383186414%_))
                              (_%__kont190141190142%_
                               _%hd186382186412%_
                               _%hd186356186449%_)
                              (let ()
                                (declare (not safe))
                                (_%g186348186388%_)))))
                      (let () (declare (not safe)) (_%g186348186388%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186357186451%_))
                                                      (let ((_%e186381186409%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186357186451%_))))
                (let ((_%tl186383186414%_
                       (let () (declare (not safe)) (##cdr _%e186381186409%_)))
                      (_%hd186382186412%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186381186409%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186383186414%_))
                      (_%__kont190141190142%_
                       _%hd186382186412%_
                       _%hd186356186449%_)
                      (let () (declare (not safe)) (_%g186348186388%_)))))
              (let () (declare (not safe)) (_%g186348186388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186357186451%_))
                                                  (let ((_%e186381186409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186357186451%_))))
                                                    (let ((_%tl186383186414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186381186409%_)))
                                                          (_%hd186382186412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186381186409%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186383186414%_))
                                                          (_%__kont190141190142%_
                                                           _%hd186382186412%_
                                                           _%hd186356186449%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186348186388%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186348186388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186357186451%_))
                                              (let ((_%e186381186409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186357186451%_))))
                                                (let ((_%tl186383186414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186381186409%_)))
                                                      (_%hd186382186412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186381186409%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186383186414%_))
                                                      (_%__kont190141190142%_
                                                       _%hd186382186412%_
                                                       _%hd186356186449%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186348186388%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186348186388%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186357186451%_))
                                      (let ((_%e186381186409%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186357186451%_))))
                                        (let ((_%tl186383186414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186381186409%_)))
                                              (_%hd186382186412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186381186409%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186383186414%_))
                                              (_%__kont190141190142%_
                                               _%hd186382186412%_
                                               _%hd186356186449%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186348186388%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186348186388%_))))))
                          (let () (declare (not safe)) (_%g186348186388%_)))))
                  (let () (declare (not safe)) (_%g186348186388%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186322%_ _%expr186323%_ _%type186324%_)
        (let ((_%$e186326%_ (not _%type186324%_)))
          (if _%$e186326%_
              _%$e186326%_
              (let ((_%$e186329%_
                     (eq? (##structure-ref _%type186324%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186329%_
                    _%$e186329%_
                    (let ((_%expr-type186333%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186323%_))))
                      (if (not _%expr-type186333%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186322%_
                             _%type186324%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186333%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186322%_
                                 _%type186324%_
                                 _%expr-type186333%_))
                              (let ((_%$e186337%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186333%_
                                        'gxc#!abort::t))))
                                (if _%$e186337%_
                                    _%$e186337%_
                                    (let ((_%$e186340%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186333%_
                                              _%type186324%_))))
                                      (if _%$e186340%_
                                          _%$e186340%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186322%_
                                             _%type186324%_
                                             _%expr-type186333%_)))))))))))))))))
